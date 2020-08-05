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
-- Table structure for table `transactions`
--

DROP TABLE IF EXISTS `transactions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `transactions` (
  `id_transactions` int unsigned NOT NULL AUTO_INCREMENT,
  `transaction_number` int unsigned NOT NULL,
  `date` date NOT NULL,
  `id_customers` int unsigned NOT NULL,
  `id_orders` int DEFAULT NULL,
  `id_books` int NOT NULL,
  `total_weight` float unsigned NOT NULL,
  `books_price` int unsigned NOT NULL,
  `delivery_price` float unsigned NOT NULL,
  `total_price` float GENERATED ALWAYS AS ((`books_price` + `delivery_price`)) VIRTUAL,
  `id_delivery` int unsigned NOT NULL,
  `payment_type` varchar(45) DEFAULT NULL,
  `tracking_number` varchar(45) DEFAULT NULL,
  `shipment_address` varchar(90) DEFAULT NULL,
  `id_employees` int unsigned NOT NULL,
  `payment_status` varchar(45) NOT NULL,
  `delivery_status` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id_transactions`)
) ENGINE=InnoDB AUTO_INCREMENT=69 DEFAULT CHARSET=hebrew;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `transactions`
--

LOCK TABLES `transactions` WRITE;
/*!40000 ALTER TABLE `transactions` DISABLE KEYS */;
INSERT INTO `transactions` (`id_transactions`, `transaction_number`, `date`, `id_customers`, `id_orders`, `id_books`, `total_weight`, `books_price`, `delivery_price`, `id_delivery`, `payment_type`, `tracking_number`, `shipment_address`, `id_employees`, `payment_status`, `delivery_status`) VALUES (55,18763250,'2018-01-20',154,23,12652,0.86,54,8.6,3,'Bit','CD8745532IL','Weizmann 8 Kfar Saba',1,'Payed','Delivered'),(56,18763251,'2018-05-22',155,25,12649,0.89,45,0,1,'Credit Card',NULL,NULL,2,'Payed','Delivered'),(57,18763252,'2018-12-07',156,26,12650,1.7,50,42.5,6,'Bank Transfer','CD8744132IL','Ahuza 20 Raanana',2,'Payed','Delivered'),(58,18763253,'2019-09-25',157,27,12656,1.82,100,18.2,5,'Credit Card','CD8724132IL','Katzenelson 3 Kfar Saba',4,'Payed','Delivered'),(59,18763253,'2019-09-25',157,28,12657,0.12,45,2.4,2,'Credit Card','CD1224132IL','Katzenelson 3 Kfar Saba',4,'Payed','Delivered'),(60,18763254,'2019-11-20',158,29,12658,0.13,20,3.25,6,'Bit','CD1227632IL','Hashualim 12 Hod Hasharon',3,'Payed','Delivered'),(61,18763255,'2019-12-01',158,30,12659,1.42,70,14.2,5,'Bit','CD1227633IL','Hashualim 12 Hod Hasharon',3,'Payed','Delivered'),(62,18763256,'2020-01-08',159,31,12660,1.46,66,36.5,6,'Bank Transfer','CD1127633IL','Hamordim 7 Yavne',6,'Payed','Delivered'),(63,18763257,'2020-06-20',156,32,12663,0.64,45,0,1,NULL,NULL,NULL,6,'Not Payed','Waiting for pickup'),(64,18763258,'2020-07-28',157,33,12661,0.62,30,0,1,NULL,NULL,'Katzenelson 3 Kfar Saba',1,'Not Payed','Waiting for book arrival'),(65,18763259,'2020-07-28',158,34,12662,0.87,50,0,1,'Bit',NULL,'Hashualim 12 Hod Hasharon',1,'Payed','Waiting for book arrival'),(67,18763260,'2019-08-15',156,NULL,12665,1.2,80,24,2,'Credit Card','CD1124563IL','Ahuza 20 Raanana',1,'Payed','Delivered'),(68,18763260,'2019-08-15',156,NULL,12666,1.2,80,24,2,'Credit Card','CD1124563IL','Ahuza 20 Raanana',1,'Payed','Delivered');
/*!40000 ALTER TABLE `transactions` ENABLE KEYS */;
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
