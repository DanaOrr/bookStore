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
-- Table structure for table `store_payments`
--

DROP TABLE IF EXISTS `store_payments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `store_payments` (
  `payment_date` date NOT NULL,
  `water` int unsigned NOT NULL,
  `electricity` int unsigned NOT NULL,
  `property_tax` int unsigned NOT NULL,
  `mobile_phones` int unsigned NOT NULL,
  `telephones` int unsigned NOT NULL,
  `rent` int unsigned NOT NULL,
  `other` int unsigned NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=hebrew;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `store_payments`
--

LOCK TABLES `store_payments` WRITE;
/*!40000 ALTER TABLE `store_payments` DISABLE KEYS */;
INSERT INTO `store_payments` VALUES ('2018-01-01',100,200,500,50,100,2000,700),('2018-03-01',100,200,500,50,100,2000,700),('2018-04-01',150,400,500,50,100,2000,200),('2018-05-01',150,400,500,50,100,2000,200),('2018-06-01',120,200,500,50,100,2000,378),('2018-07-01',160,770,500,50,100,2000,0),('2018-08-01',70,450,550,50,100,2000,100),('2018-09-01',90,50,550,120,140,2000,500),('2018-10-01',100,50,550,120,140,2000,600),('2018-11-01',40,300,550,120,100,2000,200),('2018-12-01',110,700,550,60,100,2000,300),('2019-01-01',100,400,600,60,100,2500,200),('2019-02-01',120,446,600,60,100,2500,130),('2019-03-01',124,358,600,60,100,2500,200),('2019-04-01',90,579,600,60,100,2500,400),('2019-05-01',86,435,600,79,100,2500,460),('2019-06-01',246,337,600,79,120,2500,170),('2019-07-01',124,560,610,79,120,2500,370),('2019-08-01',100,350,610,79,120,2500,8000),('2019-09-01',100,350,610,79,120,2500,203),('2019-10-01',110,440,600,79,120,2500,453),('2019-11-01',140,190,600,79,120,2500,325),('2019-12-01',189,559,600,79,120,2500,1000),('2020-01-01',100,390,610,79,170,2700,700),('2020-02-01',178,456,610,79,170,2700,829),('2020-03-01',120,230,610,79,170,2700,20),('2020-04-01',120,154,305,79,170,1350,110),('2020-05-01',30,89,305,40,120,1350,0),('2020-06-01',80,143,600,40,120,1800,120),('2020-07-01',137,223,600,40,120,2200,240),('2018-02-01',90,200,500,50,100,2000,456);
/*!40000 ALTER TABLE `store_payments` ENABLE KEYS */;
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
