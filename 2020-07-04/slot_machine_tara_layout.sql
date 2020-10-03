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
-- Table structure for table `tara_layout`
--

DROP TABLE IF EXISTS `tara_layout`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tara_layout` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT NULL,
  `content_type` varchar(80) DEFAULT NULL,
  `content` text,
  `created_on` datetime DEFAULT NULL,
  `updated_on` datetime DEFAULT NULL,
  `created_by_id` int(11) DEFAULT NULL,
  `updated_by_id` int(11) DEFAULT NULL,
  `position` mediumint(6) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tara_layout`
--

LOCK TABLES `tara_layout` WRITE;
/*!40000 ALTER TABLE `tara_layout` DISABLE KEYS */;
INSERT INTO `tara_layout` VALUES (1,'default','text/html','\n<? if ($this->slug == \'webservice\'): ?>\n\n    <? $this->includeSnippet(\'service\'); ?>\n\n<? else: ?>\n    <?\n\n    function getLastId() {\n        global $__tarambola_CONN__;\n\n        $sql = \"SELECT * From tara_unique_id ORDER BY id DESC LIMIT 1\";\n\n        if ($stmt = $__tarambola_CONN__->prepare($sql)) {\n            $stmt->execute();\n\n            $object = $stmt->fetchObject();\n        }\n        return($object);\n    }\n\n    $id = getLastId();\n    ?>\n    <!DOCTYPE html>\n    <html lang=\"pt\">\n    <head>\n        <meta charset=\"UTF-8\" />\n        <title>Slot Machine</title>\n        <meta name=\"description\" content=\"Slot Machine\">\n        <meta name=\"keywords\" content=\"\">\n        <meta name=\"author\" content=\"Tarambola - Soluções Multimédia\">\n        <meta name=\"viewport\" content=\"user-scalable=no, initial-scale=0.9, minimum-scale=0.5, width=device-width, height=device-height, target-densitydpi=device-dpi\" />\n        <meta name=\"apple-mobile-web-app-capable\" content=\"yes\" />\n        <!-- *********************** CSS ************************* -->\n        <link href=\'http://fonts.googleapis.com/css?family=Roboto\' rel=\'stylesheet\' type=\'text/css\'>\n        <link href=\'http://fonts.googleapis.com/css?family=Playfair+Display+SC:400,700\' rel=\'stylesheet\' type=\'text/css\'>\n        <link href=\'<? echo(URL_PUBLIC); ?>public/themes/default/_css/reset.css\' rel=\'stylesheet\' type=\'text/css\'>\n        <link href=\'<? echo(URL_PUBLIC); ?>public/themes/default/_css/style.css\' rel=\'stylesheet\' type=\'text/css\'>\n        <link href=\'<? echo(URL_PUBLIC); ?>public/themes/default/_css/mobile.css\' rel=\'stylesheet\' type=\'text/css\'>\n    </head>\n    <body style=\"background:white !important\">\n\n    <!--<img src=\"url(<? echo(URL_PUBLIC); ?>public/themes/default/_img/BG.jpg)\" alt=\"\" class=\"bg\"/>-->\n    <div class=\"corners\" id=\"content-holder\">\n        <section class=\"main-container\">\n            <center>\n                <!-- ****************** HEADER **************** -->\n                <header id=\"header\">\n                    <img src=\"<? echo(URL_PUBLIC); ?>public/images/logo.png\" id=\"boombap\" alt=\"\" />\n                </header>\n                <!-- ######################### SE O UNIQUE ID COINCIDE ############################-->\n                <? if ($_GET[\'id\'] == $id->unique_id): ?>\n                    <? $this->includeSnippet(\'register\'); ?>\n                    <!-- ######################### SE O UNIQUE ID NÃO COINCIDE ############################-->\n                <? else: ?>\n                    <? $this->includeSnippet(\'tryagain\'); ?>\n                <? endif; ?>\n                <?\n                require_once SERVER_URL . \'tarambola/app/classes/Item.php\';\n                $p = new Item();\n                $p = $p->getPageById(130);\n                ?>\n                <input id=\"appUrl\" type=\"hidden\" value=\"<? echo($p->content(\'client_url\')); ?>\"></input>\n                <div class=\"clear65\"></div>\n                <div class=\"clear65\"></div>\n            </center>\n        </section>\n    </div>\n    <!-- ************************* SCRIPTS ****************** -->\n    <script src=\"<? echo(URL_PUBLIC); ?>public/themes/default/_js/jquery-2.0.3.js\"></script>\n    <script src=\"<? echo(URL_PUBLIC); ?>public/themes/default/_js/script.js\"></script>\n    <? $this->includeSnippet(\'jsAppend\'); ?>\n    </body>\n    </html>\n<? endif; ?>\n','2011-05-30 17:35:49','2020-02-10 22:22:49',1,1,1);
/*!40000 ALTER TABLE `tara_layout` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-07-04 12:37:54
