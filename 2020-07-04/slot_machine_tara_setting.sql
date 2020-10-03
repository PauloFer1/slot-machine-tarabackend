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
-- Table structure for table `tara_setting`
--

DROP TABLE IF EXISTS `tara_setting`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tara_setting` (
  `name` varchar(40) NOT NULL,
  `value` text NOT NULL,
  UNIQUE KEY `id` (`name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tara_setting`
--

LOCK TABLES `tara_setting` WRITE;
/*!40000 ALTER TABLE `tara_setting` DISABLE KEYS */;
INSERT INTO `tara_setting` VALUES ('admin_title','<img src=\"../tarabackend/images/tarabackend.png\" alt=\"tarabackend\" title=\"tarabackend\"/> '),('language','pt'),('theme','default'),('default_status_id','1'),('default_filter_id',''),('default_tab','plugin/dashboard'),('allow_html_title','off'),('plugins','a:28:{s:6:\"jquery\";i:1;s:7:\"textile\";i:1;s:8:\"markdown\";i:1;s:8:\"skeleton\";i:1;s:9:\"jquery_ui\";i:1;s:7:\"lytebox\";i:1;s:7:\"tinymce\";i:1;s:9:\"wymeditor\";i:1;s:8:\"noticias\";i:1;s:19:\"cs_children_by_part\";i:1;s:7:\"sqlite3\";i:1;s:15:\"page_part_forms\";i:1;s:13:\"page_metadata\";i:1;s:4:\"ifhs\";i:1;s:7:\"archive\";i:1;s:7:\"imagens\";i:1;s:12:\"image_resize\";i:1;s:9:\"dashboard\";i:1;s:7:\"modulos\";i:1;s:9:\"codepress\";i:1;s:9:\"googlemap\";i:1;s:7:\"paginas\";i:1;s:13:\"configuracoes\";i:1;s:12:\"utilizadores\";i:1;s:10:\"documentos\";i:1;s:10:\"encomendas\";i:1;s:12:\"file_manager\";i:1;s:11:\"formularios\";i:1;}');
/*!40000 ALTER TABLE `tara_setting` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-07-04 12:38:25
