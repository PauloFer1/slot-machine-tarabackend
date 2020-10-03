-- MySQL dump 10.13  Distrib 5.7.17, for macos10.12 (x86_64)
--
-- Host: tarabackend.cwiu9dmvcutz.us-east-1.rds.amazonaws.com    Database: slot_machine
-- ------------------------------------------------------
-- Server version	5.7.22-log

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
-- Table structure for table `tara_premios_diarios`
--

DROP TABLE IF EXISTS `tara_premios_diarios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tara_premios_diarios` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `data` date NOT NULL,
  `qtd` int(11) NOT NULL,
  `time` time NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tara_premios_diarios`
--

LOCK TABLES `tara_premios_diarios` WRITE;
/*!40000 ALTER TABLE `tara_premios_diarios` DISABLE KEYS */;
INSERT INTO `tara_premios_diarios` VALUES (1,'2014-05-26',9,'17:55:00'),(2,'2014-06-03',0,'00:00:00'),(3,'2014-06-04',3,'11:13:41'),(4,'2014-06-05',13,'22:50:13'),(5,'2014-06-06',2,'16:42:24'),(6,'2014-06-11',6,'23:47:00'),(7,'2014-06-11',0,'00:00:00'),(8,'2014-06-11',0,'00:00:00'),(9,'2014-06-12',22,'23:28:33'),(10,'2014-06-13',4,'16:20:15'),(11,'2014-06-16',1,'12:24:59'),(12,'2014-06-26',0,'00:00:00'),(13,'2014-06-27',0,'00:00:00'),(14,'2014-07-01',0,'00:00:00'),(15,'2014-07-02',0,'00:00:00'),(16,'2014-07-03',0,'00:00:00'),(17,'2014-07-07',0,'00:00:00'),(18,'2014-07-08',0,'00:00:00'),(19,'2014-08-13',0,'00:00:00'),(20,'2014-09-09',0,'00:00:00'),(21,'2014-09-24',2,'12:18:42'),(22,'2015-06-26',0,'00:00:00'),(23,'2016-01-26',1,'18:38:25'),(24,'2016-01-27',1,'17:39:53'),(25,'2020-02-09',68,'23:50:10'),(26,'2020-02-10',2,'22:41:33'),(27,'2020-02-11',20,'16:48:30'),(28,'2020-02-12',10,'22:57:51'),(29,'2020-02-15',0,'00:00:00'),(30,'2020-02-24',4,'20:23:27'),(31,'2020-02-25',2,'14:58:51'),(32,'2020-02-26',4,'17:46:48'),(33,'2020-03-02',3,'11:24:35');
/*!40000 ALTER TABLE `tara_premios_diarios` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-07-04 12:38:22
