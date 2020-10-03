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
-- Table structure for table `tara_encomendas`
--

DROP TABLE IF EXISTS `tara_encomendas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tara_encomendas` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `reference` varchar(300) NOT NULL,
  `discount` decimal(10,2) NOT NULL,
  `cart_id` int(11) NOT NULL,
  `client_discount` decimal(10,2) NOT NULL,
  `value_shipping` decimal(10,2) NOT NULL,
  `invoice_address` varchar(300) NOT NULL,
  `invoice_postal` varchar(255) NOT NULL,
  `invoice_country` varchar(255) NOT NULL,
  `invoice_city` varchar(255) NOT NULL,
  `shipping_address` varchar(300) NOT NULL,
  `shipping_postal` varchar(255) NOT NULL,
  `shipping_country` varchar(255) NOT NULL,
  `shipping_city` varchar(255) NOT NULL,
  `date` datetime NOT NULL,
  `invoice_name` varchar(255) NOT NULL DEFAULT '',
  `invoice_nif` int(11) NOT NULL,
  `shipping_name` varchar(255) NOT NULL DEFAULT '',
  `estado` int(11) NOT NULL DEFAULT '1',
  `observacoes` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tara_encomendas`
--

LOCK TABLES `tara_encomendas` WRITE;
/*!40000 ALTER TABLE `tara_encomendas` DISABLE KEYS */;
INSERT INTO `tara_encomendas` VALUES (1,'1',0.00,1,0.00,24.00,'Rua Luis de camões','4820','Portugal','Fafe','Rua Luis de camões','4820','Portugal','fafe','2014-04-03 00:00:00','Paulo Fernandes',12255527,'Paulo Fernandes',3,'2');
/*!40000 ALTER TABLE `tara_encomendas` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-07-04 12:39:36
