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
-- Table structure for table `tara_plugin_settings`
--

DROP TABLE IF EXISTS `tara_plugin_settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tara_plugin_settings` (
  `plugin_id` varchar(40) NOT NULL,
  `name` varchar(40) NOT NULL,
  `value` varchar(255) NOT NULL,
  UNIQUE KEY `plugin_setting_id` (`plugin_id`,`name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tara_plugin_settings`
--

LOCK TABLES `tara_plugin_settings` WRITE;
/*!40000 ALTER TABLE `tara_plugin_settings` DISABLE KEYS */;
INSERT INTO `tara_plugin_settings` VALUES ('comment','auto_approve_comment','0'),('comment','use_captcha','1'),('comment','rowspage','15'),('comment','numlabel','1'),('tinymce','version','2.0.0'),('tinymce','listpublished','1'),('tinymce','listhidden','0'),('tinymce','imagesdir','/Applications/XAMPP/xamppfiles/htdocs/escola/public/images'),('tinymce','imagesuri','/public/images'),('tinymce','cssuri','/public/themes/mylayout/mystylesheet.css'),('googlemap','version',''),('googlemap','apikey','1'),('googlemap','mapid','googlemap'),('googlemap','mapwidth','500'),('googlemap','mapheight','500'),('googlemap','mapcode','<div id=\"googlemap\"></div>'),('googlemap','sensor','false'),('googlemap','zoom','14'),('googlemap','zoomcontrol','large'),('googlemap','latitude','37.0625'),('googlemap','longitude','-95.6707'),('googlemap','markerimg',''),('googlemap','markerwidth',''),('googlemap','markerheight',''),('googlemap','html','<p style=\"width:200px\">Tarambola</p>'),('googlemap','directions','true'),('googlemap','autodisplay','true'),('easygal','cols','3'),('easygal','csssfx',''),('easygal','exts','jpg,jpeg,png,bmp,gif,svg'),('easygal','filenamedisp','2'),('easygal','lightbox','fancybox'),('easygal','rows','2'),('easygal','thumbsize','140');
/*!40000 ALTER TABLE `tara_plugin_settings` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-07-04 12:38:30
