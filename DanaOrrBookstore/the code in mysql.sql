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
-- Table structure for table `delivery`
--

DROP TABLE IF EXISTS `delivery`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `delivery` (
  `id_delivery` int unsigned NOT NULL AUTO_INCREMENT,
  `company` varchar(45) NOT NULL,
  `delivery_type` varchar(45) NOT NULL,
  `price_per_kg` int unsigned NOT NULL,
  PRIMARY KEY (`id_delivery`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=hebrew;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `delivery`
--

LOCK TABLES `delivery` WRITE;
/*!40000 ALTER TABLE `delivery` DISABLE KEYS */;
INSERT INTO `delivery` VALUES (1,'0','PickUp',0),(2,'Israel Post','Fast Delivery',20),(3,'Israel Post','Normal Delivery',10),(4,'Israel Post','Registered Post',5),(5,'Xpress','Collecting point',10),(6,'Xpress','House Delivery',25);
/*!40000 ALTER TABLE `delivery` ENABLE KEYS */;
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
-- Table structure for table `employees_salary`
--

DROP TABLE IF EXISTS `employees_salary`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `employees_salary` (
  `salary_date` date NOT NULL,
  `hourly_price` int unsigned NOT NULL,
  `total_hours` int unsigned NOT NULL,
  `salary_sum` int GENERATED ALWAYS AS ((`hourly_price` * `total_hours`)) VIRTUAL,
  `id_employees` int unsigned NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=hebrew;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `employees_salary`
--

LOCK TABLES `employees_salary` WRITE;
/*!40000 ALTER TABLE `employees_salary` DISABLE KEYS */;
INSERT INTO `employees_salary` (`salary_date`, `hourly_price`, `total_hours`, `id_employees`) VALUES ('2018-02-01',80,140,1),('2018-03-01',80,147,1),('2018-04-01',80,123,1),('2018-05-01',80,176,1),('2018-06-01',85,145,1),('2018-07-01',85,145,1),('2018-08-01',85,163,1),('2018-09-01',85,123,1),('2018-10-01',85,152,1),('2018-11-01',85,149,1),('2018-12-01',85,149,1),('2019-01-01',85,149,1),('2019-02-01',85,149,1),('2019-03-01',85,149,1),('2019-05-01',85,149,1),('2019-04-01',85,149,1),('2019-06-01',85,149,1),('2019-07-01',85,149,1),('2019-08-01',85,149,1),('2019-09-01',85,149,1),('2019-10-01',85,149,1),('2019-11-01',85,149,1),('2019-12-01',85,149,1),('2020-01-01',85,149,1),('2020-02-01',85,149,1),('2020-03-01',85,149,1),('2020-04-01',85,149,1),('2020-05-01',85,149,1),('2020-06-01',85,149,1),('2020-07-01',85,149,1),('2018-12-01',30,60,2),('2019-01-01',30,98,2),('2019-02-01',30,98,2),('2019-03-01',30,98,2),('2019-04-01',30,98,2),('2019-05-01',30,98,2),('2019-06-01',30,98,2),('2019-07-01',30,98,2),('2019-08-01',30,98,2),('2019-09-01',30,98,2),('2019-10-01',30,98,2),('2019-11-01',30,98,2),('2019-12-01',30,98,2),('2020-01-01',30,98,2),('2020-02-01',30,98,2),('2020-03-01',30,98,2),('2020-04-01',30,98,2),('2020-05-01',30,98,2),('2020-06-01',30,98,2),('2020-07-01',30,98,2),('2019-02-01',42,70,3),('2019-03-01',42,70,3),('2019-04-01',42,70,3),('2019-05-01',42,70,3),('2019-06-01',42,70,3),('2019-07-01',42,70,3),('2019-08-01',42,70,3),('2019-09-01',42,70,3),('2019-10-01',42,70,3),('2019-11-01',42,70,3),('2019-12-01',42,70,3),('2020-01-01',42,70,3),('2020-02-01',42,70,3),('2020-03-01',42,70,3),('2020-04-01',42,70,3),('2020-05-01',42,70,3),('2020-06-01',42,70,3),('2020-07-01',42,70,3),('2019-05-01',27,15,4),('2019-06-01',27,60,4),('2019-07-01',27,60,4),('2019-08-01',27,60,4),('2019-09-01',27,60,4),('2019-10-01',27,60,4),('2019-11-01',27,60,4),('2019-12-01',27,60,4),('2019-06-01',32,20,5),('2019-07-01',32,50,5),('2019-09-01',32,50,5),('2019-08-01',32,50,5),('2019-10-01',32,50,5),('2019-11-01',32,50,5),('2019-12-01',32,40,5),('2019-08-01',29,40,6),('2019-09-01',29,40,6),('2019-10-01',29,40,6),('2019-11-01',29,40,6),('2019-12-01',29,40,6),('2020-01-01',29,40,6),('2020-03-01',29,40,6),('2020-02-01',29,40,6),('2020-04-01',29,40,6),('2020-05-01',29,40,6),('2020-06-01',29,40,6),('2020-07-01',29,40,6),('2019-08-01',29,20,7),('2019-09-01',29,50,7),('2019-10-01',29,50,7),('2019-11-01',29,50,7),('2019-12-01',29,50,7),('2020-02-01',29,7,7),('2020-01-01',29,50,7),('2019-10-01',24,14,8),('2019-11-01',24,35,8),('2019-12-01',24,35,8),('2020-01-01',24,35,8),('2020-02-01',24,4,8),('2020-03-01',60,23,9);
/*!40000 ALTER TABLE `employees_salary` ENABLE KEYS */;
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
-- Table structure for table `orders`
--

DROP TABLE IF EXISTS `orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `orders` (
  `id_orders` int unsigned NOT NULL AUTO_INCREMENT,
  `date` date NOT NULL,
  `status` varchar(45) NOT NULL,
  `id_customers` int unsigned NOT NULL,
  `transaction_number` int unsigned NOT NULL,
  `id_books` varchar(45) NOT NULL,
  `last_contact` date NOT NULL,
  PRIMARY KEY (`id_orders`)
) ENGINE=InnoDB AUTO_INCREMENT=57 DEFAULT CHARSET=hebrew;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orders`
--

LOCK TABLES `orders` WRITE;
/*!40000 ALTER TABLE `orders` DISABLE KEYS */;
INSERT INTO `orders` VALUES (23,'2018-01-20','Completed',154,18763250,'12652','2018-01-23'),(25,'2018-05-20','Completed',155,18763251,'12649','2018-05-22'),(26,'2018-12-07','Completed',156,18763252,'12650','2018-12-13'),(27,'2019-09-25','Completed',157,18763253,'12656','2019-10-01'),(28,'2019-09-25','Completed',157,18763253,'12657','2019-10-01'),(29,'2019-11-20','Completed',158,18763254,'12658','2019-11-25'),(30,'2019-12-01','Completed',158,18763255,'12659','2019-12-05'),(31,'2020-01-08','Completed',159,18763256,'12660','2020-01-12'),(32,'2020-06-20','Waiting for Pickup',156,18763257,'12663','2020-06-25'),(33,'2020-07-28','Ordered',157,18763258,'12661','2020-07-28'),(34,'2020-07-28','Ordered',158,18763259,'12662','2020-07-28');
/*!40000 ALTER TABLE `orders` ENABLE KEYS */;
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

