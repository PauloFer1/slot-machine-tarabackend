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
-- Table structure for table `tara_page_metadata`
--

DROP TABLE IF EXISTS `tara_page_metadata`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tara_page_metadata` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `visible` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `page_id` int(11) unsigned NOT NULL,
  `keyword` varchar(255) NOT NULL,
  `value` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=596 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tara_page_metadata`
--

LOCK TABLES `tara_page_metadata` WRITE;
/*!40000 ALTER TABLE `tara_page_metadata` DISABLE KEYS */;
INSERT INTO `tara_page_metadata` VALUES (6,0,6,'page_part_forms','1'),(7,0,7,'page_part_forms','3'),(8,0,8,'page_part_forms','3'),(10,0,10,'page_part_forms','4'),(11,0,11,'page_part_forms','4'),(12,0,12,'page_part_forms','4'),(13,0,13,'page_part_forms','4'),(14,0,14,'page_part_forms','5'),(16,0,16,'page_part_forms','3'),(17,0,17,'page_part_forms','7'),(18,0,18,'page_part_forms','7'),(22,0,0,'page_part_forms','7'),(23,0,0,'page_part_forms','7'),(310,0,314,'page_part_forms','9'),(311,0,317,'page_part_forms','10'),(308,0,315,'page_part_forms','3'),(309,0,316,'page_part_forms','8'),(125,0,130,'page_part_forms','4'),(306,0,312,'page_part_forms','3'),(548,0,556,'page_part_forms','7'),(549,0,557,'page_part_forms','7'),(550,0,558,'page_part_forms','7'),(307,0,311,'page_part_forms','3'),(362,0,368,'page_part_forms','11'),(552,0,560,'page_part_forms','7'),(544,0,552,'page_part_forms','7'),(507,0,515,'page_part_forms','12'),(534,0,542,'page_part_forms','7'),(535,0,543,'page_part_forms','7'),(536,0,544,'page_part_forms','7'),(439,0,445,'page_part_forms','7'),(553,0,561,'page_part_forms','7'),(551,0,559,'page_part_forms','7'),(547,0,555,'page_part_forms','7'),(546,0,554,'page_part_forms','7'),(543,0,551,'page_part_forms','7'),(542,0,550,'page_part_forms','7'),(541,0,549,'page_part_forms','7'),(540,0,548,'page_part_forms','7'),(539,0,547,'page_part_forms','7'),(545,0,553,'page_part_forms','7'),(538,0,546,'page_part_forms','7'),(537,0,545,'page_part_forms','7'),(514,0,522,'page_part_forms','7'),(513,0,521,'page_part_forms','7'),(512,0,520,'page_part_forms','7'),(515,0,523,'page_part_forms','7'),(516,0,524,'page_part_forms','7'),(517,0,525,'page_part_forms','7'),(518,0,526,'page_part_forms','7'),(519,0,527,'page_part_forms','7'),(520,0,528,'page_part_forms','7'),(521,0,529,'page_part_forms','7'),(566,0,574,'page_part_forms','7'),(523,0,531,'page_part_forms','7'),(524,0,532,'page_part_forms','7'),(525,0,533,'page_part_forms','7'),(526,0,534,'page_part_forms','7'),(527,0,535,'page_part_forms','7'),(528,0,536,'page_part_forms','7'),(529,0,537,'page_part_forms','7'),(530,0,538,'page_part_forms','7'),(531,0,539,'page_part_forms','7'),(532,0,540,'page_part_forms','7'),(533,0,541,'page_part_forms','7'),(554,0,562,'page_part_forms','7'),(555,0,563,'page_part_forms','7'),(556,0,564,'page_part_forms','7'),(557,0,565,'page_part_forms','7'),(565,0,573,'page_part_forms','7'),(559,0,567,'page_part_forms','7'),(560,0,568,'page_part_forms','7'),(561,0,569,'page_part_forms','7'),(564,0,572,'page_part_forms','7'),(567,0,575,'page_part_forms','7'),(568,0,576,'page_part_forms','7'),(569,0,577,'page_part_forms','7'),(570,0,578,'page_part_forms','7'),(571,0,579,'page_part_forms','7'),(572,0,580,'page_part_forms','7'),(573,0,581,'page_part_forms','7'),(574,0,582,'page_part_forms','7'),(575,0,583,'page_part_forms','7'),(576,0,584,'page_part_forms','7'),(577,0,585,'page_part_forms','7'),(578,0,586,'page_part_forms','7'),(579,0,587,'page_part_forms','7'),(580,0,588,'page_part_forms','7'),(581,0,589,'page_part_forms','7'),(582,0,590,'page_part_forms','7'),(583,0,591,'page_part_forms','7'),(584,0,592,'page_part_forms','7'),(585,0,593,'page_part_forms','7'),(586,0,594,'page_part_forms','7'),(587,0,595,'page_part_forms','7'),(588,0,596,'page_part_forms','7'),(589,0,597,'page_part_forms','7'),(590,0,598,'page_part_forms','7'),(591,0,599,'page_part_forms','7'),(592,0,600,'page_part_forms','7'),(593,0,601,'page_part_forms','7'),(594,0,602,'page_part_forms','7'),(595,0,603,'page_part_forms','7');
/*!40000 ALTER TABLE `tara_page_metadata` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-07-04 12:39:46
