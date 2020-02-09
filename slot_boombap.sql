-- MySQL dump 10.13  Distrib 5.5.50, for Linux (x86_64)
--
-- Host: localhost    Database: slot_boombap
-- ------------------------------------------------------
-- Server version	5.5.50-cll

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
-- Table structure for table `news_groups`
--

DROP TABLE IF EXISTS `news_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `news_groups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `news_groups`
--

LOCK TABLES `news_groups` WRITE;
/*!40000 ALTER TABLE `news_groups` DISABLE KEYS */;
INSERT INTO `news_groups` (`id`, `name`) VALUES (9,'Subs');
/*!40000 ALTER TABLE `news_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `news_letters`
--

DROP TABLE IF EXISTS `news_letters`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `news_letters` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `subject` varchar(255) NOT NULL,
  `content` longtext NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `news_letters`
--

LOCK TABLES `news_letters` WRITE;
/*!40000 ALTER TABLE `news_letters` DISABLE KEYS */;
INSERT INTO `news_letters` (`id`, `title`, `subject`, `content`) VALUES (4,'NewsLetter teste','News teste',' NewsLetter teste NewsLetter teste NewsLetter teste NewsLetter teste NewsLetter teste NewsLetter teste \r\nçllçml~çm\r\nlknklçmkçln\r\nlknklçnkln');
/*!40000 ALTER TABLE `news_letters` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `news_users`
--

DROP TABLE IF EXISTS `news_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `news_users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `group_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `subscribed` tinyint(1) NOT NULL,
  `hash` varchar(64) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `news_users`
--

LOCK TABLES `news_users` WRITE;
/*!40000 ALTER TABLE `news_users` DISABLE KEYS */;
INSERT INTO `news_users` (`id`, `group_id`, `name`, `email`, `subscribed`, `hash`) VALUES (5,9,'Paulo','paulofernandes@tarambola.pt',1,'87cc1d689733fdc9d09a6dac1db20ef1'),(6,9,'Paulo 2','paulo.r.r.fernandes@gmail.com',1,'ac52d15e483da12ff4d20cf2faced2ae');
/*!40000 ALTER TABLE `news_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tara_cart`
--

DROP TABLE IF EXISTS `tara_cart`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tara_cart` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `session` varchar(255) NOT NULL,
  `user_id` int(11) NOT NULL,
  `is_encomenda` tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tara_cart`
--

LOCK TABLES `tara_cart` WRITE;
/*!40000 ALTER TABLE `tara_cart` DISABLE KEYS */;
INSERT INTO `tara_cart` (`id`, `session`, `user_id`, `is_encomenda`) VALUES (1,'65sa5dsa85d6sa7d58asd5sa6',1,0);
/*!40000 ALTER TABLE `tara_cart` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tara_cart_produto`
--

DROP TABLE IF EXISTS `tara_cart_produto`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tara_cart_produto` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `produto_id` int(11) NOT NULL,
  `cart_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tara_cart_produto`
--

LOCK TABLES `tara_cart_produto` WRITE;
/*!40000 ALTER TABLE `tara_cart_produto` DISABLE KEYS */;
INSERT INTO `tara_cart_produto` (`id`, `produto_id`, `cart_id`) VALUES (1,1,1);
/*!40000 ALTER TABLE `tara_cart_produto` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tara_category`
--

DROP TABLE IF EXISTS `tara_category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tara_category` (
  `category_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `category_name` varchar(50) NOT NULL DEFAULT '0',
  `cateogory_description` varchar(300) NOT NULL,
  PRIMARY KEY (`category_id`),
  KEY `category_id` (`category_id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tara_category`
--

LOCK TABLES `tara_category` WRITE;
/*!40000 ALTER TABLE `tara_category` DISABLE KEYS */;
INSERT INTO `tara_category` (`category_id`, `category_name`, `cateogory_description`) VALUES (1,'Muffins','A muffin is somewhat like a small cake, and though it does resemble a cupcake in that they both have cylindrical bases and rounded conical tops, they usually are not as sweet as cupcakes and generally lack frosting; savory varieties (such as cornbread muffins) also exist. They generally fit in the p');
/*!40000 ALTER TABLE `tara_category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tara_comment`
--

DROP TABLE IF EXISTS `tara_comment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tara_comment` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `page_id` int(11) unsigned NOT NULL DEFAULT '0',
  `body` text,
  `author_name` varchar(50) DEFAULT NULL,
  `author_email` varchar(100) DEFAULT NULL,
  `author_link` varchar(100) DEFAULT NULL,
  `ip` char(100) NOT NULL DEFAULT '0',
  `is_approved` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `created_on` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `page_id` (`page_id`),
  KEY `created_on` (`created_on`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tara_comment`
--

LOCK TABLES `tara_comment` WRITE;
/*!40000 ALTER TABLE `tara_comment` DISABLE KEYS */;
/*!40000 ALTER TABLE `tara_comment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tara_configuracoes`
--

DROP TABLE IF EXISTS `tara_configuracoes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tara_configuracoes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nome` text NOT NULL,
  `tipo` text NOT NULL,
  `campo` text NOT NULL,
  `campo2` varchar(255) NOT NULL,
  `campo3` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tara_configuracoes`
--

LOCK TABLES `tara_configuracoes` WRITE;
/*!40000 ALTER TABLE `tara_configuracoes` DISABLE KEYS */;
INSERT INTO `tara_configuracoes` (`id`, `nome`, `tipo`, `campo`, `campo2`, `campo3`) VALUES (1,'Email de Envio de Contactos','email','','paulofernandes@tarambola.pt',''),(2,'Configuração do Google Analytics','analytics','tarambola.pt;********','',''),(3,'Conta servidor para envio emails','sender','contcastro.pt','sender@contcastro.pt','contcastro2014#'),(4,'Configurar mensagens registo utilizadores','msg-registo','','','');
/*!40000 ALTER TABLE `tara_configuracoes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tara_dashboard_log`
--

DROP TABLE IF EXISTS `tara_dashboard_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tara_dashboard_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ident` char(16) NOT NULL,
  `priority` int(11) NOT NULL,
  `message` varchar(255) DEFAULT NULL,
  `username` varchar(64) DEFAULT NULL,
  `created_on` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=1296 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tara_dashboard_log`
--

LOCK TABLES `tara_dashboard_log` WRITE;
/*!40000 ALTER TABLE `tara_dashboard_log` DISABLE KEYS */;
INSERT INTO `tara_dashboard_log` (`id`, `ident`, `priority`, `message`, `username`, `created_on`) VALUES (1,'core',5,'Utilizador <b>tarambola</b> efectuou Log In.',NULL,'2014-02-18 17:24:10'),(2,'core',5,'Utilizador <b>tarambola</b> efectuou Log In.',NULL,'2014-02-19 17:43:45'),(3,'core',5,'Utilizador <b>tarambola</b> efectuou Log In.',NULL,'2014-02-20 11:09:41'),(4,'core',5,'Plugin <b>file_manager</b> activado por Administrator',NULL,'2014-02-20 12:04:07'),(5,'core',5,'Utilizador <b>tarambola</b> efectuou Log In.',NULL,'2014-02-24 10:57:13'),(6,'core',5,'Página <b><a href=\"http://localhost/tarabackend/tarabackend/page/edit/2\">form</a></b> foi criada por Administrator',NULL,'2014-02-24 14:46:33'),(7,'core',5,'Página <b><a href=\"http://localhost/tarabackend/tarabackend/page/edit/2\">form</a></b> foi revista por Administrator',NULL,'2014-02-24 14:46:58'),(8,'core',5,'Página <b><a href=\"http://localhost/tarabackend/tarabackend/page/edit/3\">Modulo 2</a></b> foi criada por Administrator',NULL,'2014-02-24 15:23:36'),(9,'core',5,'Página <b><a href=\"http://localhost/tarabackend/tarabackend/page/edit/4\">Modulo 3</a></b> foi criada por Administrator',NULL,'2014-02-24 15:23:50'),(10,'core',5,'Página <b><a href=\"http://localhost/tarabackend/tarabackend/page/edit/2\">Modulo 1</a></b> foi revista por Administrator',NULL,'2014-02-24 15:24:10'),(11,'core',5,'Página <b>Modulo 2</b> foi apagada por Administrator',NULL,'2014-02-24 15:24:25'),(12,'core',5,'Página <b>Modulo 3</b> foi apagada por Administrator',NULL,'2014-02-24 15:24:31'),(13,'core',5,'Página <b><a href=\"http://localhost/tarabackend/tarabackend/page/edit/5\">____________modulo1</a></b> foi criada por Administrator',NULL,'2014-02-24 16:08:09'),(14,'core',5,'Página <b><a href=\"http://localhost/tarabackend/tarabackend/page/edit/6\">teste</a></b> foi criada por Administrator',NULL,'2014-02-24 16:09:16'),(15,'core',5,'Página <b><a href=\"http://localhost/tarabackend/tarabackend/page/edit/6\">teste</a></b> foi revista por Administrator',NULL,'2014-02-24 16:09:24'),(16,'core',5,'Página <b>teste</b> foi apagada por Administrator',NULL,'2014-02-24 16:12:10'),(17,'core',5,'Página <b><a href=\"http://localhost/tarabackend/tarabackend/page/edit/7\">teste</a></b> foi criada por Administrator',NULL,'2014-02-24 16:17:40'),(18,'core',5,'Página <b><a href=\"http://localhost/tarabackend/tarabackend/page/edit/7\">teste</a></b> foi revista por Administrator',NULL,'2014-02-24 16:17:47'),(19,'core',5,'Página <b><a href=\"http://localhost/tarabackend/tarabackend/page/edit/3\">____________modulo1</a></b> foi revista por Administrator',NULL,'2014-02-24 16:25:05'),(20,'core',5,'Utilizador <b>tarambola</b> efectuou Log In.',NULL,'2014-02-24 21:32:46'),(21,'core',5,'Utilizador <b>tarambola</b> efectuou Log In.',NULL,'2014-02-25 11:48:14'),(22,'core',5,'Página <b><a href=\"http://localhost/tarabackend/tarabackend/page/edit/2\">Modulo 1</a></b> foi revista por Administrator',NULL,'2014-02-25 14:47:03'),(23,'core',5,'Página <b><a href=\"http://localhost/tarabackend/tarabackend/page/edit/8\">Modulo 2</a></b> foi criada por Administrator',NULL,'2014-02-25 14:48:02'),(24,'core',5,'Página <b><a href=\"http://localhost/tarabackend/tarabackend/page/edit/7\">teste</a></b> foi revista por Administrator',NULL,'2014-02-25 14:48:13'),(25,'core',5,'Página <b><a href=\"http://localhost/tarabackend/tarabackend/page/edit/8\">Modulo 2</a></b> foi revista por Administrator',NULL,'2014-02-25 14:48:36'),(26,'core',5,'Página <b><a href=\"http://localhost/tarabackend/tarabackend/page/edit/9\">teste</a></b> foi criada por Administrator',NULL,'2014-02-25 14:49:50'),(27,'core',5,'Utilizador <b>tarambola</b> efectuou Log In.',NULL,'2014-02-26 10:57:36'),(28,'core',5,'Utilizador <b>tarambola</b> efectuou Log Out.',NULL,'2014-02-26 11:35:30'),(29,'core',5,'Utilizador <b>tarambola</b> efectuou Log In.',NULL,'2014-02-26 11:36:19'),(30,'core',5,'Plugin <b>documentos</b> activado por Administrator',NULL,'2014-02-26 11:44:29'),(31,'core',5,'Utilizador <b>tarambola</b> efectuou Log In.',NULL,'2014-02-27 14:34:36'),(32,'core',5,'Utilizador <b>tarambola</b> efectuou Log In.',NULL,'2014-02-28 15:51:44'),(33,'core',5,'Utilizador <b>tarambola</b> efectuou Log In.',NULL,'2014-02-28 19:39:17'),(34,'core',5,'Utilizador <b>tarambola</b> efectuou Log In.',NULL,'2014-03-03 11:01:02'),(35,'core',5,'Utilizador <b>tarambola</b> efectuou Log In.',NULL,'2014-03-03 11:39:03'),(36,'core',5,'Utilizador <b>tarambola</b> efectuou Log In.',NULL,'2014-03-04 12:06:36'),(37,'core',5,'Utilizador <b>tarambola</b> efectuou Log In.',NULL,'2014-03-05 12:19:42'),(38,'core',5,'Plugin <b>encomendas</b> activado por Administrator',NULL,'2014-03-05 14:32:39'),(39,'core',5,'Plugin <b>file_manager</b> desactivado por Administrator',NULL,'2014-03-05 14:43:03'),(40,'core',5,'Plugin <b>file_manager</b> activado por Administrator',NULL,'2014-03-05 14:43:16'),(41,'core',5,'Utilizador <b>tarambola</b> efectuou Log In.',NULL,'2014-03-06 11:43:00'),(42,'core',5,'Utilizador <b>tarambola</b> efectuou Log In.',NULL,'2014-03-11 10:17:05'),(43,'core',5,'Utilizador <b>tarambola</b> efectuou Log In.',NULL,'2014-03-17 16:10:34'),(44,'core',5,'Página <b><a href=\"http://dinamizar.no-ip.org/contcastro/tarabackend/page/edit/2\">Funcionalidades</a></b> foi criada por Administrator',NULL,'2014-03-17 16:41:12'),(45,'core',5,'Página <b><a href=\"http://dinamizar.no-ip.org/contcastro/tarabackend/page/edit/3\">___________funcionalidades</a></b> foi criada por Administrator',NULL,'2014-03-17 16:41:37'),(46,'core',5,'Página <b><a href=\"http://dinamizar.no-ip.org/contcastro/tarabackend/page/edit/4\">Traduções</a></b> foi criada por Administrator',NULL,'2014-03-17 16:42:01'),(47,'core',5,'Página <b><a href=\"http://dinamizar.no-ip.org/contcastro/tarabackend/page/edit/4\">Traduções</a></b> foi revista por Administrator',NULL,'2014-03-17 16:42:05'),(48,'core',5,'Página <b><a href=\"http://dinamizar.no-ip.org/contcastro/tarabackend/page/edit/4\">Traduções</a></b> foi revista por Administrator',NULL,'2014-03-17 16:42:18'),(49,'core',5,'Página <b><a href=\"http://dinamizar.no-ip.org/contcastro/tarabackend/page/edit/3\">___________funcionalidades</a></b> foi revista por Administrator',NULL,'2014-03-17 16:42:28'),(50,'core',5,'Página <b><a href=\"http://dinamizar.no-ip.org/contcastro/tarabackend/page/edit/5\">404</a></b> foi criada por Administrator',NULL,'2014-03-17 16:42:52'),(51,'core',5,'Página <b><a href=\"http://dinamizar.no-ip.org/contcastro/tarabackend/page/edit/5\">404</a></b> foi revista por Administrator',NULL,'2014-03-17 16:43:00'),(52,'core',5,'Página <b><a href=\"http://dinamizar.no-ip.org/contcastro/tarabackend/page/edit/6\">Pesquisa</a></b> foi criada por Administrator',NULL,'2014-03-17 16:43:12'),(53,'core',5,'Página <b><a href=\"http://dinamizar.no-ip.org/contcastro/tarabackend/page/edit/6\">Pesquisa</a></b> foi revista por Administrator',NULL,'2014-03-17 16:43:18'),(54,'core',5,'Página <b><a href=\"http://dinamizar.no-ip.org/contcastro/tarabackend/page/edit/7\">home</a></b> foi criada por Administrator',NULL,'2014-03-17 16:45:45'),(55,'core',5,'Página <b><a href=\"http://dinamizar.no-ip.org/contcastro/tarabackend/page/edit/7\">home</a></b> foi revista por Administrator',NULL,'2014-03-17 16:46:00'),(56,'core',5,'Página <b><a href=\"http://dinamizar.no-ip.org/contcastro/tarabackend/page/edit/8\">___________home</a></b> foi criada por Administrator',NULL,'2014-03-17 16:46:11'),(57,'core',5,'Página <b><a href=\"http://dinamizar.no-ip.org/contcastro/tarabackend/page/edit/8\">___________home</a></b> foi revista por Administrator',NULL,'2014-03-17 16:46:17'),(58,'core',5,'Página <b><a href=\"http://dinamizar.no-ip.org/contcastro/tarabackend/page/edit/9\">serviços</a></b> foi criada por Administrator',NULL,'2014-03-17 16:46:41'),(59,'core',5,'Página <b><a href=\"http://dinamizar.no-ip.org/contcastro/tarabackend/page/edit/9\">serviços</a></b> foi revista por Administrator',NULL,'2014-03-17 16:46:51'),(60,'core',5,'Página <b><a href=\"http://dinamizar.no-ip.org/contcastro/tarabackend/page/edit/10\">___________serviços</a></b> foi criada por Administrator',NULL,'2014-03-17 16:47:17'),(61,'core',5,'Página <b><a href=\"http://dinamizar.no-ip.org/contcastro/tarabackend/page/edit/10\">___________serviços</a></b> foi revista por Administrator',NULL,'2014-03-17 16:47:21'),(62,'core',5,'Página <b><a href=\"http://dinamizar.no-ip.org/contcastro/tarabackend/page/edit/11\">Contabilidade</a></b> foi criada por Administrator',NULL,'2014-03-17 16:48:44'),(63,'core',5,'Página <b><a href=\"http://dinamizar.no-ip.org/contcastro/tarabackend/page/edit/12\">Seguros</a></b> foi criada por Administrator',NULL,'2014-03-17 16:48:57'),(64,'core',5,'Página <b><a href=\"http://dinamizar.no-ip.org/contcastro/tarabackend/page/edit/13\">Investimento</a></b> foi criada por Administrator',NULL,'2014-03-17 16:49:13'),(65,'core',5,'Página <b><a href=\"http://dinamizar.no-ip.org/contcastro/tarabackend/page/edit/14\">Contactos</a></b> foi criada por Administrator',NULL,'2014-03-17 16:59:47'),(66,'core',5,'Página <b><a href=\"http://dinamizar.no-ip.org/contcastro/tarabackend/page/edit/14\">Contactos</a></b> foi revista por Administrator',NULL,'2014-03-17 16:59:55'),(67,'core',5,'Página <b><a href=\"http://dinamizar.no-ip.org/contcastro/tarabackend/page/edit/15\">Área Privada</a></b> foi criada por Administrator',NULL,'2014-03-17 17:01:30'),(68,'core',5,'Página <b><a href=\"http://dinamizar.no-ip.org/contcastro/tarabackend/page/edit/7\">Home</a></b> foi revista por Administrator',NULL,'2014-03-17 17:01:55'),(69,'core',5,'Página <b><a href=\"http://dinamizar.no-ip.org/contcastro/tarabackend/page/edit/15\">Área Privada</a></b> foi revista por Administrator',NULL,'2014-03-17 17:09:05'),(70,'core',5,'Layout <b><a href=\"http://dinamizar.no-ip.org/contcastro/tarabackend/layout/edit/1\">default</a></b> foi revisto por Administrator',NULL,'2014-03-17 17:11:45'),(71,'core',5,'Layout <b><a href=\"http://dinamizar.no-ip.org/contcastro/tarabackend/layout/edit/1\">default</a></b> foi revisto por Administrator',NULL,'2014-03-17 17:43:52'),(72,'core',5,'Layout <b><a href=\"http://dinamizar.no-ip.org/contcastro/tarabackend/layout/edit/1\">default</a></b> foi revisto por Administrator',NULL,'2014-03-17 17:49:34'),(73,'core',5,'Página <b><a href=\"http://dinamizar.no-ip.org/contcastro/tarabackend/page/edit/1\">Página inicial</a></b> foi revista por Administrator',NULL,'2014-03-17 17:50:23'),(74,'core',5,'Layout <b><a href=\"http://dinamizar.no-ip.org/contcastro/tarabackend/layout/edit/1\">default</a></b> foi revisto por Administrator',NULL,'2014-03-17 17:56:15'),(75,'core',5,'Snippet <b><a href=\"http://dinamizar.no-ip.org/contcastro/tarabackend/snippet/edit/1\">layoutFunctions</a></b> foi criado por Administrator',NULL,'2014-03-17 18:00:32'),(76,'core',5,'Layout <b><a href=\"http://dinamizar.no-ip.org/contcastro/tarabackend/layout/edit/1\">default</a></b> foi revisto por Administrator',NULL,'2014-03-17 18:04:20'),(77,'core',5,'Layout <b><a href=\"http://dinamizar.no-ip.org/contcastro/tarabackend/layout/edit/1\">default</a></b> foi revisto por Administrator',NULL,'2014-03-17 18:07:08'),(78,'core',5,'Layout <b><a href=\"http://dinamizar.no-ip.org/contcastro/tarabackend/layout/edit/1\">default</a></b> foi revisto por Administrator',NULL,'2014-03-17 18:10:54'),(79,'core',5,'Snippet <b><a href=\"http://dinamizar.no-ip.org/contcastro/tarabackend/snippet/edit/2\">home</a></b> foi criado por Administrator',NULL,'2014-03-17 18:17:08'),(80,'core',5,'Snippet <b><a href=\"http://dinamizar.no-ip.org/contcastro/tarabackend/snippet/edit/2\">home</a></b> foi revisto por Administrator',NULL,'2014-03-17 18:17:15'),(81,'core',5,'Página <b><a href=\"http://dinamizar.no-ip.org/contcastro/tarabackend/page/edit/7\">Home</a></b> foi revista por Administrator',NULL,'2014-03-17 18:32:29'),(82,'core',5,'Snippet <b><a href=\"http://dinamizar.no-ip.org/contcastro/tarabackend/snippet/edit/2\">home</a></b> foi revisto por Administrator',NULL,'2014-03-17 18:33:09'),(83,'core',5,'Snippet <b><a href=\"http://dinamizar.no-ip.org/contcastro/tarabackend/snippet/edit/2\">home</a></b> foi revisto por Administrator',NULL,'2014-03-17 18:48:23'),(84,'core',5,'Página <b><a href=\"http://dinamizar.no-ip.org/contcastro/tarabackend/page/edit/7\">Home</a></b> foi revista por Administrator',NULL,'2014-03-17 18:49:17'),(85,'core',5,'Página <b><a href=\"http://dinamizar.no-ip.org/contcastro/tarabackend/page/edit/7\">Home</a></b> foi revista por Administrator',NULL,'2014-03-17 18:50:41'),(86,'core',5,'Página <b><a href=\"http://dinamizar.no-ip.org/contcastro/tarabackend/page/edit/7\">Home</a></b> foi revista por Administrator',NULL,'2014-03-17 19:04:12'),(87,'core',5,'Página <b><a href=\"http://dinamizar.no-ip.org/contcastro/tarabackend/page/edit/7\">Home</a></b> foi revista por Administrator',NULL,'2014-03-17 19:05:00'),(88,'core',5,'Página <b><a href=\"http://dinamizar.no-ip.org/contcastro/tarabackend/page/edit/7\">Home</a></b> foi revista por Administrator',NULL,'2014-03-17 19:07:04'),(89,'core',5,'Snippet <b><a href=\"http://dinamizar.no-ip.org/contcastro/tarabackend/snippet/edit/2\">home</a></b> foi revisto por Administrator',NULL,'2014-03-17 19:07:32'),(90,'core',5,'Snippet <b><a href=\"http://dinamizar.no-ip.org/contcastro/tarabackend/snippet/edit/2\">home</a></b> foi revisto por Administrator',NULL,'2014-03-17 19:10:21'),(91,'core',5,'Snippet <b><a href=\"http://dinamizar.no-ip.org/contcastro/tarabackend/snippet/edit/2\">home</a></b> foi revisto por Administrator',NULL,'2014-03-17 19:11:17'),(92,'core',5,'Layout <b><a href=\"http://dinamizar.no-ip.org/contcastro/tarabackend/layout/edit/1\">default</a></b> foi revisto por Administrator',NULL,'2014-03-17 19:13:28'),(93,'core',5,'Snippet <b><a href=\"http://dinamizar.no-ip.org/contcastro/tarabackend/snippet/edit/2\">home</a></b> foi revisto por Administrator',NULL,'2014-03-17 19:21:26'),(94,'core',5,'Snippet <b><a href=\"http://dinamizar.no-ip.org/contcastro/tarabackend/snippet/edit/2\">home</a></b> foi revisto por Administrator',NULL,'2014-03-17 19:21:57'),(95,'core',5,'Snippet <b><a href=\"http://dinamizar.no-ip.org/contcastro/tarabackend/snippet/edit/2\">home</a></b> foi revisto por Administrator',NULL,'2014-03-17 19:23:13'),(96,'core',5,'Snippet <b><a href=\"http://dinamizar.no-ip.org/contcastro/tarabackend/snippet/edit/2\">home</a></b> foi revisto por Administrator',NULL,'2014-03-17 19:30:01'),(97,'core',5,'Página <b><a href=\"http://dinamizar.no-ip.org/contcastro/tarabackend/page/edit/7\">Home</a></b> foi revista por Administrator',NULL,'2014-03-17 19:30:44'),(98,'core',5,'Página <b><a href=\"http://dinamizar.no-ip.org/contcastro/tarabackend/page/edit/7\">Home</a></b> foi revista por Administrator',NULL,'2014-03-17 19:31:06'),(99,'core',5,'Snippet <b><a href=\"http://dinamizar.no-ip.org/contcastro/tarabackend/snippet/edit/2\">home</a></b> foi revisto por Administrator',NULL,'2014-03-17 19:31:41'),(100,'core',5,'Snippet <b><a href=\"http://dinamizar.no-ip.org/contcastro/tarabackend/snippet/edit/2\">home</a></b> foi revisto por Administrator',NULL,'2014-03-17 19:32:17'),(101,'core',5,'Snippet <b><a href=\"http://dinamizar.no-ip.org/contcastro/tarabackend/snippet/edit/3\">contabilidade</a></b> foi criado por Administrator',NULL,'2014-03-17 19:32:28'),(102,'core',5,'Layout <b><a href=\"http://dinamizar.no-ip.org/contcastro/tarabackend/layout/edit/1\">default</a></b> foi revisto por Administrator',NULL,'2014-03-17 19:33:07'),(103,'core',5,'Snippet <b><a href=\"http://dinamizar.no-ip.org/contcastro/tarabackend/snippet/edit/3\">contabilidade</a></b> foi revisto por Administrator',NULL,'2014-03-17 19:33:41'),(104,'core',5,'Layout <b><a href=\"http://dinamizar.no-ip.org/contcastro/tarabackend/layout/edit/1\">default</a></b> foi revisto por Administrator',NULL,'2014-03-17 19:34:35'),(105,'core',5,'Layout <b><a href=\"http://dinamizar.no-ip.org/contcastro/tarabackend/layout/edit/1\">default</a></b> foi revisto por Administrator',NULL,'2014-03-17 19:35:34'),(106,'core',5,'Layout <b><a href=\"http://dinamizar.no-ip.org/contcastro/tarabackend/layout/edit/1\">default</a></b> foi revisto por Administrator',NULL,'2014-03-17 19:37:22'),(107,'core',5,'Snippet <b><a href=\"http://dinamizar.no-ip.org/contcastro/tarabackend/snippet/edit/3\">contabilidade</a></b> foi revisto por Administrator',NULL,'2014-03-17 19:38:36'),(108,'core',5,'Snippet <b><a href=\"http://dinamizar.no-ip.org/contcastro/tarabackend/snippet/edit/4\">right-content</a></b> foi criado por Administrator',NULL,'2014-03-17 19:39:43'),(109,'core',5,'Snippet <b><a href=\"http://dinamizar.no-ip.org/contcastro/tarabackend/snippet/edit/4\">right-content</a></b> foi revisto por Administrator',NULL,'2014-03-17 19:40:11'),(110,'core',5,'Snippet <b><a href=\"http://dinamizar.no-ip.org/contcastro/tarabackend/snippet/edit/3\">contabilidade</a></b> foi revisto por Administrator',NULL,'2014-03-17 19:40:20'),(111,'core',5,'Página <b><a href=\"http://dinamizar.no-ip.org/contcastro/tarabackend/page/edit/11\">Contabilidade</a></b> foi revista por Administrator',NULL,'2014-03-17 19:42:13'),(112,'core',5,'Página <b><a href=\"http://dinamizar.no-ip.org/contcastro/tarabackend/page/edit/11\">Contabilidade</a></b> foi revista por Administrator',NULL,'2014-03-17 19:43:17'),(113,'core',5,'Snippet <b><a href=\"http://dinamizar.no-ip.org/contcastro/tarabackend/snippet/edit/3\">contabilidade</a></b> foi revisto por Administrator',NULL,'2014-03-17 19:43:37'),(114,'core',5,'Snippet <b><a href=\"http://dinamizar.no-ip.org/contcastro/tarabackend/snippet/edit/3\">contabilidade</a></b> foi revisto por Administrator',NULL,'2014-03-17 19:44:51'),(115,'core',5,'Snippet <b><a href=\"http://dinamizar.no-ip.org/contcastro/tarabackend/snippet/edit/5\">seguros</a></b> foi criado por Administrator',NULL,'2014-03-17 19:46:51'),(116,'core',5,'Snippet <b><a href=\"http://dinamizar.no-ip.org/contcastro/tarabackend/snippet/edit/5\">seguros</a></b> foi revisto por Administrator',NULL,'2014-03-17 19:48:13'),(117,'core',5,'Página <b><a href=\"http://dinamizar.no-ip.org/contcastro/tarabackend/page/edit/12\">Seguros</a></b> foi revista por Administrator',NULL,'2014-03-17 19:48:35'),(118,'core',5,'Snippet <b><a href=\"http://dinamizar.no-ip.org/contcastro/tarabackend/snippet/edit/5\">seguros</a></b> foi revisto por Administrator',NULL,'2014-03-17 19:49:34'),(119,'core',5,'Página <b><a href=\"http://dinamizar.no-ip.org/contcastro/tarabackend/page/edit/12\">Seguros</a></b> foi revista por Administrator',NULL,'2014-03-17 19:49:53'),(120,'core',5,'Página <b><a href=\"http://dinamizar.no-ip.org/contcastro/tarabackend/page/edit/13\">Investimento</a></b> foi revista por Administrator',NULL,'2014-03-17 19:51:10'),(121,'core',5,'Página <b><a href=\"http://dinamizar.no-ip.org/contcastro/tarabackend/page/edit/13\">Investimento</a></b> foi revista por Administrator',NULL,'2014-03-17 19:51:12'),(122,'core',5,'Snippet <b><a href=\"http://dinamizar.no-ip.org/contcastro/tarabackend/snippet/edit/5\">seguros</a></b> foi revisto por Administrator',NULL,'2014-03-17 19:51:42'),(123,'core',5,'Snippet <b><a href=\"http://dinamizar.no-ip.org/contcastro/tarabackend/snippet/edit/6\">investimentos</a></b> foi criado por Administrator',NULL,'2014-03-17 19:51:52'),(124,'core',5,'Snippet <b><a href=\"http://dinamizar.no-ip.org/contcastro/tarabackend/snippet/edit/6\">investimento</a></b> foi revisto por Administrator',NULL,'2014-03-17 19:52:01'),(125,'core',5,'Snippet <b><a href=\"http://dinamizar.no-ip.org/contcastro/tarabackend/snippet/edit/6\">investimento</a></b> foi revisto por Administrator',NULL,'2014-03-17 19:52:44'),(126,'core',5,'Snippet <b><a href=\"http://dinamizar.no-ip.org/contcastro/tarabackend/snippet/edit/7\">contactos</a></b> foi criado por Administrator',NULL,'2014-03-17 19:53:13'),(127,'core',5,'Snippet <b><a href=\"http://dinamizar.no-ip.org/contcastro/tarabackend/snippet/edit/7\">contactos</a></b> foi revisto por Administrator',NULL,'2014-03-17 19:53:33'),(128,'core',5,'Snippet <b><a href=\"http://dinamizar.no-ip.org/contcastro/tarabackend/snippet/edit/7\">contactos</a></b> foi revisto por Administrator',NULL,'2014-03-17 19:56:54'),(129,'core',5,'Página <b><a href=\"http://dinamizar.no-ip.org/contcastro/tarabackend/page/edit/14\">Contactos</a></b> foi revista por Administrator',NULL,'2014-03-17 19:56:58'),(130,'core',5,'Página <b><a href=\"http://dinamizar.no-ip.org/contcastro/tarabackend/page/edit/14\">Contactos</a></b> foi revista por Administrator',NULL,'2014-03-17 19:58:59'),(131,'core',5,'Snippet <b><a href=\"http://dinamizar.no-ip.org/contcastro/tarabackend/snippet/edit/7\">contactos</a></b> foi revisto por Administrator',NULL,'2014-03-17 19:59:27'),(132,'core',5,'Utilizador <b>tarambola</b> efectuou Log In.',NULL,'2014-03-18 10:28:54'),(133,'core',5,'Snippet <b><a href=\"http://dinamizar.no-ip.org/contcastro/tarabackend/snippet/edit/4\">right-content</a></b> foi revisto por Administrator',NULL,'2014-03-18 10:34:39'),(134,'core',5,'Layout <b><a href=\"http://dinamizar.no-ip.org/contcastro/tarabackend/layout/edit/1\">default</a></b> foi revisto por Administrator',NULL,'2014-03-18 10:35:36'),(135,'core',5,'Página <b><a href=\"http://dinamizar.no-ip.org/contcastro/tarabackend/page/edit/13\">Projectos Investimento</a></b> foi revista por Administrator',NULL,'2014-03-18 10:36:03'),(136,'core',5,'Página <b><a href=\"http://dinamizar.no-ip.org/contcastro/tarabackend/page/edit/13\">Projetos Investimento</a></b> foi revista por Administrator',NULL,'2014-03-18 10:37:28'),(137,'core',5,'Layout <b><a href=\"http://dinamizar.no-ip.org/contcastro/tarabackend/layout/edit/1\">default</a></b> foi revisto por Administrator',NULL,'2014-03-18 10:37:56'),(138,'core',5,'Layout <b><a href=\"http://dinamizar.no-ip.org/contcastro/tarabackend/layout/edit/1\">default</a></b> foi revisto por Administrator',NULL,'2014-03-18 10:38:15'),(139,'core',5,'Snippet <b><a href=\"http://dinamizar.no-ip.org/contcastro/tarabackend/snippet/edit/4\">right-content</a></b> foi revisto por Administrator',NULL,'2014-03-18 10:39:11'),(140,'core',5,'Snippet <b><a href=\"http://dinamizar.no-ip.org/contcastro/tarabackend/snippet/edit/6\">investimento</a></b> foi revisto por Administrator',NULL,'2014-03-18 10:39:20'),(141,'core',5,'Snippet <b><a href=\"http://dinamizar.no-ip.org/contcastro/tarabackend/snippet/edit/6\">investimento</a></b> foi revisto por Administrator',NULL,'2014-03-18 10:39:57'),(142,'core',5,'Snippet <b><a href=\"http://dinamizar.no-ip.org/contcastro/tarabackend/snippet/edit/2\">home</a></b> foi revisto por Administrator',NULL,'2014-03-18 10:40:06'),(143,'core',5,'Snippet <b><a href=\"http://dinamizar.no-ip.org/contcastro/tarabackend/snippet/edit/2\">home</a></b> foi revisto por Administrator',NULL,'2014-03-18 10:40:30'),(144,'core',5,'Snippet <b><a href=\"http://dinamizar.no-ip.org/contcastro/tarabackend/snippet/edit/4\">right-content</a></b> foi revisto por Administrator',NULL,'2014-03-18 10:41:30'),(145,'core',5,'Snippet <b><a href=\"http://dinamizar.no-ip.org/contcastro/tarabackend/snippet/edit/4\">right-content</a></b> foi revisto por Administrator',NULL,'2014-03-18 10:41:51'),(146,'core',5,'Página <b><a href=\"http://dinamizar.no-ip.org/contcastro/tarabackend/page/edit/14\">Contactos</a></b> foi revista por Administrator',NULL,'2014-03-18 10:43:54'),(147,'core',5,'Snippet <b><a href=\"http://dinamizar.no-ip.org/contcastro/tarabackend/snippet/edit/4\">right-content</a></b> foi revisto por Administrator',NULL,'2014-03-18 10:44:45'),(148,'core',5,'Snippet <b><a href=\"http://dinamizar.no-ip.org/contcastro/tarabackend/snippet/edit/7\">contactos</a></b> foi revisto por Administrator',NULL,'2014-03-18 10:44:51'),(149,'core',5,'Página <b><a href=\"http://dinamizar.no-ip.org/contcastro/tarabackend/page/edit/14\">Contactos</a></b> foi revista por Administrator',NULL,'2014-03-18 10:48:06'),(150,'core',5,'Página <b><a href=\"http://dinamizar.no-ip.org/contcastro/tarabackend/page/edit/14\">Contactos</a></b> foi revista por Administrator',NULL,'2014-03-18 10:48:44'),(151,'core',5,'Snippet <b><a href=\"http://dinamizar.no-ip.org/contcastro/tarabackend/snippet/edit/7\">contactos</a></b> foi revisto por Administrator',NULL,'2014-03-18 10:49:25'),(152,'core',5,'Snippet <b><a href=\"http://dinamizar.no-ip.org/contcastro/tarabackend/snippet/edit/8\">area-privada</a></b> foi criado por Administrator',NULL,'2014-03-18 10:49:35'),(153,'core',5,'Snippet <b><a href=\"http://dinamizar.no-ip.org/contcastro/tarabackend/snippet/edit/8\">area-privada</a></b> foi revisto por Administrator',NULL,'2014-03-18 10:51:28'),(154,'core',5,'Página <b><a href=\"http://dinamizar.no-ip.org/contcastro/tarabackend/page/edit/15\">Área Privada</a></b> foi revista por Administrator',NULL,'2014-03-18 10:51:52'),(155,'core',5,'Página <b><a href=\"http://dinamizar.no-ip.org/contcastro/tarabackend/page/edit/15\">Área Privada</a></b> foi revista por Administrator',NULL,'2014-03-18 10:52:00'),(156,'core',5,'Página <b><a href=\"http://dinamizar.no-ip.org/contcastro/tarabackend/page/edit/15\">Área Privada</a></b> foi revista por Administrator',NULL,'2014-03-18 10:52:22'),(157,'core',5,'Snippet <b><a href=\"http://dinamizar.no-ip.org/contcastro/tarabackend/snippet/edit/8\">area-privada</a></b> foi revisto por Administrator',NULL,'2014-03-18 10:54:46'),(158,'core',5,'Snippet <b><a href=\"http://dinamizar.no-ip.org/contcastro/tarabackend/snippet/edit/8\">area-privada</a></b> foi revisto por Administrator',NULL,'2014-03-18 10:59:19'),(159,'core',5,'Layout <b><a href=\"http://dinamizar.no-ip.org/contcastro/tarabackend/layout/edit/1\">default</a></b> foi revisto por Administrator',NULL,'2014-03-18 11:00:53'),(160,'core',5,'Snippet <b><a href=\"http://dinamizar.no-ip.org/contcastro/tarabackend/snippet/edit/8\">area-privada</a></b> foi revisto por Administrator',NULL,'2014-03-18 11:47:52'),(161,'core',5,'Snippet <b><a href=\"http://dinamizar.no-ip.org/contcastro/tarabackend/snippet/edit/9\">jsAppend</a></b> foi criado por Administrator',NULL,'2014-03-18 11:48:02'),(162,'core',5,'Snippet <b><a href=\"http://dinamizar.no-ip.org/contcastro/tarabackend/snippet/edit/8\">area-privada</a></b> foi revisto por Administrator',NULL,'2014-03-18 11:54:53'),(163,'core',5,'Snippet <b><a href=\"http://dinamizar.no-ip.org/contcastro/tarabackend/snippet/edit/8\">area-privada</a></b> foi revisto por Administrator',NULL,'2014-03-18 12:18:07'),(164,'core',5,'Snippet <b><a href=\"http://dinamizar.no-ip.org/contcastro/tarabackend/snippet/edit/9\">jsAppend</a></b> foi revisto por Administrator',NULL,'2014-03-18 12:19:13'),(165,'core',5,'Layout <b><a href=\"http://dinamizar.no-ip.org/contcastro/tarabackend/layout/edit/1\">default</a></b> foi revisto por Administrator',NULL,'2014-03-18 12:20:39'),(166,'core',5,'Snippet <b><a href=\"http://dinamizar.no-ip.org/contcastro/tarabackend/snippet/edit/8\">area-privada</a></b> foi revisto por Administrator',NULL,'2014-03-18 12:26:38'),(167,'core',5,'Snippet <b><a href=\"http://dinamizar.no-ip.org/contcastro/tarabackend/snippet/edit/9\">jsAppend</a></b> foi revisto por Administrator',NULL,'2014-03-18 12:26:54'),(168,'core',5,'Snippet <b><a href=\"http://dinamizar.no-ip.org/contcastro/tarabackend/snippet/edit/8\">area-privada</a></b> foi revisto por Administrator',NULL,'2014-03-18 12:35:11'),(169,'core',5,'Snippet <b><a href=\"http://dinamizar.no-ip.org/contcastro/tarabackend/snippet/edit/8\">area-privada</a></b> foi revisto por Administrator',NULL,'2014-03-18 12:38:20'),(170,'core',5,'Snippet <b><a href=\"http://dinamizar.no-ip.org/contcastro/tarabackend/snippet/edit/9\">jsAppend</a></b> foi revisto por Administrator',NULL,'2014-03-18 12:40:42'),(171,'core',5,'Snippet <b><a href=\"http://dinamizar.no-ip.org/contcastro/tarabackend/snippet/edit/9\">jsAppend</a></b> foi revisto por Administrator',NULL,'2014-03-18 12:44:23'),(172,'core',5,'Snippet <b><a href=\"http://dinamizar.no-ip.org/contcastro/tarabackend/snippet/edit/9\">jsAppend</a></b> foi revisto por Administrator',NULL,'2014-03-18 12:46:55'),(173,'core',5,'Snippet <b><a href=\"http://dinamizar.no-ip.org/contcastro/tarabackend/snippet/edit/9\">jsAppend</a></b> foi revisto por Administrator',NULL,'2014-03-18 12:47:29'),(174,'core',5,'Snippet <b><a href=\"http://dinamizar.no-ip.org/contcastro/tarabackend/snippet/edit/9\">jsAppend</a></b> foi revisto por Administrator',NULL,'2014-03-18 12:47:58'),(175,'core',5,'Snippet <b><a href=\"http://dinamizar.no-ip.org/contcastro/tarabackend/snippet/edit/9\">jsAppend</a></b> foi revisto por Administrator',NULL,'2014-03-18 12:59:40'),(176,'core',5,'Snippet <b><a href=\"http://dinamizar.no-ip.org/contcastro/tarabackend/snippet/edit/9\">jsAppend</a></b> foi revisto por Administrator',NULL,'2014-03-18 13:00:46'),(177,'core',5,'Snippet <b><a href=\"http://dinamizar.no-ip.org/contcastro/tarabackend/snippet/edit/8\">area-privada</a></b> foi revisto por Administrator',NULL,'2014-03-18 13:04:48'),(178,'core',5,'Snippet <b><a href=\"http://dinamizar.no-ip.org/contcastro/tarabackend/snippet/edit/8\">area-privada</a></b> foi revisto por Administrator',NULL,'2014-03-18 13:07:00'),(179,'core',5,'Snippet <b><a href=\"http://dinamizar.no-ip.org/contcastro/tarabackend/snippet/edit/8\">area-privada</a></b> foi revisto por Administrator',NULL,'2014-03-18 13:08:28'),(180,'core',5,'Snippet <b><a href=\"http://dinamizar.no-ip.org/contcastro/tarabackend/snippet/edit/9\">jsAppend</a></b> foi revisto por Administrator',NULL,'2014-03-18 13:10:52'),(181,'core',5,'Snippet <b><a href=\"http://dinamizar.no-ip.org/contcastro/tarabackend/snippet/edit/8\">area-privada</a></b> foi revisto por Administrator',NULL,'2014-03-18 13:11:03'),(182,'core',5,'Snippet <b><a href=\"http://dinamizar.no-ip.org/contcastro/tarabackend/snippet/edit/8\">area-privada</a></b> foi revisto por Administrator',NULL,'2014-03-18 13:13:20'),(183,'core',5,'Utilizador <b>tarambola</b> efectuou Log In.',NULL,'2014-03-18 13:20:57'),(184,'core',5,'Snippet <b><a href=\"http://dinamizar.no-ip.org/contcastro/tarabackend/snippet/edit/8\">area-privada</a></b> foi revisto por Administrator',NULL,'2014-03-18 13:21:07'),(185,'core',5,'Snippet <b><a href=\"http://dinamizar.no-ip.org/contcastro/tarabackend/snippet/edit/8\">area-privada</a></b> foi revisto por Administrator',NULL,'2014-03-18 14:37:56'),(186,'core',5,'Snippet <b><a href=\"http://dinamizar.no-ip.org/contcastro/tarabackend/snippet/edit/8\">area-privada</a></b> foi revisto por Administrator',NULL,'2014-03-18 14:38:36'),(187,'core',5,'Snippet <b><a href=\"http://dinamizar.no-ip.org/contcastro/tarabackend/snippet/edit/8\">area-privada</a></b> foi revisto por Administrator',NULL,'2014-03-18 14:39:05'),(188,'core',5,'Snippet <b><a href=\"http://dinamizar.no-ip.org/contcastro/tarabackend/snippet/edit/8\">area-privada</a></b> foi revisto por Administrator',NULL,'2014-03-18 14:40:39'),(189,'core',5,'Snippet <b><a href=\"http://dinamizar.no-ip.org/contcastro/tarabackend/snippet/edit/8\">area-privada</a></b> foi revisto por Administrator',NULL,'2014-03-18 15:41:38'),(190,'core',5,'Snippet <b><a href=\"http://dinamizar.no-ip.org/contcastro/tarabackend/snippet/edit/8\">area-privada</a></b> foi revisto por Administrator',NULL,'2014-03-18 15:47:14'),(191,'core',5,'Snippet <b><a href=\"http://dinamizar.no-ip.org/contcastro/tarabackend/snippet/edit/8\">area-privada</a></b> foi revisto por Administrator',NULL,'2014-03-18 15:50:07'),(192,'core',5,'Utilizador <b>tarambola</b> efectuou Log In.',NULL,'2014-03-18 15:58:42'),(193,'core',5,'Snippet <b><a href=\"http://dinamizar.no-ip.org/contcastro/tarabackend/snippet/edit/8\">area-privada</a></b> foi revisto por Administrator',NULL,'2014-03-18 15:58:54'),(194,'core',5,'Snippet <b><a href=\"http://dinamizar.no-ip.org/contcastro/tarabackend/snippet/edit/8\">area-privada</a></b> foi revisto por Administrator',NULL,'2014-03-18 16:51:09'),(195,'core',5,'Snippet <b><a href=\"http://dinamizar.no-ip.org/contcastro/tarabackend/snippet/edit/8\">area-privada</a></b> foi revisto por Administrator',NULL,'2014-03-18 16:55:30'),(196,'core',5,'Snippet <b><a href=\"http://dinamizar.no-ip.org/contcastro/tarabackend/snippet/edit/8\">area-privada</a></b> foi revisto por Administrator',NULL,'2014-03-18 16:56:32'),(197,'core',5,'Layout <b><a href=\"http://dinamizar.no-ip.org/contcastro/tarabackend/layout/edit/1\">default</a></b> foi revisto por Administrator',NULL,'2014-03-18 17:08:22'),(198,'core',5,'Layout <b><a href=\"http://dinamizar.no-ip.org/contcastro/tarabackend/layout/edit/1\">default</a></b> foi revisto por Administrator',NULL,'2014-03-18 17:10:42'),(199,'core',5,'Layout <b><a href=\"http://dinamizar.no-ip.org/contcastro/tarabackend/layout/edit/1\">default</a></b> foi revisto por Administrator',NULL,'2014-03-18 17:11:25'),(200,'core',5,'Layout <b><a href=\"http://dinamizar.no-ip.org/contcastro/tarabackend/layout/edit/1\">default</a></b> foi revisto por Administrator',NULL,'2014-03-18 17:13:59'),(201,'core',5,'Utilizador <b>tarambola</b> efectuou Log In.',NULL,'2014-03-18 17:52:05'),(202,'core',5,'Utilizador <b>tarambola</b> efectuou Log In.',NULL,'2014-03-18 18:08:34'),(203,'core',5,'Utilizador <b>tarambola</b> efectuou Log In.',NULL,'2014-03-18 18:31:14'),(204,'core',5,'Layout <b><a href=\"http://dinamizar.no-ip.org/contcastro/tarabackend/layout/edit/1\">default</a></b> foi revisto por Administrator',NULL,'2014-03-18 18:36:47'),(205,'core',5,'Utilizador <b>tarambola</b> efectuou Log In.',NULL,'2014-03-18 18:37:58'),(206,'core',5,'Layout <b><a href=\"http://dinamizar.no-ip.org/contcastro/tarabackend/layout/edit/1\">default</a></b> foi revisto por Administrator',NULL,'2014-03-18 18:38:39'),(207,'core',5,'Snippet <b><a href=\"http://dinamizar.no-ip.org/contcastro/tarabackend/snippet/edit/8\">area-privada</a></b> foi revisto por Administrator',NULL,'2014-03-18 18:40:44'),(208,'core',5,'Layout <b><a href=\"http://dinamizar.no-ip.org/contcastro/tarabackend/layout/edit/1\">default</a></b> foi revisto por Administrator',NULL,'2014-03-18 18:41:16'),(209,'core',5,'Layout <b><a href=\"http://dinamizar.no-ip.org/contcastro/tarabackend/layout/edit/1\">default</a></b> foi revisto por Administrator',NULL,'2014-03-18 18:41:59'),(210,'core',5,'Layout <b><a href=\"http://dinamizar.no-ip.org/contcastro/tarabackend/layout/edit/1\">default</a></b> foi revisto por Administrator',NULL,'2014-03-18 18:50:28'),(211,'core',5,'Layout <b><a href=\"http://dinamizar.no-ip.org/contcastro/tarabackend/layout/edit/1\">default</a></b> foi revisto por Administrator',NULL,'2014-03-18 18:51:07'),(212,'core',5,'Layout <b><a href=\"http://dinamizar.no-ip.org/contcastro/tarabackend/layout/edit/1\">default</a></b> foi revisto por Administrator',NULL,'2014-03-18 18:52:14'),(213,'core',5,'Layout <b><a href=\"http://dinamizar.no-ip.org/contcastro/tarabackend/layout/edit/1\">default</a></b> foi revisto por Administrator',NULL,'2014-03-18 18:52:39'),(214,'core',5,'Layout <b><a href=\"http://dinamizar.no-ip.org/contcastro/tarabackend/layout/edit/1\">default</a></b> foi revisto por Administrator',NULL,'2014-03-18 18:55:36'),(215,'core',5,'Layout <b><a href=\"http://dinamizar.no-ip.org/contcastro/tarabackend/layout/edit/1\">default</a></b> foi revisto por Administrator',NULL,'2014-03-18 18:59:08'),(216,'core',5,'Layout <b><a href=\"http://dinamizar.no-ip.org/contcastro/tarabackend/layout/edit/1\">default</a></b> foi revisto por Administrator',NULL,'2014-03-18 19:01:31'),(217,'core',5,'Layout <b><a href=\"http://dinamizar.no-ip.org/contcastro/tarabackend/layout/edit/1\">default</a></b> foi revisto por Administrator',NULL,'2014-03-18 19:03:20'),(218,'core',5,'Utilizador <b>tarambola</b> efectuou Log In.',NULL,'2014-03-19 11:18:12'),(219,'core',5,'Snippet <b><a href=\"http://dinamizar.no-ip.org/contcastro/tarabackend/snippet/edit/8\">area-privada</a></b> foi revisto por Administrator',NULL,'2014-03-19 11:52:28'),(220,'core',5,'Snippet <b><a href=\"http://dinamizar.no-ip.org/contcastro/tarabackend/snippet/edit/8\">area-privada</a></b> foi revisto por Administrator',NULL,'2014-03-19 11:52:48'),(221,'core',5,'Utilizador <b>tarambola</b> efectuou Log In.',NULL,'2014-03-19 11:53:54'),(222,'core',5,'Layout <b><a href=\"http://dinamizar.no-ip.org/contcastro/tarabackend/layout/edit/1\">default</a></b> foi revisto por Administrator',NULL,'2014-03-19 11:54:41'),(223,'core',5,'Utilizador <b>tarambola</b> efectuou Log In.',NULL,'2014-03-19 12:16:39'),(224,'core',5,'Utilizador <b>tarambola</b> efectuou Log In.',NULL,'2014-03-19 12:19:21'),(225,'core',5,'Snippet <b><a href=\"http://dinamizar.no-ip.org/contcastro/tarabackend/snippet/edit/8\">area-privada</a></b> foi revisto por Administrator',NULL,'2014-03-19 12:54:48'),(226,'core',5,'Utilizador <b>tarambola</b> efectuou Log In.',NULL,'2014-03-19 14:36:34'),(227,'core',5,'Snippet <b><a href=\"http://dinamizar.no-ip.org/contcastro/tarabackend/snippet/edit/2\">home</a></b> foi revisto por Administrator',NULL,'2014-03-19 14:37:34'),(228,'core',5,'Layout <b><a href=\"http://dinamizar.no-ip.org/contcastro/tarabackend/layout/edit/1\">default</a></b> foi revisto por Administrator',NULL,'2014-03-19 14:47:33'),(229,'core',5,'Layout <b><a href=\"http://dinamizar.no-ip.org/contcastro/tarabackend/layout/edit/1\">default</a></b> foi revisto por Administrator',NULL,'2014-03-19 14:51:30'),(230,'core',5,'Layout <b><a href=\"http://dinamizar.no-ip.org/contcastro/tarabackend/layout/edit/1\">default</a></b> foi revisto por Administrator',NULL,'2014-03-19 14:52:56'),(231,'core',5,'Snippet <b><a href=\"http://dinamizar.no-ip.org/contcastro/tarabackend/snippet/edit/8\">area-privada</a></b> foi revisto por Administrator',NULL,'2014-03-19 14:54:34'),(232,'core',5,'Layout <b><a href=\"http://dinamizar.no-ip.org/contcastro/tarabackend/layout/edit/1\">default</a></b> foi revisto por Administrator',NULL,'2014-03-19 15:05:54'),(233,'core',5,'Layout <b><a href=\"http://dinamizar.no-ip.org/contcastro/tarabackend/layout/edit/1\">default</a></b> foi revisto por Administrator',NULL,'2014-03-19 15:06:25'),(234,'core',5,'Layout <b><a href=\"http://dinamizar.no-ip.org/contcastro/tarabackend/layout/edit/1\">default</a></b> foi revisto por Administrator',NULL,'2014-03-19 15:07:40'),(235,'core',5,'Layout <b><a href=\"http://dinamizar.no-ip.org/contcastro/tarabackend/layout/edit/1\">default</a></b> foi revisto por Administrator',NULL,'2014-03-19 15:08:46'),(236,'core',5,'Layout <b><a href=\"http://dinamizar.no-ip.org/contcastro/tarabackend/layout/edit/1\">default</a></b> foi revisto por Administrator',NULL,'2014-03-19 15:09:35'),(237,'core',5,'Layout <b><a href=\"http://dinamizar.no-ip.org/contcastro/tarabackend/layout/edit/1\">default</a></b> foi revisto por Administrator',NULL,'2014-03-19 15:10:18'),(238,'core',5,'Utilizador <b>tarambola</b> efectuou Log In.',NULL,'2014-03-19 15:11:37'),(239,'core',5,'Snippet <b><a href=\"http://dinamizar.no-ip.org/contcastro/tarabackend/snippet/edit/8\">area-privada</a></b> foi revisto por Administrator',NULL,'2014-03-19 15:11:50'),(240,'core',5,'Utilizador <b>tarambola</b> efectuou Log In.',NULL,'2014-03-19 15:14:26'),(241,'core',5,'Snippet <b><a href=\"http://dinamizar.no-ip.org/contcastro/tarabackend/snippet/edit/8\">area-privada</a></b> foi revisto por Administrator',NULL,'2014-03-19 15:17:05'),(242,'core',5,'Snippet <b><a href=\"http://dinamizar.no-ip.org/contcastro/tarabackend/snippet/edit/8\">area-privada</a></b> foi revisto por Administrator',NULL,'2014-03-19 15:19:11'),(243,'core',5,'Snippet <b><a href=\"http://dinamizar.no-ip.org/contcastro/tarabackend/snippet/edit/7\">contactos</a></b> foi revisto por Administrator',NULL,'2014-03-19 15:51:40'),(244,'core',5,'Layout <b><a href=\"http://dinamizar.no-ip.org/contcastro/tarabackend/layout/edit/1\">default</a></b> foi revisto por Administrator',NULL,'2014-03-19 15:53:33'),(245,'core',5,'Layout <b><a href=\"http://dinamizar.no-ip.org/contcastro/tarabackend/layout/edit/1\">default</a></b> foi revisto por Administrator',NULL,'2014-03-19 15:55:50'),(246,'core',5,'Layout <b><a href=\"http://dinamizar.no-ip.org/contcastro/tarabackend/layout/edit/1\">default</a></b> foi revisto por Administrator',NULL,'2014-03-19 15:56:28'),(247,'core',5,'Layout <b><a href=\"http://dinamizar.no-ip.org/contcastro/tarabackend/layout/edit/1\">default</a></b> foi revisto por Administrator',NULL,'2014-03-19 15:57:01'),(248,'core',5,'Layout <b><a href=\"http://dinamizar.no-ip.org/contcastro/tarabackend/layout/edit/1\">default</a></b> foi revisto por Administrator',NULL,'2014-03-19 15:59:38'),(249,'core',5,'Layout <b><a href=\"http://dinamizar.no-ip.org/contcastro/tarabackend/layout/edit/1\">default</a></b> foi revisto por Administrator',NULL,'2014-03-19 16:00:26'),(250,'core',5,'Layout <b><a href=\"http://dinamizar.no-ip.org/contcastro/tarabackend/layout/edit/1\">default</a></b> foi revisto por Administrator',NULL,'2014-03-19 16:01:29'),(251,'core',5,'Layout <b><a href=\"http://dinamizar.no-ip.org/contcastro/tarabackend/layout/edit/1\">default</a></b> foi revisto por Administrator',NULL,'2014-03-19 16:03:53'),(252,'core',5,'Layout <b><a href=\"http://dinamizar.no-ip.org/contcastro/tarabackend/layout/edit/1\">default</a></b> foi revisto por Administrator',NULL,'2014-03-19 16:04:24'),(253,'core',5,'Layout <b><a href=\"http://dinamizar.no-ip.org/contcastro/tarabackend/layout/edit/1\">default</a></b> foi revisto por Administrator',NULL,'2014-03-19 16:04:49'),(254,'core',5,'Snippet <b><a href=\"http://dinamizar.no-ip.org/contcastro/tarabackend/snippet/edit/9\">jsAppend</a></b> foi revisto por Administrator',NULL,'2014-03-19 16:05:52'),(255,'core',5,'Layout <b><a href=\"http://dinamizar.no-ip.org/contcastro/tarabackend/layout/edit/1\">default</a></b> foi revisto por Administrator',NULL,'2014-03-19 16:06:44'),(256,'core',5,'Snippet <b><a href=\"http://dinamizar.no-ip.org/contcastro/tarabackend/snippet/edit/9\">jsAppend</a></b> foi revisto por Administrator',NULL,'2014-03-19 16:07:30'),(257,'core',5,'Snippet <b><a href=\"http://dinamizar.no-ip.org/contcastro/tarabackend/snippet/edit/8\">area-privada</a></b> foi revisto por Administrator',NULL,'2014-03-19 16:12:15'),(258,'core',5,'Snippet <b><a href=\"http://dinamizar.no-ip.org/contcastro/tarabackend/snippet/edit/8\">area-privada</a></b> foi revisto por Administrator',NULL,'2014-03-19 16:13:12'),(259,'core',5,'Snippet <b><a href=\"http://dinamizar.no-ip.org/contcastro/tarabackend/snippet/edit/8\">area-privada</a></b> foi revisto por Administrator',NULL,'2014-03-19 16:13:33'),(260,'core',5,'Snippet <b><a href=\"http://dinamizar.no-ip.org/contcastro/tarabackend/snippet/edit/9\">jsAppend</a></b> foi revisto por Administrator',NULL,'2014-03-19 16:15:50'),(261,'core',5,'Layout <b><a href=\"http://dinamizar.no-ip.org/contcastro/tarabackend/layout/edit/1\">default</a></b> foi revisto por Administrator',NULL,'2014-03-19 16:16:58'),(262,'core',5,'Layout <b><a href=\"http://dinamizar.no-ip.org/contcastro/tarabackend/layout/edit/1\">default</a></b> foi revisto por Administrator',NULL,'2014-03-19 16:17:45'),(263,'core',5,'Layout <b><a href=\"http://dinamizar.no-ip.org/contcastro/tarabackend/layout/edit/1\">default</a></b> foi revisto por Administrator',NULL,'2014-03-19 16:18:18'),(264,'core',5,'Layout <b><a href=\"http://dinamizar.no-ip.org/contcastro/tarabackend/layout/edit/1\">default</a></b> foi revisto por Administrator',NULL,'2014-03-19 16:18:51'),(265,'core',5,'Snippet <b><a href=\"http://dinamizar.no-ip.org/contcastro/tarabackend/snippet/edit/9\">jsAppend</a></b> foi revisto por Administrator',NULL,'2014-03-19 16:19:20'),(266,'core',5,'Snippet <b><a href=\"http://dinamizar.no-ip.org/contcastro/tarabackend/snippet/edit/9\">jsAppend</a></b> foi revisto por Administrator',NULL,'2014-03-19 16:20:04'),(267,'core',5,'Snippet <b><a href=\"http://dinamizar.no-ip.org/contcastro/tarabackend/snippet/edit/8\">area-privada</a></b> foi revisto por Administrator',NULL,'2014-03-19 16:30:51'),(268,'core',5,'Layout <b><a href=\"http://dinamizar.no-ip.org/contcastro/tarabackend/layout/edit/1\">default</a></b> foi revisto por Administrator',NULL,'2014-03-19 16:34:46'),(269,'core',5,'Layout <b><a href=\"http://dinamizar.no-ip.org/contcastro/tarabackend/layout/edit/1\">default</a></b> foi revisto por Administrator',NULL,'2014-03-19 16:35:12'),(270,'core',5,'Layout <b><a href=\"http://dinamizar.no-ip.org/contcastro/tarabackend/layout/edit/1\">default</a></b> foi revisto por Administrator',NULL,'2014-03-19 16:36:28'),(271,'core',5,'Layout <b><a href=\"http://dinamizar.no-ip.org/contcastro/tarabackend/layout/edit/1\">default</a></b> foi revisto por Administrator',NULL,'2014-03-19 16:38:03'),(272,'core',5,'Snippet <b><a href=\"http://dinamizar.no-ip.org/contcastro/tarabackend/snippet/edit/8\">area-privada</a></b> foi revisto por Administrator',NULL,'2014-03-19 16:40:01'),(273,'core',5,'Snippet <b><a href=\"http://dinamizar.no-ip.org/contcastro/tarabackend/snippet/edit/7\">contactos</a></b> foi revisto por Administrator',NULL,'2014-03-19 17:05:13'),(274,'core',5,'Snippet <b><a href=\"http://dinamizar.no-ip.org/contcastro/tarabackend/snippet/edit/9\">jsAppend</a></b> foi revisto por Administrator',NULL,'2014-03-19 17:07:10'),(275,'core',5,'Snippet <b><a href=\"http://dinamizar.no-ip.org/contcastro/tarabackend/snippet/edit/9\">jsAppend</a></b> foi revisto por Administrator',NULL,'2014-03-19 17:11:24'),(276,'core',5,'Snippet <b><a href=\"http://dinamizar.no-ip.org/contcastro/tarabackend/snippet/edit/9\">jsAppend</a></b> foi revisto por Administrator',NULL,'2014-03-19 17:39:59'),(277,'core',5,'Snippet <b><a href=\"http://dinamizar.no-ip.org/contcastro/tarabackend/snippet/edit/7\">contactos</a></b> foi revisto por Administrator',NULL,'2014-03-19 17:41:36'),(278,'core',5,'Snippet <b><a href=\"http://dinamizar.no-ip.org/contcastro/tarabackend/snippet/edit/9\">jsAppend</a></b> foi revisto por Administrator',NULL,'2014-03-19 17:45:03'),(279,'core',5,'Layout <b><a href=\"http://dinamizar.no-ip.org/contcastro/tarabackend/layout/edit/1\">default</a></b> foi revisto por Administrator',NULL,'2014-03-19 18:11:31'),(280,'core',5,'Snippet <b><a href=\"http://dinamizar.no-ip.org/contcastro/tarabackend/snippet/edit/9\">jsAppend</a></b> foi revisto por Administrator',NULL,'2014-03-19 18:14:58'),(281,'core',5,'Snippet <b><a href=\"http://dinamizar.no-ip.org/contcastro/tarabackend/snippet/edit/9\">jsAppend</a></b> foi revisto por Administrator',NULL,'2014-03-19 18:15:52'),(282,'core',5,'Snippet <b><a href=\"http://dinamizar.no-ip.org/contcastro/tarabackend/snippet/edit/9\">jsAppend</a></b> foi revisto por Administrator',NULL,'2014-03-19 18:16:29'),(283,'core',5,'Snippet <b><a href=\"http://dinamizar.no-ip.org/contcastro/tarabackend/snippet/edit/9\">jsAppend</a></b> foi revisto por Administrator',NULL,'2014-03-19 18:18:34'),(284,'core',5,'Snippet <b><a href=\"http://dinamizar.no-ip.org/contcastro/tarabackend/snippet/edit/9\">jsAppend</a></b> foi revisto por Administrator',NULL,'2014-03-19 18:19:28'),(285,'core',5,'Snippet <b><a href=\"http://dinamizar.no-ip.org/contcastro/tarabackend/snippet/edit/9\">jsAppend</a></b> foi revisto por Administrator',NULL,'2014-03-19 18:24:11'),(286,'core',5,'Snippet <b><a href=\"http://dinamizar.no-ip.org/contcastro/tarabackend/snippet/edit/9\">jsAppend</a></b> foi revisto por Administrator',NULL,'2014-03-19 18:25:02'),(287,'core',5,'Snippet <b><a href=\"http://dinamizar.no-ip.org/contcastro/tarabackend/snippet/edit/9\">jsAppend</a></b> foi revisto por Administrator',NULL,'2014-03-19 18:25:31'),(288,'core',5,'Snippet <b><a href=\"http://dinamizar.no-ip.org/contcastro/tarabackend/snippet/edit/9\">jsAppend</a></b> foi revisto por Administrator',NULL,'2014-03-19 18:26:01'),(289,'core',5,'Snippet <b><a href=\"http://dinamizar.no-ip.org/contcastro/tarabackend/snippet/edit/7\">contactos</a></b> foi revisto por Administrator',NULL,'2014-03-19 18:26:36'),(290,'core',5,'Snippet <b><a href=\"http://dinamizar.no-ip.org/contcastro/tarabackend/snippet/edit/9\">jsAppend</a></b> foi revisto por Administrator',NULL,'2014-03-19 18:33:36'),(291,'core',5,'Layout <b><a href=\"http://dinamizar.no-ip.org/contcastro/tarabackend/layout/edit/1\">default</a></b> foi revisto por Administrator',NULL,'2014-03-19 18:50:26'),(292,'core',5,'Snippet <b><a href=\"http://dinamizar.no-ip.org/contcastro/tarabackend/snippet/edit/9\">jsAppend</a></b> foi revisto por Administrator',NULL,'2014-03-19 18:50:52'),(293,'core',5,'Snippet <b><a href=\"http://dinamizar.no-ip.org/contcastro/tarabackend/snippet/edit/9\">jsAppend</a></b> foi revisto por Administrator',NULL,'2014-03-19 18:51:41'),(294,'core',5,'Snippet <b><a href=\"http://dinamizar.no-ip.org/contcastro/tarabackend/snippet/edit/9\">jsAppend</a></b> foi revisto por Administrator',NULL,'2014-03-19 18:52:08'),(295,'core',5,'Snippet <b><a href=\"http://dinamizar.no-ip.org/contcastro/tarabackend/snippet/edit/7\">contactos</a></b> foi revisto por Administrator',NULL,'2014-03-19 18:53:04'),(296,'core',5,'Snippet <b><a href=\"http://dinamizar.no-ip.org/contcastro/tarabackend/snippet/edit/7\">contactos</a></b> foi revisto por Administrator',NULL,'2014-03-19 18:54:01'),(297,'core',5,'Snippet <b><a href=\"http://dinamizar.no-ip.org/contcastro/tarabackend/snippet/edit/1\">layoutFunctions</a></b> foi revisto por Administrator',NULL,'2014-03-19 19:02:10'),(298,'core',5,'Snippet <b><a href=\"http://dinamizar.no-ip.org/contcastro/tarabackend/snippet/edit/7\">contactos</a></b> foi revisto por Administrator',NULL,'2014-03-19 19:03:03'),(299,'core',5,'Snippet <b><a href=\"http://dinamizar.no-ip.org/contcastro/tarabackend/snippet/edit/7\">contactos</a></b> foi revisto por Administrator',NULL,'2014-03-19 19:03:20'),(300,'core',5,'Snippet <b><a href=\"http://dinamizar.no-ip.org/contcastro/tarabackend/snippet/edit/9\">jsAppend</a></b> foi revisto por Administrator',NULL,'2014-03-19 19:03:54'),(301,'core',5,'Snippet <b><a href=\"http://dinamizar.no-ip.org/contcastro/tarabackend/snippet/edit/9\">jsAppend</a></b> foi revisto por Administrator',NULL,'2014-03-19 19:08:10'),(302,'core',5,'Snippet <b><a href=\"http://dinamizar.no-ip.org/contcastro/tarabackend/snippet/edit/9\">jsAppend</a></b> foi revisto por Administrator',NULL,'2014-03-19 19:10:34'),(303,'core',5,'Snippet <b><a href=\"http://dinamizar.no-ip.org/contcastro/tarabackend/snippet/edit/9\">jsAppend</a></b> foi revisto por Administrator',NULL,'2014-03-19 19:11:40'),(304,'core',5,'Snippet <b><a href=\"http://dinamizar.no-ip.org/contcastro/tarabackend/snippet/edit/9\">jsAppend</a></b> foi revisto por Administrator',NULL,'2014-03-19 19:12:35'),(305,'core',5,'Snippet <b><a href=\"http://dinamizar.no-ip.org/contcastro/tarabackend/snippet/edit/9\">jsAppend</a></b> foi revisto por Administrator',NULL,'2014-03-19 19:15:21'),(306,'core',5,'Snippet <b><a href=\"http://dinamizar.no-ip.org/contcastro/tarabackend/snippet/edit/9\">jsAppend</a></b> foi revisto por Administrator',NULL,'2014-03-19 19:15:56'),(307,'core',5,'Snippet <b><a href=\"http://dinamizar.no-ip.org/contcastro/tarabackend/snippet/edit/9\">jsAppend</a></b> foi revisto por Administrator',NULL,'2014-03-19 19:16:22'),(308,'core',5,'Layout <b><a href=\"http://dinamizar.no-ip.org/contcastro/tarabackend/layout/edit/1\">default</a></b> foi revisto por Administrator',NULL,'2014-03-19 19:24:48'),(309,'core',5,'Página <b><a href=\"http://dinamizar.no-ip.org/contcastro/tarabackend/page/edit/14\">Contactos</a></b> foi revista por Administrator',NULL,'2014-03-19 19:25:20'),(310,'core',5,'Snippet <b><a href=\"http://dinamizar.no-ip.org/contcastro/tarabackend/snippet/edit/7\">contactos</a></b> foi revisto por Administrator',NULL,'2014-03-19 19:26:08'),(311,'core',5,'Utilizador <b>tarambola</b> efectuou Log In.',NULL,'2014-03-20 11:57:46'),(312,'core',5,'Utilizador <b>tarambola</b> efectuou Log In.',NULL,'2014-03-20 15:27:59'),(313,'core',5,'Layout <b><a href=\"http://dinamizar.no-ip.org/contcastro/tarabackend/layout/edit/1\">default</a></b> foi revisto por Administrator',NULL,'2014-03-20 15:53:39'),(314,'core',5,'Layout <b><a href=\"http://dinamizar.no-ip.org/contcastro/tarabackend/layout/edit/1\">default</a></b> foi revisto por Administrator',NULL,'2014-03-20 15:54:21'),(315,'core',5,'Utilizador <b>tarambola</b> efectuou Log In.',NULL,'2014-03-21 11:21:03'),(316,'core',5,'Layout <b><a href=\"http://dinamizar.no-ip.org/contcastro/tarabackend/layout/edit/1\">default</a></b> foi revisto por Administrator',NULL,'2014-03-21 11:21:15'),(317,'core',5,'Layout <b><a href=\"http://dinamizar.no-ip.org/contcastro/tarabackend/layout/edit/1\">default</a></b> foi revisto por Administrator',NULL,'2014-03-21 11:21:40'),(318,'core',5,'Utilizador <b>tarambola</b> efectuou Log In.',NULL,'2014-03-24 11:02:14'),(319,'core',5,'Utilizador <b>tarambola</b> efectuou Log Out.',NULL,'2014-03-24 11:03:52'),(320,'core',5,'Utilizador <b>contcastro</b> efectuou Log In.',NULL,'2014-03-24 11:04:05'),(321,'core',5,'Utilizador <b>tarambola</b> efectuou Log In.',NULL,'2014-03-24 11:29:13'),(322,'core',5,'Utilizador <b>tarambola</b> efectuou Log Out.',NULL,'2014-03-24 11:29:40'),(323,'core',5,'Utilizador <b>contcastro</b> falhou o Log In.',NULL,'2014-03-24 11:29:54'),(324,'core',5,'Utilizador <b>contcastro</b> efectuou Log In.',NULL,'2014-03-24 11:30:04'),(325,'core',5,'Utilizador <b>tarambola</b> efectuou Log In.',NULL,'2014-03-24 12:21:07'),(326,'core',5,'Utilizador <b>tarambola</b> efectuou Log Out.',NULL,'2014-03-24 12:37:40'),(327,'core',5,'Utilizador <b>tarambola</b> efectuou Log In.',NULL,'2014-03-24 12:37:42'),(328,'core',5,'Plugin <b>encomendas</b> desactivado por Administrator',NULL,'2014-03-24 14:15:26'),(329,'core',5,'Plugin <b>modulos</b> desactivado por Administrator',NULL,'2014-03-24 14:15:50'),(330,'core',5,'Utilizador <b>contcastro</b> efectuou Log In.',NULL,'2014-03-25 11:49:13'),(331,'core',5,'Utilizador <b>contcastro</b> efectuou Log In.',NULL,'2014-03-25 11:51:43'),(332,'core',5,'Utilizador <b>contcastro</b> efectuou Log In.',NULL,'2014-03-25 11:52:46'),(333,'core',5,'Página <b><a href=\"http://dinamizar.no-ip.org/contcastro/tarabackend/page/edit/11\">Contabilidade</a></b> foi revista por contcastro',NULL,'2014-03-25 11:53:03'),(334,'core',5,'Utilizador <b>contcastro</b> efectuou Log In.',NULL,'2014-03-25 11:55:32'),(335,'core',5,'Utilizador <b>contcastro</b> efectuou Log Out.',NULL,'2014-03-25 11:55:38'),(336,'core',5,'Utilizador <b>tarambola</b> efectuou Log In.',NULL,'2014-03-25 11:55:50'),(337,'core',5,'Utilizador <b>contcastro</b> efectuou Log In.',NULL,'2014-03-25 11:56:03'),(338,'core',5,'Utilizador <b>contcastro</b> efectuou Log In.',NULL,'2014-03-25 11:56:37'),(339,'core',5,'Utilizador <b>contcastro</b> efectuou Log In.',NULL,'2014-03-25 11:57:02'),(340,'core',5,'Utilizador <b>contcastro</b> efectuou Log In.',NULL,'2014-03-25 12:00:05'),(341,'core',5,'Utilizador <b>contcastro</b> efectuou Log In.',NULL,'2014-03-25 12:07:54'),(342,'core',5,'Utilizador <b>contcastro</b> efectuou Log In.',NULL,'2014-03-25 12:10:21'),(343,'core',5,'Utilizador <b>contcastro</b> efectuou Log In.',NULL,'2014-03-25 12:10:35'),(344,'core',5,'Utilizador <b>contcastro</b> efectuou Log In.',NULL,'2014-03-25 12:13:39'),(345,'core',5,'Utilizador <b>contcastro</b> efectuou Log In.',NULL,'2014-03-25 12:16:22'),(346,'core',5,'Utilizador <b>contcastro</b> efectuou Log In.',NULL,'2014-03-25 12:16:29'),(347,'core',5,'Utilizador <b>contcastro</b> efectuou Log In.',NULL,'2014-03-25 12:16:39'),(348,'core',5,'Utilizador <b>contcastro</b> efectuou Log In.',NULL,'2014-03-25 12:16:49'),(349,'core',5,'Utilizador <b>contcastro</b> efectuou Log In.',NULL,'2014-03-25 12:17:35'),(350,'core',5,'Utilizador <b>tarambola</b> efectuou Log In.',NULL,'2014-03-25 12:44:53'),(351,'core',5,'Página <b><a href=\"http://dinamizar.no-ip.org/contcastro/tarabackend/page/edit/12\">Seguros</a></b> foi revista por Administrator',NULL,'2014-03-25 12:45:18'),(352,'core',5,'Utilizador <b>tarambola</b> efectuou Log In.',NULL,'2014-03-25 12:52:30'),(353,'core',5,'Página <b><a href=\"http://dinamizar.no-ip.org/contcastro/tarabackend/page/edit/11\">Contabilidade</a></b> foi revista por Administrator',NULL,'2014-03-25 12:52:38'),(354,'core',5,'Utilizador <b>tarambola</b> efectuou Log In.',NULL,'2014-03-25 14:15:04'),(355,'core',5,'Página <b><a href=\"http://dinamizar.no-ip.org/contcastro/tarabackend/page/edit/14\">Contactos</a></b> foi revista por Administrator',NULL,'2014-03-25 14:15:41'),(356,'core',5,'Página <b><a href=\"http://dinamizar.no-ip.org/contcastro/tarabackend/page/edit/14\">Contactos</a></b> foi revista por Administrator',NULL,'2014-03-25 14:16:24'),(357,'core',5,'Utilizador <b>tarambola</b> efectuou Log In.',NULL,'2014-03-25 15:29:53'),(358,'core',5,'Plugin <b>modulos</b> activado por Administrator',NULL,'2014-03-25 15:30:16'),(359,'core',5,'Plugin <b>modulos</b> desactivado por Administrator',NULL,'2014-03-25 15:30:42'),(360,'core',5,'Snippet <b><a href=\"http://dinamizar.no-ip.org/contcastro/tarabackend/snippet/edit/1\">layoutFunctions</a></b> foi revisto por Administrator',NULL,'2014-03-25 15:36:52'),(361,'core',5,'Snippet <b><a href=\"http://dinamizar.no-ip.org/contcastro/tarabackend/snippet/edit/1\">layoutFunctions</a></b> foi revisto por Administrator',NULL,'2014-03-25 15:37:42'),(362,'core',5,'Snippet <b><a href=\"http://dinamizar.no-ip.org/contcastro/tarabackend/snippet/edit/1\">layoutFunctions</a></b> foi revisto por Administrator',NULL,'2014-03-25 15:38:17'),(363,'core',5,'Snippet <b><a href=\"http://dinamizar.no-ip.org/contcastro/tarabackend/snippet/edit/1\">layoutFunctions</a></b> foi revisto por Administrator',NULL,'2014-03-25 15:39:45'),(364,'core',5,'Layout <b><a href=\"http://dinamizar.no-ip.org/contcastro/tarabackend/layout/edit/1\">default</a></b> foi revisto por Administrator',NULL,'2014-03-25 16:19:59'),(365,'core',5,'Snippet <b><a href=\"http://dinamizar.no-ip.org/contcastro/tarabackend/snippet/edit/7\">contactos</a></b> foi revisto por Administrator',NULL,'2014-03-25 16:21:18'),(366,'core',5,'Utilizador <b>tarambola</b> efectuou Log In.',NULL,'2014-03-25 22:19:29'),(367,'core',5,'Utilizador <b>tarambola</b> efectuou Log In.',NULL,'2014-03-25 22:41:40'),(368,'core',5,'Utilizador <b>tarambola</b> efectuou Log In.',NULL,'2014-03-26 11:03:51'),(369,'core',5,'Utilizador <b>tarambola</b> efectuou Log In.',NULL,'2014-03-26 14:49:04'),(370,'core',5,'Layout <b><a href=\"http://taraserver.no-ip.org/tarabackend/layout/edit/1\">default</a></b> foi revisto por Administrator',NULL,'2014-03-28 18:47:15'),(371,'core',5,'Plugin <b>modulos</b> activado por Administrator',NULL,'2014-03-28 19:52:41'),(372,'core',5,'Página <b>serviços</b> foi apagada por Administrator',NULL,'2014-03-28 19:52:58'),(373,'core',5,'Página <b>Área Privada</b> foi apagada por Administrator',NULL,'2014-03-28 19:53:05'),(374,'core',5,'Plugin <b>encomendas</b> activado por Administrator',NULL,'2014-03-28 20:09:03'),(375,'core',5,'Plugin <b>formularios</b> activado por Administrator',NULL,'2014-03-28 20:09:05'),(376,'core',5,'Plugin <b>newsletter</b> activado por Administrator',NULL,'2014-03-28 20:09:19'),(377,'core',5,'Utilizador <b>tarambola</b> efectuou Log In.',NULL,'2014-03-31 12:23:23'),(378,'core',5,'Página <b><a href=\"http://taraserver.no-ip.org/tarabackend/page/edit/16\">Home</a></b> foi criada por Administrator',NULL,'2014-03-31 14:28:54'),(379,'core',5,'Página <b><a href=\"http://taraserver.no-ip.org/tarabackend/page/edit/16\">Home</a></b> foi revista por Administrator',NULL,'2014-03-31 14:29:02'),(380,'core',5,'Página <b><a href=\"http://taraserver.no-ip.org/tarabackend/page/edit/16\">Home</a></b> foi revista por Administrator',NULL,'2014-03-31 14:46:27'),(381,'core',5,'Página <b><a href=\"http://taraserver.no-ip.org/tarabackend/page/edit/16\">Home</a></b> foi revista por Administrator',NULL,'2014-03-31 14:46:39'),(382,'core',5,'Página <b><a href=\"http://taraserver.no-ip.org/tarabackend/page/edit/16\">Home</a></b> foi revista por Administrator',NULL,'2014-03-31 14:48:33'),(383,'core',5,'Página <b><a href=\"http://taraserver.no-ip.org/tarabackend/page/edit/16\">Home</a></b> foi revista por Administrator',NULL,'2014-03-31 14:48:51'),(384,'core',5,'Página <b><a href=\"http://taraserver.no-ip.org/tarabackend/page/edit/16\">Home</a></b> foi revista por Administrator',NULL,'2014-03-31 14:49:08'),(385,'core',5,'Página <b><a href=\"http://taraserver.no-ip.org/tarabackend/page/edit/16\">Home</a></b> foi revista por Administrator',NULL,'2014-03-31 14:49:19'),(386,'core',5,'Página <b><a href=\"http://taraserver.no-ip.org/tarabackend/page/edit/16\">Home</a></b> foi revista por Administrator',NULL,'2014-03-31 14:49:40'),(387,'core',5,'Página <b><a href=\"http://taraserver.no-ip.org/tarabackend/page/edit/16\">Home</a></b> foi revista por Administrator',NULL,'2014-03-31 14:49:58'),(388,'core',5,'Página <b><a href=\"http://taraserver.no-ip.org/tarabackend/page/edit/16\">Home</a></b> foi revista por Administrator',NULL,'2014-03-31 14:50:45'),(389,'core',5,'Página <b><a href=\"http://taraserver.no-ip.org/tarabackend/page/edit/16\">Home</a></b> foi revista por Administrator',NULL,'2014-03-31 14:50:57'),(390,'core',5,'Página <b><a href=\"http://taraserver.no-ip.org/tarabackend/page/edit/16\">Home</a></b> foi revista por Administrator',NULL,'2014-03-31 14:51:09'),(391,'core',5,'Página <b><a href=\"http://taraserver.no-ip.org/tarabackend/page/edit/16\">Home</a></b> foi revista por Administrator',NULL,'2014-03-31 14:55:36'),(392,'core',5,'Página <b><a href=\"http://taraserver.no-ip.org/tarabackend/page/edit/16\">Home</a></b> foi revista por Administrator',NULL,'2014-03-31 15:01:10'),(393,'core',5,'Utilizador <b>tarambola</b> efectuou Log In.',NULL,'2014-03-31 15:04:29'),(394,'core',5,'Página <b><a href=\"http://taraserver.no-ip.org/tarabackend/page/edit/16\">Home</a></b> foi revista por Administrator',NULL,'2014-03-31 15:09:53'),(395,'core',5,'Página <b><a href=\"http://taraserver.no-ip.org/tarabackend/page/edit/16\">Home</a></b> foi revista por Administrator',NULL,'2014-03-31 15:11:25'),(396,'core',5,'Página <b><a href=\"http://taraserver.no-ip.org/tarabackend/page/edit/16\">Home</a></b> foi revista por Administrator',NULL,'2014-03-31 15:12:54'),(397,'core',5,'Página <b><a href=\"http://taraserver.no-ip.org/tarabackend/page/edit/16\">Home</a></b> foi revista por Administrator',NULL,'2014-03-31 15:13:36'),(398,'core',5,'Página <b><a href=\"http://taraserver.no-ip.org/tarabackend/page/edit/16\">Home</a></b> foi revista por Administrator',NULL,'2014-03-31 15:14:33'),(399,'core',5,'Página <b><a href=\"http://taraserver.no-ip.org/tarabackend/page/edit/16\">Home</a></b> foi revista por Administrator',NULL,'2014-03-31 15:19:34'),(400,'core',5,'Página <b><a href=\"http://taraserver.no-ip.org/tarabackend/page/edit/16\">Home</a></b> foi revista por Administrator',NULL,'2014-03-31 15:20:15'),(401,'core',5,'Página <b><a href=\"http://taraserver.no-ip.org/tarabackend/page/edit/16\">Home</a></b> foi revista por Administrator',NULL,'2014-03-31 15:21:22'),(402,'core',5,'Layout <b><a href=\"http://taraserver.no-ip.org/tarabackend/layout/edit/1\">default</a></b> foi revisto por Administrator',NULL,'2014-03-31 15:27:11'),(403,'core',5,'Layout <b><a href=\"http://taraserver.no-ip.org/tarabackend/layout/edit/1\">default</a></b> foi revisto por Administrator',NULL,'2014-03-31 15:27:52'),(404,'core',5,'Layout <b><a href=\"http://taraserver.no-ip.org/tarabackend/layout/edit/1\">default</a></b> foi revisto por Administrator',NULL,'2014-03-31 15:28:23'),(405,'core',5,'Layout <b><a href=\"http://taraserver.no-ip.org/tarabackend/layout/edit/1\">default</a></b> foi revisto por Administrator',NULL,'2014-03-31 15:52:33'),(406,'core',5,'Layout <b><a href=\"http://taraserver.no-ip.org/tarabackend/layout/edit/1\">default</a></b> foi revisto por Administrator',NULL,'2014-03-31 15:53:19'),(407,'core',5,'Página <b><a href=\"http://taraserver.no-ip.org/tarabackend/page/edit/5\">404</a></b> foi revista por Administrator',NULL,'2014-03-31 16:00:54'),(408,'core',5,'Layout <b><a href=\"http://taraserver.no-ip.org/tarabackend/layout/edit/1\">default</a></b> foi revisto por Administrator',NULL,'2014-03-31 16:14:07'),(409,'core',5,'Layout <b><a href=\"http://taraserver.no-ip.org/tarabackend/layout/edit/1\">default</a></b> foi revisto por Administrator',NULL,'2014-03-31 16:15:10'),(410,'core',5,'Página <b><a href=\"http://taraserver.no-ip.org/tarabackend/page/edit/5\">404</a></b> foi revista por Administrator',NULL,'2014-03-31 16:16:47'),(411,'core',5,'Layout <b><a href=\"http://taraserver.no-ip.org/tarabackend/layout/edit/1\">default</a></b> foi revisto por Administrator',NULL,'2014-03-31 16:19:40'),(412,'core',5,'Layout <b><a href=\"http://taraserver.no-ip.org/tarabackend/layout/edit/1\">default</a></b> foi revisto por Administrator',NULL,'2014-03-31 16:21:36'),(413,'core',5,'Página <b><a href=\"http://taraserver.no-ip.org/tarabackend/page/edit/16\">Home</a></b> foi revista por Administrator',NULL,'2014-03-31 16:27:00'),(414,'core',5,'Utilizador <b>root</b> falhou o Log In.',NULL,'2014-03-31 16:28:24'),(415,'core',5,'Utilizador <b>tarambola</b> efectuou Log In.',NULL,'2014-03-31 16:28:33'),(416,'core',5,'Página <b><a href=\"http://taraserver.no-ip.org/tarabackend/page/edit/16\">Home</a></b> foi revista por Administrator',NULL,'2014-03-31 19:27:01'),(417,'core',5,'Página <b><a href=\"http://taraserver.no-ip.org/tarabackend/page/edit/16\">Home</a></b> foi revista por Administrator',NULL,'2014-03-31 19:28:08'),(418,'core',5,'Página <b><a href=\"http://taraserver.no-ip.org/tarabackend/page/edit/16\">Home</a></b> foi revista por Administrator',NULL,'2014-03-31 19:28:21'),(419,'core',5,'Página <b><a href=\"http://taraserver.no-ip.org/tarabackend/page/edit/16\">Home</a></b> foi revista por Administrator',NULL,'2014-03-31 19:31:38'),(420,'core',5,'Página <b><a href=\"http://taraserver.no-ip.org/tarabackend/page/edit/16\">Home</a></b> foi revista por Administrator',NULL,'2014-03-31 19:47:30'),(421,'core',5,'Página <b><a href=\"http://taraserver.no-ip.org/tarabackend/page/edit/16\">Home</a></b> foi revista por Administrator',NULL,'2014-03-31 19:47:39'),(422,'core',5,'Página <b><a href=\"http://taraserver.no-ip.org/tarabackend/page/edit/16\">Home</a></b> foi revista por Administrator',NULL,'2014-03-31 19:47:58'),(423,'core',5,'Página <b><a href=\"http://taraserver.no-ip.org/tarabackend/page/edit/16\">Home</a></b> foi revista por Administrator',NULL,'2014-03-31 19:48:14'),(424,'core',5,'Página <b><a href=\"http://taraserver.no-ip.org/tarabackend/page/edit/16\">Home</a></b> foi revista por Administrator',NULL,'2014-03-31 20:04:52'),(425,'core',5,'Página <b><a href=\"http://taraserver.no-ip.org/tarabackend/page/edit/16\">Home</a></b> foi revista por Administrator',NULL,'2014-03-31 20:10:07'),(426,'core',5,'Página <b><a href=\"http://taraserver.no-ip.org/tarabackend/page/edit/16\">Home</a></b> foi revista por Administrator',NULL,'2014-03-31 23:00:15'),(427,'core',5,'Utilizador <b>tarambola</b> efectuou Log In.',NULL,'2014-04-01 10:42:56'),(428,'core',5,'Utilizador <b>tarambola</b> efectuou Log In.',NULL,'2014-04-01 14:03:52'),(429,'core',5,'Utilizador <b>tarambola</b> efectuou Log In.',NULL,'2014-04-01 20:56:06'),(430,'core',5,'Utilizador <b>tarambola</b> efectuou Log In.',NULL,'2014-04-02 16:32:50'),(431,'core',5,'Página <b><a href=\"http://taraserver.no-ip.org/tarabackend/page/edit/17\">Produtos</a></b> foi criada por Administrator',NULL,'2014-04-02 16:50:58'),(432,'core',5,'Página <b><a href=\"http://taraserver.no-ip.org/tarabackend/page/edit/17\">Produtos</a></b> foi revista por Administrator',NULL,'2014-04-02 16:51:03'),(433,'core',5,'Página <b><a href=\"http://taraserver.no-ip.org/tarabackend/page/edit/17\">Produtos</a></b> foi revista por Administrator',NULL,'2014-04-02 16:51:14'),(434,'core',5,'Página <b><a href=\"http://taraserver.no-ip.org/tarabackend/page/edit/18\">___________produtos</a></b> foi criada por Administrator',NULL,'2014-04-02 16:51:32'),(435,'core',5,'Página <b><a href=\"http://taraserver.no-ip.org/tarabackend/page/edit/18\">___________produtos</a></b> foi revista por Administrator',NULL,'2014-04-02 16:51:37'),(436,'core',5,'Página <b><a href=\"http://taraserver.no-ip.org/tarabackend/page/edit/19\">Produto 1</a></b> foi criada por Administrator',NULL,'2014-04-02 17:57:50'),(437,'core',5,'Página <b><a href=\"http://taraserver.no-ip.org/tarabackend/page/edit/19\">Produto 1</a></b> foi revista por Administrator',NULL,'2014-04-02 17:58:10'),(438,'core',5,'Página <b><a href=\"http://taraserver.no-ip.org/tarabackend/page/edit/20\">teste</a></b> foi criada por Administrator',NULL,'2014-04-02 17:59:51'),(439,'core',5,'Página <b><a href=\"http://taraserver.no-ip.org/tarabackend/page/edit/21\">teste2</a></b> foi criada por Administrator',NULL,'2014-04-02 18:03:39'),(440,'core',5,'Página <b>teste2</b> foi apagada por Administrator',NULL,'2014-04-02 18:03:52'),(441,'core',5,'Página <b>teste</b> foi apagada por Administrator',NULL,'2014-04-02 18:03:55'),(442,'core',5,'Utilizador <b>tarambola</b> efectuou Log In.',NULL,'2014-04-03 10:18:58'),(443,'core',5,'Página <b><a href=\"http://taraserver.no-ip.org/tarabackend/page/edit/22\">Produto teste 2</a></b> foi criada por Administrator',NULL,'2014-04-03 11:16:42'),(444,'core',5,'Página <b><a href=\"http://taraserver.no-ip.org/tarabackend/page/edit/22\">Produto teste 2</a></b> foi revista por Administrator',NULL,'2014-04-03 11:17:13'),(445,'core',5,'Página <b><a href=\"http://taraserver.no-ip.org/tarabackend/page/edit/22\">Produto teste 2</a></b> foi revista por Administrator',NULL,'2014-04-03 11:19:29'),(446,'core',5,'Página <b><a href=\"http://taraserver.no-ip.org/tarabackend/page/edit/22\">Produto teste 2</a></b> foi revista por Administrator',NULL,'2014-04-03 11:19:33'),(447,'core',5,'Página <b><a href=\"http://taraserver.no-ip.org/tarabackend/page/edit/19\">Produto 1</a></b> foi revista por Administrator',NULL,'2014-04-03 11:20:26'),(448,'core',5,'Utilizador <b>tarambola</b> efectuou Log In.',NULL,'2014-04-03 13:18:31'),(449,'core',5,'Utilizador <b>tarambola</b> efectuou Log In.',NULL,'2014-04-03 14:58:11'),(450,'core',5,'Utilizador <b>tarambola</b> efectuou Log In.',NULL,'2014-04-04 15:54:32'),(451,'core',5,'Utilizador <b>tarambola</b> efectuou Log In.',NULL,'2014-04-07 10:29:18'),(452,'core',5,'Utilizador <b>tarambola</b> efectuou Log In.',NULL,'2014-04-07 18:07:12'),(453,'core',5,'Utilizador <b>tarambola</b> efectuou Log In.',NULL,'2014-04-07 19:10:21'),(454,'core',5,'Utilizador <b>tarambola</b> efectuou Log In.',NULL,'2014-04-08 10:08:05'),(455,'core',5,'Página <b><a href=\"http://taraserver.no-ip.org/tarabackend/page/edit/23\">teste atributos</a></b> foi criada por Administrator',NULL,'2014-04-08 12:45:18'),(456,'core',5,'Página <b><a href=\"http://taraserver.no-ip.org/tarabackend/page/edit/19\">Produto 1 com um titulo exageradamente grande para ver onde acabam os 255 caractéres limitados pela base de dados</a></b> foi revista por Administrator',NULL,'2014-04-08 14:16:00'),(457,'core',5,'Página <b><a href=\"http://taraserver.no-ip.org/tarabackend/page/edit/19\">Produto 1 com um titulo exageradamente grande para ver onde acabam os 255 caractéres limitados pela base de dados. Ainda não foi desta que esgotei a base de dados</a></b> foi revista',NULL,'2014-04-08 14:16:21'),(458,'core',5,'Página <b><a href=\"http://taraserver.no-ip.org/tarabackend/page/edit/19\">Produto 1 com um titulo exageradamente grande para ver onde acabam os 255 caractéres limitados pela base de dados. Ainda não foi desta que esgotei a base de dados. Também não foi des',NULL,'2014-04-08 14:16:38'),(459,'core',5,'Página <b><a href=\"http://taraserver.no-ip.org/tarabackend/page/edit/19\">Produto 1</a></b> foi revista por Administrator',NULL,'2014-04-08 14:29:42'),(460,'core',5,'Utilizador <b>tarambola</b> efectuou Log In.',NULL,'2014-04-08 19:05:37'),(461,'core',5,'Utilizador <b>tarambola</b> efectuou Log In.',NULL,'2014-04-09 10:00:20'),(462,'core',5,'Página <b><a href=\"http://taraserver.no-ip.org/tarabackend/page/edit/19\">Produto 1</a></b> foi revista por Administrator',NULL,'2014-04-09 10:08:50'),(463,'core',5,'Página <b><a href=\"http://taraserver.no-ip.org/tarabackend/page/edit/19\">Produto 1</a></b> foi revista por Administrator',NULL,'2014-04-09 10:09:08'),(464,'core',5,'Utilizador <b>tarambola</b> efectuou Log In.',NULL,'2014-04-09 12:54:52'),(465,'core',5,'Página <b><a href=\"http://taraserver.no-ip.org/tarabackend/page/edit/19\">Produto 1</a></b> foi revista por Administrator',NULL,'2014-04-09 12:58:31'),(466,'core',5,'Página <b><a href=\"http://taraserver.no-ip.org/tarabackend/page/edit/19\">Produto 1</a></b> foi revista por Administrator',NULL,'2014-04-09 19:06:19'),(467,'core',5,'Página <b><a href=\"http://taraserver.no-ip.org/tarabackend/page/edit/19\">Produto 1</a></b> foi revista por Administrator',NULL,'2014-04-09 19:07:46'),(468,'core',5,'Página <b><a href=\"http://taraserver.no-ip.org/tarabackend/page/edit/19\">Produto 1</a></b> foi revista por Administrator',NULL,'2014-04-09 19:09:15'),(469,'core',5,'Página <b><a href=\"http://taraserver.no-ip.org/tarabackend/page/edit/19\">Produto 1</a></b> foi revista por Administrator',NULL,'2014-04-09 19:14:45'),(470,'core',5,'Página <b><a href=\"http://taraserver.no-ip.org/tarabackend/page/edit/19\">Produto 1</a></b> foi revista por Administrator',NULL,'2014-04-09 19:16:46'),(471,'core',5,'Utilizador <b>tarambola</b> efectuou Log In.',NULL,'2014-04-10 16:05:16'),(472,'core',5,'Página <b><a href=\"http://taraserver.no-ip.org/tarabackend/page/edit/19\">Produto 1</a></b> foi revista por Administrator',NULL,'2014-04-10 16:44:42'),(473,'core',5,'Página <b><a href=\"http://taraserver.no-ip.org/tarabackend/page/edit/19\">Produto 1</a></b> foi revista por Administrator',NULL,'2014-04-10 17:00:25'),(474,'core',5,'Página <b><a href=\"http://taraserver.no-ip.org/tarabackend/page/edit/19\">Produto 1</a></b> foi revista por Administrator',NULL,'2014-04-10 17:05:16'),(475,'core',5,'Página <b><a href=\"http://taraserver.no-ip.org/tarabackend/page/edit/19\">Produto 1</a></b> foi revista por Administrator',NULL,'2014-04-10 17:05:58'),(476,'core',5,'Página <b><a href=\"http://taraserver.no-ip.org/tarabackend/page/edit/19\">Produto 1</a></b> foi revista por Administrator',NULL,'2014-04-10 17:06:22'),(477,'core',5,'Utilizador <b>tarambola</b> efectuou Log In.',NULL,'2014-04-14 10:21:34'),(478,'core',5,'Utilizador <b>tarambola</b> efectuou Log In.',NULL,'2014-04-15 10:27:51'),(479,'core',5,'Layout <b><a href=\"http://taraserver.no-ip.org/tarabackend/layout/edit/1\">default</a></b> foi revisto por Administrator',NULL,'2014-04-15 11:43:29'),(480,'core',5,'Layout <b><a href=\"http://taraserver.no-ip.org/tarabackend/layout/edit/1\">default</a></b> foi revisto por Administrator',NULL,'2014-04-15 11:43:49'),(481,'core',5,'Utilizador <b>tarambola</b> efectuou Log In.',NULL,'2014-04-15 11:51:29'),(482,'core',5,'Layout <b><a href=\"http://taraserver.no-ip.org/tarabackend/layout/edit/1\">default</a></b> foi revisto por Administrator',NULL,'2014-04-15 11:51:48'),(483,'core',5,'Layout <b><a href=\"http://taraserver.no-ip.org/tarabackend/layout/edit/1\">default</a></b> foi revisto por Administrator',NULL,'2014-04-15 11:55:07'),(484,'core',5,'Layout <b><a href=\"http://taraserver.no-ip.org/tarabackend/layout/edit/1\">default</a></b> foi revisto por Administrator',NULL,'2014-04-15 12:05:27'),(485,'core',5,'Layout <b><a href=\"http://taraserver.no-ip.org/tarabackend/layout/edit/1\">default</a></b> foi revisto por Administrator',NULL,'2014-04-15 12:09:32'),(486,'core',5,'Layout <b><a href=\"http://taraserver.no-ip.org/tarabackend/layout/edit/1\">default</a></b> foi revisto por Administrator',NULL,'2014-04-15 12:18:32'),(487,'core',5,'Layout <b><a href=\"http://taraserver.no-ip.org/tarabackend/layout/edit/1\">default</a></b> foi revisto por Administrator',NULL,'2014-04-15 12:19:15'),(488,'core',5,'Layout <b><a href=\"http://taraserver.no-ip.org/tarabackend/layout/edit/1\">default</a></b> foi revisto por Administrator',NULL,'2014-04-15 12:21:31'),(489,'core',5,'Layout <b><a href=\"http://taraserver.no-ip.org/tarabackend/layout/edit/1\">default</a></b> foi revisto por Administrator',NULL,'2014-04-15 12:22:15'),(490,'core',5,'Layout <b><a href=\"http://taraserver.no-ip.org/tarabackend/layout/edit/1\">default</a></b> foi revisto por Administrator',NULL,'2014-04-15 12:23:22'),(491,'core',5,'Layout <b><a href=\"http://taraserver.no-ip.org/tarabackend/layout/edit/1\">default</a></b> foi revisto por Administrator',NULL,'2014-04-15 12:24:38'),(492,'core',5,'Layout <b><a href=\"http://taraserver.no-ip.org/tarabackend/layout/edit/1\">default</a></b> foi revisto por Administrator',NULL,'2014-04-15 12:24:58'),(493,'core',5,'Layout <b><a href=\"http://taraserver.no-ip.org/tarabackend/layout/edit/1\">default</a></b> foi revisto por Administrator',NULL,'2014-04-15 12:37:13'),(494,'core',5,'Layout <b><a href=\"http://taraserver.no-ip.org/tarabackend/layout/edit/1\">default</a></b> foi revisto por Administrator',NULL,'2014-04-15 12:38:05'),(495,'core',5,'Layout <b><a href=\"http://taraserver.no-ip.org/tarabackend/layout/edit/1\">default</a></b> foi revisto por Administrator',NULL,'2014-04-15 12:40:11'),(496,'core',5,'Layout <b><a href=\"http://taraserver.no-ip.org/tarabackend/layout/edit/1\">default</a></b> foi revisto por Administrator',NULL,'2014-04-15 12:41:22'),(497,'core',5,'Layout <b><a href=\"http://taraserver.no-ip.org/tarabackend/layout/edit/1\">default</a></b> foi revisto por Administrator',NULL,'2014-04-15 12:54:03'),(498,'core',5,'Layout <b><a href=\"http://taraserver.no-ip.org/tarabackend/layout/edit/1\">default</a></b> foi revisto por Administrator',NULL,'2014-04-15 12:55:54'),(499,'core',5,'Layout <b><a href=\"http://taraserver.no-ip.org/tarabackend/layout/edit/1\">default</a></b> foi revisto por Administrator',NULL,'2014-04-15 12:56:06'),(500,'core',5,'Utilizador <b>tarambola</b> efectuou Log In.',NULL,'2014-04-16 10:26:48'),(501,'core',5,'Página <b><a href=\"http://taraserver.no-ip.org/tarabackend/page/edit/24\">cancelshop</a></b> foi criada por Administrator',NULL,'2014-04-16 10:27:34'),(502,'core',5,'Página <b><a href=\"http://taraserver.no-ip.org/tarabackend/page/edit/24\">cancelshop</a></b> foi revista por Administrator',NULL,'2014-04-16 10:27:56'),(503,'core',5,'Página <b><a href=\"http://taraserver.no-ip.org/tarabackend/page/edit/25\">sucessshop</a></b> foi criada por Administrator',NULL,'2014-04-16 10:28:21'),(504,'core',5,'Layout <b><a href=\"http://taraserver.no-ip.org/tarabackend/layout/edit/1\">default</a></b> foi revisto por Administrator',NULL,'2014-04-16 10:30:55'),(505,'core',5,'Snippet <b><a href=\"http://taraserver.no-ip.org/tarabackend/snippet/edit/10\">successshop</a></b> foi criado por Administrator',NULL,'2014-04-16 10:36:33'),(506,'core',5,'Snippet <b><a href=\"http://taraserver.no-ip.org/tarabackend/snippet/edit/11\">cancelshop</a></b> foi criado por Administrator',NULL,'2014-04-16 10:36:47'),(507,'core',5,'Snippet <b><a href=\"http://taraserver.no-ip.org/tarabackend/snippet/edit/2\">home</a></b> foi revisto por Administrator',NULL,'2014-04-16 10:36:56'),(508,'core',5,'Layout <b><a href=\"http://taraserver.no-ip.org/tarabackend/layout/edit/1\">default</a></b> foi revisto por Administrator',NULL,'2014-04-16 10:38:17'),(509,'core',5,'Layout <b><a href=\"http://taraserver.no-ip.org/tarabackend/layout/edit/1\">default</a></b> foi revisto por Administrator',NULL,'2014-04-16 10:39:30'),(510,'core',5,'Layout <b><a href=\"http://taraserver.no-ip.org/tarabackend/layout/edit/1\">default</a></b> foi revisto por Administrator',NULL,'2014-04-16 10:45:07'),(511,'core',5,'Layout <b><a href=\"http://taraserver.no-ip.org/tarabackend/layout/edit/1\">default</a></b> foi revisto por Administrator',NULL,'2014-04-16 10:46:09'),(512,'core',5,'Layout <b><a href=\"http://taraserver.no-ip.org/tarabackend/layout/edit/1\">default</a></b> foi revisto por Administrator',NULL,'2014-04-16 10:46:25'),(513,'core',5,'Snippet <b><a href=\"http://taraserver.no-ip.org/tarabackend/snippet/edit/10\">sucessshop</a></b> foi revisto por Administrator',NULL,'2014-04-16 10:46:42'),(514,'core',5,'Layout <b><a href=\"http://taraserver.no-ip.org/tarabackend/layout/edit/1\">default</a></b> foi revisto por Administrator',NULL,'2014-04-16 10:55:29'),(515,'core',5,'Snippet <b><a href=\"http://taraserver.no-ip.org/tarabackend/snippet/edit/2\">home</a></b> foi revisto por Administrator',NULL,'2014-04-16 10:59:31'),(516,'core',5,'Snippet <b><a href=\"http://taraserver.no-ip.org/tarabackend/snippet/edit/2\">home</a></b> foi revisto por Administrator',NULL,'2014-04-16 11:00:24'),(517,'core',5,'Snippet <b><a href=\"http://taraserver.no-ip.org/tarabackend/snippet/edit/2\">home</a></b> foi revisto por Administrator',NULL,'2014-04-16 11:01:16'),(518,'core',5,'Snippet <b><a href=\"http://taraserver.no-ip.org/tarabackend/snippet/edit/2\">home</a></b> foi revisto por Administrator',NULL,'2014-04-16 11:06:04'),(519,'core',5,'Snippet <b><a href=\"http://taraserver.no-ip.org/tarabackend/snippet/edit/2\">home</a></b> foi revisto por Administrator',NULL,'2014-04-16 11:07:38'),(520,'core',5,'Layout <b><a href=\"http://taraserver.no-ip.org/tarabackend/layout/edit/1\">default</a></b> foi revisto por Administrator',NULL,'2014-04-16 11:08:09'),(521,'core',5,'Layout <b><a href=\"http://taraserver.no-ip.org/tarabackend/layout/edit/1\">default</a></b> foi revisto por Administrator',NULL,'2014-04-16 11:09:12'),(522,'core',5,'Snippet <b><a href=\"http://taraserver.no-ip.org/tarabackend/snippet/edit/2\">home</a></b> foi revisto por Administrator',NULL,'2014-04-16 11:15:40'),(523,'core',5,'Snippet <b><a href=\"http://taraserver.no-ip.org/tarabackend/snippet/edit/2\">home</a></b> foi revisto por Administrator',NULL,'2014-04-16 11:15:58'),(524,'core',5,'Utilizador <b>tarambola</b> efectuou Log In.',NULL,'2014-04-16 11:27:22'),(525,'core',5,'Snippet <b><a href=\"http://taraserver.no-ip.org/tarabackend/snippet/edit/2\">home</a></b> foi revisto por Administrator',NULL,'2014-04-16 11:40:18'),(526,'core',5,'Snippet <b><a href=\"http://taraserver.no-ip.org/tarabackend/snippet/edit/2\">home</a></b> foi revisto por Administrator',NULL,'2014-04-16 11:48:58'),(527,'core',5,'Snippet <b><a href=\"http://taraserver.no-ip.org/tarabackend/snippet/edit/10\">successshop</a></b> foi revisto por Administrator',NULL,'2014-04-16 11:53:37'),(528,'core',5,'Snippet <b><a href=\"http://taraserver.no-ip.org/tarabackend/snippet/edit/10\">sucessshop</a></b> foi revisto por Administrator',NULL,'2014-04-16 11:54:37'),(529,'core',5,'Snippet <b><a href=\"http://taraserver.no-ip.org/tarabackend/snippet/edit/12\">billing</a></b> foi criado por Administrator',NULL,'2014-04-16 11:56:45'),(530,'core',5,'Layout <b><a href=\"http://taraserver.no-ip.org/tarabackend/layout/edit/1\">default</a></b> foi revisto por Administrator',NULL,'2014-04-16 11:57:24'),(531,'core',5,'Página <b><a href=\"http://taraserver.no-ip.org/tarabackend/page/edit/26\">billing</a></b> foi criada por Administrator',NULL,'2014-04-16 11:57:38'),(532,'core',5,'Utilizador <b>tarambola</b> efectuou Log In.',NULL,'2014-04-16 15:28:38'),(533,'core',5,'Snippet <b><a href=\"http://taraserver.no-ip.org/tarabackend/snippet/edit/12\">billing</a></b> foi revisto por Administrator',NULL,'2014-04-16 15:43:18'),(534,'core',5,'Snippet <b><a href=\"http://taraserver.no-ip.org/tarabackend/snippet/edit/12\">billing</a></b> foi revisto por Administrator',NULL,'2014-04-16 15:43:53'),(535,'core',5,'Snippet <b><a href=\"http://taraserver.no-ip.org/tarabackend/snippet/edit/12\">billing</a></b> foi revisto por Administrator',NULL,'2014-04-16 15:44:35'),(536,'core',5,'Snippet <b><a href=\"http://taraserver.no-ip.org/tarabackend/snippet/edit/2\">home</a></b> foi revisto por Administrator',NULL,'2014-04-16 17:49:12'),(537,'core',5,'Snippet <b><a href=\"http://taraserver.no-ip.org/tarabackend/snippet/edit/2\">home</a></b> foi revisto por Administrator',NULL,'2014-04-16 17:49:42'),(538,'core',5,'Snippet <b><a href=\"http://taraserver.no-ip.org/tarabackend/snippet/edit/2\">home</a></b> foi revisto por Administrator',NULL,'2014-04-16 17:57:14'),(539,'core',5,'Snippet <b><a href=\"http://taraserver.no-ip.org/tarabackend/snippet/edit/2\">home</a></b> foi revisto por Administrator',NULL,'2014-04-16 18:06:58'),(540,'core',5,'Snippet <b><a href=\"http://taraserver.no-ip.org/tarabackend/snippet/edit/2\">home</a></b> foi revisto por Administrator',NULL,'2014-04-16 18:08:05'),(541,'core',5,'Snippet <b><a href=\"http://taraserver.no-ip.org/tarabackend/snippet/edit/2\">home</a></b> foi revisto por Administrator',NULL,'2014-04-16 18:09:07'),(542,'core',5,'Utilizador <b>tarambola</b> efectuou Log In.',NULL,'2014-04-16 23:21:54'),(543,'core',5,'Utilizador <b>tarambola</b> efectuou Log In.',NULL,'2014-04-17 10:00:11'),(544,'core',5,'Snippet <b><a href=\"http://taraserver.no-ip.org/tarabackend/snippet/edit/10\">sucessshop</a></b> foi revisto por Administrator',NULL,'2014-04-17 10:03:46'),(545,'core',5,'Layout <b><a href=\"http://taraserver.no-ip.org/tarabackend/layout/edit/1\">default</a></b> foi revisto por Administrator',NULL,'2014-04-17 10:04:31'),(546,'core',5,'Layout <b><a href=\"http://taraserver.no-ip.org/tarabackend/layout/edit/1\">default</a></b> foi revisto por Administrator',NULL,'2014-04-17 10:05:22'),(547,'core',5,'Layout <b><a href=\"http://taraserver.no-ip.org/tarabackend/layout/edit/1\">default</a></b> foi revisto por Administrator',NULL,'2014-04-17 10:08:14'),(548,'core',5,'Snippet <b><a href=\"http://taraserver.no-ip.org/tarabackend/snippet/edit/2\">home</a></b> foi revisto por Administrator',NULL,'2014-04-17 10:08:28'),(549,'core',5,'Utilizador <b>tarambola</b> efectuou Log In.',NULL,'2014-04-17 12:25:46'),(550,'core',5,'Snippet <b><a href=\"http://taraserver.no-ip.org/tarabackend/snippet/edit/2\">home</a></b> foi revisto por Administrator',NULL,'2014-04-17 12:25:54'),(551,'core',5,'Snippet <b><a href=\"http://taraserver.no-ip.org/tarabackend/snippet/edit/2\">home</a></b> foi revisto por Administrator',NULL,'2014-04-17 12:26:18'),(552,'core',5,'Utilizador <b>tarambola</b> efectuou Log In.',NULL,'2014-04-17 14:29:12'),(553,'core',5,'Snippet <b><a href=\"http://taraserver.no-ip.org/tarabackend/snippet/edit/2\">home</a></b> foi revisto por Administrator',NULL,'2014-04-17 14:29:33'),(554,'core',5,'Snippet <b><a href=\"http://taraserver.no-ip.org/tarabackend/snippet/edit/2\">home</a></b> foi revisto por Administrator',NULL,'2014-04-17 14:38:29'),(555,'core',5,'Snippet <b><a href=\"http://taraserver.no-ip.org/tarabackend/snippet/edit/2\">home</a></b> foi revisto por Administrator',NULL,'2014-04-17 14:39:37'),(556,'core',5,'Snippet <b><a href=\"http://taraserver.no-ip.org/tarabackend/snippet/edit/2\">home</a></b> foi revisto por Administrator',NULL,'2014-04-17 14:41:09'),(557,'core',5,'Snippet <b><a href=\"http://taraserver.no-ip.org/tarabackend/snippet/edit/2\">home</a></b> foi revisto por Administrator',NULL,'2014-04-17 14:50:29'),(558,'core',5,'Utilizador <b>tarambola</b> efectuou Log In.',NULL,'2014-04-21 10:22:38'),(559,'core',5,'Snippet <b><a href=\"http://taraserver.no-ip.org/tarabackend/snippet/edit/10\">sucessshop</a></b> foi revisto por Administrator',NULL,'2014-04-21 10:34:58'),(560,'core',5,'Utilizador <b>tarambola</b> efectuou Log In.',NULL,'2014-04-21 12:31:54'),(561,'core',5,'Utilizador <b>tarambola</b> efectuou Log In.',NULL,'2014-04-21 15:37:29'),(562,'core',5,'Snippet <b><a href=\"http://taraserver.no-ip.org/tarabackend/snippet/edit/10\">sucessshop</a></b> foi revisto por Administrator',NULL,'2014-04-21 15:37:45'),(563,'core',5,'Utilizador <b>root</b> falhou o Log In.',NULL,'2014-04-21 16:43:19'),(564,'core',5,'Utilizador <b>tarambol</b> falhou o Log In.',NULL,'2014-04-21 16:43:27'),(565,'core',5,'Utilizador <b>tarambola</b> efectuou Log In.',NULL,'2014-04-21 16:43:33'),(566,'core',5,'Utilizador <b>tarambola</b> efectuou Log In.',NULL,'2014-05-02 17:55:39'),(567,'core',5,'Utilizador <b>tarambola</b> efectuou Log In.',NULL,'2014-05-09 12:37:20'),(568,'core',5,'Snippet <b><a href=\"http://taraserver.no-ip.org/tarabackend/snippet/edit/13\">socket</a></b> foi criado por Administrator',NULL,'2014-05-09 14:14:39'),(569,'core',5,'Snippet <b><a href=\"http://taraserver.no-ip.org/tarabackend/snippet/edit/13\">socket</a></b> foi revisto por Administrator',NULL,'2014-05-09 14:19:21'),(570,'core',5,'Layout <b><a href=\"http://taraserver.no-ip.org/tarabackend/layout/edit/1\">default</a></b> foi revisto por Administrator',NULL,'2014-05-09 14:19:41'),(571,'core',5,'Snippet <b><a href=\"http://taraserver.no-ip.org/tarabackend/snippet/edit/13\">socket</a></b> foi revisto por Administrator',NULL,'2014-05-09 14:33:39'),(572,'core',5,'Snippet <b><a href=\"http://taraserver.no-ip.org/tarabackend/snippet/edit/13\">socket</a></b> foi revisto por Administrator',NULL,'2014-05-09 14:34:35'),(573,'core',5,'Snippet <b><a href=\"http://taraserver.no-ip.org/tarabackend/snippet/edit/13\">socket</a></b> foi revisto por Administrator',NULL,'2014-05-09 16:04:06'),(574,'core',5,'Snippet <b><a href=\"http://taraserver.no-ip.org/tarabackend/snippet/edit/13\">socket</a></b> foi revisto por Administrator',NULL,'2014-05-09 16:04:40'),(575,'core',5,'Snippet <b><a href=\"http://taraserver.no-ip.org/tarabackend/snippet/edit/13\">socket</a></b> foi revisto por Administrator',NULL,'2014-05-09 16:07:30'),(576,'core',5,'Snippet <b><a href=\"http://taraserver.no-ip.org/tarabackend/snippet/edit/13\">socket</a></b> foi revisto por Administrator',NULL,'2014-05-09 16:08:32'),(577,'core',5,'Utilizador <b>tarambola</b> efectuou Log In.',NULL,'2014-05-09 16:13:46'),(578,'core',5,'Snippet <b><a href=\"http://taraserver.no-ip.org/tarabackend/snippet/edit/13\">socket</a></b> foi revisto por Administrator',NULL,'2014-05-09 16:14:04'),(579,'core',5,'Snippet <b><a href=\"http://taraserver.no-ip.org/tarabackend/snippet/edit/13\">socket</a></b> foi revisto por Administrator',NULL,'2014-05-09 16:14:43'),(580,'core',5,'Snippet <b><a href=\"http://taraserver.no-ip.org/tarabackend/snippet/edit/13\">socket</a></b> foi revisto por Administrator',NULL,'2014-05-09 16:23:01'),(581,'core',5,'Snippet <b><a href=\"http://taraserver.no-ip.org/tarabackend/snippet/edit/13\">socket</a></b> foi revisto por Administrator',NULL,'2014-05-09 16:23:24'),(582,'core',5,'Snippet <b><a href=\"http://taraserver.no-ip.org/tarabackend/snippet/edit/13\">socket</a></b> foi revisto por Administrator',NULL,'2014-05-09 16:23:53'),(583,'core',5,'Snippet <b><a href=\"http://taraserver.no-ip.org/tarabackend/snippet/edit/13\">socket</a></b> foi revisto por Administrator',NULL,'2014-05-09 16:24:26'),(584,'core',5,'Snippet <b><a href=\"http://taraserver.no-ip.org/tarabackend/snippet/edit/13\">socket</a></b> foi revisto por Administrator',NULL,'2014-05-09 16:24:50'),(585,'core',5,'Utilizador <b>tarambola</b> efectuou Log In.',NULL,'2014-05-09 16:26:12'),(586,'core',5,'Snippet <b><a href=\"http://taraserver.no-ip.org/tarabackend/snippet/edit/13\">socket</a></b> foi revisto por Administrator',NULL,'2014-05-09 16:26:45'),(587,'core',5,'Snippet <b><a href=\"http://taraserver.no-ip.org/tarabackend/snippet/edit/13\">socket</a></b> foi revisto por Administrator',NULL,'2014-05-09 16:27:02'),(588,'core',5,'Snippet <b><a href=\"http://taraserver.no-ip.org/tarabackend/snippet/edit/13\">socket</a></b> foi revisto por Administrator',NULL,'2014-05-09 16:28:20'),(589,'core',5,'Snippet <b><a href=\"http://taraserver.no-ip.org/tarabackend/snippet/edit/13\">socket</a></b> foi revisto por Administrator',NULL,'2014-05-09 16:32:55'),(590,'core',5,'Snippet <b><a href=\"http://taraserver.no-ip.org/tarabackend/snippet/edit/13\">socket</a></b> foi revisto por Administrator',NULL,'2014-05-09 16:33:25'),(591,'core',5,'Snippet <b><a href=\"http://taraserver.no-ip.org/tarabackend/snippet/edit/13\">socket</a></b> foi revisto por Administrator',NULL,'2014-05-09 16:33:40'),(592,'core',5,'Snippet <b><a href=\"http://taraserver.no-ip.org/tarabackend/snippet/edit/13\">socket</a></b> foi revisto por Administrator',NULL,'2014-05-09 16:33:54'),(593,'core',5,'Snippet <b><a href=\"http://taraserver.no-ip.org/tarabackend/snippet/edit/13\">socket</a></b> foi revisto por Administrator',NULL,'2014-05-09 16:37:55'),(594,'core',5,'Utilizador <b>tarambola</b> efectuou Log In.',NULL,'2014-05-09 16:40:07'),(595,'core',5,'Snippet <b><a href=\"http://taraserver.no-ip.org/tarabackend/snippet/edit/13\">socket</a></b> foi revisto por Administrator',NULL,'2014-05-09 16:40:26'),(596,'core',5,'Snippet <b><a href=\"http://taraserver.no-ip.org/tarabackend/snippet/edit/13\">socket</a></b> foi revisto por Administrator',NULL,'2014-05-09 16:40:43'),(597,'core',5,'Snippet <b><a href=\"http://taraserver.no-ip.org/tarabackend/snippet/edit/13\">socket</a></b> foi revisto por Administrator',NULL,'2014-05-09 16:41:20'),(598,'core',5,'Snippet <b><a href=\"http://taraserver.no-ip.org/tarabackend/snippet/edit/13\">socket</a></b> foi revisto por Administrator',NULL,'2014-05-09 16:50:23'),(599,'core',5,'Snippet <b><a href=\"http://taraserver.no-ip.org/tarabackend/snippet/edit/13\">socket</a></b> foi revisto por Administrator',NULL,'2014-05-09 16:51:33'),(600,'core',5,'Snippet <b><a href=\"http://taraserver.no-ip.org/tarabackend/snippet/edit/13\">socket</a></b> foi revisto por Administrator',NULL,'2014-05-09 16:53:05'),(601,'core',5,'Snippet <b><a href=\"http://taraserver.no-ip.org/tarabackend/snippet/edit/13\">socket</a></b> foi revisto por Administrator',NULL,'2014-05-09 16:55:57'),(602,'core',5,'Snippet <b><a href=\"http://taraserver.no-ip.org/tarabackend/snippet/edit/13\">socket</a></b> foi revisto por Administrator',NULL,'2014-05-09 16:56:21'),(603,'core',5,'Snippet <b><a href=\"http://taraserver.no-ip.org/tarabackend/snippet/edit/13\">socket</a></b> foi revisto por Administrator',NULL,'2014-05-09 16:57:01'),(604,'core',5,'Snippet <b><a href=\"http://taraserver.no-ip.org/tarabackend/snippet/edit/13\">socket</a></b> foi revisto por Administrator',NULL,'2014-05-09 16:57:54'),(605,'core',5,'Snippet <b><a href=\"http://taraserver.no-ip.org/tarabackend/snippet/edit/13\">socket</a></b> foi revisto por Administrator',NULL,'2014-05-09 16:58:14'),(606,'core',5,'Snippet <b><a href=\"http://taraserver.no-ip.org/tarabackend/snippet/edit/13\">socket</a></b> foi revisto por Administrator',NULL,'2014-05-09 17:14:16'),(607,'core',5,'Utilizador <b>tarambola</b> efectuou Log In.',NULL,'2014-05-09 17:15:45'),(608,'core',5,'Snippet <b><a href=\"http://taraserver.no-ip.org/tarabackend/snippet/edit/13\">socket</a></b> foi revisto por Administrator',NULL,'2014-05-09 17:16:00'),(609,'core',5,'Utilizador <b>tarambola</b> efectuou Log In.',NULL,'2014-05-09 17:17:34'),(610,'core',5,'Snippet <b><a href=\"http://taraserver.no-ip.org/tarabackend/snippet/edit/13\">socket</a></b> foi revisto por Administrator',NULL,'2014-05-09 17:17:58'),(611,'core',5,'Utilizador <b>root</b> falhou o Log In.',NULL,'2014-05-12 18:22:23'),(612,'core',5,'Utilizador <b>tarambola</b> efectuou Log In.',NULL,'2014-05-12 18:22:33'),(613,'core',5,'Plugin <b>file_manager</b> activado por Administrator',NULL,'2014-05-12 18:24:13'),(614,'core',5,'Plugin <b>formularios</b> activado por Administrator',NULL,'2014-05-12 18:24:15'),(615,'core',5,'Utilizador <b>tarambola</b> efectuou Log In.',NULL,'2014-05-19 15:39:50'),(616,'core',5,'Snippet <b><a href=\"http://taraserver.no-ip.org/tarabackend/snippet/edit/14\">service</a></b> foi criado por Administrator',NULL,'2014-05-19 15:47:51'),(617,'core',5,'Snippet <b><a href=\"http://taraserver.no-ip.org/tarabackend/snippet/edit/14\">service</a></b> foi revisto por Administrator',NULL,'2014-05-19 15:55:08'),(618,'core',5,'Página <b><a href=\"http://taraserver.no-ip.org/tarabackend/page/edit/27\">webservice</a></b> foi criada por Administrator',NULL,'2014-05-19 15:56:21'),(619,'core',5,'Página <b><a href=\"http://taraserver.no-ip.org/tarabackend/page/edit/27\">webservice</a></b> foi revista por Administrator',NULL,'2014-05-19 15:56:26'),(620,'core',5,'Layout <b><a href=\"http://taraserver.no-ip.org/tarabackend/layout/edit/1\">default</a></b> foi revisto por Administrator',NULL,'2014-05-19 16:05:26'),(621,'core',5,'Página <b><a href=\"http://taraserver.no-ip.org/tarabackend/page/edit/27\">webservice</a></b> foi revista por Administrator',NULL,'2014-05-19 16:05:59'),(622,'core',5,'Layout <b><a href=\"http://taraserver.no-ip.org/tarabackend/layout/edit/1\">default</a></b> foi revisto por Administrator',NULL,'2014-05-19 16:06:20'),(623,'core',5,'Layout <b><a href=\"http://taraserver.no-ip.org/tarabackend/layout/edit/1\">default</a></b> foi revisto por Administrator',NULL,'2014-05-19 16:06:42'),(624,'core',5,'Snippet <b><a href=\"http://taraserver.no-ip.org/tarabackend/snippet/edit/14\">service</a></b> foi revisto por Administrator',NULL,'2014-05-19 16:07:23'),(625,'core',5,'Utilizador <b>tarambola</b> efectuou Log In.',NULL,'2014-05-19 18:25:05'),(626,'core',5,'Snippet <b><a href=\"http://taraserver.no-ip.org/tarabackend/snippet/edit/14\">service</a></b> foi revisto por Administrator',NULL,'2014-05-19 18:26:00'),(627,'core',5,'Snippet <b><a href=\"http://taraserver.no-ip.org/tarabackend/snippet/edit/14\">service</a></b> foi revisto por Administrator',NULL,'2014-05-19 18:26:35'),(628,'core',5,'Snippet <b><a href=\"http://taraserver.no-ip.org/tarabackend/snippet/edit/14\">service</a></b> foi revisto por Administrator',NULL,'2014-05-19 18:46:43'),(629,'core',5,'Página <b><a href=\"http://taraserver.no-ip.org/tarabackend/page/edit/17\">Utilizadores</a></b> foi revista por Administrator',NULL,'2014-05-19 18:58:19'),(630,'core',5,'Página <b><a href=\"http://taraserver.no-ip.org/tarabackend/page/edit/18\">___________produtos</a></b> foi revista por Administrator',NULL,'2014-05-19 18:58:36'),(631,'core',5,'Página <b>Produto 1</b> foi apagada por Administrator',NULL,'2014-05-19 19:02:17'),(632,'core',5,'Página <b>Produto teste 2</b> foi apagada por Administrator',NULL,'2014-05-19 19:02:20'),(633,'core',5,'Página <b><a href=\"http://taraserver.no-ip.org/tarabackend/page/edit/28\">Paulo fernandes</a></b> foi criada por Administrator',NULL,'2014-05-19 19:04:01'),(634,'core',5,'Utilizador <b>tarambola</b> efectuou Log In.',NULL,'2014-05-20 17:48:28'),(635,'core',5,'Snippet <b><a href=\"http://taraserver.no-ip.org/tarabackend/snippet/edit/14\">service</a></b> foi revisto por Administrator',NULL,'2014-05-20 17:48:40'),(636,'core',5,'Snippet <b><a href=\"http://taraserver.no-ip.org/tarabackend/snippet/edit/14\">service</a></b> foi revisto por Administrator',NULL,'2014-05-20 18:25:29'),(637,'core',5,'Snippet <b><a href=\"http://taraserver.no-ip.org/tarabackend/snippet/edit/14\">service</a></b> foi revisto por Administrator',NULL,'2014-05-20 18:41:43'),(638,'core',5,'Snippet <b><a href=\"http://taraserver.no-ip.org/tarabackend/snippet/edit/14\">service</a></b> foi revisto por Administrator',NULL,'2014-05-20 18:42:31'),(639,'core',5,'Snippet <b><a href=\"http://taraserver.no-ip.org/tarabackend/snippet/edit/14\">service</a></b> foi revisto por Administrator',NULL,'2014-05-20 18:46:11'),(640,'core',5,'Snippet <b><a href=\"http://taraserver.no-ip.org/tarabackend/snippet/edit/14\">service</a></b> foi revisto por Administrator',NULL,'2014-05-20 18:48:59'),(641,'core',5,'Layout <b><a href=\"http://taraserver.no-ip.org/tarabackend/layout/edit/1\">default</a></b> foi revisto por Administrator',NULL,'2014-05-20 19:20:59'),(642,'core',5,'Layout <b><a href=\"http://taraserver.no-ip.org/tarabackend/layout/edit/1\">default</a></b> foi revisto por Administrator',NULL,'2014-05-20 19:22:02'),(643,'core',5,'Utilizador <b>tarambola</b> efectuou Log In.',NULL,'2014-05-21 10:46:56'),(644,'core',5,'Utilizador <b>tarambola</b> efectuou Log In.',NULL,'2014-05-21 14:33:22'),(645,'core',5,'Layout <b><a href=\"http://slotmachine.no-ip.info/tarabackend/layout/edit/1\">default</a></b> foi revisto por Administrator',NULL,'2014-05-21 14:33:37'),(646,'core',5,'Layout <b><a href=\"http://slotmachine.no-ip.info/tarabackend/layout/edit/1\">default</a></b> foi revisto por Administrator',NULL,'2014-05-21 14:35:46'),(647,'core',5,'Snippet <b><a href=\"http://slotmachine.no-ip.info/tarabackend/snippet/edit/15\">register</a></b> foi criado por Administrator',NULL,'2014-05-21 15:21:18'),(648,'core',5,'Snippet <b><a href=\"http://slotmachine.no-ip.info/tarabackend/snippet/edit/16\">tryagain</a></b> foi criado por Administrator',NULL,'2014-05-21 15:21:31'),(649,'core',5,'Layout <b><a href=\"http://slotmachine.no-ip.info/tarabackend/layout/edit/1\">default</a></b> foi revisto por Administrator',NULL,'2014-05-21 15:21:39'),(650,'core',5,'Snippet <b><a href=\"http://slotmachine.no-ip.info/tarabackend/snippet/edit/9\">jsAppend</a></b> foi revisto por Administrator',NULL,'2014-05-21 16:06:47'),(651,'core',5,'Layout <b><a href=\"http://slotmachine.no-ip.info/tarabackend/layout/edit/1\">default</a></b> foi revisto por Administrator',NULL,'2014-05-21 16:07:20'),(652,'core',5,'Snippet <b><a href=\"http://slotmachine.no-ip.info/tarabackend/snippet/edit/9\">jsAppend</a></b> foi revisto por Administrator',NULL,'2014-05-21 16:10:28'),(653,'core',5,'Snippet <b>home</b> foi apagado por Administrator',NULL,'2014-05-21 16:16:46'),(654,'core',5,'Snippet <b>billing</b> foi apagado por Administrator',NULL,'2014-05-21 16:16:49'),(655,'core',5,'Snippet <b>contabilidade</b> foi apagado por Administrator',NULL,'2014-05-21 16:16:53'),(656,'core',5,'Snippet <b>seguros</b> foi apagado por Administrator',NULL,'2014-05-21 16:16:55'),(657,'core',5,'Snippet <b>right-content</b> foi apagado por Administrator',NULL,'2014-05-21 16:16:58'),(658,'core',5,'Snippet <b>investimento</b> foi apagado por Administrator',NULL,'2014-05-21 16:17:00'),(659,'core',5,'Snippet <b>contactos</b> foi apagado por Administrator',NULL,'2014-05-21 16:17:04'),(660,'core',5,'Snippet <b>area-privada</b> foi apagado por Administrator',NULL,'2014-05-21 16:17:06'),(661,'core',5,'Snippet <b>sucessshop</b> foi apagado por Administrator',NULL,'2014-05-21 16:17:09'),(662,'core',5,'Snippet <b>cancelshop</b> foi apagado por Administrator',NULL,'2014-05-21 16:17:12'),(663,'core',5,'Snippet <b>socket</b> foi apagado por Administrator',NULL,'2014-05-21 16:17:15'),(664,'core',5,'Snippet <b><a href=\"http://slotmachine.no-ip.info/tarabackend/snippet/edit/15\">register</a></b> foi revisto por Administrator',NULL,'2014-05-21 16:17:25'),(665,'core',5,'Layout <b><a href=\"http://slotmachine.no-ip.info/tarabackend/layout/edit/1\">default</a></b> foi revisto por Administrator',NULL,'2014-05-21 16:24:16'),(666,'core',5,'Layout <b><a href=\"http://slotmachine.no-ip.info/tarabackend/layout/edit/1\">default</a></b> foi revisto por Administrator',NULL,'2014-05-21 16:25:47'),(667,'core',5,'Página <b><a href=\"http://slotmachine.no-ip.info/tarabackend/page/edit/30\"></a></b> foi revista por Administrator',NULL,'2014-05-21 16:45:25'),(668,'core',5,'Página <b></b> foi apagada por Administrator',NULL,'2014-05-21 16:45:38'),(669,'core',5,'Página <b></b> foi apagada por Administrator',NULL,'2014-05-21 16:45:42'),(670,'core',5,'Snippet <b><a href=\"http://slotmachine.no-ip.info/tarabackend/snippet/edit/15\">register</a></b> foi revisto por Administrator',NULL,'2014-05-21 16:51:57'),(671,'core',5,'Snippet <b><a href=\"http://slotmachine.no-ip.info/tarabackend/snippet/edit/15\">register</a></b> foi revisto por Administrator',NULL,'2014-05-21 16:53:47'),(672,'core',5,'Layout <b><a href=\"http://slotmachine.no-ip.info/tarabackend/layout/edit/1\">default</a></b> foi revisto por Administrator',NULL,'2014-05-21 22:24:44'),(673,'core',5,'Layout <b><a href=\"http://slotmachine.no-ip.info/tarabackend/layout/edit/1\">default</a></b> foi revisto por Administrator',NULL,'2014-05-21 22:26:20'),(674,'core',5,'Snippet <b><a href=\"http://slotmachine.no-ip.info/tarabackend/snippet/edit/14\">service</a></b> foi revisto por Administrator',NULL,'2014-05-21 22:46:16'),(675,'core',5,'Snippet <b><a href=\"http://slotmachine.no-ip.info/tarabackend/snippet/edit/14\">service</a></b> foi revisto por Administrator',NULL,'2014-05-21 22:48:54'),(676,'core',5,'Snippet <b><a href=\"http://slotmachine.no-ip.info/tarabackend/snippet/edit/14\">service</a></b> foi revisto por Administrator',NULL,'2014-05-21 22:49:40'),(677,'core',5,'Snippet <b><a href=\"http://slotmachine.no-ip.info/tarabackend/snippet/edit/14\">service</a></b> foi revisto por Administrator',NULL,'2014-05-21 22:50:33'),(678,'core',5,'Snippet <b><a href=\"http://slotmachine.no-ip.info/tarabackend/snippet/edit/14\">service</a></b> foi revisto por Administrator',NULL,'2014-05-21 22:52:49'),(679,'core',5,'Snippet <b><a href=\"http://slotmachine.no-ip.info/tarabackend/snippet/edit/14\">service</a></b> foi revisto por Administrator',NULL,'2014-05-21 22:53:30'),(680,'core',5,'Snippet <b><a href=\"http://slotmachine.no-ip.info/tarabackend/snippet/edit/14\">service</a></b> foi revisto por Administrator',NULL,'2014-05-21 22:54:19'),(681,'core',5,'Snippet <b><a href=\"http://slotmachine.no-ip.info/tarabackend/snippet/edit/14\">service</a></b> foi revisto por Administrator',NULL,'2014-05-21 22:54:51'),(682,'core',5,'Utilizador <b>tarambola</b> efectuou Log In.',NULL,'2014-05-22 10:04:01'),(683,'core',5,'Snippet <b><a href=\"http://slotmachine.no-ip.info/tarabackend/snippet/edit/14\">service</a></b> foi revisto por Administrator',NULL,'2014-05-22 10:23:03'),(684,'core',5,'Snippet <b><a href=\"http://slotmachine.no-ip.info/tarabackend/snippet/edit/14\">service</a></b> foi revisto por Administrator',NULL,'2014-05-22 10:25:01'),(685,'core',5,'Snippet <b><a href=\"http://slotmachine.no-ip.info/tarabackend/snippet/edit/14\">service</a></b> foi revisto por Administrator',NULL,'2014-05-22 11:43:51'),(686,'core',5,'Snippet <b><a href=\"http://slotmachine.no-ip.info/tarabackend/snippet/edit/14\">service</a></b> foi revisto por Administrator',NULL,'2014-05-22 11:44:56'),(687,'core',5,'Snippet <b><a href=\"http://slotmachine.no-ip.info/tarabackend/snippet/edit/14\">service</a></b> foi revisto por Administrator',NULL,'2014-05-22 11:47:47'),(688,'core',5,'Snippet <b><a href=\"http://slotmachine.no-ip.info/tarabackend/snippet/edit/14\">service</a></b> foi revisto por Administrator',NULL,'2014-05-22 11:49:43'),(689,'core',5,'Snippet <b><a href=\"http://slotmachine.no-ip.info/tarabackend/snippet/edit/14\">service</a></b> foi revisto por Administrator',NULL,'2014-05-22 12:20:47'),(690,'core',5,'Snippet <b><a href=\"http://slotmachine.no-ip.info/tarabackend/snippet/edit/14\">service</a></b> foi revisto por Administrator',NULL,'2014-05-22 12:21:42'),(691,'core',5,'Snippet <b><a href=\"http://slotmachine.no-ip.info/tarabackend/snippet/edit/14\">service</a></b> foi revisto por Administrator',NULL,'2014-05-22 12:21:47'),(692,'core',5,'Utilizador <b>tarambola</b> efectuou Log In.',NULL,'2014-05-22 14:49:31'),(693,'core',5,'Snippet <b><a href=\"http://slotmachine.no-ip.info/tarabackend/snippet/edit/14\">service</a></b> foi revisto por Administrator',NULL,'2014-05-22 14:49:40'),(694,'core',5,'Snippet <b><a href=\"http://slotmachine.no-ip.info/tarabackend/snippet/edit/14\">service</a></b> foi revisto por Administrator',NULL,'2014-05-22 14:51:44'),(695,'core',5,'Snippet <b><a href=\"http://slotmachine.no-ip.info/tarabackend/snippet/edit/14\">service</a></b> foi revisto por Administrator',NULL,'2014-05-22 14:52:17'),(696,'core',5,'Snippet <b><a href=\"http://slotmachine.no-ip.info/tarabackend/snippet/edit/14\">service</a></b> foi revisto por Administrator',NULL,'2014-05-22 14:52:52'),(697,'core',5,'Snippet <b><a href=\"http://slotmachine.no-ip.info/tarabackend/snippet/edit/14\">service</a></b> foi revisto por Administrator',NULL,'2014-05-22 16:28:50'),(698,'core',5,'Snippet <b><a href=\"http://slotmachine.no-ip.info/tarabackend/snippet/edit/14\">service</a></b> foi revisto por Administrator',NULL,'2014-05-22 16:29:12'),(699,'core',5,'Snippet <b><a href=\"http://slotmachine.no-ip.info/tarabackend/snippet/edit/14\">service</a></b> foi revisto por Administrator',NULL,'2014-05-22 16:33:07'),(700,'core',5,'Snippet <b><a href=\"http://slotmachine.no-ip.info/tarabackend/snippet/edit/14\">service</a></b> foi revisto por Administrator',NULL,'2014-05-22 16:35:21'),(701,'core',5,'Snippet <b><a href=\"http://slotmachine.no-ip.info/tarabackend/snippet/edit/14\">service</a></b> foi revisto por Administrator',NULL,'2014-05-22 16:36:04'),(702,'core',5,'Utilizador <b>tarambola</b> efectuou Log In.',NULL,'2014-05-26 12:03:46'),(703,'core',5,'Página <b><a href=\"http://slotmachine.no-ip.info/tarabackend/page/edit/130\">Configurações</a></b> foi criada por Administrator',NULL,'2014-05-26 12:05:36'),(704,'core',5,'Página <b><a href=\"http://slotmachine.no-ip.info/tarabackend/page/edit/18\">___________utilizadores</a></b> foi revista por Administrator',NULL,'2014-05-26 12:07:35'),(705,'core',5,'Página <b><a href=\"http://slotmachine.no-ip.info/tarabackend/page/edit/131\">__________configuracoes</a></b> foi criada por Administrator',NULL,'2014-05-26 12:08:03'),(706,'core',5,'Página <b><a href=\"http://slotmachine.no-ip.info/tarabackend/page/edit/131\">__________configuracoes</a></b> foi revista por Administrator',NULL,'2014-05-26 12:08:09'),(707,'core',5,'Página <b><a href=\"http://slotmachine.no-ip.info/tarabackend/page/edit/130\">Configurações</a></b> foi revista por Administrator',NULL,'2014-05-26 12:08:19'),(708,'core',5,'Página <b>__________configuracoes</b> foi apagada por Administrator',NULL,'2014-05-26 12:08:25'),(709,'core',5,'Página <b><a href=\"http://slotmachine.no-ip.info/tarabackend/page/edit/132\">Prémios</a></b> foi criada por Administrator',NULL,'2014-05-26 12:14:56'),(710,'core',5,'Página <b><a href=\"http://slotmachine.no-ip.info/tarabackend/page/edit/132\">Prémios</a></b> foi revista por Administrator',NULL,'2014-05-26 12:16:55'),(711,'core',5,'Página <b><a href=\"http://slotmachine.no-ip.info/tarabackend/page/edit/130\">Configurações</a></b> foi revista por Administrator',NULL,'2014-05-26 12:18:59'),(712,'core',5,'Página <b>Prémios</b> foi apagada por Administrator',NULL,'2014-05-26 12:19:06'),(713,'core',5,'Página <b>teste atributos</b> foi apagada por Administrator',NULL,'2014-05-26 13:05:43'),(714,'core',5,'Página <b>Contactos</b> foi apagada por Administrator',NULL,'2014-05-26 13:05:51'),(715,'core',5,'Snippet <b><a href=\"http://slotmachine.no-ip.info/tarabackend/snippet/edit/14\">service</a></b> foi revisto por Administrator',NULL,'2014-05-26 14:44:28'),(716,'core',5,'Snippet <b><a href=\"http://slotmachine.no-ip.info/tarabackend/snippet/edit/14\">service</a></b> foi revisto por Administrator',NULL,'2014-05-26 14:48:38'),(717,'core',5,'Utilizador <b>tarambola</b> efectuou Log In.',NULL,'2014-05-26 18:35:17'),(718,'core',5,'Snippet <b><a href=\"http://slotmachine.no-ip.info/tarabackend/snippet/edit/14\">service</a></b> foi revisto por Administrator',NULL,'2014-05-26 18:36:19'),(719,'core',5,'Snippet <b><a href=\"http://slotmachine.no-ip.info/tarabackend/snippet/edit/14\">service</a></b> foi revisto por Administrator',NULL,'2014-05-26 19:03:35'),(720,'core',5,'Utilizador <b>tarambola</b> efectuou Log In.',NULL,'2014-06-03 22:36:47'),(721,'core',5,'Página <b>Paulo fernandes</b> foi apagada por Administrator',NULL,'2014-06-03 23:25:58'),(722,'core',5,'Página <b></b> foi apagada por Administrator',NULL,'2014-06-03 23:26:02'),(723,'core',5,'Página <b></b> foi apagada por Administrator',NULL,'2014-06-03 23:26:04'),(724,'core',5,'Página <b></b> foi apagada por Administrator',NULL,'2014-06-03 23:26:07'),(725,'core',5,'Página <b></b> foi apagada por Administrator',NULL,'2014-06-03 23:26:10'),(726,'core',5,'Página <b></b> foi apagada por Administrator',NULL,'2014-06-03 23:26:12'),(727,'core',5,'Página <b></b> foi apagada por Administrator',NULL,'2014-06-03 23:26:15'),(728,'core',5,'Página <b></b> foi apagada por Administrator',NULL,'2014-06-03 23:26:18'),(729,'core',5,'Página <b></b> foi apagada por Administrator',NULL,'2014-06-03 23:26:20'),(730,'core',5,'Página <b></b> foi apagada por Administrator',NULL,'2014-06-03 23:26:23'),(731,'core',5,'Página <b></b> foi apagada por Administrator',NULL,'2014-06-03 23:26:26'),(732,'core',5,'Página <b></b> foi apagada por Administrator',NULL,'2014-06-03 23:26:29'),(733,'core',5,'Página <b></b> foi apagada por Administrator',NULL,'2014-06-03 23:26:32'),(734,'core',5,'Página <b></b> foi apagada por Administrator',NULL,'2014-06-03 23:26:34'),(735,'core',5,'Página <b></b> foi apagada por Administrator',NULL,'2014-06-03 23:26:37'),(736,'core',5,'Página <b></b> foi apagada por Administrator',NULL,'2014-06-03 23:26:40'),(737,'core',5,'Página <b></b> foi apagada por Administrator',NULL,'2014-06-03 23:26:42'),(738,'core',5,'Página <b></b> foi apagada por Administrator',NULL,'2014-06-03 23:26:45'),(739,'core',5,'Página <b></b> foi apagada por Administrator',NULL,'2014-06-03 23:26:48'),(740,'core',5,'Página <b></b> foi apagada por Administrator',NULL,'2014-06-03 23:26:50'),(741,'core',5,'Página <b></b> foi apagada por Administrator',NULL,'2014-06-03 23:26:53'),(742,'core',5,'Página <b></b> foi apagada por Administrator',NULL,'2014-06-03 23:26:55'),(743,'core',5,'Página <b></b> foi apagada por Administrator',NULL,'2014-06-03 23:26:58'),(744,'core',5,'Página <b></b> foi apagada por Administrator',NULL,'2014-06-03 23:27:01'),(745,'core',5,'Página <b></b> foi apagada por Administrator',NULL,'2014-06-03 23:27:04'),(746,'core',5,'Página <b></b> foi apagada por Administrator',NULL,'2014-06-03 23:27:07'),(747,'core',5,'Página <b></b> foi apagada por Administrator',NULL,'2014-06-03 23:27:09'),(748,'core',5,'Página <b></b> foi apagada por Administrator',NULL,'2014-06-03 23:27:12'),(749,'core',5,'Página <b></b> foi apagada por Administrator',NULL,'2014-06-03 23:27:14'),(750,'core',5,'Página <b></b> foi apagada por Administrator',NULL,'2014-06-03 23:27:17'),(751,'core',5,'Página <b></b> foi apagada por Administrator',NULL,'2014-06-03 23:27:19'),(752,'core',5,'Página <b></b> foi apagada por Administrator',NULL,'2014-06-03 23:27:22'),(753,'core',5,'Página <b></b> foi apagada por Administrator',NULL,'2014-06-03 23:27:24'),(754,'core',5,'Página <b></b> foi apagada por Administrator',NULL,'2014-06-03 23:27:27'),(755,'core',5,'Página <b></b> foi apagada por Administrator',NULL,'2014-06-03 23:27:30'),(756,'core',5,'Página <b></b> foi apagada por Administrator',NULL,'2014-06-03 23:27:33'),(757,'core',5,'Página <b></b> foi apagada por Administrator',NULL,'2014-06-03 23:27:36'),(758,'core',5,'Página <b>Aaaaaaaa</b> foi apagada por Administrator',NULL,'2014-06-03 23:27:39'),(759,'core',5,'Página <b>Bdhs</b> foi apagada por Administrator',NULL,'2014-06-03 23:27:41'),(760,'core',5,'Página <b>Ccc</b> foi apagada por Administrator',NULL,'2014-06-03 23:27:44'),(761,'core',5,'Página <b>dasdasdasd</b> foi apagada por Administrator',NULL,'2014-06-03 23:27:46'),(762,'core',5,'Página <b>dasdasdasdas</b> foi apagada por Administrator',NULL,'2014-06-03 23:27:49'),(763,'core',5,'Página <b>dasdasdasdasd</b> foi apagada por Administrator',NULL,'2014-06-03 23:27:51'),(764,'core',5,'Página <b>dsadasdasdadas</b> foi apagada por Administrator',NULL,'2014-06-03 23:27:53'),(765,'core',5,'Página <b>dsadasdasdasd</b> foi apagada por Administrator',NULL,'2014-06-03 23:27:55'),(766,'core',5,'Página <b>DVD</b> foi apagada por Administrator',NULL,'2014-06-03 23:27:58'),(767,'core',5,'Página <b>Dxx</b> foi apagada por Administrator',NULL,'2014-06-03 23:28:00'),(768,'core',5,'Página <b>Fdd</b> foi apagada por Administrator',NULL,'2014-06-03 23:28:04'),(769,'core',5,'Página <b>Filipe</b> foi apagada por Administrator',NULL,'2014-06-03 23:28:06'),(770,'core',5,'Página <b>G</b> foi apagada por Administrator',NULL,'2014-06-03 23:28:09'),(771,'core',5,'Página <b>Gargalhava</b> foi apagada por Administrator',NULL,'2014-06-03 23:28:11'),(772,'core',5,'Página <b>Gdd</b> foi apagada por Administrator',NULL,'2014-06-03 23:28:18'),(773,'core',5,'Página <b>H</b> foi apagada por Administrator',NULL,'2014-06-03 23:28:21'),(774,'core',5,'Página <b>Hahah</b> foi apagada por Administrator',NULL,'2014-06-03 23:28:24'),(775,'core',5,'Página <b>Haja</b> foi apagada por Administrator',NULL,'2014-06-03 23:28:27'),(776,'core',5,'Página <b>Haja</b> foi apagada por Administrator',NULL,'2014-06-03 23:28:29'),(777,'core',5,'Página <b>Haja</b> foi apagada por Administrator',NULL,'2014-06-03 23:28:32'),(778,'core',5,'Página <b>Haja</b> foi apagada por Administrator',NULL,'2014-06-03 23:28:34'),(779,'core',5,'Página <b>Hans</b> foi apagada por Administrator',NULL,'2014-06-03 23:28:37'),(780,'core',5,'Página <b>Havaiana</b> foi apagada por Administrator',NULL,'2014-06-03 23:28:40'),(781,'core',5,'Página <b>Hshs</b> foi apagada por Administrator',NULL,'2014-06-03 23:28:42'),(782,'core',5,'Página <b>Hshsh</b> foi apagada por Administrator',NULL,'2014-06-03 23:28:45'),(783,'core',5,'Página <b>Hshshs</b> foi apagada por Administrator',NULL,'2014-06-03 23:28:48'),(784,'core',5,'Página <b>Hshshs</b> foi apagada por Administrator',NULL,'2014-06-03 23:28:50'),(785,'core',5,'Página <b>Hshshs</b> foi apagada por Administrator',NULL,'2014-06-03 23:28:53'),(786,'core',5,'Página <b>Hshshs</b> foi apagada por Administrator',NULL,'2014-06-03 23:28:56'),(787,'core',5,'Página <b>Hshshs</b> foi apagada por Administrator',NULL,'2014-06-03 23:28:59'),(788,'core',5,'Página <b>Hshshs</b> foi apagada por Administrator',NULL,'2014-06-03 23:29:02'),(789,'core',5,'Página <b>Hshshs</b> foi apagada por Administrator',NULL,'2014-06-03 23:29:04'),(790,'core',5,'Página <b>Hshshs</b> foi apagada por Administrator',NULL,'2014-06-03 23:29:06'),(791,'core',5,'Página <b>Hshshs</b> foi apagada por Administrator',NULL,'2014-06-03 23:29:09'),(792,'core',5,'Página <b>Hshshs</b> foi apagada por Administrator',NULL,'2014-06-03 23:29:11'),(793,'core',5,'Página <b>Hshshs</b> foi apagada por Administrator',NULL,'2014-06-03 23:29:34'),(794,'core',5,'Página <b>Hshshs</b> foi apagada por Administrator',NULL,'2014-06-03 23:29:37'),(795,'core',5,'Página <b>Hshshs</b> foi apagada por Administrator',NULL,'2014-06-03 23:29:40'),(796,'core',5,'Página <b>Hshshsh</b> foi apagada por Administrator',NULL,'2014-06-03 23:29:42'),(797,'core',5,'Página <b>Hshshsh</b> foi apagada por Administrator',NULL,'2014-06-03 23:29:45'),(798,'core',5,'Página <b>Hshshsh</b> foi apagada por Administrator',NULL,'2014-06-03 23:29:48'),(799,'core',5,'Página <b>Hugo</b> foi apagada por Administrator',NULL,'2014-06-03 23:29:51'),(800,'core',5,'Página <b>Hzhsh</b> foi apagada por Administrator',NULL,'2014-06-03 23:29:54'),(801,'core',5,'Página <b>Indiana</b> foi apagada por Administrator',NULL,'2014-06-03 23:29:57'),(802,'core',5,'Página <b>Isso</b> foi apagada por Administrator',NULL,'2014-06-03 23:30:00'),(803,'core',5,'Página <b>Jamais</b> foi apagada por Administrator',NULL,'2014-06-03 23:30:03'),(804,'core',5,'Página <b>Jasus</b> foi apagada por Administrator',NULL,'2014-06-03 23:30:07'),(805,'core',5,'Página <b>Java</b> foi apagada por Administrator',NULL,'2014-06-03 23:30:10'),(806,'core',5,'Página <b>Jjsja</b> foi apagada por Administrator',NULL,'2014-06-03 23:30:13'),(807,'core',5,'Página <b>Jshsh</b> foi apagada por Administrator',NULL,'2014-06-03 23:30:15'),(808,'core',5,'Página <b>Jsjs</b> foi apagada por Administrator',NULL,'2014-06-03 23:30:18'),(809,'core',5,'Página <b>lkjasdhjklsadhjksahdjaskdhl</b> foi apagada por Administrator',NULL,'2014-06-03 23:30:20'),(810,'core',5,'Página <b>Nahah</b> foi apagada por Administrator',NULL,'2014-06-03 23:30:22'),(811,'core',5,'Página <b>Nana</b> foi apagada por Administrator',NULL,'2014-06-03 23:30:25'),(812,'core',5,'Página <b>Pago</b> foi apagada por Administrator',NULL,'2014-06-03 23:30:27'),(813,'core',5,'Página <b>Paladar</b> foi apagada por Administrator',NULL,'2014-06-03 23:30:29'),(814,'core',5,'Página <b>Papão</b> foi apagada por Administrator',NULL,'2014-06-03 23:30:32'),(815,'core',5,'Página <b>Pauli</b> foi apagada por Administrator',NULL,'2014-06-03 23:30:34'),(816,'core',5,'Página <b>Paulo </b> foi apagada por Administrator',NULL,'2014-06-03 23:30:36'),(817,'core',5,'Página <b>Paulo Fernandes </b> foi apagada por Administrator',NULL,'2014-06-03 23:30:39'),(818,'core',5,'Página <b>Paulo Fernandes</b> foi apagada por Administrator',NULL,'2014-06-03 23:30:41'),(819,'core',5,'Página <b>Paulo Fernandes</b> foi apagada por Administrator',NULL,'2014-06-03 23:30:44'),(820,'core',5,'Página <b>Paulo fernandes</b> foi apagada por Administrator',NULL,'2014-06-03 23:30:47'),(821,'core',5,'Página <b>Paulo</b> foi apagada por Administrator',NULL,'2014-06-03 23:30:49'),(822,'core',5,'Página <b>Paulo</b> foi apagada por Administrator',NULL,'2014-06-03 23:30:51'),(823,'core',5,'Página <b>Paulo</b> foi apagada por Administrator',NULL,'2014-06-03 23:30:54'),(824,'core',5,'Página <b>Paulo</b> foi apagada por Administrator',NULL,'2014-06-03 23:30:56'),(825,'core',5,'Página <b>Paulo</b> foi apagada por Administrator',NULL,'2014-06-03 23:30:58'),(826,'core',5,'Página <b>Paulo</b> foi apagada por Administrator',NULL,'2014-06-03 23:31:00'),(827,'core',5,'Página <b>Paulo</b> foi apagada por Administrator',NULL,'2014-06-03 23:31:02'),(828,'core',5,'Página <b>Paulo</b> foi apagada por Administrator',NULL,'2014-06-03 23:31:05'),(829,'core',5,'Página <b>Paulo</b> foi apagada por Administrator',NULL,'2014-06-03 23:31:07'),(830,'core',5,'Página <b>Paulo</b> foi apagada por Administrator',NULL,'2014-06-03 23:31:10'),(831,'core',5,'Página <b>Paulo</b> foi apagada por Administrator',NULL,'2014-06-03 23:31:12'),(832,'core',5,'Página <b>Paulo</b> foi apagada por Administrator',NULL,'2014-06-03 23:31:14'),(833,'core',5,'Página <b>Paulo</b> foi apagada por Administrator',NULL,'2014-06-03 23:31:17'),(834,'core',5,'Página <b>Paulo</b> foi apagada por Administrator',NULL,'2014-06-03 23:31:18'),(835,'core',5,'Página <b>Paulo</b> foi apagada por Administrator',NULL,'2014-06-03 23:31:21'),(836,'core',5,'Página <b>Paulo</b> foi apagada por Administrator',NULL,'2014-06-03 23:31:24'),(837,'core',5,'Página <b>Paulo</b> foi apagada por Administrator',NULL,'2014-06-03 23:31:27'),(838,'core',5,'Página <b>Paulo</b> foi apagada por Administrator',NULL,'2014-06-03 23:31:29'),(839,'core',5,'Página <b>Paulofernandes@dr.com</b> foi apagada por Administrator',NULL,'2014-06-03 23:31:31'),(840,'core',5,'Página <b>R</b> foi apagada por Administrator',NULL,'2014-06-03 23:31:33'),(841,'core',5,'Página <b>Rrrffff</b> foi apagada por Administrator',NULL,'2014-06-03 23:31:35'),(842,'core',5,'Página <b>Seja</b> foi apagada por Administrator',NULL,'2014-06-03 23:31:37'),(843,'core',5,'Página <b>Siga</b> foi apagada por Administrator',NULL,'2014-06-03 23:31:40'),(844,'core',5,'Página <b>Teste</b> foi apagada por Administrator',NULL,'2014-06-03 23:31:42'),(845,'core',5,'Página <b>Teste</b> foi apagada por Administrator',NULL,'2014-06-03 23:31:44'),(846,'core',5,'Página <b>Teste</b> foi apagada por Administrator',NULL,'2014-06-03 23:31:46'),(847,'core',5,'Página <b>Teste2</b> foi apagada por Administrator',NULL,'2014-06-03 23:31:48'),(848,'core',5,'Página <b>Tfff</b> foi apagada por Administrator',NULL,'2014-06-03 23:31:50'),(849,'core',5,'Página <b>Tiago</b> foi apagada por Administrator',NULL,'2014-06-03 23:31:53'),(850,'core',5,'Página <b>Tttttt</b> foi apagada por Administrator',NULL,'2014-06-03 23:31:55'),(851,'core',5,'Página <b>Yyyyyyyy</b> foi apagada por Administrator',NULL,'2014-06-03 23:31:57'),(852,'core',5,'Utilizador <b>tarambola</b> efectuou Log In.',NULL,'2014-06-04 10:18:01'),(853,'core',5,'Utilizador <b>tarambola</b> efectuou Log In.',NULL,'2014-06-05 16:24:28'),(854,'core',5,'Snippet <b><a href=\"http://slotmachine.no-ip.info/tarabackend/snippet/edit/14\">service</a></b> foi revisto por Administrator',NULL,'2014-06-05 16:25:52'),(855,'core',5,'Snippet <b><a href=\"http://slotmachine.no-ip.info/tarabackend/snippet/edit/14\">service</a></b> foi revisto por Administrator',NULL,'2014-06-05 16:31:24'),(856,'core',5,'Utilizador <b>tarambola</b> efectuou Log In.',NULL,'2014-06-05 16:53:36'),(857,'core',5,'Utilizador <b>tarambola</b> efectuou Log In.',NULL,'2014-06-06 15:41:49'),(858,'core',5,'Utilizador <b>tarambola</b> efectuou Log In.',NULL,'2014-06-11 11:43:01'),(859,'core',5,'Snippet <b><a href=\"http://slotmachine.no-ip.info/tarabackend/snippet/edit/15\">register</a></b> foi revisto por Administrator',NULL,'2014-06-11 11:55:38'),(860,'core',5,'Layout <b><a href=\"http://slotmachine.no-ip.info/tarabackend/layout/edit/1\">default</a></b> foi revisto por Administrator',NULL,'2014-06-11 12:16:03'),(861,'core',5,'Snippet <b><a href=\"http://slotmachine.no-ip.info/tarabackend/snippet/edit/16\">tryagain</a></b> foi revisto por Administrator',NULL,'2014-06-11 12:30:05'),(862,'core',5,'Snippet <b><a href=\"http://slotmachine.no-ip.info/tarabackend/snippet/edit/16\">tryagain</a></b> foi revisto por Administrator',NULL,'2014-06-11 12:30:27'),(863,'core',5,'Snippet <b><a href=\"http://slotmachine.no-ip.info/tarabackend/snippet/edit/16\">tryagain</a></b> foi revisto por Administrator',NULL,'2014-06-11 12:35:34'),(864,'core',5,'Snippet <b><a href=\"http://slotmachine.no-ip.info/tarabackend/snippet/edit/16\">tryagain</a></b> foi revisto por Administrator',NULL,'2014-06-11 12:36:54'),(865,'core',5,'Snippet <b><a href=\"http://slotmachine.no-ip.info/tarabackend/snippet/edit/16\">tryagain</a></b> foi revisto por Administrator',NULL,'2014-06-11 12:37:36'),(866,'core',5,'Snippet <b><a href=\"http://slotmachine.no-ip.info/tarabackend/snippet/edit/16\">tryagain</a></b> foi revisto por Administrator',NULL,'2014-06-11 12:38:07'),(867,'core',5,'Snippet <b><a href=\"http://slotmachine.no-ip.info/tarabackend/snippet/edit/16\">tryagain</a></b> foi revisto por Administrator',NULL,'2014-06-11 12:38:35'),(868,'core',5,'Utilizador <b>tarambola</b> efectuou Log In.',NULL,'2014-06-11 12:49:33'),(869,'core',5,'Página <b></b> foi apagada por Administrator',NULL,'2014-06-11 12:49:45'),(870,'core',5,'Página <b></b> foi apagada por Administrator',NULL,'2014-06-11 12:49:48'),(871,'core',5,'Página <b></b> foi apagada por Administrator',NULL,'2014-06-11 12:49:50'),(872,'core',5,'Página <b></b> foi apagada por Administrator',NULL,'2014-06-11 12:49:53'),(873,'core',5,'Página <b></b> foi apagada por Administrator',NULL,'2014-06-11 12:49:56'),(874,'core',5,'Página <b></b> foi apagada por Administrator',NULL,'2014-06-11 12:49:59'),(875,'core',5,'Página <b></b> foi apagada por Administrator',NULL,'2014-06-11 12:50:02'),(876,'core',5,'Página <b></b> foi apagada por Administrator',NULL,'2014-06-11 12:50:05'),(877,'core',5,'Página <b></b> foi apagada por Administrator',NULL,'2014-06-11 12:50:08'),(878,'core',5,'Página <b></b> foi apagada por Administrator',NULL,'2014-06-11 12:50:11'),(879,'core',5,'Página <b></b> foi apagada por Administrator',NULL,'2014-06-11 12:50:14'),(880,'core',5,'Página <b></b> foi apagada por Administrator',NULL,'2014-06-11 12:50:17'),(881,'core',5,'Página <b></b> foi apagada por Administrator',NULL,'2014-06-11 12:50:26'),(882,'core',5,'Página <b></b> foi apagada por Administrator',NULL,'2014-06-11 12:50:30'),(883,'core',5,'Página <b></b> foi apagada por Administrator',NULL,'2014-06-11 12:50:33'),(884,'core',5,'Página <b></b> foi apagada por Administrator',NULL,'2014-06-11 12:50:36'),(885,'core',5,'Página <b></b> foi apagada por Administrator',NULL,'2014-06-11 12:50:39'),(886,'core',5,'Página <b></b> foi apagada por Administrator',NULL,'2014-06-11 12:50:42'),(887,'core',5,'Página <b></b> foi apagada por Administrator',NULL,'2014-06-11 12:50:45'),(888,'core',5,'Página <b></b> foi apagada por Administrator',NULL,'2014-06-11 12:50:47'),(889,'core',5,'Página <b></b> foi apagada por Administrator',NULL,'2014-06-11 12:50:50'),(890,'core',5,'Página <b></b> foi apagada por Administrator',NULL,'2014-06-11 12:50:53'),(891,'core',5,'Página <b></b> foi apagada por Administrator',NULL,'2014-06-11 12:50:56'),(892,'core',5,'Página <b></b> foi apagada por Administrator',NULL,'2014-06-11 12:50:59'),(893,'core',5,'Layout <b><a href=\"http://slotmachine.no-ip.info/tarabackend/layout/edit/1\">default</a></b> foi revisto por Administrator',NULL,'2014-06-11 12:51:15'),(894,'core',5,'Página <b></b> foi apagada por Administrator',NULL,'2014-06-11 12:51:23'),(895,'core',5,'Página <b>Paulo</b> foi apagada por Administrator',NULL,'2014-06-11 12:52:42'),(896,'core',5,'Página <b></b> foi apagada por Administrator',NULL,'2014-06-11 12:52:49'),(897,'core',5,'Página <b></b> foi apagada por Administrator',NULL,'2014-06-11 12:53:01'),(898,'core',5,'Página <b>Paulo</b> foi apagada por Administrator',NULL,'2014-06-11 12:53:09'),(899,'core',5,'Página <b></b> foi apagada por Administrator',NULL,'2014-06-11 12:55:45'),(900,'core',5,'Layout <b><a href=\"http://slotmachine.no-ip.info/tarabackend/layout/edit/1\">default</a></b> foi revisto por Administrator',NULL,'2014-06-11 14:26:27'),(901,'core',5,'Layout <b><a href=\"http://slotmachine.no-ip.info/tarabackend/layout/edit/1\">default</a></b> foi revisto por Administrator',NULL,'2014-06-11 14:51:33'),(902,'core',5,'Snippet <b><a href=\"http://slotmachine.no-ip.info/tarabackend/snippet/edit/14\">service</a></b> foi revisto por Administrator',NULL,'2014-06-11 15:16:06'),(903,'core',5,'Página <b><a href=\"http://slotmachine.no-ip.info/tarabackend/page/edit/311\">Mensagens</a></b> foi criada por Administrator',NULL,'2014-06-11 15:36:00'),(904,'core',5,'Página <b><a href=\"http://slotmachine.no-ip.info/tarabackend/page/edit/312\">________mensagens</a></b> foi criada por Administrator',NULL,'2014-06-11 15:36:17'),(905,'core',5,'Snippet <b><a href=\"http://slotmachine.no-ip.info/tarabackend/snippet/edit/15\">register</a></b> foi revisto por Administrator',NULL,'2014-06-11 15:42:17'),(906,'core',5,'Página <b><a href=\"http://slotmachine.no-ip.info/tarabackend/page/edit/312\">________mensagens</a></b> foi revista por Administrator',NULL,'2014-06-11 15:42:51'),(907,'core',5,'Página <b><a href=\"http://slotmachine.no-ip.info/tarabackend/page/edit/311\">Mensagens</a></b> foi revista por Administrator',NULL,'2014-06-11 15:43:08'),(908,'core',5,'Página <b><a href=\"http://slotmachine.no-ip.info/tarabackend/page/edit/314\">Register</a></b> foi criada por Administrator',NULL,'2014-06-11 15:45:47'),(909,'core',5,'Página <b><a href=\"http://slotmachine.no-ip.info/tarabackend/page/edit/315\">Mensagens Screens</a></b> foi criada por Administrator',NULL,'2014-06-11 15:53:32'),(910,'core',5,'Página <b><a href=\"http://slotmachine.no-ip.info/tarabackend/page/edit/315\">Mensagens Screens</a></b> foi revista por Administrator',NULL,'2014-06-11 15:57:38'),(911,'core',5,'Página <b><a href=\"http://slotmachine.no-ip.info/tarabackend/page/edit/315\">Mensagens Screens</a></b> foi revista por Administrator',NULL,'2014-06-11 16:01:02'),(912,'core',5,'Página <b><a href=\"http://slotmachine.no-ip.info/tarabackend/page/edit/316\">Wait</a></b> foi criada por Administrator',NULL,'2014-06-11 16:17:08'),(913,'core',5,'Página <b><a href=\"http://slotmachine.no-ip.info/tarabackend/page/edit/316\">Wait</a></b> foi revista por Administrator',NULL,'2014-06-11 16:23:34'),(914,'core',5,'Página <b><a href=\"http://slotmachine.no-ip.info/tarabackend/page/edit/316\">Wait</a></b> foi revista por Administrator',NULL,'2014-06-11 16:23:51'),(915,'core',5,'Página <b><a href=\"http://slotmachine.no-ip.info/tarabackend/page/edit/316\">Wait</a></b> foi revista por Administrator',NULL,'2014-06-11 16:24:09'),(916,'core',5,'Snippet <b><a href=\"http://slotmachine.no-ip.info/tarabackend/snippet/edit/16\">tryagain</a></b> foi revisto por Administrator',NULL,'2014-06-11 16:26:57'),(917,'core',5,'Página <b><a href=\"http://slotmachine.no-ip.info/tarabackend/page/edit/314\">Register</a></b> foi revista por Administrator',NULL,'2014-06-11 16:29:18'),(918,'core',5,'Página <b><a href=\"http://slotmachine.no-ip.info/tarabackend/page/edit/314\">Register</a></b> foi revista por Administrator',NULL,'2014-06-11 16:29:27'),(919,'core',5,'Snippet <b><a href=\"http://slotmachine.no-ip.info/tarabackend/snippet/edit/15\">register</a></b> foi revisto por Administrator',NULL,'2014-06-11 16:30:46'),(920,'core',5,'Página <b><a href=\"http://slotmachine.no-ip.info/tarabackend/page/edit/315\">Mensagens Screens</a></b> foi revista por Administrator',NULL,'2014-06-11 16:37:12'),(921,'core',5,'Página <b><a href=\"http://slotmachine.no-ip.info/tarabackend/page/edit/315\">Mensagens Screens</a></b> foi revista por Administrator',NULL,'2014-06-11 16:42:32'),(922,'core',5,'Página <b><a href=\"http://slotmachine.no-ip.info/tarabackend/page/edit/317\">Mensagens Mobile</a></b> foi criada por Administrator',NULL,'2014-06-11 16:45:26'),(923,'core',5,'Snippet <b><a href=\"http://slotmachine.no-ip.info/tarabackend/snippet/edit/14\">service</a></b> foi revisto por Administrator',NULL,'2014-06-11 16:48:05'),(924,'core',5,'Página <b><a href=\"http://slotmachine.no-ip.info/tarabackend/page/edit/315\">Mensagens Screens</a></b> foi revista por Administrator',NULL,'2014-06-11 16:49:24'),(925,'core',5,'Página <b><a href=\"http://slotmachine.no-ip.info/tarabackend/page/edit/315\">Mensagens Screens</a></b> foi revista por Administrator',NULL,'2014-06-11 16:58:46'),(926,'core',5,'Página <b><a href=\"http://slotmachine.no-ip.info/tarabackend/page/edit/315\">Mensagens Screens</a></b> foi revista por Administrator',NULL,'2014-06-11 16:59:23'),(927,'core',5,'Snippet <b><a href=\"http://slotmachine.no-ip.info/tarabackend/snippet/edit/14\">service</a></b> foi revisto por Administrator',NULL,'2014-06-11 17:04:15'),(928,'core',5,'Utilizador <b>tarambola</b> efectuou Log In.',NULL,'2014-06-11 17:43:30'),(929,'core',5,'Página <b><a href=\"http://slotmachine.no-ip.info/tarabackend/page/edit/317\">Mensagens Mobile</a></b> foi revista por Administrator',NULL,'2014-06-11 17:43:55'),(930,'core',5,'Página <b><a href=\"http://slotmachine.no-ip.info/tarabackend/page/edit/317\">Mensagens Mobile</a></b> foi revista por Administrator',NULL,'2014-06-11 17:44:04'),(931,'core',5,'Página <b><a href=\"http://slotmachine.no-ip.info/tarabackend/page/edit/317\">Mensagens Mobile</a></b> foi revista por Administrator',NULL,'2014-06-11 17:47:04'),(932,'core',5,'Página <b><a href=\"http://slotmachine.no-ip.info/tarabackend/page/edit/315\">Mensagens Screens</a></b> foi revista por Administrator',NULL,'2014-06-11 18:06:22'),(933,'core',5,'Snippet <b><a href=\"http://slotmachine.no-ip.info/tarabackend/snippet/edit/14\">service</a></b> foi revisto por Administrator',NULL,'2014-06-11 18:07:13'),(934,'core',5,'Snippet <b><a href=\"http://slotmachine.no-ip.info/tarabackend/snippet/edit/15\">register</a></b> foi revisto por Administrator',NULL,'2014-06-11 18:09:58'),(935,'core',5,'Página <b><a href=\"http://slotmachine.no-ip.info/tarabackend/page/edit/317\">Mensagens Mobile</a></b> foi revista por Administrator',NULL,'2014-06-11 18:11:03'),(936,'core',5,'Página <b><a href=\"http://slotmachine.no-ip.info/tarabackend/page/edit/317\">Mensagens Mobile</a></b> foi revista por Administrator',NULL,'2014-06-11 18:11:14'),(937,'core',5,'Página <b><a href=\"http://slotmachine.no-ip.info/tarabackend/page/edit/317\">Mensagens Mobile</a></b> foi revista por Administrator',NULL,'2014-06-11 18:14:00'),(938,'core',5,'Snippet <b><a href=\"http://slotmachine.no-ip.info/tarabackend/snippet/edit/16\">tryagain</a></b> foi revisto por Administrator',NULL,'2014-06-11 18:15:08'),(939,'core',5,'Página <b><a href=\"http://slotmachine.no-ip.info/tarabackend/page/edit/317\">Mensagens Mobile</a></b> foi revista por Administrator',NULL,'2014-06-11 18:16:57'),(940,'core',5,'Página <b><a href=\"http://slotmachine.no-ip.info/tarabackend/page/edit/317\">Mensagens Mobile</a></b> foi revista por Administrator',NULL,'2014-06-11 18:17:09'),(941,'core',5,'Página <b><a href=\"http://slotmachine.no-ip.info/tarabackend/page/edit/130\">Configurações</a></b> foi revista por Administrator',NULL,'2014-06-11 18:19:47'),(942,'core',5,'Página <b><a href=\"http://slotmachine.no-ip.info/tarabackend/page/edit/130\">Configurações</a></b> foi revista por Administrator',NULL,'2014-06-11 18:21:22'),(943,'core',5,'Página <b><a href=\"http://slotmachine.no-ip.info/tarabackend/page/edit/130\">Configurações</a></b> foi revista por Administrator',NULL,'2014-06-11 18:24:42'),(944,'core',5,'Snippet <b><a href=\"http://slotmachine.no-ip.info/tarabackend/snippet/edit/14\">service</a></b> foi revisto por Administrator',NULL,'2014-06-11 18:43:51'),(945,'core',5,'Snippet <b><a href=\"http://slotmachine.no-ip.info/tarabackend/snippet/edit/14\">service</a></b> foi revisto por Administrator',NULL,'2014-06-11 18:45:35'),(946,'core',5,'Snippet <b><a href=\"http://slotmachine.no-ip.info/tarabackend/snippet/edit/14\">service</a></b> foi revisto por Administrator',NULL,'2014-06-11 18:47:59'),(947,'core',5,'Utilizador <b>tarambola</b> efectuou Log In.',NULL,'2014-06-11 23:01:59'),(948,'core',5,'Snippet <b><a href=\"http://slotmachine.no-ip.info/tarabackend/snippet/edit/14\">service</a></b> foi revisto por Administrator',NULL,'2014-06-11 23:02:26'),(949,'core',5,'Página <b>Paulo</b> foi apagada por Administrator',NULL,'2014-06-11 23:21:18'),(950,'core',5,'Página <b>Paulo </b> foi apagada por Administrator',NULL,'2014-06-11 23:21:23'),(951,'core',5,'Página <b>Paulo</b> foi apagada por Administrator',NULL,'2014-06-11 23:21:27'),(952,'core',5,'Página <b>Paulo</b> foi apagada por Administrator',NULL,'2014-06-11 23:24:50'),(953,'core',5,'Página <b>Paulo</b> foi apagada por Administrator',NULL,'2014-06-11 23:24:56'),(954,'core',5,'Página <b>Paulo</b> foi apagada por Administrator',NULL,'2014-06-11 23:25:00'),(955,'core',5,'Página <b>Paulo</b> foi apagada por Administrator',NULL,'2014-06-11 23:28:31'),(956,'core',5,'Página <b>Paulofernandes</b> foi apagada por Administrator',NULL,'2014-06-11 23:28:36'),(957,'core',5,'Página <b>Paulo</b> foi apagada por Administrator',NULL,'2014-06-11 23:28:40'),(958,'core',5,'Página <b>Paulo</b> foi apagada por Administrator',NULL,'2014-06-11 23:33:18'),(959,'core',5,'Página <b>Paulo</b> foi apagada por Administrator',NULL,'2014-06-11 23:33:37'),(960,'core',5,'Página <b>Paulo</b> foi apagada por Administrator',NULL,'2014-06-11 23:34:27'),(961,'core',5,'Página <b>Paulo</b> foi apagada por Administrator',NULL,'2014-06-11 23:34:34'),(962,'core',5,'Página <b>Paulo</b> foi apagada por Administrator',NULL,'2014-06-11 23:34:39'),(963,'core',5,'Página <b>Paulofer</b> foi apagada por Administrator',NULL,'2014-06-11 23:34:43'),(964,'core',5,'Página <b>Paulo</b> foi apagada por Administrator',NULL,'2014-06-11 23:34:48'),(965,'core',5,'Página <b>Paulo </b> foi apagada por Administrator',NULL,'2014-06-11 23:34:52'),(966,'core',5,'Página <b>Paulo</b> foi apagada por Administrator',NULL,'2014-06-11 23:34:56'),(967,'core',5,'Página <b>Paulo</b> foi apagada por Administrator',NULL,'2014-06-11 23:35:02'),(968,'core',5,'Página <b>Paulo</b> foi apagada por Administrator',NULL,'2014-06-11 23:35:16'),(969,'core',5,'Página <b>Paulo</b> foi apagada por Administrator',NULL,'2014-06-11 23:35:21'),(970,'core',5,'Página <b>Paulo</b> foi apagada por Administrator',NULL,'2014-06-11 23:35:25'),(971,'core',5,'Página <b>Paulo</b> foi apagada por Administrator',NULL,'2014-06-11 23:38:39'),(972,'core',5,'Página <b>Paulo.r.r.fernandes@gmail.com</b> foi apagada por Administrator',NULL,'2014-06-11 23:38:44'),(973,'core',5,'Página <b>Paulo</b> foi apagada por Administrator',NULL,'2014-06-11 23:38:49'),(974,'core',5,'Snippet <b><a href=\"http://slotmachine.no-ip.info/tarabackend/snippet/edit/14\">service</a></b> foi revisto por Administrator',NULL,'2014-06-12 00:16:42'),(975,'core',5,'Snippet <b><a href=\"http://slotmachine.no-ip.info/tarabackend/snippet/edit/14\">service</a></b> foi revisto por Administrator',NULL,'2014-06-12 00:17:58'),(976,'core',5,'Utilizador <b>tarambola</b> efectuou Log In.',NULL,'2014-06-12 10:15:35'),(977,'core',5,'Página <b>Paulo</b> foi apagada por Administrator',NULL,'2014-06-12 10:15:54'),(978,'core',5,'Página <b>Paulo.r.r.</b> foi apagada por Administrator',NULL,'2014-06-12 10:15:59'),(979,'core',5,'Utilizador <b>tarambola</b> efectuou Log In.',NULL,'2014-06-12 10:52:30'),(980,'core',5,'Snippet <b><a href=\"http://slotmachine.no-ip.info/tarabackend/snippet/edit/16\">tryagain</a></b> foi revisto por Administrator',NULL,'2014-06-12 10:52:46'),(981,'core',5,'Página <b><a href=\"http://slotmachine.no-ip.info/tarabackend/page/edit/368\">Mensagens Mail</a></b> foi criada por Administrator',NULL,'2014-06-12 11:12:11'),(982,'core',5,'Página <b><a href=\"http://slotmachine.no-ip.info/tarabackend/page/edit/368\">Mensagens Mail</a></b> foi revista por Administrator',NULL,'2014-06-12 11:13:51'),(983,'core',5,'Utilizador <b>boombap</b> efectuou Log In.',NULL,'2014-06-12 11:29:29'),(984,'core',5,'Página <b></b> foi apagada por Boom Bap',NULL,'2014-06-12 11:29:44'),(985,'core',5,'Página <b>paulo</b> foi apagada por Boom Bap',NULL,'2014-06-12 11:29:51'),(986,'core',5,'Página <b></b> foi apagada por Boom Bap',NULL,'2014-06-12 11:29:59'),(987,'core',5,'Página <b></b> foi apagada por Boom Bap',NULL,'2014-06-12 11:30:01'),(988,'core',5,'Página <b></b> foi apagada por Boom Bap',NULL,'2014-06-12 11:30:04'),(989,'core',5,'Página <b></b> foi apagada por Boom Bap',NULL,'2014-06-12 11:30:07'),(990,'core',5,'Página <b></b> foi apagada por Boom Bap',NULL,'2014-06-12 11:30:10'),(991,'core',5,'Página <b></b> foi apagada por Boom Bap',NULL,'2014-06-12 11:30:15'),(992,'core',5,'Página <b></b> foi apagada por Boom Bap',NULL,'2014-06-12 11:30:18'),(993,'core',5,'Página <b></b> foi apagada por Boom Bap',NULL,'2014-06-12 11:30:21'),(994,'core',5,'Página <b></b> foi apagada por Boom Bap',NULL,'2014-06-12 11:30:25'),(995,'core',5,'Página <b></b> foi apagada por Boom Bap',NULL,'2014-06-12 11:30:28'),(996,'core',5,'Página <b></b> foi apagada por Boom Bap',NULL,'2014-06-12 11:30:31'),(997,'core',5,'Página <b></b> foi apagada por Boom Bap',NULL,'2014-06-12 11:30:34'),(998,'core',5,'Página <b></b> foi apagada por Boom Bap',NULL,'2014-06-12 11:30:37'),(999,'core',5,'Página <b></b> foi apagada por Boom Bap',NULL,'2014-06-12 11:30:41'),(1000,'core',5,'Página <b></b> foi apagada por Boom Bap',NULL,'2014-06-12 11:30:44'),(1001,'core',5,'Página <b></b> foi apagada por Boom Bap',NULL,'2014-06-12 11:30:48'),(1002,'core',5,'Página <b></b> foi apagada por Boom Bap',NULL,'2014-06-12 11:30:51'),(1003,'core',5,'Página <b></b> foi apagada por Boom Bap',NULL,'2014-06-12 11:30:54'),(1004,'core',5,'Página <b></b> foi apagada por Boom Bap',NULL,'2014-06-12 11:31:01'),(1005,'core',5,'Página <b></b> foi apagada por Boom Bap',NULL,'2014-06-12 11:31:04'),(1006,'core',5,'Página <b></b> foi apagada por Boom Bap',NULL,'2014-06-12 11:31:07'),(1007,'core',5,'Página <b></b> foi apagada por Boom Bap',NULL,'2014-06-12 11:31:10'),(1008,'core',5,'Página <b></b> foi apagada por Boom Bap',NULL,'2014-06-12 11:31:14'),(1009,'core',5,'Página <b></b> foi apagada por Boom Bap',NULL,'2014-06-12 11:31:16'),(1010,'core',5,'Página <b></b> foi apagada por Boom Bap',NULL,'2014-06-12 11:31:18'),(1011,'core',5,'Página <b></b> foi apagada por Boom Bap',NULL,'2014-06-12 11:31:20'),(1012,'core',5,'Página <b></b> foi apagada por Boom Bap',NULL,'2014-06-12 11:31:23'),(1013,'core',5,'Página <b></b> foi apagada por Boom Bap',NULL,'2014-06-12 11:31:26'),(1014,'core',5,'Página <b></b> foi apagada por Boom Bap',NULL,'2014-06-12 11:31:28'),(1015,'core',5,'Página <b></b> foi apagada por Boom Bap',NULL,'2014-06-12 11:31:30'),(1016,'core',5,'Página <b></b> foi apagada por Boom Bap',NULL,'2014-06-12 11:31:33'),(1017,'core',5,'Página <b></b> foi apagada por Boom Bap',NULL,'2014-06-12 11:31:35'),(1018,'core',5,'Página <b></b> foi apagada por Boom Bap',NULL,'2014-06-12 11:31:37'),(1019,'core',5,'Página <b></b> foi apagada por Boom Bap',NULL,'2014-06-12 11:31:40'),(1020,'core',5,'Página <b></b> foi apagada por Boom Bap',NULL,'2014-06-12 11:31:42'),(1021,'core',5,'Página <b></b> foi apagada por Boom Bap',NULL,'2014-06-12 11:31:45'),(1022,'core',5,'Página <b></b> foi apagada por Boom Bap',NULL,'2014-06-12 11:31:48'),(1023,'core',5,'Página <b></b> foi apagada por Boom Bap',NULL,'2014-06-12 11:31:51'),(1024,'core',5,'Página <b></b> foi apagada por Boom Bap',NULL,'2014-06-12 11:31:54'),(1025,'core',5,'Página <b></b> foi apagada por Boom Bap',NULL,'2014-06-12 11:31:56'),(1026,'core',5,'Página <b></b> foi apagada por Boom Bap',NULL,'2014-06-12 11:31:59'),(1027,'core',5,'Página <b></b> foi apagada por Boom Bap',NULL,'2014-06-12 11:32:01'),(1028,'core',5,'Página <b></b> foi apagada por Boom Bap',NULL,'2014-06-12 11:32:03'),(1029,'core',5,'Página <b></b> foi apagada por Boom Bap',NULL,'2014-06-12 11:32:06'),(1030,'core',5,'Página <b></b> foi apagada por Boom Bap',NULL,'2014-06-12 11:32:09'),(1031,'core',5,'Página <b></b> foi apagada por Boom Bap',NULL,'2014-06-12 11:32:11'),(1032,'core',5,'Página <b></b> foi apagada por Boom Bap',NULL,'2014-06-12 11:32:13'),(1033,'core',5,'Página <b></b> foi apagada por Boom Bap',NULL,'2014-06-12 11:32:16'),(1034,'core',5,'Página <b></b> foi apagada por Boom Bap',NULL,'2014-06-12 11:32:18'),(1035,'core',5,'Página <b></b> foi apagada por Boom Bap',NULL,'2014-06-12 11:32:34'),(1036,'core',5,'Página <b></b> foi apagada por Boom Bap',NULL,'2014-06-12 11:32:43'),(1037,'core',5,'Página <b></b> foi apagada por Boom Bap',NULL,'2014-06-12 11:32:47'),(1038,'core',5,'Página <b></b> foi apagada por Boom Bap',NULL,'2014-06-12 11:32:50'),(1039,'core',5,'Página <b></b> foi apagada por Boom Bap',NULL,'2014-06-12 11:32:52'),(1040,'core',5,'Página <b></b> foi apagada por Boom Bap',NULL,'2014-06-12 11:32:55'),(1041,'core',5,'Página <b></b> foi apagada por Boom Bap',NULL,'2014-06-12 11:32:58'),(1042,'core',5,'Página <b>bzjdjd</b> foi apagada por Boom Bap',NULL,'2014-06-12 11:33:00'),(1043,'core',5,'Página <b>cabral</b> foi apagada por Boom Bap',NULL,'2014-06-12 11:33:03'),(1044,'core',5,'Página <b>carlos</b> foi apagada por Boom Bap',NULL,'2014-06-12 11:33:05'),(1045,'core',5,'Página <b>Carlos</b> foi apagada por Boom Bap',NULL,'2014-06-12 11:33:07'),(1046,'core',5,'Página <b>carlos</b> foi apagada por Boom Bap',NULL,'2014-06-12 11:33:10'),(1047,'core',5,'Página <b>carlos</b> foi apagada por Boom Bap',NULL,'2014-06-12 11:33:12'),(1048,'core',5,'Página <b>dgf</b> foi apagada por Boom Bap',NULL,'2014-06-12 11:33:15'),(1049,'core',5,'Página <b>ertewr</b> foi apagada por Boom Bap',NULL,'2014-06-12 11:33:17'),(1050,'core',5,'Página <b>falhas-te</b> foi apagada por Boom Bap',NULL,'2014-06-12 11:33:21'),(1051,'core',5,'Página <b>fd</b> foi apagada por Boom Bap',NULL,'2014-06-12 11:33:23'),(1052,'core',5,'Página <b>Ff</b> foi apagada por Boom Bap',NULL,'2014-06-12 11:33:25'),(1053,'core',5,'Página <b>ftbfh</b> foi apagada por Boom Bap',NULL,'2014-06-12 11:33:27'),(1054,'core',5,'Página <b>g</b> foi apagada por Boom Bap',NULL,'2014-06-12 11:33:34'),(1055,'core',5,'Página <b>Gajos</b> foi apagada por Boom Bap',NULL,'2014-06-12 11:33:36'),(1056,'core',5,'Página <b>Hsh</b> foi apagada por Boom Bap',NULL,'2014-06-12 11:33:38'),(1057,'core',5,'Página <b>Hshshs</b> foi apagada por Boom Bap',NULL,'2014-06-12 11:33:41'),(1058,'core',5,'Página <b>ia</b> foi apagada por Boom Bap',NULL,'2014-06-12 11:33:43'),(1059,'core',5,'Página <b>idbf</b> foi apagada por Boom Bap',NULL,'2014-06-12 11:33:45'),(1060,'core',5,'Página <b>isjsksk</b> foi apagada por Boom Bap',NULL,'2014-06-12 11:33:48'),(1061,'core',5,'Página <b>ivsh</b> foi apagada por Boom Bap',NULL,'2014-06-12 11:33:51'),(1062,'core',5,'Página <b>j bldjhdbz</b> foi apagada por Boom Bap',NULL,'2014-06-12 11:33:53'),(1063,'core',5,'Página <b>j busca</b> foi apagada por Boom Bap',NULL,'2014-06-12 11:33:55'),(1064,'core',5,'Página <b>Jahahahahah</b> foi apagada por Boom Bap',NULL,'2014-06-12 11:33:58'),(1065,'core',5,'Página <b>Jaj</b> foi apagada por Boom Bap',NULL,'2014-06-12 11:34:00'),(1066,'core',5,'Página <b>jdbd</b> foi apagada por Boom Bap',NULL,'2014-06-12 11:34:03'),(1067,'core',5,'Página <b>jdjfj</b> foi apagada por Boom Bap',NULL,'2014-06-12 11:34:05'),(1068,'core',5,'Página <b>jfjf</b> foi apagada por Boom Bap',NULL,'2014-06-12 11:34:08'),(1069,'core',5,'Página <b>Jh</b> foi apagada por Boom Bap',NULL,'2014-06-12 11:34:10'),(1070,'core',5,'Página <b>jhhxj</b> foi apagada por Boom Bap',NULL,'2014-06-12 11:34:13'),(1071,'core',5,'Página <b>jjjdj</b> foi apagada por Boom Bap',NULL,'2014-06-12 11:34:15'),(1072,'core',5,'Página <b>jjsbs</b> foi apagada por Boom Bap',NULL,'2014-06-12 11:34:18'),(1073,'core',5,'Página <b>jsidjdj</b> foi apagada por Boom Bap',NULL,'2014-06-12 11:34:20'),(1074,'core',5,'Página <b>Pauko</b> foi apagada por Boom Bap',NULL,'2014-06-12 11:34:22'),(1075,'core',5,'Página <b>Paul</b> foi apagada por Boom Bap',NULL,'2014-06-12 11:34:25'),(1076,'core',5,'Página <b>Paulo Fernandes </b> foi apagada por Boom Bap',NULL,'2014-06-12 11:34:29'),(1077,'core',5,'Página <b>Paulo Fernandes</b> foi apagada por Boom Bap',NULL,'2014-06-12 11:34:31'),(1078,'core',5,'Página <b>Paulo Fernandes</b> foi apagada por Boom Bap',NULL,'2014-06-12 11:34:35'),(1079,'core',5,'Página <b>Paulo Fernandes</b> foi apagada por Boom Bap',NULL,'2014-06-12 11:34:37'),(1080,'core',5,'Página <b>Paulo</b> foi apagada por Boom Bap',NULL,'2014-06-12 11:34:41'),(1081,'core',5,'Página <b>Paulo</b> foi apagada por Boom Bap',NULL,'2014-06-12 11:34:44'),(1082,'core',5,'Página <b>Paulo</b> foi apagada por Boom Bap',NULL,'2014-06-12 11:34:47'),(1083,'core',5,'Página <b>Paulo</b> foi apagada por Boom Bap',NULL,'2014-06-12 11:34:50'),(1084,'core',5,'Página <b>Paulo</b> foi apagada por Boom Bap',NULL,'2014-06-12 11:34:52'),(1085,'core',5,'Página <b>Paulo</b> foi apagada por Boom Bap',NULL,'2014-06-12 11:34:55'),(1086,'core',5,'Página <b>Paulo</b> foi apagada por Boom Bap',NULL,'2014-06-12 11:34:57'),(1087,'core',5,'Página <b>Paulo</b> foi apagada por Boom Bap',NULL,'2014-06-12 11:34:59'),(1088,'core',5,'Página <b>Paulo</b> foi apagada por Boom Bap',NULL,'2014-06-12 11:35:01'),(1089,'core',5,'Página <b>Paulo</b> foi apagada por Boom Bap',NULL,'2014-06-12 11:35:03'),(1090,'core',5,'Página <b>payki</b> foi apagada por Boom Bap',NULL,'2014-06-12 11:35:09'),(1091,'core',5,'Página <b>Paulo</b> foi apagada por Boom Bap',NULL,'2014-06-12 11:35:12'),(1092,'core',5,'Página <b>Paulo</b> foi apagada por Boom Bap',NULL,'2014-06-12 11:35:14'),(1093,'core',5,'Página <b>Paulo</b> foi apagada por Boom Bap',NULL,'2014-06-12 11:35:18'),(1094,'core',5,'Página <b>Paulo</b> foi apagada por Boom Bap',NULL,'2014-06-12 11:35:20'),(1095,'core',5,'Página <b>Paulo</b> foi apagada por Boom Bap',NULL,'2014-06-12 11:35:23'),(1096,'core',5,'Página <b>Paulo</b> foi apagada por Boom Bap',NULL,'2014-06-12 11:35:25'),(1097,'core',5,'Página <b>Paulo</b> foi apagada por Boom Bap',NULL,'2014-06-12 11:35:27'),(1098,'core',5,'Página <b>Paulo</b> foi apagada por Boom Bap',NULL,'2014-06-12 11:35:30'),(1099,'core',5,'Página <b>Paulo</b> foi apagada por Boom Bap',NULL,'2014-06-12 11:35:32'),(1100,'core',5,'Página <b>Paulo</b> foi apagada por Boom Bap',NULL,'2014-06-12 11:35:35'),(1101,'core',5,'Página <b>Paulo</b> foi apagada por Boom Bap',NULL,'2014-06-12 11:35:37'),(1102,'core',5,'Página <b>Paulo</b> foi apagada por Boom Bap',NULL,'2014-06-12 11:35:39'),(1103,'core',5,'Página <b>Paulo</b> foi apagada por Boom Bap',NULL,'2014-06-12 11:35:41'),(1104,'core',5,'Página <b>Paulo</b> foi apagada por Boom Bap',NULL,'2014-06-12 11:35:44'),(1105,'core',5,'Página <b>Paulo</b> foi apagada por Boom Bap',NULL,'2014-06-12 11:35:46'),(1106,'core',5,'Página <b>Paulo</b> foi apagada por Boom Bap',NULL,'2014-06-12 11:35:49'),(1107,'core',5,'Página <b>Paulo</b> foi apagada por Boom Bap',NULL,'2014-06-12 11:35:51'),(1108,'core',5,'Página <b>Paulo</b> foi apagada por Boom Bap',NULL,'2014-06-12 11:35:53'),(1109,'core',5,'Página <b>Paulo</b> foi apagada por Boom Bap',NULL,'2014-06-12 11:35:55'),(1110,'core',5,'Página <b>Paulo</b> foi apagada por Boom Bap',NULL,'2014-06-12 11:35:58'),(1111,'core',5,'Página <b>Paulo</b> foi apagada por Boom Bap',NULL,'2014-06-12 11:36:00'),(1112,'core',5,'Página <b>Paulo</b> foi apagada por Boom Bap',NULL,'2014-06-12 11:36:03'),(1113,'core',5,'Página <b>Paulo</b> foi apagada por Boom Bap',NULL,'2014-06-12 11:36:06'),(1114,'core',5,'Página <b>Paulo</b> foi apagada por Boom Bap',NULL,'2014-06-12 11:36:09'),(1115,'core',5,'Página <b>Paulopakai</b> foi apagada por Boom Bap',NULL,'2014-06-12 11:36:12'),(1116,'core',5,'Página <b>Payli</b> foi apagada por Boom Bap',NULL,'2014-06-12 11:36:15'),(1117,'core',5,'Página <b>paylo</b> foi apagada por Boom Bap',NULL,'2014-06-12 11:36:17'),(1118,'core',5,'Página <b>Paylo</b> foi apagada por Boom Bap',NULL,'2014-06-12 11:36:21'),(1119,'core',5,'Página <b>payço</b> foi apagada por Boom Bap',NULL,'2014-06-12 11:36:23'),(1120,'core',5,'Página <b>Pedro</b> foi apagada por Boom Bap',NULL,'2014-06-12 11:36:26'),(1121,'core',5,'Página <b>Pedro</b> foi apagada por Boom Bap',NULL,'2014-06-12 11:36:28'),(1122,'core',5,'Página <b>Pedro</b> foi apagada por Boom Bap',NULL,'2014-06-12 11:36:31'),(1123,'core',5,'Página <b>SADASD</b> foi apagada por Boom Bap',NULL,'2014-06-12 11:36:33'),(1124,'core',5,'Página <b>só mais uma</b> foi apagada por Boom Bap',NULL,'2014-06-12 11:36:35'),(1125,'core',5,'Página <b>udjd</b> foi apagada por Boom Bap',NULL,'2014-06-12 11:36:37'),(1126,'core',5,'Página <b>udjdj</b> foi apagada por Boom Bap',NULL,'2014-06-12 11:36:40'),(1127,'core',5,'Página <b>vgvc</b> foi apagada por Boom Bap',NULL,'2014-06-12 11:36:42'),(1128,'core',5,'Página <b>ybdbd</b> foi apagada por Boom Bap',NULL,'2014-06-12 11:36:45'),(1129,'core',5,'Página <b>é a última vez</b> foi apagada por Boom Bap',NULL,'2014-06-12 11:36:47'),(1130,'core',5,'Página <b>é a última vez</b> foi apagada por Boom Bap',NULL,'2014-06-12 11:36:49'),(1131,'core',5,'Página <b>é a última vez</b> foi apagada por Boom Bap',NULL,'2014-06-12 11:36:51'),(1132,'core',5,'Página <b>é a última vez</b> foi apagada por Boom Bap',NULL,'2014-06-12 11:36:54'),(1133,'core',5,'Página <b>é para a ramboiada</b> foi apagada por Boom Bap',NULL,'2014-06-12 11:36:56'),(1134,'core',5,'Página <b><a href=\"http://slotmachine.no-ip.info/tarabackend/page/edit/368\">Mensagens Mail</a></b> foi revista por Administrator',NULL,'2014-06-12 11:38:28'),(1135,'core',5,'Snippet <b><a href=\"http://slotmachine.no-ip.info/tarabackend/snippet/edit/14\">service</a></b> foi revisto por Administrator',NULL,'2014-06-12 11:38:49'),(1136,'core',5,'Página <b><a href=\"http://slotmachine.no-ip.info/tarabackend/page/edit/317\">Mensagens Mobile</a></b> foi revista por Administrator',NULL,'2014-06-12 11:40:22'),(1137,'core',5,'Snippet <b><a href=\"http://slotmachine.no-ip.info/tarabackend/snippet/edit/14\">service</a></b> foi revisto por Administrator',NULL,'2014-06-12 11:52:03'),(1138,'core',5,'Layout <b><a href=\"http://slotmachine.no-ip.info/tarabackend/layout/edit/1\">default</a></b> foi revisto por Administrator',NULL,'2014-06-12 11:57:49'),(1139,'core',5,'Layout <b><a href=\"http://slotmachine.no-ip.info/tarabackend/layout/edit/1\">default</a></b> foi revisto por Administrator',NULL,'2014-06-12 12:17:06'),(1140,'core',5,'Layout <b><a href=\"http://slotmachine.no-ip.info/tarabackend/layout/edit/1\">default</a></b> foi revisto por Administrator',NULL,'2014-06-12 12:17:30'),(1141,'core',5,'Layout <b><a href=\"http://slotmachine.no-ip.info/tarabackend/layout/edit/1\">default</a></b> foi revisto por Administrator',NULL,'2014-06-12 12:19:35'),(1142,'core',5,'Layout <b><a href=\"http://slotmachine.no-ip.info/tarabackend/layout/edit/1\">default</a></b> foi revisto por Administrator',NULL,'2014-06-12 12:24:08'),(1143,'core',5,'Layout <b><a href=\"http://slotmachine.no-ip.info/tarabackend/layout/edit/1\">default</a></b> foi revisto por Administrator',NULL,'2014-06-12 12:25:53'),(1144,'core',5,'Layout <b><a href=\"http://slotmachine.no-ip.info/tarabackend/layout/edit/1\">default</a></b> foi revisto por Administrator',NULL,'2014-06-12 12:26:15'),(1145,'core',5,'Layout <b><a href=\"http://slotmachine.no-ip.info/tarabackend/layout/edit/1\">default</a></b> foi revisto por Administrator',NULL,'2014-06-12 12:27:15'),(1146,'core',5,'Layout <b><a href=\"http://slotmachine.no-ip.info/tarabackend/layout/edit/1\">default</a></b> foi revisto por Administrator',NULL,'2014-06-12 12:28:34'),(1147,'core',5,'Snippet <b><a href=\"http://slotmachine.no-ip.info/tarabackend/snippet/edit/14\">service</a></b> foi revisto por Administrator',NULL,'2014-06-12 12:29:26'),(1148,'core',5,'Layout <b><a href=\"http://slotmachine.no-ip.info/tarabackend/layout/edit/1\">default</a></b> foi revisto por Administrator',NULL,'2014-06-12 12:29:34'),(1149,'core',5,'Utilizador <b>tarambola</b> efectuou Log In.',NULL,'2014-06-12 12:30:22'),(1150,'core',5,'Página <b>Paulofernandes@tarambola.pt</b> foi apagada por Administrator',NULL,'2014-06-12 12:30:32'),(1151,'core',5,'Snippet <b><a href=\"http://slotmachine.no-ip.info/tarabackend/snippet/edit/14\">service</a></b> foi revisto por Administrator',NULL,'2014-06-12 12:34:31'),(1152,'core',5,'Página <b>Paulofernandes@tarambola.pt</b> foi apagada por Administrator',NULL,'2014-06-12 12:35:04'),(1153,'core',5,'Snippet <b><a href=\"http://slotmachine.no-ip.info/tarabackend/snippet/edit/14\">service</a></b> foi revisto por Administrator',NULL,'2014-06-12 12:35:59'),(1154,'core',5,'Snippet <b><a href=\"http://slotmachine.no-ip.info/tarabackend/snippet/edit/14\">service</a></b> foi revisto por Administrator',NULL,'2014-06-12 12:36:02'),(1155,'core',5,'Página <b>Paulo</b> foi apagada por Administrator',NULL,'2014-06-12 12:36:26'),(1156,'core',5,'Página <b><a href=\"http://slotmachine.no-ip.info/tarabackend/page/edit/368\">Mensagens Mail</a></b> foi revista por Administrator',NULL,'2014-06-12 12:41:19'),(1157,'core',5,'Página <b>Paulo</b> foi apagada por Administrator',NULL,'2014-06-12 12:57:44'),(1158,'core',5,'Página <b><a href=\"http://slotmachine.no-ip.info/tarabackend/page/edit/317\">Mensagens Mobile</a></b> foi revista por Administrator',NULL,'2014-06-12 14:28:08'),(1159,'core',5,'Utilizador <b>tarambola</b> efectuou Log In.',NULL,'2014-06-12 14:34:14'),(1160,'core',5,'Página <b><a href=\"http://slotmachine.no-ip.info/tarabackend/page/edit/317\">Mensagens Mobile</a></b> foi revista por Administrator',NULL,'2014-06-12 14:36:58'),(1161,'core',5,'Página <b><a href=\"http://slotmachine.no-ip.info/tarabackend/page/edit/317\">Mensagens Mobile</a></b> foi revista por Administrator',NULL,'2014-06-12 14:42:56'),(1162,'core',5,'Página <b><a href=\"http://slotmachine.no-ip.info/tarabackend/page/edit/317\">Mensagens Mobile</a></b> foi revista por Administrator',NULL,'2014-06-12 14:44:31'),(1163,'core',5,'Snippet <b><a href=\"http://slotmachine.no-ip.info/tarabackend/snippet/edit/15\">register</a></b> foi revisto por Administrator',NULL,'2014-06-12 14:47:43'),(1164,'core',5,'Layout <b><a href=\"http://slotmachine.no-ip.info/tarabackend/layout/edit/1\">default</a></b> foi revisto por Administrator',NULL,'2014-06-12 16:28:07'),(1165,'core',5,'Utilizador <b>tarambola</b> efectuou Log In.',NULL,'2014-06-12 17:53:02'),(1166,'core',5,'Snippet <b><a href=\"http://slotmachine.no-ip.info/tarabackend/snippet/edit/15\">register</a></b> foi revisto por Administrator',NULL,'2014-06-12 18:13:42'),(1167,'core',5,'Página <b>Hshsh</b> foi apagada por Administrator',NULL,'2014-06-12 18:46:15'),(1168,'core',5,'Página <b>Paulo</b> foi apagada por Administrator',NULL,'2014-06-12 18:46:26'),(1169,'core',5,'Página <b>Paulo</b> foi apagada por Administrator',NULL,'2014-06-12 18:46:57'),(1170,'core',5,'Utilizador <b>tarambola</b> efectuou Log In.',NULL,'2014-06-13 11:14:42'),(1171,'core',5,'Utilizador <b>boombap</b> efectuou Log In.',NULL,'2014-06-13 12:00:25'),(1172,'core',5,'Página <b>Carlos Seixas</b> foi apagada por Boom Bap',NULL,'2014-06-13 12:01:00'),(1173,'core',5,'Página <b>Carlos</b> foi apagada por Boom Bap',NULL,'2014-06-13 12:01:03'),(1174,'core',5,'Página <b>carlos</b> foi apagada por Boom Bap',NULL,'2014-06-13 12:01:06'),(1175,'core',5,'Página <b>carlos</b> foi apagada por Boom Bap',NULL,'2014-06-13 12:01:08'),(1176,'core',5,'Página <b>DVD</b> foi apagada por Boom Bap',NULL,'2014-06-13 12:01:10'),(1177,'core',5,'Página <b>Hsh</b> foi apagada por Boom Bap',NULL,'2014-06-13 12:01:12'),(1178,'core',5,'Página <b>Hshs</b> foi apagada por Boom Bap',NULL,'2014-06-13 12:01:15'),(1179,'core',5,'Página <b>Hshs</b> foi apagada por Boom Bap',NULL,'2014-06-13 12:01:18'),(1180,'core',5,'Página <b>Hshshs</b> foi apagada por Boom Bap',NULL,'2014-06-13 12:01:20'),(1181,'core',5,'Página <b>Hshshsh</b> foi apagada por Boom Bap',NULL,'2014-06-13 12:01:23'),(1182,'core',5,'Página <b>Jahahahahah</b> foi apagada por Boom Bap',NULL,'2014-06-13 12:01:25'),(1183,'core',5,'Página <b>Judeus</b> foi apagada por Boom Bap',NULL,'2014-06-13 12:01:28'),(1184,'core',5,'Página <b>Lamba</b> foi apagada por Boom Bap',NULL,'2014-06-13 12:01:30'),(1185,'core',5,'Página <b>Nuno</b> foi apagada por Boom Bap',NULL,'2014-06-13 12:01:32'),(1186,'core',5,'Página <b>Pagava</b> foi apagada por Boom Bap',NULL,'2014-06-13 12:01:34'),(1187,'core',5,'Página <b>Pajah</b> foi apagada por Boom Bap',NULL,'2014-06-13 12:01:37'),(1188,'core',5,'Página <b>Paul</b> foi apagada por Boom Bap',NULL,'2014-06-13 12:01:39'),(1189,'core',5,'Página <b>Paulo</b> foi apagada por Boom Bap',NULL,'2014-06-13 12:01:41'),(1190,'core',5,'Página <b>Paulo</b> foi apagada por Boom Bap',NULL,'2014-06-13 12:01:43'),(1191,'core',5,'Página <b>Paulo</b> foi apagada por Boom Bap',NULL,'2014-06-13 12:01:45'),(1192,'core',5,'Página <b>Paulo</b> foi apagada por Boom Bap',NULL,'2014-06-13 12:01:47'),(1193,'core',5,'Página <b>Paulo</b> foi apagada por Boom Bap',NULL,'2014-06-13 12:01:49'),(1194,'core',5,'Página <b>Paulo</b> foi apagada por Boom Bap',NULL,'2014-06-13 12:01:51'),(1195,'core',5,'Página <b>Paulo</b> foi apagada por Boom Bap',NULL,'2014-06-13 12:01:52'),(1196,'core',5,'Página <b>Paulo</b> foi apagada por Boom Bap',NULL,'2014-06-13 12:01:55'),(1197,'core',5,'Página <b>Paulo</b> foi apagada por Boom Bap',NULL,'2014-06-13 12:01:56'),(1198,'core',5,'Página <b>Paulo</b> foi apagada por Boom Bap',NULL,'2014-06-13 12:01:59'),(1199,'core',5,'Utilizador <b>tarambola</b> efectuou Log Out.',NULL,'2014-06-13 12:01:59'),(1200,'core',5,'Página <b>Paulo</b> foi apagada por Boom Bap',NULL,'2014-06-13 12:02:01'),(1201,'core',5,'Página <b>Paulo</b> foi apagada por Boom Bap',NULL,'2014-06-13 12:02:03'),(1202,'core',5,'Página <b>Paulo</b> foi apagada por Boom Bap',NULL,'2014-06-13 12:02:05'),(1203,'core',5,'Página <b>Paulo</b> foi apagada por Boom Bap',NULL,'2014-06-13 12:02:08'),(1204,'core',5,'Página <b>Paulo</b> foi apagada por Boom Bap',NULL,'2014-06-13 12:02:10'),(1205,'core',5,'Página <b>Paulo</b> foi apagada por Boom Bap',NULL,'2014-06-13 12:02:12'),(1206,'core',5,'Página <b>Paulo</b> foi apagada por Boom Bap',NULL,'2014-06-13 12:02:15'),(1207,'core',5,'Página <b>Paulofernandes</b> foi apagada por Boom Bap',NULL,'2014-06-13 12:02:16'),(1208,'core',5,'Página <b>Pauo</b> foi apagada por Boom Bap',NULL,'2014-06-13 12:02:19'),(1209,'core',5,'Página <b>Página</b> foi apagada por Boom Bap',NULL,'2014-06-13 12:02:22'),(1210,'core',5,'Utilizador <b>boombap</b> efectuou Log In.',NULL,'2014-06-13 12:02:31'),(1211,'core',5,'Utilizador <b>tarambola</b> efectuou Log In.',NULL,'2014-06-13 12:48:03'),(1212,'core',5,'Utilizador <b>tarambola</b> efectuou Log In.',NULL,'2014-06-13 14:43:02'),(1213,'core',5,'Utilizador <b>tarambola</b> efectuou Log In.',NULL,'2014-06-13 15:40:25'),(1214,'core',5,'Página <b><a href=\"http://boombap.slotmachine.com.pt/tarabackend/page/edit/130\">Configurações</a></b> foi revista por Administrator',NULL,'2014-06-13 15:40:46'),(1215,'core',5,'Página <b><a href=\"http://boombap.slotmachine.com.pt/tarabackend/page/edit/130\">Configurações</a></b> foi revista por Administrator',NULL,'2014-06-13 15:45:46'),(1216,'core',5,'Utilizador <b>tarambola</b> efectuou Log In.',NULL,'2014-06-13 16:01:17'),(1217,'core',5,'Página <b>Grudar</b> foi apagada por Administrator',NULL,'2014-06-13 16:01:32'),(1218,'core',5,'Página <b>Miguel Marques</b> foi apagada por Administrator',NULL,'2014-06-13 16:01:39'),(1219,'core',5,'Página <b>Miguel Marques</b> foi apagada por Administrator',NULL,'2014-06-13 16:01:44'),(1220,'core',5,'Página <b>Miguel Marques</b> foi apagada por Administrator',NULL,'2014-06-13 16:01:46'),(1221,'core',5,'Página <b>Paulo Ricardo Rodrigues Fernandes</b> foi apagada por Administrator',NULL,'2014-06-13 16:01:51'),(1222,'core',5,'Página <b>Paulo</b> foi apagada por Administrator',NULL,'2014-06-13 16:02:07'),(1223,'core',5,'Página <b>Paulo</b> foi apagada por Administrator',NULL,'2014-06-13 16:02:10'),(1224,'core',5,'Página <b>Paulo</b> foi apagada por Administrator',NULL,'2014-06-13 16:02:13'),(1225,'core',5,'Página <b>Paulo</b> foi apagada por Administrator',NULL,'2014-06-13 16:02:16'),(1226,'core',5,'Página <b>Paulo</b> foi apagada por Administrator',NULL,'2014-06-13 16:02:19'),(1227,'core',5,'Página <b>Paulo</b> foi apagada por Administrator',NULL,'2014-06-13 16:02:22'),(1228,'core',5,'Página <b>Paulo</b> foi apagada por Administrator',NULL,'2014-06-13 16:02:28'),(1229,'core',5,'Página <b>Paulo</b> foi apagada por Administrator',NULL,'2014-06-13 16:02:31'),(1230,'core',5,'Página <b>Ricardo</b> foi apagada por Administrator',NULL,'2014-06-13 16:02:34'),(1231,'core',5,'Página <b>ricardo</b> foi apagada por Administrator',NULL,'2014-06-13 16:02:37'),(1232,'core',5,'Página <b>Paulo</b> foi apagada por Administrator',NULL,'2014-06-13 16:02:40'),(1233,'core',5,'Página <b>ricardo</b> foi apagada por Administrator',NULL,'2014-06-13 16:02:43'),(1234,'core',5,'Página <b>Santos</b> foi apagada por Administrator',NULL,'2014-06-13 16:02:45'),(1235,'core',5,'Página <b>Santos </b> foi apagada por Administrator',NULL,'2014-06-13 16:02:48'),(1236,'core',5,'Página <b>Santos</b> foi apagada por Administrator',NULL,'2014-06-13 16:02:50'),(1237,'core',5,'Página <b>Santos</b> foi apagada por Administrator',NULL,'2014-06-13 16:02:53'),(1238,'core',5,'Snippet <b><a href=\"http://boombap.slotmachine.com.pt/tarabackend/snippet/edit/14\">service</a></b> foi revisto por Administrator',NULL,'2014-06-13 16:26:07'),(1239,'core',5,'Utilizador <b>boombap</b> efectuou Log In.',NULL,'2014-06-13 22:06:50'),(1240,'core',5,'Utilizador <b>taram80la</b> falhou o Log In.',NULL,'2014-06-16 12:21:59'),(1241,'core',5,'Utilizador <b>tarambola</b> efectuou Log In.',NULL,'2014-06-16 12:22:05'),(1242,'core',5,'Utilizador <b>tarambola</b> efectuou Log In.',NULL,'2014-06-28 12:40:56'),(1243,'core',5,'Utilizador <b>tarambola</b> efectuou Log In.',NULL,'2014-06-29 10:50:24'),(1244,'core',5,'Utilizador <b>itouch</b> falhou o Log In.',NULL,'2014-07-01 16:24:10'),(1245,'core',5,'Utilizador <b>Itouch</b> falhou o Log In.',NULL,'2014-07-01 16:24:26'),(1246,'core',5,'Utilizador <b>Itouch</b> falhou o Log In.',NULL,'2014-07-01 16:24:29'),(1247,'core',5,'Utilizador <b>itouch</b> falhou o Log In.',NULL,'2014-07-01 16:24:57'),(1248,'core',5,'Utilizador <b>itouch</b> falhou o Log In.',NULL,'2014-07-01 16:25:02'),(1249,'core',5,'Utilizador <b>itouch</b> falhou o Log In.',NULL,'2014-07-01 16:25:24'),(1250,'core',5,'Utilizador <b>itouch</b> falhou o Log In.',NULL,'2014-07-01 16:25:31'),(1251,'core',5,'Utilizador <b>tarambola</b> efectuou Log In.',NULL,'2014-07-01 16:27:51'),(1252,'core',5,'Utilizador <b>itouch</b> falhou o Log In.',NULL,'2014-07-01 16:28:49'),(1253,'core',5,'Utilizador <b>itouch</b> falhou o Log In.',NULL,'2014-07-01 16:28:58'),(1254,'core',5,'Utilizador <b>bommbap</b> falhou o Log In.',NULL,'2014-07-01 16:29:27'),(1255,'core',5,'Utilizador <b>boombap</b> efectuou Log In.',NULL,'2014-07-01 16:29:27'),(1256,'core',5,'Utilizador <b>boombap</b> efectuou Log Out.',NULL,'2014-07-01 16:35:30'),(1257,'core',5,'Utilizador <b>tarambola</b> efectuou Log In.',NULL,'2014-07-01 20:31:38'),(1258,'core',5,'Página <b><a href=\"http://boombap.slotmachine.com.pt/tarabackend/page/edit/130\">Configurações</a></b> foi revista por Administrator',NULL,'2014-07-01 20:32:23'),(1259,'core',5,'Utilizador <b>tarambola</b> efectuou Log In.',NULL,'2014-07-01 20:38:45'),(1260,'core',5,'Utilizador <b>tarambola</b> efectuou Log In.',NULL,'2014-07-01 21:15:03'),(1261,'core',5,'Utilizador <b>tarambola</b> efectuou Log In.',NULL,'2014-07-07 02:21:18'),(1262,'core',5,'Utilizador <b>tarambola</b> efectuou Log In.',NULL,'2014-07-07 17:08:37'),(1263,'core',5,'Plugin <b>formularios</b> desactivado por Administrator',NULL,'2014-07-07 17:11:55'),(1264,'core',5,'Plugin <b>file_manager</b> desactivado por Administrator',NULL,'2014-07-07 17:11:57'),(1265,'core',5,'Plugin <b>encomendas</b> desactivado por Administrator',NULL,'2014-07-07 17:12:00'),(1266,'core',5,'Plugin <b>documentos</b> desactivado por Administrator',NULL,'2014-07-07 17:12:02'),(1267,'core',5,'Plugin <b>configuracoes</b> desactivado por Administrator',NULL,'2014-07-07 17:12:11'),(1268,'core',5,'Utilizador <b>tarambola</b> efectuou Log In.',NULL,'2014-07-08 10:32:24'),(1269,'core',5,'Página <b><a href=\"http://boombap.slotmachine.com.pt/tarabackend/page/edit/130\">Configurações</a></b> foi revista por Administrator',NULL,'2014-07-08 10:32:58'),(1270,'core',5,'Página <b><a href=\"http://boombap.slotmachine.com.pt/tarabackend/page/edit/130\">Configurações</a></b> foi revista por Administrator',NULL,'2014-07-08 10:33:34'),(1271,'core',5,'Utilizador <b>tarambola</b> efectuou Log In.',NULL,'2014-08-13 10:47:47'),(1272,'core',5,'Página <b><a href=\"http://boombap.slotmachine.com.pt/tarabackend/page/edit/130\">Configurações</a></b> foi revista por Administrator',NULL,'2014-08-13 11:06:21'),(1273,'core',5,'Utilizador <b>tarambola</b> efectuou Log In.',NULL,'2014-08-13 11:11:40'),(1274,'core',5,'Página <b><a href=\"http://boombap.slotmachine.com.pt/tarabackend/page/edit/130\">Configurações</a></b> foi revista por Administrator',NULL,'2014-08-13 11:52:00'),(1275,'core',5,'Página <b><a href=\"http://boombap.slotmachine.com.pt/tarabackend/page/edit/130\">Configurações</a></b> foi revista por Administrator',NULL,'2014-08-13 12:03:50'),(1276,'core',5,'Página <b><a href=\"http://boombap.slotmachine.com.pt/tarabackend/page/edit/130\">Configurações</a></b> foi revista por Administrator',NULL,'2014-08-13 12:14:05'),(1277,'core',5,'Página <b><a href=\"http://boombap.slotmachine.com.pt/tarabackend/page/edit/130\">Configurações</a></b> foi revista por Administrator',NULL,'2014-08-13 12:55:01'),(1278,'core',5,'Página <b><a href=\"http://boombap.slotmachine.com.pt/tarabackend/page/edit/130\">Configurações</a></b> foi revista por Administrator',NULL,'2014-08-13 12:57:15'),(1279,'core',5,'Página <b><a href=\"http://boombap.slotmachine.com.pt/tarabackend/page/edit/130\">Configurações</a></b> foi revista por Administrator',NULL,'2014-08-13 12:59:08'),(1280,'core',5,'Utilizador <b>tarambola</b> efectuou Log In.',NULL,'2014-09-09 17:16:36'),(1281,'core',5,'Utilizador <b>tarambola</b> efectuou Log Out.',NULL,'2014-09-09 17:17:30'),(1282,'core',5,'Utilizador <b>boombap</b> efectuou Log In.',NULL,'2014-09-09 17:17:39'),(1283,'core',5,'Utilizador <b>boombap</b> efectuou Log In.',NULL,'2014-09-09 17:18:51'),(1284,'core',5,'Utilizador <b>tarambola</b> efectuou Log In.',NULL,'2014-09-12 11:18:04'),(1285,'core',5,'Utilizador <b>boombap</b> efectuou Log In.',NULL,'2014-09-12 12:01:16'),(1286,'core',5,'Utilizador <b>boombap</b> efectuou Log In.',NULL,'2014-09-24 11:20:52'),(1287,'core',5,'Página <b><a href=\"http://boombap.slotmachine.com.pt/tarabackend/page/edit/130\">Configurações</a></b> foi revista por Boom Bap',NULL,'2014-09-24 11:23:04'),(1288,'core',5,'Utilizador <b>boombap</b> efectuou Log In.',NULL,'2014-09-24 11:45:21'),(1289,'core',5,'Página <b><a href=\"http://boombap.slotmachine.com.pt/tarabackend/page/edit/130\">Configurações</a></b> foi revista por Boom Bap',NULL,'2014-09-24 11:46:22'),(1290,'core',5,'Página <b><a href=\"http://boombap.slotmachine.com.pt/tarabackend/page/edit/130\">Configurações</a></b> foi revista por Boom Bap',NULL,'2014-09-24 12:15:32'),(1291,'core',5,'Utilizador <b>tarambola</b> efectuou Log In.',NULL,'2014-12-12 14:06:51'),(1292,'core',5,'Utilizador <b>tarambola</b> efectuou Log In.',NULL,'2015-03-25 15:10:42'),(1293,'core',5,'Utilizador <b>boombap</b> efectuou Log In.',NULL,'2015-06-26 17:34:31'),(1294,'core',5,'Utilizador <b>tarambola</b> efectuou Log In.',NULL,'2016-01-26 18:28:24'),(1295,'core',5,'Página <b><a href=\"http://boombap.slotmachine.com.pt/tarabackend/page/edit/130\">Configurações</a></b> foi revista por Administrator',NULL,'2016-01-26 18:35:33');
/*!40000 ALTER TABLE `tara_dashboard_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tara_documentos`
--

DROP TABLE IF EXISTS `tara_documentos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tara_documentos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(255) NOT NULL,
  `caminho` varchar(355) NOT NULL,
  `categoria_id` int(11) NOT NULL,
  `descricao` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tara_documentos`
--

LOCK TABLES `tara_documentos` WRITE;
/*!40000 ALTER TABLE `tara_documentos` DISABLE KEYS */;
INSERT INTO `tara_documentos` (`id`, `nome`, `caminho`, `categoria_id`, `descricao`) VALUES (21,'Carta_Resposta_Insolvencia_José Dinis Fernandes Teixeira.docx','',0,''),(22,'Captura de ecrã 2014-03-26, às 18.17.33.png','',0,''),(23,'pilha.pdf','',0,''),(24,'MANUAL NORMAS ANA.pdf','',0,''),(25,'pilha.pdf','',0,'');
/*!40000 ALTER TABLE `tara_documentos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tara_documentos_categorias`
--

DROP TABLE IF EXISTS `tara_documentos_categorias`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tara_documentos_categorias` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tara_documentos_categorias`
--

LOCK TABLES `tara_documentos_categorias` WRITE;
/*!40000 ALTER TABLE `tara_documentos_categorias` DISABLE KEYS */;
INSERT INTO `tara_documentos_categorias` (`id`, `nome`) VALUES (12,'Geral'),(23,'Contabilidade'),(24,'Salários');
/*!40000 ALTER TABLE `tara_documentos_categorias` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tara_documentos_categorias_assoc`
--

DROP TABLE IF EXISTS `tara_documentos_categorias_assoc`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tara_documentos_categorias_assoc` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `documento_id` int(11) NOT NULL,
  `categoria_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tara_documentos_categorias_assoc`
--

LOCK TABLES `tara_documentos_categorias_assoc` WRITE;
/*!40000 ALTER TABLE `tara_documentos_categorias_assoc` DISABLE KEYS */;
INSERT INTO `tara_documentos_categorias_assoc` (`id`, `documento_id`, `categoria_id`) VALUES (24,0,12),(25,0,23),(26,23,12);
/*!40000 ALTER TABLE `tara_documentos_categorias_assoc` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tara_documentos_front_users`
--

DROP TABLE IF EXISTS `tara_documentos_front_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tara_documentos_front_users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `documentos_id` int(11) NOT NULL,
  `front_users_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tara_documentos_front_users`
--

LOCK TABLES `tara_documentos_front_users` WRITE;
/*!40000 ALTER TABLE `tara_documentos_front_users` DISABLE KEYS */;
INSERT INTO `tara_documentos_front_users` (`id`, `documentos_id`, `front_users_id`) VALUES (3,1,166),(4,4,166),(6,11,166),(7,12,166),(8,13,166),(13,20,168),(14,19,168),(15,20,166),(17,23,170);
/*!40000 ALTER TABLE `tara_documentos_front_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tara_encomenda_portes`
--

DROP TABLE IF EXISTS `tara_encomenda_portes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tara_encomenda_portes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `codigo` varchar(11) NOT NULL,
  `pais` varchar(125) NOT NULL,
  `valor` decimal(12,2) NOT NULL,
  `valor_gratis` decimal(12,2) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tara_encomenda_portes`
--

LOCK TABLES `tara_encomenda_portes` WRITE;
/*!40000 ALTER TABLE `tara_encomenda_portes` DISABLE KEYS */;
/*!40000 ALTER TABLE `tara_encomenda_portes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tara_encomenda_produto`
--

DROP TABLE IF EXISTS `tara_encomenda_produto`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tara_encomenda_produto` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `page_id` int(11) NOT NULL,
  `qtd` int(11) NOT NULL,
  `value_unity` decimal(10,2) NOT NULL,
  `value_total` decimal(10,2) NOT NULL,
  `discount_unity` decimal(10,2) NOT NULL,
  `discount_total` decimal(10,2) NOT NULL,
  `modulo_id` int(11) NOT NULL,
  `thumb_path` varchar(355) NOT NULL,
  `title` varchar(355) NOT NULL,
  `reference` varchar(255) NOT NULL,
  `vat_id` int(11) NOT NULL,
  `qtd_description` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tara_encomenda_produto`
--

LOCK TABLES `tara_encomenda_produto` WRITE;
/*!40000 ALTER TABLE `tara_encomenda_produto` DISABLE KEYS */;
INSERT INTO `tara_encomenda_produto` (`id`, `page_id`, `qtd`, `value_unity`, `value_total`, `discount_unity`, `discount_total`, `modulo_id`, `thumb_path`, `title`, `reference`, `vat_id`, `qtd_description`) VALUES (1,19,2,12.00,24.00,0.00,0.50,17,'http://taraserver.no-ip.org/public/images/Captura%20de%20ecra%CC%83%202014-03-26,%20a%CC%80s%2018.17.33-1.60c.png','Produto 1','#1002E',1,'Unidade');
/*!40000 ALTER TABLE `tara_encomenda_produto` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tara_encomenda_produto_assoc`
--

DROP TABLE IF EXISTS `tara_encomenda_produto_assoc`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tara_encomenda_produto_assoc` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `encomenda_id` int(11) NOT NULL,
  `produto_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tara_encomenda_produto_assoc`
--

LOCK TABLES `tara_encomenda_produto_assoc` WRITE;
/*!40000 ALTER TABLE `tara_encomenda_produto_assoc` DISABLE KEYS */;
INSERT INTO `tara_encomenda_produto_assoc` (`id`, `encomenda_id`, `produto_id`) VALUES (1,1,1);
/*!40000 ALTER TABLE `tara_encomenda_produto_assoc` ENABLE KEYS */;
UNLOCK TABLES;

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
INSERT INTO `tara_encomendas` (`id`, `reference`, `discount`, `cart_id`, `client_discount`, `value_shipping`, `invoice_address`, `invoice_postal`, `invoice_country`, `invoice_city`, `shipping_address`, `shipping_postal`, `shipping_country`, `shipping_city`, `date`, `invoice_name`, `invoice_nif`, `shipping_name`, `estado`, `observacoes`) VALUES (1,'1',0.00,1,0.00,24.00,'Rua Luis de camões','4820','Portugal','Fafe','Rua Luis de camões','4820','Portugal','fafe','2014-04-03 00:00:00','Paulo Fernandes',12255527,'Paulo Fernandes',3,'2');
/*!40000 ALTER TABLE `tara_encomendas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tara_encomendas_atributos`
--

DROP TABLE IF EXISTS `tara_encomendas_atributos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tara_encomendas_atributos` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `description` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tara_encomendas_atributos`
--

LOCK TABLES `tara_encomendas_atributos` WRITE;
/*!40000 ALTER TABLE `tara_encomendas_atributos` DISABLE KEYS */;
INSERT INTO `tara_encomendas_atributos` (`id`, `description`) VALUES (1,'Côr'),(3,'Tamanho'),(5,'Atributo Xpto');
/*!40000 ALTER TABLE `tara_encomendas_atributos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tara_encomendas_atributos_produtos`
--

DROP TABLE IF EXISTS `tara_encomendas_atributos_produtos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tara_encomendas_atributos_produtos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `produto_id` int(11) NOT NULL,
  `atributo_id` int(11) NOT NULL,
  `value` varchar(300) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tara_encomendas_atributos_produtos`
--

LOCK TABLES `tara_encomendas_atributos_produtos` WRITE;
/*!40000 ALTER TABLE `tara_encomendas_atributos_produtos` DISABLE KEYS */;
/*!40000 ALTER TABLE `tara_encomendas_atributos_produtos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tara_encomendas_atributos_valores`
--

DROP TABLE IF EXISTS `tara_encomendas_atributos_valores`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tara_encomendas_atributos_valores` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `atributos_id` int(11) NOT NULL,
  `descricao` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tara_encomendas_atributos_valores`
--

LOCK TABLES `tara_encomendas_atributos_valores` WRITE;
/*!40000 ALTER TABLE `tara_encomendas_atributos_valores` DISABLE KEYS */;
INSERT INTO `tara_encomendas_atributos_valores` (`id`, `atributos_id`, `descricao`) VALUES (1,1,'Branco'),(2,1,'Vermelho'),(3,1,'Azul'),(4,1,'Amarelo'),(5,3,'S'),(6,3,'M'),(7,3,'L'),(8,5,'Teste 1'),(9,5,'Teste 2');
/*!40000 ALTER TABLE `tara_encomendas_atributos_valores` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tara_encomendas_estado`
--

DROP TABLE IF EXISTS `tara_encomendas_estado`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tara_encomendas_estado` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `descricao` varchar(125) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tara_encomendas_estado`
--

LOCK TABLES `tara_encomendas_estado` WRITE;
/*!40000 ALTER TABLE `tara_encomendas_estado` DISABLE KEYS */;
INSERT INTO `tara_encomendas_estado` (`id`, `descricao`) VALUES (1,'em processamento'),(2,'para envio'),(3,'arquivado');
/*!40000 ALTER TABLE `tara_encomendas_estado` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tara_encomendas_vat`
--

DROP TABLE IF EXISTS `tara_encomendas_vat`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tara_encomendas_vat` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `value` decimal(10,2) NOT NULL,
  `description` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tara_encomendas_vat`
--

LOCK TABLES `tara_encomendas_vat` WRITE;
/*!40000 ALTER TABLE `tara_encomendas_vat` DISABLE KEYS */;
INSERT INTO `tara_encomendas_vat` (`id`, `value`, `description`) VALUES (1,0.23,'IVA');
/*!40000 ALTER TABLE `tara_encomendas_vat` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tara_formularios`
--

DROP TABLE IF EXISTS `tara_formularios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tara_formularios` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `formulario_id` int(11) NOT NULL,
  `campos` text,
  `parent` tinyint(4) NOT NULL,
  `menu` tinyint(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tara_formularios`
--

LOCK TABLES `tara_formularios` WRITE;
/*!40000 ALTER TABLE `tara_formularios` DISABLE KEYS */;
INSERT INTO `tara_formularios` (`id`, `formulario_id`, `campos`, `parent`, `menu`) VALUES (12,34,NULL,0,0),(13,32,NULL,0,0);
/*!40000 ALTER TABLE `tara_formularios` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tara_front_login_attemps`
--

DROP TABLE IF EXISTS `tara_front_login_attemps`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tara_front_login_attemps` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `time` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tara_front_login_attemps`
--

LOCK TABLES `tara_front_login_attemps` WRITE;
/*!40000 ALTER TABLE `tara_front_login_attemps` DISABLE KEYS */;
INSERT INTO `tara_front_login_attemps` (`id`, `user_id`, `time`) VALUES (1,164,'1395148820'),(2,166,'1395165572'),(3,167,'1395666406'),(4,167,'1395666423'),(5,167,'1395666424'),(6,171,'1395842552'),(7,171,'1395842552'),(8,171,'1395842553'),(9,171,'1395842553'),(10,171,'1395842553'),(11,171,'1395842553'),(12,172,'1395842682'),(13,172,'1395843084');
/*!40000 ALTER TABLE `tara_front_login_attemps` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tara_front_users`
--

DROP TABLE IF EXISTS `tara_front_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tara_front_users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(250) NOT NULL,
  `username` varchar(150) NOT NULL,
  `password` varchar(150) NOT NULL,
  `morada` varchar(300) NOT NULL,
  `cidade` varchar(100) NOT NULL,
  `cod_postal` varchar(150) NOT NULL,
  `telefone` int(11) NOT NULL,
  `email` varchar(150) NOT NULL,
  `registo` tinyint(4) NOT NULL,
  `nif` int(11) NOT NULL,
  `observacoes` text NOT NULL,
  `data_registo` date NOT NULL,
  `data_confirmacao` date NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=173 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tara_front_users`
--

LOCK TABLES `tara_front_users` WRITE;
/*!40000 ALTER TABLE `tara_front_users` DISABLE KEYS */;
/*!40000 ALTER TABLE `tara_front_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tara_front_users_log`
--

DROP TABLE IF EXISTS `tara_front_users_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tara_front_users_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ident` char(16) NOT NULL,
  `priority` int(11) NOT NULL,
  `message` varchar(255) DEFAULT NULL,
  `username` varchar(64) DEFAULT NULL,
  `created_on` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tara_front_users_log`
--

LOCK TABLES `tara_front_users_log` WRITE;
/*!40000 ALTER TABLE `tara_front_users_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `tara_front_users_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tara_front_users_messages`
--

DROP TABLE IF EXISTS `tara_front_users_messages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tara_front_users_messages` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `lang` varchar(4) COLLATE utf8_unicode_ci NOT NULL,
  `funcao` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `mensagem` text COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tara_front_users_messages`
--

LOCK TABLES `tara_front_users_messages` WRITE;
/*!40000 ALTER TABLE `tara_front_users_messages` DISABLE KEYS */;
INSERT INTO `tara_front_users_messages` (`id`, `lang`, `funcao`, `mensagem`) VALUES (1,'pt','registo','Mensagem teste de Registo de Utiliz'),(2,'en','registo','Mensagem EN teste de registo de utilizadores'),(5,'pt','confirmação','Mensagem teste de confirmação de de Utilizador. '),(6,'pt','registo',''),(7,'pt','confirmação','');
/*!40000 ALTER TABLE `tara_front_users_messages` ENABLE KEYS */;
UNLOCK TABLES;

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
INSERT INTO `tara_layout` (`id`, `name`, `content_type`, `content`, `created_on`, `updated_on`, `created_by_id`, `updated_by_id`, `position`) VALUES (1,'default','text/html','<? if ($this->slug == \'webservice\'): ?>\r\n\r\n    <? $this->includeSnippet(\'service\'); ?>\r\n\r\n<? else: ?>\r\n    <?\r\n\r\n    function getLastId() {\r\n        global $__tarambola_CONN__;\r\n\r\n        $sql = \"SELECT * From tara_unique_id ORDER BY id DESC LIMIT 1\";\r\n\r\n        if ($stmt = $__tarambola_CONN__->prepare($sql)) {\r\n            $stmt->execute();\r\n\r\n            $object = $stmt->fetchObject();\r\n        }\r\n        return($object);\r\n    }\r\n\r\n    $id = getLastId();\r\n    ?>\r\n    <!DOCTYPE html>\r\n    <html lang=\"pt\">\r\n        <head>\r\n            <meta charset=\"UTF-8\" />\r\n            <title>Slot Machine</title>\r\n            <meta name=\"description\" content=\"Slot Machine\">\r\n            <meta name=\"keywords\" content=\"\">\r\n            <meta name=\"author\" content=\"Tarambola - Soluções Multimédia\">\r\n            <meta name=\"viewport\" content=\"user-scalable=no, initial-scale=0.9, minimum-scale=0.5, width=device-width, height=device-height, target-densitydpi=device-dpi\" />\r\n            <meta name=\"apple-mobile-web-app-capable\" content=\"yes\" />\r\n            <!-- *********************** CSS ************************* -->\r\n            <link href=\'http://fonts.googleapis.com/css?family=Roboto\' rel=\'stylesheet\' type=\'text/css\'>\r\n            <link href=\'http://fonts.googleapis.com/css?family=Playfair+Display+SC:400,700\' rel=\'stylesheet\' type=\'text/css\'>\r\n            <link href=\'<? echo(URL_PUBLIC); ?>public/themes/default/_css/reset.css\' rel=\'stylesheet\' type=\'text/css\'>\r\n            <link href=\'<? echo(URL_PUBLIC); ?>public/themes/default/_css/style.css\' rel=\'stylesheet\' type=\'text/css\'>\r\n            <link href=\'<? echo(URL_PUBLIC); ?>public/themes/default/_css/mobile.css\' rel=\'stylesheet\' type=\'text/css\'>\r\n        </head>\r\n        <body> \r\n            \r\n            <!--<img src=\"<? echo(URL_PUBLIC); ?>public/themes/default/_img/BG.jpg\" alt=\"\" class=\"bg\"/>-->\r\n            <div class=\"corners\" id=\"content-holder\">\r\n                <section class=\"main-container\">\r\n                    <center>\r\n                        <!-- ****************** HEADER **************** -->\r\n                        <header id=\"header\">\r\n                            <img src=\"<? echo(URL_PUBLIC); ?>public/themes/default/_img/boombap.png\" id=\"boombap\" alt=\"\" />\r\n                        </header>\r\n                        <!-- ######################### SE O UNIQUE ID COINCIDE ############################-->                \r\n                        <? if ($_GET[\'id\'] == $id->unique_id): ?> \r\n                            <? $this->includeSnippet(\'register\'); ?>\r\n                            <!-- ######################### SE O UNIQUE ID NÃO COINCIDE ############################-->     \r\n                        <? else: ?>\r\n                            <? $this->includeSnippet(\'tryagain\'); ?>\r\n                        <? endif; ?>  \r\n                        <?\r\n                            require_once SERVER_URL . \'tarambola/app/classes/Item.php\';\r\n                            $p = new Item();\r\n                            $p = $p->getPageById(130);\r\n                        ?>\r\n                        <input id=\"appUrl\" type=\"hidden\" value=\"<? echo($p->content(\'client_url\')); ?>\"></input>\r\n                        <div class=\"clear65\"></div>\r\n                        <div class=\"clear65\"></div>\r\n                    </center>\r\n                </section>\r\n            </div>\r\n            <!-- ************************* SCRIPTS ****************** -->\r\n            <script src=\"<? echo(URL_PUBLIC); ?>public/themes/default/_js/jquery-2.0.3.js\"></script>\r\n            <script src=\"<? echo(URL_PUBLIC); ?>public/themes/default/_js/script.js\"></script>\r\n            <? $this->includeSnippet(\'jsAppend\'); ?>\r\n        </body>   \r\n    </html>   \r\n<? endif; ?>\r\n\r\n','2011-05-30 17:35:49','2014-06-12 16:28:07',1,1,1);
/*!40000 ALTER TABLE `tara_layout` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tara_modulos`
--

DROP TABLE IF EXISTS `tara_modulos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tara_modulos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `modulo_id` int(11) NOT NULL,
  `campos` text,
  `parent` tinyint(4) DEFAULT NULL,
  `menu` tinyint(11) DEFAULT NULL,
  `nivel` tinyint(4) NOT NULL,
  `page_part_form` varchar(150) NOT NULL,
  `is_modulo` smallint(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tara_modulos`
--

LOCK TABLES `tara_modulos` WRITE;
/*!40000 ALTER TABLE `tara_modulos` DISABLE KEYS */;
INSERT INTO `tara_modulos` (`id`, `modulo_id`, `campos`, `parent`, `menu`, `nivel`, `page_part_form`, `is_modulo`) VALUES (6,17,'email, data',0,0,1,'users',1),(8,311,NULL,0,0,1,'screen_msg',1);
/*!40000 ALTER TABLE `tara_modulos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tara_modulos_log`
--

DROP TABLE IF EXISTS `tara_modulos_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tara_modulos_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ident` char(16) NOT NULL,
  `priority` int(11) NOT NULL,
  `message` varchar(255) DEFAULT NULL,
  `username` varchar(64) DEFAULT NULL,
  `created_on` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tara_modulos_log`
--

LOCK TABLES `tara_modulos_log` WRITE;
/*!40000 ALTER TABLE `tara_modulos_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `tara_modulos_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tara_news_campaign`
--

DROP TABLE IF EXISTS `tara_news_campaign`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tara_news_campaign` (
  `campaign_id` int(11) NOT NULL AUTO_INCREMENT,
  `campaign_name` varchar(255) NOT NULL,
  `create_date` date NOT NULL,
  PRIMARY KEY (`campaign_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tara_news_campaign`
--

LOCK TABLES `tara_news_campaign` WRITE;
/*!40000 ALTER TABLE `tara_news_campaign` DISABLE KEYS */;
/*!40000 ALTER TABLE `tara_news_campaign` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tara_news_campaign_member`
--

DROP TABLE IF EXISTS `tara_news_campaign_member`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tara_news_campaign_member` (
  `campaign_id` int(11) NOT NULL,
  `member_id` int(11) NOT NULL,
  `current_newsletter_id` int(11) NOT NULL,
  `join_time` int(11) NOT NULL,
  PRIMARY KEY (`campaign_id`,`member_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tara_news_campaign_member`
--

LOCK TABLES `tara_news_campaign_member` WRITE;
/*!40000 ALTER TABLE `tara_news_campaign_member` DISABLE KEYS */;
/*!40000 ALTER TABLE `tara_news_campaign_member` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tara_news_campaign_newsletter`
--

DROP TABLE IF EXISTS `tara_news_campaign_newsletter`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tara_news_campaign_newsletter` (
  `campaign_id` int(11) NOT NULL,
  `newsletter_id` int(11) NOT NULL,
  `send_time` int(11) NOT NULL,
  PRIMARY KEY (`campaign_id`,`newsletter_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tara_news_campaign_newsletter`
--

LOCK TABLES `tara_news_campaign_newsletter` WRITE;
/*!40000 ALTER TABLE `tara_news_campaign_newsletter` DISABLE KEYS */;
/*!40000 ALTER TABLE `tara_news_campaign_newsletter` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tara_news_group`
--

DROP TABLE IF EXISTS `tara_news_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tara_news_group` (
  `group_id` int(11) NOT NULL AUTO_INCREMENT,
  `group_name` varchar(255) NOT NULL,
  `public` int(11) NOT NULL,
  PRIMARY KEY (`group_id`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tara_news_group`
--

LOCK TABLES `tara_news_group` WRITE;
/*!40000 ALTER TABLE `tara_news_group` DISABLE KEYS */;
INSERT INTO `tara_news_group` (`group_id`, `group_name`, `public`) VALUES (1,'General e-Newsletter',1),(2,'tarambola',0),(3,'Paulo',0),(4,'Btt',0);
/*!40000 ALTER TABLE `tara_news_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tara_news_image`
--

DROP TABLE IF EXISTS `tara_news_image`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tara_news_image` (
  `image_id` int(11) NOT NULL AUTO_INCREMENT,
  `image_url` text NOT NULL,
  PRIMARY KEY (`image_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tara_news_image`
--

LOCK TABLES `tara_news_image` WRITE;
/*!40000 ALTER TABLE `tara_news_image` DISABLE KEYS */;
/*!40000 ALTER TABLE `tara_news_image` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tara_news_link`
--

DROP TABLE IF EXISTS `tara_news_link`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tara_news_link` (
  `link_id` int(11) NOT NULL AUTO_INCREMENT,
  `link_url` text NOT NULL,
  PRIMARY KEY (`link_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tara_news_link`
--

LOCK TABLES `tara_news_link` WRITE;
/*!40000 ALTER TABLE `tara_news_link` DISABLE KEYS */;
/*!40000 ALTER TABLE `tara_news_link` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tara_news_link_open`
--

DROP TABLE IF EXISTS `tara_news_link_open`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tara_news_link_open` (
  `link_open_id` int(11) NOT NULL AUTO_INCREMENT,
  `link_id` int(11) NOT NULL,
  `member_id` int(11) NOT NULL,
  `send_id` int(11) NOT NULL,
  `timestamp` int(11) NOT NULL,
  PRIMARY KEY (`link_open_id`)
) ENGINE=MyISAM AUTO_INCREMENT=20 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tara_news_link_open`
--

LOCK TABLES `tara_news_link_open` WRITE;
/*!40000 ALTER TABLE `tara_news_link_open` DISABLE KEYS */;
/*!40000 ALTER TABLE `tara_news_link_open` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tara_news_member`
--

DROP TABLE IF EXISTS `tara_news_member`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tara_news_member` (
  `member_id` int(11) NOT NULL AUTO_INCREMENT,
  `first_name` varchar(255) NOT NULL,
  `last_name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `join_date` date NOT NULL,
  `ip_address` varchar(15) NOT NULL,
  `unsubscribe_date` date NOT NULL,
  `unsubscribe_send_id` int(11) NOT NULL,
  PRIMARY KEY (`member_id`)
) ENGINE=MyISAM AUTO_INCREMENT=35 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tara_news_member`
--

LOCK TABLES `tara_news_member` WRITE;
/*!40000 ALTER TABLE `tara_news_member` DISABLE KEYS */;
INSERT INTO `tara_news_member` (`member_id`, `first_name`, `last_name`, `email`, `join_date`, `ip_address`, `unsubscribe_date`, `unsubscribe_send_id`) VALUES (34,'joaquim','sampaio','pregoafundo@gmail.com','2011-12-27','','0000-00-00',0);
/*!40000 ALTER TABLE `tara_news_member` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tara_news_member_field`
--

DROP TABLE IF EXISTS `tara_news_member_field`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tara_news_member_field` (
  `member_field_id` int(11) NOT NULL AUTO_INCREMENT,
  `field_name` varchar(255) NOT NULL,
  `field_type` varchar(20) NOT NULL,
  `required` int(11) NOT NULL,
  PRIMARY KEY (`member_field_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tara_news_member_field`
--

LOCK TABLES `tara_news_member_field` WRITE;
/*!40000 ALTER TABLE `tara_news_member_field` DISABLE KEYS */;
/*!40000 ALTER TABLE `tara_news_member_field` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tara_news_member_field_value`
--

DROP TABLE IF EXISTS `tara_news_member_field_value`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tara_news_member_field_value` (
  `member_id` int(11) NOT NULL,
  `member_field_id` int(11) NOT NULL,
  `value` varchar(255) NOT NULL,
  PRIMARY KEY (`member_id`,`member_field_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tara_news_member_field_value`
--

LOCK TABLES `tara_news_member_field_value` WRITE;
/*!40000 ALTER TABLE `tara_news_member_field_value` DISABLE KEYS */;
/*!40000 ALTER TABLE `tara_news_member_field_value` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tara_news_member_group`
--

DROP TABLE IF EXISTS `tara_news_member_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tara_news_member_group` (
  `member_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  PRIMARY KEY (`member_id`,`group_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tara_news_member_group`
--

LOCK TABLES `tara_news_member_group` WRITE;
/*!40000 ALTER TABLE `tara_news_member_group` DISABLE KEYS */;
/*!40000 ALTER TABLE `tara_news_member_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tara_news_newsletter`
--

DROP TABLE IF EXISTS `tara_news_newsletter`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tara_news_newsletter` (
  `newsletter_id` int(11) NOT NULL AUTO_INCREMENT,
  `create_date` date NOT NULL,
  `template` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `subject` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `from_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `from_email` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `content` text CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `bounce_email` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`newsletter_id`)
) ENGINE=MyISAM AUTO_INCREMENT=113 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tara_news_newsletter`
--

LOCK TABLES `tara_news_newsletter` WRITE;
/*!40000 ALTER TABLE `tara_news_newsletter` DISABLE KEYS */;
INSERT INTO `tara_news_newsletter` (`newsletter_id`, `create_date`, `template`, `subject`, `from_name`, `from_email`, `content`, `bounce_email`) VALUES (111,'2011-12-27','geral','June Newsletter','Tarambola','paulofernandes.tarambola@gmail.com','<p>klfvkfl</p>','paulofernandes.tarambola@gmail.com'),(112,'2011-12-27','geral','December Newsletter','Tarambola','paulofernandes.tarambola@gmail.com','','paulofernandes.tarambola@gmail.com');
/*!40000 ALTER TABLE `tara_news_newsletter` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tara_news_newsletter_member`
--

DROP TABLE IF EXISTS `tara_news_newsletter_member`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tara_news_newsletter_member` (
  `send_id` int(11) NOT NULL,
  `member_id` int(11) NOT NULL,
  `sent_time` int(11) NOT NULL,
  `status` int(11) NOT NULL,
  `open_time` int(11) NOT NULL,
  `bounce_time` int(11) NOT NULL,
  PRIMARY KEY (`send_id`,`member_id`),
  KEY `open_time` (`open_time`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tara_news_newsletter_member`
--

LOCK TABLES `tara_news_newsletter_member` WRITE;
/*!40000 ALTER TABLE `tara_news_newsletter_member` DISABLE KEYS */;
/*!40000 ALTER TABLE `tara_news_newsletter_member` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tara_news_send`
--

DROP TABLE IF EXISTS `tara_news_send`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tara_news_send` (
  `send_id` int(11) NOT NULL AUTO_INCREMENT,
  `start_time` int(11) NOT NULL,
  `status` int(11) NOT NULL,
  `finish_time` int(11) NOT NULL,
  `newsletter_id` int(11) NOT NULL,
  `campaign_id` int(11) NOT NULL,
  `template_html` text NOT NULL,
  `full_html` text NOT NULL,
  PRIMARY KEY (`send_id`),
  KEY `newsletter_id` (`newsletter_id`)
) ENGINE=MyISAM AUTO_INCREMENT=67 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tara_news_send`
--

LOCK TABLES `tara_news_send` WRITE;
/*!40000 ALTER TABLE `tara_news_send` DISABLE KEYS */;
/*!40000 ALTER TABLE `tara_news_send` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tara_news_settings`
--

DROP TABLE IF EXISTS `tara_news_settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tara_news_settings` (
  `key` varchar(255) NOT NULL,
  `val` varchar(255) NOT NULL,
  PRIMARY KEY (`key`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tara_news_settings`
--

LOCK TABLES `tara_news_settings` WRITE;
/*!40000 ALTER TABLE `tara_news_settings` DISABLE KEYS */;
INSERT INTO `tara_news_settings` (`key`, `val`) VALUES ('bounce_email','paulofernandes.tarambola@gmail.com'),('bounce_host','pop.gmail.com'),('bounce_password','snoof0000'),('bounce_username:','paulofernandes.tarambola@gmail.com'),('default_template','geral'),('from_email','paulofernandes.tarambola@gmail.com'),('from_name','Tarambola'),('password','snoof0000'),('username','paulofernandes.tarambola@gmail.com');
/*!40000 ALTER TABLE `tara_news_settings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tara_news_sync`
--

DROP TABLE IF EXISTS `tara_news_sync`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tara_news_sync` (
  `sync_id` int(11) NOT NULL AUTO_INCREMENT,
  `sync_name` varchar(50) NOT NULL,
  `edit_url` varchar(255) NOT NULL,
  `db_username` varchar(40) NOT NULL,
  `db_password` varchar(40) NOT NULL,
  `db_host` varchar(40) NOT NULL,
  `db_name` varchar(40) NOT NULL,
  `db_table` varchar(40) NOT NULL,
  `db_table_key` varchar(40) NOT NULL,
  `db_table_email_key` varchar(40) NOT NULL,
  `db_table_fname_key` varchar(40) NOT NULL,
  `db_table_lname_key` varchar(40) NOT NULL,
  `last_sync` int(11) NOT NULL,
  `create_date` date NOT NULL,
  PRIMARY KEY (`sync_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tara_news_sync`
--

LOCK TABLES `tara_news_sync` WRITE;
/*!40000 ALTER TABLE `tara_news_sync` DISABLE KEYS */;
/*!40000 ALTER TABLE `tara_news_sync` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tara_news_sync_group`
--

DROP TABLE IF EXISTS `tara_news_sync_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tara_news_sync_group` (
  `sync_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  PRIMARY KEY (`sync_id`,`group_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tara_news_sync_group`
--

LOCK TABLES `tara_news_sync_group` WRITE;
/*!40000 ALTER TABLE `tara_news_sync_group` DISABLE KEYS */;
/*!40000 ALTER TABLE `tara_news_sync_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tara_news_sync_member`
--

DROP TABLE IF EXISTS `tara_news_sync_member`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tara_news_sync_member` (
  `sync_id` int(11) NOT NULL,
  `sync_unique_id` int(11) NOT NULL,
  `member_id` int(11) NOT NULL,
  PRIMARY KEY (`sync_id`,`sync_unique_id`,`member_id`),
  KEY `sync_id` (`sync_id`),
  KEY `sync_unique_id` (`sync_unique_id`),
  KEY `member_id` (`member_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tara_news_sync_member`
--

LOCK TABLES `tara_news_sync_member` WRITE;
/*!40000 ALTER TABLE `tara_news_sync_member` DISABLE KEYS */;
/*!40000 ALTER TABLE `tara_news_sync_member` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tara_page`
--

DROP TABLE IF EXISTS `tara_page`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tara_page` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) DEFAULT NULL,
  `slug` varchar(100) DEFAULT NULL,
  `breadcrumb` varchar(160) DEFAULT NULL,
  `keywords` varchar(255) DEFAULT NULL,
  `description` text,
  `parent_id` int(11) unsigned DEFAULT NULL,
  `layout_id` int(11) unsigned DEFAULT NULL,
  `behavior_id` varchar(25) NOT NULL,
  `status_id` int(11) unsigned NOT NULL DEFAULT '100',
  `comment_status` tinyint(1) NOT NULL DEFAULT '0',
  `created_on` datetime DEFAULT NULL,
  `published_on` datetime DEFAULT NULL,
  `updated_on` datetime DEFAULT NULL,
  `created_by_id` int(11) DEFAULT NULL,
  `updated_by_id` int(11) DEFAULT NULL,
  `position` mediumint(6) unsigned DEFAULT NULL,
  `is_protected` tinyint(1) NOT NULL DEFAULT '0',
  `needs_login` tinyint(1) NOT NULL DEFAULT '2',
  `is_cacheable` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `id` (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=508 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tara_page`
--

LOCK TABLES `tara_page` WRITE;
/*!40000 ALTER TABLE `tara_page` DISABLE KEYS */;
INSERT INTO `tara_page` (`id`, `title`, `slug`, `breadcrumb`, `keywords`, `description`, `parent_id`, `layout_id`, `behavior_id`, `status_id`, `comment_status`, `created_on`, `published_on`, `updated_on`, `created_by_id`, `updated_by_id`, `position`, `is_protected`, `needs_login`, `is_cacheable`) VALUES (1,'Página inicial','','Página Inicial','ContCastro, Guimarães, Contabilidade, Seguros, Consultoria, Projectos de Investimento, IRS, IVA, Salários, regimes fiscais, Sistemas de incentivos, analises financeiras','A ContCastro, com sede em Guimarães, disponibiliza serviços de Contabilidade, actividade seguradora e Serviços de apoio e consultoria a empresas.',0,1,'',100,0,'2009-07-29 11:22:17','2009-07-29 11:22:18','2014-03-17 17:50:23',1,1,0,1,0,1),(2,'Funcionalidades','funcionalidades','Funcionalidades','','',1,0,'',100,0,'2014-03-17 16:41:12','2014-03-17 16:41:12','2014-03-17 17:02:18',1,1,4,0,2,1),(3,'___________funcionalidades','___________funcionalidades','___________funcionalidades','','',2,0,'',101,0,'2014-03-17 16:41:37',NULL,'2014-03-17 16:42:28',1,1,NULL,0,2,1),(4,'Traduções','traduces','Traduções','','',2,0,'',100,0,'2014-03-17 16:42:01','2014-03-17 16:42:18','2014-03-17 16:42:18',1,1,NULL,0,2,1),(5,'404','404','404','','',2,0,'',100,0,'2014-03-17 16:42:52','2014-03-17 16:43:00','2014-03-31 16:16:47',1,1,NULL,0,2,1),(6,'Pesquisa','pesquisa','Pesquisa','','',2,0,'',100,0,'2014-03-17 16:43:12','2014-03-17 16:43:18','2014-03-17 16:43:18',1,1,NULL,0,2,1),(7,'Home','home','Home','','',1,0,'',100,0,'2014-03-17 16:45:45','2014-03-17 16:45:45','2014-03-17 19:31:06',1,1,0,0,2,1),(8,'___________home','___________home','___________home','','',7,0,'',101,0,'2014-03-17 16:46:11',NULL,'2014-03-17 16:46:17',1,1,NULL,0,2,1),(16,'Home','home','Home','','',7,0,'',1,0,'2014-03-31 14:28:54',NULL,'2014-03-31 23:00:15',1,1,NULL,0,2,1),(17,'Utilizadores','utilizadores','Utilizadores','','',1,0,'',100,0,'2014-04-02 16:50:58','2014-04-02 16:51:14','2014-05-19 18:58:19',1,1,NULL,0,2,1),(18,'___________utilizadores','___________utilizadores','___________utilizadores','','',17,0,'',101,0,'2014-04-02 16:51:32',NULL,'2014-05-26 12:07:35',1,1,NULL,0,2,1),(24,'cancelshop','cancelshop','cancelshop','','',2,0,'',100,0,'2014-04-16 10:27:34','2014-04-16 10:27:56','2014-04-16 10:27:56',1,1,NULL,0,2,1),(25,'sucessshop','sucessshop','sucessshop','','',2,0,'',100,0,'2014-04-16 10:28:21','2014-04-16 10:28:21','2014-04-16 10:28:21',1,1,NULL,0,2,1),(26,'billing','billing','billing','','',2,0,'',100,0,'2014-04-16 11:57:38','2014-04-16 11:57:38','2014-04-16 11:57:38',1,1,NULL,0,2,1),(27,'webservice','webservice','webservice','','',2,0,'',100,0,'2014-05-19 15:56:21','2014-05-19 15:56:26','2014-05-19 16:05:59',1,1,NULL,0,2,1),(317,'Mensagens Mobile','mensagens-mobile','Mensagens Mobile','','',311,0,'',100,0,'2014-06-11 16:45:26','2014-06-11 16:45:26','2014-06-12 14:44:31',1,1,NULL,0,2,1),(316,'Wait','wait','Wait','','',1,0,'',100,0,'2014-06-11 16:17:08','2014-06-11 16:17:08','2014-06-11 16:24:09',1,1,NULL,0,2,1),(315,'Mensagens Screens','mensagens-screens','Mensagens Screens','','',311,0,'',100,0,'2014-06-11 15:53:32','2014-06-11 15:53:32','2014-06-11 18:06:22',1,1,NULL,0,2,1),(312,'________mensagens','________mensagens','________mensagens','','',311,0,'',101,0,'2014-06-11 15:36:17',NULL,'2014-06-11 15:42:51',1,1,NULL,0,2,1),(314,'Register','register','Register','','',1,0,'',100,0,'2014-06-11 15:45:47','2014-06-11 15:45:47','2014-06-11 16:29:27',1,1,NULL,0,2,1),(130,'Configurações','configuraces','Configurações','','',1,0,'',100,0,'2014-05-26 12:05:36','2014-05-26 12:05:36','2016-01-26 18:35:33',1,1,NULL,0,2,1),(462,'Sara','Sara','Sara',NULL,NULL,17,0,'',0,0,'2014-07-02 16:06:23',NULL,NULL,1,NULL,NULL,0,2,1),(461,'Sara','Sara','Sara',NULL,NULL,17,0,'',0,0,'2014-07-02 15:54:54',NULL,NULL,1,NULL,NULL,0,2,1),(460,'Paulo','Paulo','Paulo',NULL,NULL,17,0,'',0,0,'2014-07-01 20:34:03',NULL,NULL,1,NULL,NULL,0,2,1),(459,'paulo','paulo','paulo',NULL,NULL,17,0,'',0,0,'2014-07-01 16:19:24',NULL,NULL,1,NULL,NULL,0,2,1),(311,'Mensagens','mensagens','Mensagens','','',1,0,'',100,0,'2014-06-11 15:36:00','2014-06-11 15:36:00','2014-06-11 15:43:08',1,1,NULL,0,2,1),(368,'Mensagens Mail','mensagens-mail','Mensagens Mail','','',311,0,'',1,0,'2014-06-12 11:12:11',NULL,'2014-06-12 12:41:19',1,1,NULL,0,2,1),(458,'Saras','Saras','Saras',NULL,NULL,17,0,'',0,0,'2014-07-01 16:18:08',NULL,NULL,1,NULL,NULL,0,2,1),(457,'Paulo','Paulo','Paulo',NULL,NULL,17,0,'',0,0,'2014-06-16 12:24:30',NULL,NULL,1,NULL,NULL,0,2,1),(454,'paulo','paulo','paulo',NULL,NULL,17,0,'',0,0,'2014-06-13 16:19:54',NULL,NULL,1,NULL,NULL,0,2,1),(455,'Paulo','Paulo','Paulo',NULL,NULL,17,0,'',0,0,'2014-06-16 12:19:19',NULL,NULL,1,NULL,NULL,0,2,1),(456,'Paulo','Paulo','Paulo',NULL,NULL,17,0,'',0,0,'2014-06-16 12:20:12',NULL,NULL,1,NULL,NULL,0,2,1),(446,'Uh humor','Uh humor','Uh humor',NULL,NULL,17,0,'',0,0,'2014-06-13 16:06:29',NULL,NULL,1,NULL,NULL,0,2,1),(447,'Ricardo','Ricardo','Ricardo',NULL,NULL,17,0,'',0,0,'2014-06-13 16:07:53',NULL,NULL,1,NULL,NULL,0,2,1),(448,'Migas','Migas','Migas',NULL,NULL,17,0,'',0,0,'2014-06-13 16:10:56',NULL,NULL,1,NULL,NULL,0,2,1),(449,'Santos','Santos','Santos',NULL,NULL,17,0,'',0,0,'2014-06-13 16:12:15',NULL,NULL,1,NULL,NULL,0,2,1),(450,'paulo','paulo','paulo',NULL,NULL,17,0,'',0,0,'2014-06-13 16:14:17',NULL,NULL,1,NULL,NULL,0,2,1),(451,'Migas','Migas','Migas',NULL,NULL,17,0,'',0,0,'2014-06-13 16:16:09',NULL,NULL,1,NULL,NULL,0,2,1),(452,'Santos','Santos','Santos',NULL,NULL,17,0,'',0,0,'2014-06-13 16:17:05',NULL,NULL,1,NULL,NULL,0,2,1),(453,'goncalo','goncalo','goncalo',NULL,NULL,17,0,'',0,0,'2014-06-13 16:18:05',NULL,NULL,1,NULL,NULL,0,2,1),(444,'Dudud','Dudud','Dudud',NULL,NULL,17,0,'',0,0,'2014-06-13 16:04:32',NULL,NULL,1,NULL,NULL,0,2,1),(445,'Vivava','Vivava','Vivava',NULL,NULL,17,0,'',0,0,'2014-06-13 16:05:21',NULL,NULL,1,NULL,NULL,0,2,1),(443,'Miguel','Miguel','Miguel',NULL,NULL,17,0,'',0,0,'2014-06-13 16:03:04',NULL,NULL,1,NULL,NULL,0,2,1),(463,'Paulo','Paulo','Paulo',NULL,NULL,17,0,'',0,0,'2014-07-02 16:09:32',NULL,NULL,1,NULL,NULL,0,2,1),(464,'Sara','Sara','Sara',NULL,NULL,17,0,'',0,0,'2014-07-02 16:16:14',NULL,NULL,1,NULL,NULL,0,2,1),(465,'Paulo','Paulo','Paulo',NULL,NULL,17,0,'',0,0,'2014-07-02 17:07:12',NULL,NULL,1,NULL,NULL,0,2,1),(466,'Teles','Teles','Teles',NULL,NULL,17,0,'',0,0,'2014-07-07 17:39:50',NULL,NULL,1,NULL,NULL,0,2,1),(467,'Teles','Teles','Teles',NULL,NULL,17,0,'',0,0,'2014-07-07 17:44:09',NULL,NULL,1,NULL,NULL,0,2,1),(468,'Paulo','Paulo','Paulo',NULL,NULL,17,0,'',0,0,'2014-07-07 17:50:35',NULL,NULL,1,NULL,NULL,0,2,1),(469,'Paulo','Paulo','Paulo',NULL,NULL,17,0,'',0,0,'2014-07-07 18:10:56',NULL,NULL,1,NULL,NULL,0,2,1),(470,'Há','Há','Há',NULL,NULL,17,0,'',0,0,'2014-07-07 18:17:26',NULL,NULL,1,NULL,NULL,0,2,1),(471,'Teles','Teles','Teles',NULL,NULL,17,0,'',0,0,'2014-07-07 19:17:12',NULL,NULL,1,NULL,NULL,0,2,1),(472,'Paulo','Paulo','Paulo',NULL,NULL,17,0,'',0,0,'2014-07-07 19:22:31',NULL,NULL,1,NULL,NULL,0,2,1),(473,'Teles','Teles','Teles',NULL,NULL,17,0,'',0,0,'2014-07-08 08:25:39',NULL,NULL,1,NULL,NULL,0,2,1),(474,'T','T','T',NULL,NULL,17,0,'',0,0,'2014-07-08 10:43:58',NULL,NULL,1,NULL,NULL,0,2,1),(475,'Paulo','Paulo','Paulo',NULL,NULL,17,0,'',0,0,'2014-08-13 11:07:03',NULL,NULL,1,NULL,NULL,0,2,1),(476,'Paulo','Paulo','Paulo',NULL,NULL,17,0,'',0,0,'2014-08-13 11:25:50',NULL,NULL,1,NULL,NULL,0,2,1),(477,'Paulo','Paulo','Paulo',NULL,NULL,17,0,'',0,0,'2014-08-13 11:37:27',NULL,NULL,1,NULL,NULL,0,2,1),(478,'ijdssah','ijdssah','ijdssah',NULL,NULL,17,0,'',0,0,'2014-08-13 11:49:49',NULL,NULL,1,NULL,NULL,0,2,1),(479,'Hshs','Hshs','Hshs',NULL,NULL,17,0,'',0,0,'2014-08-13 12:00:02',NULL,NULL,1,NULL,NULL,0,2,1),(480,'Hshsh','Hshsh','Hshsh',NULL,NULL,17,0,'',0,0,'2014-08-13 12:00:33',NULL,NULL,1,NULL,NULL,0,2,1),(481,'dasdasd','dasdasd','dasdasd',NULL,NULL,17,0,'',0,0,'2014-08-13 12:02:22',NULL,NULL,1,NULL,NULL,0,2,1),(482,'Dhbd','Dhbd','Dhbd',NULL,NULL,17,0,'',0,0,'2014-08-13 12:10:01',NULL,NULL,1,NULL,NULL,0,2,1),(483,'fdfdsfdsfds','fdfdsfdsfds','fdfdsfdsfds',NULL,NULL,17,0,'',0,0,'2014-08-13 12:13:40',NULL,NULL,1,NULL,NULL,0,2,1),(484,'bvcbcvbcxv','bvcbcvbcxv','bvcbcvbcxv',NULL,NULL,17,0,'',0,0,'2014-08-13 12:15:37',NULL,NULL,1,NULL,NULL,0,2,1),(485,'dasdas','dasdas','dasdas',NULL,NULL,17,0,'',0,0,'2014-08-13 12:17:09',NULL,NULL,1,NULL,NULL,0,2,1),(486,'Hshshs','Hshshs','Hshshs',NULL,NULL,17,0,'',0,0,'2014-08-13 12:28:22',NULL,NULL,1,NULL,NULL,0,2,1),(487,'dsadsad','dsadsad','dsadsad',NULL,NULL,17,0,'',0,0,'2014-08-13 12:29:09',NULL,NULL,1,NULL,NULL,0,2,1),(488,'dsadasdas','dsadasdas','dsadasdas',NULL,NULL,17,0,'',0,0,'2014-08-13 12:49:23',NULL,NULL,1,NULL,NULL,0,2,1),(489,'dsadasdasdasa','dsadasdasdasa','dsadasdasdasa',NULL,NULL,17,0,'',0,0,'2014-08-13 12:50:40',NULL,NULL,1,NULL,NULL,0,2,1),(490,'sadsa','sadsa','sadsa',NULL,NULL,17,0,'',0,0,'2014-08-13 12:53:03',NULL,NULL,1,NULL,NULL,0,2,1),(491,'saSAs','saSAs','saSAs',NULL,NULL,17,0,'',0,0,'2014-08-13 12:55:46',NULL,NULL,1,NULL,NULL,0,2,1),(492,'Hshsh','Hshsh','Hshsh',NULL,NULL,17,0,'',0,0,'2014-08-13 12:56:28',NULL,NULL,1,NULL,NULL,0,2,1),(493,'Hshsh','Hshsh','Hshsh',NULL,NULL,17,0,'',0,0,'2014-08-13 12:57:36',NULL,NULL,1,NULL,NULL,0,2,1),(494,'Hshsh','Hshsh','Hshsh',NULL,NULL,17,0,'',0,0,'2014-08-13 12:59:40',NULL,NULL,1,NULL,NULL,0,2,1),(495,'Pajah','Pajah','Pajah',NULL,NULL,17,0,'',0,0,'2014-09-09 17:21:27',NULL,NULL,1,NULL,NULL,0,2,1),(496,'Sara Teles','Sara Teles','Sara Teles',NULL,NULL,17,0,'',0,0,'2014-09-24 11:48:58',NULL,NULL,1,NULL,NULL,0,2,1),(497,'Santos','Santos','Santos',NULL,NULL,17,0,'',0,0,'2014-09-24 11:50:59',NULL,NULL,1,NULL,NULL,0,2,1),(498,'Santos','Santos','Santos',NULL,NULL,17,0,'',0,0,'2014-09-24 11:52:41',NULL,NULL,1,NULL,NULL,0,2,1),(499,'Sara Teles','Sara Teles','Sara Teles',NULL,NULL,17,0,'',0,0,'2014-09-24 11:54:16',NULL,NULL,1,NULL,NULL,0,2,1),(500,'Miguel','Miguel','Miguel',NULL,NULL,17,0,'',0,0,'2014-09-24 12:18:14',NULL,NULL,1,NULL,NULL,0,2,1),(501,'Santos','Santos','Santos',NULL,NULL,17,0,'',0,0,'2014-09-24 12:19:19',NULL,NULL,1,NULL,NULL,0,2,1),(502,'Santos','Santos','Santos',NULL,NULL,17,0,'',0,0,'2014-09-24 12:21:38',NULL,NULL,1,NULL,NULL,0,2,1),(503,'Paulo','Paulo','Paulo',NULL,NULL,17,0,'',0,0,'2016-01-26 18:36:54',NULL,NULL,1,NULL,NULL,0,2,1),(504,'Paulo ','Paulo ','Paulo ',NULL,NULL,17,0,'',0,0,'2016-01-26 18:38:04',NULL,NULL,1,NULL,NULL,0,2,1),(505,'Rui rebelo','Rui rebelo','Rui rebelo',NULL,NULL,17,0,'',0,0,'2016-01-27 17:32:14',NULL,NULL,1,NULL,NULL,0,2,1),(506,'Rui Rebelo','Rui Rebelo','Rui Rebelo',NULL,NULL,17,0,'',0,0,'2016-01-27 17:37:12',NULL,NULL,1,NULL,NULL,0,2,1),(507,'Rui rebelo','Rui rebelo','Rui rebelo',NULL,NULL,17,0,'',0,0,'2016-01-27 17:39:00',NULL,NULL,1,NULL,NULL,0,2,1);
/*!40000 ALTER TABLE `tara_page` ENABLE KEYS */;
UNLOCK TABLES;

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
) ENGINE=MyISAM AUTO_INCREMENT=502 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tara_page_metadata`
--

LOCK TABLES `tara_page_metadata` WRITE;
/*!40000 ALTER TABLE `tara_page_metadata` DISABLE KEYS */;
INSERT INTO `tara_page_metadata` (`id`, `visible`, `page_id`, `keyword`, `value`) VALUES (6,0,6,'page_part_forms','1'),(7,0,7,'page_part_forms','3'),(8,0,8,'page_part_forms','3'),(10,0,10,'page_part_forms','4'),(11,0,11,'page_part_forms','4'),(12,0,12,'page_part_forms','4'),(13,0,13,'page_part_forms','4'),(14,0,14,'page_part_forms','5'),(16,0,16,'page_part_forms','3'),(17,0,17,'page_part_forms','7'),(18,0,18,'page_part_forms','7'),(22,0,0,'page_part_forms','7'),(23,0,0,'page_part_forms','7'),(310,0,314,'page_part_forms','9'),(311,0,317,'page_part_forms','10'),(308,0,315,'page_part_forms','3'),(309,0,316,'page_part_forms','8'),(125,0,130,'page_part_forms','4'),(306,0,312,'page_part_forms','3'),(451,0,457,'page_part_forms','7'),(450,0,456,'page_part_forms','7'),(449,0,455,'page_part_forms','7'),(448,0,454,'page_part_forms','7'),(307,0,311,'page_part_forms','3'),(362,0,368,'page_part_forms','11'),(447,0,453,'page_part_forms','7'),(446,0,452,'page_part_forms','7'),(445,0,451,'page_part_forms','7'),(440,0,446,'page_part_forms','7'),(444,0,450,'page_part_forms','7'),(452,0,458,'page_part_forms','7'),(443,0,449,'page_part_forms','7'),(441,0,447,'page_part_forms','7'),(442,0,448,'page_part_forms','7'),(439,0,445,'page_part_forms','7'),(438,0,444,'page_part_forms','7'),(437,0,443,'page_part_forms','7'),(453,0,459,'page_part_forms','7'),(454,0,460,'page_part_forms','7'),(455,0,461,'page_part_forms','7'),(456,0,462,'page_part_forms','7'),(457,0,463,'page_part_forms','7'),(458,0,464,'page_part_forms','7'),(459,0,465,'page_part_forms','7'),(460,0,466,'page_part_forms','7'),(461,0,467,'page_part_forms','7'),(462,0,468,'page_part_forms','7'),(463,0,469,'page_part_forms','7'),(464,0,470,'page_part_forms','7'),(465,0,471,'page_part_forms','7'),(466,0,472,'page_part_forms','7'),(467,0,473,'page_part_forms','7'),(468,0,474,'page_part_forms','7'),(469,0,475,'page_part_forms','7'),(470,0,476,'page_part_forms','7'),(471,0,477,'page_part_forms','7'),(472,0,478,'page_part_forms','7'),(473,0,479,'page_part_forms','7'),(474,0,480,'page_part_forms','7'),(475,0,481,'page_part_forms','7'),(476,0,482,'page_part_forms','7'),(477,0,483,'page_part_forms','7'),(478,0,484,'page_part_forms','7'),(479,0,485,'page_part_forms','7'),(480,0,486,'page_part_forms','7'),(481,0,487,'page_part_forms','7'),(482,0,488,'page_part_forms','7'),(483,0,489,'page_part_forms','7'),(484,0,490,'page_part_forms','7'),(485,0,491,'page_part_forms','7'),(486,0,492,'page_part_forms','7'),(487,0,493,'page_part_forms','7'),(488,0,494,'page_part_forms','7'),(489,0,495,'page_part_forms','7'),(490,0,496,'page_part_forms','7'),(491,0,497,'page_part_forms','7'),(492,0,498,'page_part_forms','7'),(493,0,499,'page_part_forms','7'),(494,0,500,'page_part_forms','7'),(495,0,501,'page_part_forms','7'),(496,0,502,'page_part_forms','7'),(497,0,503,'page_part_forms','7'),(498,0,504,'page_part_forms','7'),(499,0,505,'page_part_forms','7'),(500,0,506,'page_part_forms','7'),(501,0,507,'page_part_forms','7');
/*!40000 ALTER TABLE `tara_page_metadata` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tara_page_part`
--

DROP TABLE IF EXISTS `tara_page_part`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tara_page_part` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT NULL,
  `filter_id` varchar(25) DEFAULT NULL,
  `content` longtext,
  `content_html` longtext,
  `page_id` int(11) unsigned DEFAULT NULL,
  `content2` longtext,
  `content2_html` longtext,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2517 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tara_page_part`
--

LOCK TABLES `tara_page_part` WRITE;
/*!40000 ALTER TABLE `tara_page_part` DISABLE KEYS */;
INSERT INTO `tara_page_part` (`id`, `name`, `filter_id`, `content`, `content_html`, `page_id`, `content2`, `content2_html`) VALUES (1,'body','','<?php $this->includeSnippet(\'index\'); ?>\r\n','<?php $this->includeSnippet(\'index\'); ?>\r\n',1,NULL,NULL),(14,'slogan','tinymce','<p>A garantia de um servi&ccedil;o de <span class=\"colored\">Excel&ecirc;ncia</span>.</p>','<p>A garantia de um servi&ccedil;o de <span class=\"colored\">Excel&ecirc;ncia</span>.</p>',16,NULL,NULL),(35,'slogan2','','','',16,NULL,NULL),(9,'texto','','Atividade seguradora, sendo que esta actividade reforça o leque de serviços integrados a prestar aos clientes.','Atividade seguradora, sendo que esta actividade reforça o leque de serviços integrados a prestar aos clientes.',12,NULL,NULL),(11,'texto','','- Serviços de apoio às empresas. Estes serviços incluem a preparação de candidaturas de a sistemas de incentivos, a elaboração de Analises Financeiras, entre outros.','- Serviços de apoio às empresas. Estes serviços incluem a preparação de candidaturas de a sistemas de incentivos, a elaboração de Analises Financeiras, entre outros.',13,NULL,NULL),(25,'morada','tinymce','<p>Largo das Hortas - Edif&iacute;cio das Hortas, n.&ordm; 220 &ndash; Loja I <br />S. Sebasti&atilde;o. 4810-025 Guimar&atilde;es</p>','<p>Largo das Hortas - Edif&iacute;cio das Hortas, n.&ordm; 220 &ndash; Loja I <br />S. Sebasti&atilde;o. 4810-025 Guimar&atilde;es</p>',14,NULL,NULL),(21,'imagem','imagens','imagem-1-2.png/#imgsepara##/imagem.png/#imgsepara##/imagem.png/#imgsepara##/Captura de ecrã 2014-03-26, às 18.17.33.png/#imgsepara##/Captura de ecrã 2014-03-24, às 02.45.35.jpg/#imgsepara##/imagem.png/#imgsepara##/Captura de ecrã 2014-03-24, às 02.45.35.jpg/#imgsepara##/','imagem-1-2.png/#imgsepara##/imagem.png/#imgsepara##/imagem.png/#imgsepara##/Captura de ecrã 2014-03-26, às 18.17.33.png/#imgsepara##/Captura de ecrã 2014-03-24, às 02.45.35.jpg/#imgsepara##/imagem.png/#imgsepara##/Captura de ecrã 2014-03-24, às 02.45.35.jpg/#imgsepara##/',16,NULL,NULL),(36,'body','','','',5,NULL,NULL),(34,'texto','','','',16,NULL,NULL),(18,'space','','','',16,NULL,NULL),(19,'space2','','','',16,NULL,NULL),(20,'texto2','','Somos especializados nas àreas de contabilidade, seguros e consultoria de gestão a empresas, venha trabalhar connosco.','Somos especializados nas àreas de contabilidade, seguros e consultoria de gestão a empresas, venha trabalhar connosco.',16,NULL,NULL),(24,'imagem','imagens','post3.jpg/#imgsepara##/','post3.jpg/#imgsepara##/',13,NULL,NULL),(26,'telefone','','(+351) 253 525 075','(+351) 253 525 075',14,NULL,NULL),(27,'telemovel','','(+351) 963 831 530','(+351) 963 831 530',14,NULL,NULL),(28,'email','','contcastro@sapo.pt | toni.contcastro@sapo.pt','contcastro@sapo.pt | toni.contcastro@sapo.pt',14,NULL,NULL),(29,'slogan','','Não hesite em contactar.','Não hesite em contactar.',14,NULL,NULL),(30,'texto','','Estamos sempre disponíveis para responder às suas solicitações, o mais breve possível.','Estamos sempre disponíveis para responder às suas solicitações, o mais breve possível.',14,NULL,NULL),(31,'maps','','<iframe width=\"100%\" height=\"436\" frameborder=\"0\" scrolling=\"no\" marginheight=\"0\" marginwidth=\"0\" src=\"https://maps.google.pt/maps?q=41.442356,-8.284594&amp;num=1&amp;t=h&amp;ie=UTF8&amp;z=14&amp;ll=41.442686,-8.282694&amp;output=embed\"></iframe><br /><small><a href=\"https://maps.google.pt/maps?q=41.442356,-8.284594&amp;num=1&amp;t=h&amp;ie=UTF8&amp;z=14&amp;ll=41.442686,-8.282694&amp;source=embed\">Ver mapa maior</a></small>                    ','<iframe width=\"100%\" height=\"436\" frameborder=\"0\" scrolling=\"no\" marginheight=\"0\" marginwidth=\"0\" src=\"https://maps.google.pt/maps?q=41.442356,-8.284594&amp;num=1&amp;t=h&amp;ie=UTF8&amp;z=14&amp;ll=41.442686,-8.282694&amp;output=embed\"></iframe><br /><small><a href=\"https://maps.google.pt/maps?q=41.442356,-8.284594&amp;num=1&amp;t=h&amp;ie=UTF8&amp;z=14&amp;ll=41.442686,-8.282694&amp;source=embed\">Ver mapa maior</a></small>                    ',14,NULL,NULL),(33,'facebook','','','',14,NULL,NULL),(72,'body','','','',24,NULL,NULL),(73,'body','','','',25,NULL,NULL),(74,'body','','','',26,NULL,NULL),(75,'body','','','',27,NULL,NULL),(77,'quantidade','','','',17,NULL,NULL),(76,'referencia','','','',17,NULL,NULL),(78,'valor','','','',17,NULL,NULL),(79,'desconto1','','','',17,NULL,NULL),(80,'desconto2','','','',17,NULL,NULL),(81,'quantidade_desconto','','','',17,NULL,NULL),(82,'imagem','imagens','','',17,NULL,NULL),(83,'texto','','','',17,NULL,NULL),(84,'atributos','','','',17,NULL,NULL),(593,'nr_premios','','1000','1000',130,NULL,NULL),(588,'unique_id','','','',18,NULL,NULL),(587,'premio','','','',18,NULL,NULL),(586,'data','','','',18,NULL,NULL),(585,'email','','','',18,NULL,NULL),(584,'nome','','','',18,NULL,NULL),(98,'nome',NULL,'','',0,NULL,NULL),(99,'email',NULL,'','',0,NULL,NULL),(100,'data',NULL,'2014-05-21 16:38:32','2014-05-21 16:38:32',0,NULL,NULL),(101,'unique_id',NULL,'57f13a66f5da76bc84be89072d16791f','57f13a66f5da76bc84be89072d16791f',0,NULL,NULL),(102,'nome',NULL,'','',0,NULL,NULL),(103,'email',NULL,'','',0,NULL,NULL),(104,'data',NULL,'2014-05-21 16:44:48','2014-05-21 16:44:48',0,NULL,NULL),(105,'unique_id',NULL,'57f13a66f5da76bc84be89072d167999','57f13a66f5da76bc84be89072d167999',0,NULL,NULL),(1564,'client_url','','http://192.168.1.126:8080','http://192.168.1.126:8080',130,NULL,NULL),(1546,'formlabel1','','Name','Name',317,NULL,NULL),(1547,'formlabel2','','Email','Email',317,NULL,NULL),(1548,'formbutton','','REGISTER','REGISTER',317,NULL,NULL),(1561,'esgotadaswarning','','You have exceeded your attempts! Try again tomorrow!','You have exceeded your attempts! Try again tomorrow!',317,NULL,NULL),(1562,'wait2','','Read the QRCode again!','Read the QRCode again!',317,NULL,NULL),(1550,'wait','','Wait for your turn!','Wait for your turn!',317,NULL,NULL),(1559,'validationwarning','','Please insert Name and Email correctly','Please insert Name and Email correctly',317,NULL,NULL),(1560,'waitwarning','','Wait for your turn! Read the QRCode again!','Wait for your turn! Read the QRCode again!',317,NULL,NULL),(1552,'jogar','','Roll','Roll',317,NULL,NULL),(1553,'loose_5','','ATTEMPTS','ATTEMPTS',315,NULL,NULL),(1517,'space8','','','',315,NULL,NULL),(1516,'loose_4','','YOU HAVE','YOU HAVE',315,NULL,NULL),(1511,'read','','Read QR Code again','Read QR Code again',316,NULL,NULL),(1513,'email','','Email','Email',314,NULL,NULL),(1514,'register','','Register','Register',314,NULL,NULL),(1508,'space7','','','',315,NULL,NULL),(1510,'wait','','Wait for your turn!','Wait for your turn!',316,NULL,NULL),(1515,'loose_3','','TRY AGAIN','TRY AGAIN',315,NULL,NULL),(1506,'space5','','','',315,NULL,NULL),(1505,'space4','','','',315,NULL,NULL),(1503,'space2','','','',315,NULL,NULL),(1504,'space3','','','',315,NULL,NULL),(1502,'space','','','',315,NULL,NULL),(1501,'win_2','','CHECK YOUR EMAIL','CHECK YOUR EMAIL',315,NULL,NULL),(1512,'name','','Name','Name',314,NULL,NULL),(2259,'data',NULL,'2014-06-16 12:20:12','2014-06-16 12:20:12',456,NULL,NULL),(2258,'email',NULL,'paulofernandes@dr.com','paulofernandes@dr.com',456,NULL,NULL),(2256,'premio',NULL,'','',455,NULL,NULL),(2257,'nome',NULL,'Paulo','Paulo',456,NULL,NULL),(2254,'data',NULL,'2014-06-16 12:19:19','2014-06-16 12:19:19',455,NULL,NULL),(2255,'unique_id',NULL,'0b407d3e95f1a04da1c0d28524fbcc9b','0b407d3e95f1a04da1c0d28524fbcc9b',455,NULL,NULL),(2260,'unique_id',NULL,'c6b7086f594b98b5906150b7672f01d5','c6b7086f594b98b5906150b7672f01d5',456,NULL,NULL),(2253,'email',NULL,'paulofernandes@tarambola.pt','paulofernandes@tarambola.pt',455,NULL,NULL),(2251,'premio',NULL,'4','4',454,NULL,NULL),(2252,'nome',NULL,'Paulo','Paulo',455,NULL,NULL),(2250,'unique_id',NULL,'fb11941da433803b2e40d5a74683774f','fb11941da433803b2e40d5a74683774f',454,NULL,NULL),(2249,'data',NULL,'2014-06-13 16:19:54','2014-06-13 16:19:54',454,NULL,NULL),(2248,'email',NULL,'paulortcunha@hotmail.com','paulortcunha@hotmail.com',454,NULL,NULL),(2247,'nome',NULL,'paulo','paulo',454,NULL,NULL),(1499,'loose_2','','TRY AGAIN TOMORROW','TRY AGAIN TOMORROW',315,NULL,NULL),(1500,'win_1','','CONGRATS!','CONGRATS!',315,NULL,NULL),(1497,'slot_2','','PRESS ROLL','PRESS ROLL',315,NULL,NULL),(1498,'loose_1','','BAD LUCK!','BAD LUCK!',315,NULL,NULL),(1495,'connect_3','','PLAY AND WIN PRIZES','PLAY AND WIN PRIZES',315,NULL,NULL),(1496,'slot_1','','IT\'S YOUR TURN','IT\'S YOUR TURN',315,NULL,NULL),(1494,'connect_2','','READ THE QRCODE','READ THE QRCODE',315,NULL,NULL),(1493,'connect_1','','CONNECT TO WI-FI','CONNECT TO WI-FI',315,NULL,NULL),(1485,'nr_premios','','','',311,NULL,NULL),(1486,'body','','','',312,NULL,NULL),(1866,'texto2','','Use this email to reclaim your prize.','Use this email to reclaim your prize.',368,NULL,NULL),(1865,'texto1','','You won:','You won:',368,NULL,NULL),(1864,'titulo','','Slotmachine BOOM BAP Congrats','Slotmachine BOOM BAP Congrats',368,NULL,NULL),(2246,'premio',NULL,'','',453,NULL,NULL),(2245,'unique_id',NULL,'60e3d2ffc409a31538c429c8c5ce052f','60e3d2ffc409a31538c429c8c5ce052f',453,NULL,NULL),(2244,'data',NULL,'2014-06-13 16:18:05','2014-06-13 16:18:05',453,NULL,NULL),(2243,'email',NULL,'goncalo.f.salvado@gmail.com','goncalo.f.salvado@gmail.com',453,NULL,NULL),(2241,'premio',NULL,'','',452,NULL,NULL),(2242,'nome',NULL,'goncalo','goncalo',453,NULL,NULL),(2240,'unique_id',NULL,'b30a8b03ac6dfc2bdce67969f4de8cde','b30a8b03ac6dfc2bdce67969f4de8cde',452,NULL,NULL),(2239,'data',NULL,'2014-06-13 16:17:05','2014-06-13 16:17:05',452,NULL,NULL),(2238,'email',NULL,'rsantos.geral@gmail.com','rsantos.geral@gmail.com',452,NULL,NULL),(2236,'premio',NULL,'','',451,NULL,NULL),(2237,'nome',NULL,'Santos','Santos',452,NULL,NULL),(2234,'data',NULL,'2014-06-13 16:16:09','2014-06-13 16:16:09',451,NULL,NULL),(2235,'unique_id',NULL,'f687253bfdda89bffe1111d54d845fed','f687253bfdda89bffe1111d54d845fed',451,NULL,NULL),(2261,'premio',NULL,'','',456,NULL,NULL),(2262,'nome',NULL,'Paulo','Paulo',457,NULL,NULL),(2210,'unique_id',NULL,'f66a31ee44f332959aac7232f70f4b38','f66a31ee44f332959aac7232f70f4b38',446,NULL,NULL),(2209,'data',NULL,'2014-06-13 16:06:29','2014-06-13 16:06:29',446,NULL,NULL),(2208,'email',NULL,'jbjbjbu@mail.com','jbjbjbu@mail.com',446,NULL,NULL),(2206,'premio',NULL,'','',445,NULL,NULL),(2207,'nome',NULL,'Uh humor','Uh humor',446,NULL,NULL),(2204,'data',NULL,'2014-06-13 16:05:21','2014-06-13 16:05:21',445,NULL,NULL),(2205,'unique_id',NULL,'f957c05fbcdc5da4c974f9771a20af20','f957c05fbcdc5da4c974f9771a20af20',445,NULL,NULL),(2267,'nome',NULL,'Saras','Saras',458,NULL,NULL),(2266,'premio',NULL,'1','1',457,NULL,NULL),(2229,'data',NULL,'2014-06-13 16:14:17','2014-06-13 16:14:17',450,NULL,NULL),(2228,'email',NULL,'paulortcunha@hotmail.vom','paulortcunha@hotmail.vom',450,NULL,NULL),(2226,'premio',NULL,'','',449,NULL,NULL),(2227,'nome',NULL,'paulo','paulo',450,NULL,NULL),(2221,'premio',NULL,'','',448,NULL,NULL),(2222,'nome',NULL,'Santos','Santos',449,NULL,NULL),(2223,'email',NULL,'rsantos.geral@gmail.com','rsantos.geral@gmail.com',449,NULL,NULL),(2224,'data',NULL,'2014-06-13 16:12:15','2014-06-13 16:12:15',449,NULL,NULL),(2225,'unique_id',NULL,'f6aa16b51ab72a2b513b66a512727e3b','f6aa16b51ab72a2b513b66a512727e3b',449,NULL,NULL),(2265,'unique_id',NULL,'b7858f39ad0cabaa5e8bbf2a798e6cad','b7858f39ad0cabaa5e8bbf2a798e6cad',457,NULL,NULL),(2264,'data',NULL,'2014-06-16 12:24:30','2014-06-16 12:24:30',457,NULL,NULL),(2263,'email',NULL,'paulofernandes@tarambola.pt','paulofernandes@tarambola.pt',457,NULL,NULL),(2220,'unique_id',NULL,'63cb7e6a8b10945098364a15579d81a3','63cb7e6a8b10945098364a15579d81a3',448,NULL,NULL),(2219,'data',NULL,'2014-06-13 16:10:56','2014-06-13 16:10:56',448,NULL,NULL),(2218,'email',NULL,'miguelareiasmarques@gmail.com','miguelareiasmarques@gmail.com',448,NULL,NULL),(2214,'data',NULL,'2014-06-13 16:07:53','2014-06-13 16:07:53',447,NULL,NULL),(2213,'email',NULL,'ricardo_aimar21@hotmail.com','ricardo_aimar21@hotmail.com',447,NULL,NULL),(2212,'nome',NULL,'Ricardo','Ricardo',447,NULL,NULL),(2211,'premio',NULL,'','',446,NULL,NULL),(2233,'email',NULL,'miguelareiasmarques@gmail.com','miguelareiasmarques@gmail.com',451,NULL,NULL),(2231,'premio',NULL,'','',450,NULL,NULL),(2232,'nome',NULL,'Migas','Migas',451,NULL,NULL),(2230,'unique_id',NULL,'f58cc0c559cba177ff1b19d119cd064a','f58cc0c559cba177ff1b19d119cd064a',450,NULL,NULL),(2217,'nome',NULL,'Migas','Migas',448,NULL,NULL),(2216,'premio',NULL,'','',447,NULL,NULL),(2215,'unique_id',NULL,'480d74c7ca4431f8995b4af2b6ae07e7','480d74c7ca4431f8995b4af2b6ae07e7',447,NULL,NULL),(2203,'email',NULL,'uugugy@mail.com','uugugy@mail.com',445,NULL,NULL),(2201,'premio',NULL,'','',444,NULL,NULL),(2202,'nome',NULL,'Vivava','Vivava',445,NULL,NULL),(2200,'unique_id',NULL,'6a82b16c7cfdb9205b97a47fb2f41603','6a82b16c7cfdb9205b97a47fb2f41603',444,NULL,NULL),(2199,'data',NULL,'2014-06-13 16:04:32','2014-06-13 16:04:32',444,NULL,NULL),(2198,'email',NULL,'hdjdjd@mail.com','hdjdjd@mail.com',444,NULL,NULL),(2197,'nome',NULL,'Dudud','Dudud',444,NULL,NULL),(2196,'premio',NULL,'','',443,NULL,NULL),(2270,'unique_id',NULL,'6fd8a5aa37a2ea58d8768705340a440a','6fd8a5aa37a2ea58d8768705340a440a',458,NULL,NULL),(2269,'data',NULL,'2014-07-01 16:18:08','2014-07-01 16:18:08',458,NULL,NULL),(2268,'email',NULL,'sarateles@netcabo.pt','sarateles@netcabo.pt',458,NULL,NULL),(2195,'unique_id',NULL,'4585fa8d8239dddeef36154148c63493','4585fa8d8239dddeef36154148c63493',443,NULL,NULL),(2194,'data',NULL,'2014-06-13 16:03:04','2014-06-13 16:03:04',443,NULL,NULL),(2193,'email',NULL,'mmarques@mmabranding.com','mmarques@mmabranding.com',443,NULL,NULL),(2192,'nome',NULL,'Miguel','Miguel',443,NULL,NULL),(2271,'premio',NULL,'','',458,NULL,NULL),(2272,'nome',NULL,'paulo','paulo',459,NULL,NULL),(2273,'email',NULL,'paulortcunha@hotmail.com','paulortcunha@hotmail.com',459,NULL,NULL),(2274,'data',NULL,'2014-07-01 16:19:24','2014-07-01 16:19:24',459,NULL,NULL),(2275,'unique_id',NULL,'2c0e481ccabaf34a08d8c02468667c66','2c0e481ccabaf34a08d8c02468667c66',459,NULL,NULL),(2276,'premio',NULL,'','',459,NULL,NULL),(2352,'nome',NULL,'Paulo','Paulo',475,NULL,NULL),(2277,'nome',NULL,'Paulo','Paulo',460,NULL,NULL),(2278,'email',NULL,'paulofernandes@tarambola.pt','paulofernandes@tarambola.pt',460,NULL,NULL),(2279,'data',NULL,'2014-07-01 20:34:03','2014-07-01 20:34:03',460,NULL,NULL),(2280,'unique_id',NULL,'f2e67b112c96a036c0b5690ed6daca4b','f2e67b112c96a036c0b5690ed6daca4b',460,NULL,NULL),(2281,'premio',NULL,'','',460,NULL,NULL),(2282,'nome',NULL,'Sara','Sara',461,NULL,NULL),(2283,'email',NULL,'sarateles@netcabo.pt','sarateles@netcabo.pt',461,NULL,NULL),(2284,'data',NULL,'2014-07-02 15:54:54','2014-07-02 15:54:54',461,NULL,NULL),(2285,'unique_id',NULL,'624257d27131801673390fa99e7d43d5','624257d27131801673390fa99e7d43d5',461,NULL,NULL),(2286,'premio',NULL,'','',461,NULL,NULL),(2287,'nome',NULL,'Sara','Sara',462,NULL,NULL),(2288,'email',NULL,'sarateles@netcabo.pt','sarateles@netcabo.pt',462,NULL,NULL),(2289,'data',NULL,'2014-07-02 16:06:23','2014-07-02 16:06:23',462,NULL,NULL),(2290,'unique_id',NULL,'69ef19fba966d6bf9de66537209ad197','69ef19fba966d6bf9de66537209ad197',462,NULL,NULL),(2291,'premio',NULL,'','',462,NULL,NULL),(2292,'nome',NULL,'Paulo','Paulo',463,NULL,NULL),(2293,'email',NULL,'paulo@mail.com','paulo@mail.com',463,NULL,NULL),(2294,'data',NULL,'2014-07-02 16:09:32','2014-07-02 16:09:32',463,NULL,NULL),(2295,'unique_id',NULL,'40607dcee6f151207f6cee10538f03b8','40607dcee6f151207f6cee10538f03b8',463,NULL,NULL),(2296,'premio',NULL,'','',463,NULL,NULL),(2297,'nome',NULL,'Sara','Sara',464,NULL,NULL),(2298,'email',NULL,'sarateles@netcabo.pt','sarateles@netcabo.pt',464,NULL,NULL),(2299,'data',NULL,'2014-07-02 16:16:14','2014-07-02 16:16:14',464,NULL,NULL),(2300,'unique_id',NULL,'0b6c41275c30fdc9119bd7e1c79a7cd9','0b6c41275c30fdc9119bd7e1c79a7cd9',464,NULL,NULL),(2301,'premio',NULL,'','',464,NULL,NULL),(2302,'nome',NULL,'Paulo','Paulo',465,NULL,NULL),(2303,'email',NULL,'paulofernandes@tarambola.pt','paulofernandes@tarambola.pt',465,NULL,NULL),(2304,'data',NULL,'2014-07-02 17:07:12','2014-07-02 17:07:12',465,NULL,NULL),(2305,'unique_id',NULL,'5f335b2699d99f0676b69d92c18d8148','5f335b2699d99f0676b69d92c18d8148',465,NULL,NULL),(2306,'premio',NULL,'','',465,NULL,NULL),(2307,'nome',NULL,'Teles','Teles',466,NULL,NULL),(2308,'email',NULL,'info@boombapwear.com','info@boombapwear.com',466,NULL,NULL),(2309,'data',NULL,'2014-07-07 17:39:50','2014-07-07 17:39:50',466,NULL,NULL),(2310,'unique_id',NULL,'189cf3e2e33beb56c41cf757326be7fb','189cf3e2e33beb56c41cf757326be7fb',466,NULL,NULL),(2311,'premio',NULL,'','',466,NULL,NULL),(2312,'nome',NULL,'Teles','Teles',467,NULL,NULL),(2313,'email',NULL,'sales@boombapwear.com','sales@boombapwear.com',467,NULL,NULL),(2314,'data',NULL,'2014-07-07 17:44:09','2014-07-07 17:44:09',467,NULL,NULL),(2315,'unique_id',NULL,'90c09b38ee11c4bef46bd7989c0994d7','90c09b38ee11c4bef46bd7989c0994d7',467,NULL,NULL),(2316,'premio',NULL,'','',467,NULL,NULL),(2317,'nome',NULL,'Paulo','Paulo',468,NULL,NULL),(2318,'email',NULL,'paulo@mail.com','paulo@mail.com',468,NULL,NULL),(2319,'data',NULL,'2014-07-07 17:50:35','2014-07-07 17:50:35',468,NULL,NULL),(2320,'unique_id',NULL,'ac4eb4b8ad07776e0825da858a37998b','ac4eb4b8ad07776e0825da858a37998b',468,NULL,NULL),(2321,'premio',NULL,'','',468,NULL,NULL),(2322,'nome',NULL,'Paulo','Paulo',469,NULL,NULL),(2323,'email',NULL,'paulo@mail.com','paulo@mail.com',469,NULL,NULL),(2324,'data',NULL,'2014-07-07 18:10:56','2014-07-07 18:10:56',469,NULL,NULL),(2325,'unique_id',NULL,'3b095fcb932bfd0b50a68df081bead58','3b095fcb932bfd0b50a68df081bead58',469,NULL,NULL),(2326,'premio',NULL,'','',469,NULL,NULL),(2327,'nome',NULL,'Há','Há',470,NULL,NULL),(2328,'email',NULL,'paulo@mail.com','paulo@mail.com',470,NULL,NULL),(2329,'data',NULL,'2014-07-07 18:17:26','2014-07-07 18:17:26',470,NULL,NULL),(2330,'unique_id',NULL,'b70a45838a2354bc2a96c74772425f2c','b70a45838a2354bc2a96c74772425f2c',470,NULL,NULL),(2331,'premio',NULL,'','',470,NULL,NULL),(2332,'nome',NULL,'Teles','Teles',471,NULL,NULL),(2333,'email',NULL,'info@boombapwear.com','info@boombapwear.com',471,NULL,NULL),(2334,'data',NULL,'2014-07-07 19:17:12','2014-07-07 19:17:12',471,NULL,NULL),(2335,'unique_id',NULL,'5f6978ecff7dcc146a0592a2c7b0b3ad','5f6978ecff7dcc146a0592a2c7b0b3ad',471,NULL,NULL),(2336,'premio',NULL,'','',471,NULL,NULL),(2337,'nome',NULL,'Paulo','Paulo',472,NULL,NULL),(2338,'email',NULL,'pauloee@mail.com','pauloee@mail.com',472,NULL,NULL),(2339,'data',NULL,'2014-07-07 19:22:31','2014-07-07 19:22:31',472,NULL,NULL),(2340,'unique_id',NULL,'044c4873d175e50e9c5c6ae688a4c503','044c4873d175e50e9c5c6ae688a4c503',472,NULL,NULL),(2341,'premio',NULL,'','',472,NULL,NULL),(2342,'nome',NULL,'Teles','Teles',473,NULL,NULL),(2343,'email',NULL,'info@boombapwear.com','info@boombapwear.com',473,NULL,NULL),(2344,'data',NULL,'2014-07-08 08:25:39','2014-07-08 08:25:39',473,NULL,NULL),(2345,'unique_id',NULL,'22a2e93d0ebb6e1c35fe5e37f8b86411','22a2e93d0ebb6e1c35fe5e37f8b86411',473,NULL,NULL),(2346,'premio',NULL,'','',473,NULL,NULL),(2347,'nome',NULL,'T','T',474,NULL,NULL),(2348,'email',NULL,'sales@boombapwear.com','sales@boombapwear.com',474,NULL,NULL),(2349,'data',NULL,'2014-07-08 10:43:58','2014-07-08 10:43:58',474,NULL,NULL),(2350,'unique_id',NULL,'fbb7e8e709199f66afb6044b56cdd23a','fbb7e8e709199f66afb6044b56cdd23a',474,NULL,NULL),(2351,'premio',NULL,'','',474,NULL,NULL),(2353,'email',NULL,'paulofernandes@tarambola.pt','paulofernandes@tarambola.pt',475,NULL,NULL),(2354,'data',NULL,'2014-08-13 11:07:03','2014-08-13 11:07:03',475,NULL,NULL),(2355,'unique_id',NULL,'ccf0024ea69edda45484bbcb5fab867d','ccf0024ea69edda45484bbcb5fab867d',475,NULL,NULL),(2356,'premio',NULL,'','',475,NULL,NULL),(2357,'nome',NULL,'Paulo','Paulo',476,NULL,NULL),(2358,'email',NULL,'hshshshs@mail.com','hshshshs@mail.com',476,NULL,NULL),(2359,'data',NULL,'2014-08-13 11:25:50','2014-08-13 11:25:50',476,NULL,NULL),(2360,'unique_id',NULL,'bdaf61471a480ded35e35136f1a23acf','bdaf61471a480ded35e35136f1a23acf',476,NULL,NULL),(2361,'premio',NULL,'','',476,NULL,NULL),(2362,'nome',NULL,'Paulo','Paulo',477,NULL,NULL),(2363,'email',NULL,'paulofernandes@tarambola.pt','paulofernandes@tarambola.pt',477,NULL,NULL),(2364,'data',NULL,'2014-08-13 11:37:27','2014-08-13 11:37:27',477,NULL,NULL),(2365,'unique_id',NULL,'659b942bfc910b1d6543fad9891e928c','659b942bfc910b1d6543fad9891e928c',477,NULL,NULL),(2366,'premio',NULL,'','',477,NULL,NULL),(2367,'nome',NULL,'ijdssah','ijdssah',478,NULL,NULL),(2368,'email',NULL,'sdkjfhdsjofhsd@mail.com','sdkjfhdsjofhsd@mail.com',478,NULL,NULL),(2369,'data',NULL,'2014-08-13 11:49:49','2014-08-13 11:49:49',478,NULL,NULL),(2370,'unique_id',NULL,'43e63cc783602d9fc004705132712ed4','43e63cc783602d9fc004705132712ed4',478,NULL,NULL),(2371,'premio',NULL,'','',478,NULL,NULL),(2372,'nome',NULL,'Hshs','Hshs',479,NULL,NULL),(2373,'email',NULL,'hshs@mail.com','hshs@mail.com',479,NULL,NULL),(2374,'data',NULL,'2014-08-13 12:00:02','2014-08-13 12:00:02',479,NULL,NULL),(2375,'unique_id',NULL,'c117c44a4ca232809ffa166b35c7e160','c117c44a4ca232809ffa166b35c7e160',479,NULL,NULL),(2376,'premio',NULL,'','',479,NULL,NULL),(2377,'nome',NULL,'Hshsh','Hshsh',480,NULL,NULL),(2378,'email',NULL,'gshshs@mail.com','gshshs@mail.com',480,NULL,NULL),(2379,'data',NULL,'2014-08-13 12:00:33','2014-08-13 12:00:33',480,NULL,NULL),(2380,'unique_id',NULL,'62ea7121c9a8ff110d0d360d1025e0e3','62ea7121c9a8ff110d0d360d1025e0e3',480,NULL,NULL),(2381,'premio',NULL,'','',480,NULL,NULL),(2382,'nome',NULL,'dasdasd','dasdasd',481,NULL,NULL),(2383,'email',NULL,'dasdasdas@mail.com','dasdasdas@mail.com',481,NULL,NULL),(2384,'data',NULL,'2014-08-13 12:02:22','2014-08-13 12:02:22',481,NULL,NULL),(2385,'unique_id',NULL,'79ce23b082880f750a29a5d465af0ec3','79ce23b082880f750a29a5d465af0ec3',481,NULL,NULL),(2386,'premio',NULL,'','',481,NULL,NULL),(2387,'nome',NULL,'Dhbd','Dhbd',482,NULL,NULL),(2388,'email',NULL,'hshshs@mail.com','hshshs@mail.com',482,NULL,NULL),(2389,'data',NULL,'2014-08-13 12:10:01','2014-08-13 12:10:01',482,NULL,NULL),(2390,'unique_id',NULL,'63978659a4e2a93f00784f5826d76efa','63978659a4e2a93f00784f5826d76efa',482,NULL,NULL),(2391,'premio',NULL,'','',482,NULL,NULL),(2392,'nome',NULL,'fdfdsfdsfds','fdfdsfdsfds',483,NULL,NULL),(2393,'email',NULL,'fsdfsdfds@mail.com','fsdfsdfds@mail.com',483,NULL,NULL),(2394,'data',NULL,'2014-08-13 12:13:40','2014-08-13 12:13:40',483,NULL,NULL),(2395,'unique_id',NULL,'156762f1bc09d1fff6b8cc10133eb703','156762f1bc09d1fff6b8cc10133eb703',483,NULL,NULL),(2396,'premio',NULL,'','',483,NULL,NULL),(2397,'nome',NULL,'bvcbcvbcxv','bvcbcvbcxv',484,NULL,NULL),(2398,'email',NULL,'bcvbcxvbcv@mail.com','bcvbcxvbcv@mail.com',484,NULL,NULL),(2399,'data',NULL,'2014-08-13 12:15:37','2014-08-13 12:15:37',484,NULL,NULL),(2400,'unique_id',NULL,'8fe33d7f01904c3f7eb1977cc814472c','8fe33d7f01904c3f7eb1977cc814472c',484,NULL,NULL),(2401,'premio',NULL,'','',484,NULL,NULL),(2402,'nome',NULL,'dasdas','dasdas',485,NULL,NULL),(2403,'email',NULL,'dsadass@mail.com','dsadass@mail.com',485,NULL,NULL),(2404,'data',NULL,'2014-08-13 12:17:09','2014-08-13 12:17:09',485,NULL,NULL),(2405,'unique_id',NULL,'1d87de9fe63f328182f037c2d25e16cc','1d87de9fe63f328182f037c2d25e16cc',485,NULL,NULL),(2406,'premio',NULL,'','',485,NULL,NULL),(2407,'nome',NULL,'Hshshs','Hshshs',486,NULL,NULL),(2408,'email',NULL,'hshsh@mail.com','hshsh@mail.com',486,NULL,NULL),(2409,'data',NULL,'2014-08-13 12:28:22','2014-08-13 12:28:22',486,NULL,NULL),(2410,'unique_id',NULL,'e87359073c538cc2b82ff7ef2d0f79ed','e87359073c538cc2b82ff7ef2d0f79ed',486,NULL,NULL),(2411,'premio',NULL,'','',486,NULL,NULL),(2412,'nome',NULL,'dsadsad','dsadsad',487,NULL,NULL),(2413,'email',NULL,'dasdsad@mail.com','dasdsad@mail.com',487,NULL,NULL),(2414,'data',NULL,'2014-08-13 12:29:09','2014-08-13 12:29:09',487,NULL,NULL),(2415,'unique_id',NULL,'1a228fc4481c372deac6ff060ee9f663','1a228fc4481c372deac6ff060ee9f663',487,NULL,NULL),(2416,'premio',NULL,'','',487,NULL,NULL),(2417,'nome',NULL,'dsadasdas','dsadasdas',488,NULL,NULL),(2418,'email',NULL,'dsadas@mail.com','dsadas@mail.com',488,NULL,NULL),(2419,'data',NULL,'2014-08-13 12:49:23','2014-08-13 12:49:23',488,NULL,NULL),(2420,'unique_id',NULL,'564a74ca4e9d27eadda6b4d70d54f5de','564a74ca4e9d27eadda6b4d70d54f5de',488,NULL,NULL),(2421,'premio',NULL,'','',488,NULL,NULL),(2422,'nome',NULL,'dsadasdasdasa','dsadasdasdasa',489,NULL,NULL),(2423,'email',NULL,'asasasa@mail.com','asasasa@mail.com',489,NULL,NULL),(2424,'data',NULL,'2014-08-13 12:50:40','2014-08-13 12:50:40',489,NULL,NULL),(2425,'unique_id',NULL,'e520bf9d269a0877ed6bf5b806058af0','e520bf9d269a0877ed6bf5b806058af0',489,NULL,NULL),(2426,'premio',NULL,'','',489,NULL,NULL),(2427,'nome',NULL,'sadsa','sadsa',490,NULL,NULL),(2428,'email',NULL,'qqqqq@mail.com','qqqqq@mail.com',490,NULL,NULL),(2429,'data',NULL,'2014-08-13 12:53:03','2014-08-13 12:53:03',490,NULL,NULL),(2430,'unique_id',NULL,'1cd298f29b211056ac263d5cba88d378','1cd298f29b211056ac263d5cba88d378',490,NULL,NULL),(2431,'premio',NULL,'','',490,NULL,NULL),(2442,'nome',NULL,'Hshsh','Hshsh',493,NULL,NULL),(2432,'nome',NULL,'saSAs','saSAs',491,NULL,NULL),(2433,'email',NULL,'wwwww@mail.com','wwwww@mail.com',491,NULL,NULL),(2434,'data',NULL,'2014-08-13 12:55:46','2014-08-13 12:55:46',491,NULL,NULL),(2435,'unique_id',NULL,'fef8ba9cb3fe6b430015f34a90726cec','fef8ba9cb3fe6b430015f34a90726cec',491,NULL,NULL),(2436,'premio',NULL,'','',491,NULL,NULL),(2437,'nome',NULL,'Hshsh','Hshsh',492,NULL,NULL),(2438,'email',NULL,'aaa@mail.con','aaa@mail.con',492,NULL,NULL),(2439,'data',NULL,'2014-08-13 12:56:28','2014-08-13 12:56:28',492,NULL,NULL),(2440,'unique_id',NULL,'98a2d6a2ad4d1a64fb29e574f95b7fc8','98a2d6a2ad4d1a64fb29e574f95b7fc8',492,NULL,NULL),(2441,'premio',NULL,'','',492,NULL,NULL),(2443,'email',NULL,'bbb@mail.com','bbb@mail.com',493,NULL,NULL),(2444,'data',NULL,'2014-08-13 12:57:36','2014-08-13 12:57:36',493,NULL,NULL),(2445,'unique_id',NULL,'d22050e994968ffba4442de8ea58dda6','d22050e994968ffba4442de8ea58dda6',493,NULL,NULL),(2446,'premio',NULL,'','',493,NULL,NULL),(2447,'nome',NULL,'Hshsh','Hshsh',494,NULL,NULL),(2448,'email',NULL,'hshshsmail@mail.com','hshshsmail@mail.com',494,NULL,NULL),(2449,'data',NULL,'2014-08-13 12:59:40','2014-08-13 12:59:40',494,NULL,NULL),(2450,'unique_id',NULL,'c425a3222ab5258775645cc9934ed600','c425a3222ab5258775645cc9934ed600',494,NULL,NULL),(2451,'premio',NULL,'','',494,NULL,NULL),(2452,'nome',NULL,'Pajah','Pajah',495,NULL,NULL),(2453,'email',NULL,'hHa@mail.com','hHa@mail.com',495,NULL,NULL),(2454,'data',NULL,'2014-09-09 17:21:27','2014-09-09 17:21:27',495,NULL,NULL),(2455,'unique_id',NULL,'bd2aa13ff8f88963c8f52fea8039d653','bd2aa13ff8f88963c8f52fea8039d653',495,NULL,NULL),(2456,'premio',NULL,'','',495,NULL,NULL),(2457,'nome',NULL,'Sara Teles','Sara Teles',496,NULL,NULL),(2458,'email',NULL,'sarateles@netcabo.pt','sarateles@netcabo.pt',496,NULL,NULL),(2459,'data',NULL,'2014-09-24 11:48:58','2014-09-24 11:48:58',496,NULL,NULL),(2460,'unique_id',NULL,'28fb8a3594480c86cd3a01874358c1a8','28fb8a3594480c86cd3a01874358c1a8',496,NULL,NULL),(2461,'premio',NULL,'1','1',496,NULL,NULL),(2462,'nome',NULL,'Santos','Santos',497,NULL,NULL),(2463,'email',NULL,'rsantos.geral@gamil.com','rsantos.geral@gamil.com',497,NULL,NULL),(2464,'data',NULL,'2014-09-24 11:50:59','2014-09-24 11:50:59',497,NULL,NULL),(2465,'unique_id',NULL,'59efdff53c4cfa1a9496e4a4d870eed1','59efdff53c4cfa1a9496e4a4d870eed1',497,NULL,NULL),(2466,'premio',NULL,'','',497,NULL,NULL),(2467,'nome',NULL,'Santos','Santos',498,NULL,NULL),(2468,'email',NULL,'rsantos.geral@gmail.com','rsantos.geral@gmail.com',498,NULL,NULL),(2469,'data',NULL,'2014-09-24 11:52:41','2014-09-24 11:52:41',498,NULL,NULL),(2470,'unique_id',NULL,'c66db7a9666807de5c3f67e0298182e1','c66db7a9666807de5c3f67e0298182e1',498,NULL,NULL),(2471,'premio',NULL,'','',498,NULL,NULL),(2472,'nome',NULL,'Sara Teles','Sara Teles',499,NULL,NULL),(2473,'email',NULL,'sarateles@netcabo.pt','sarateles@netcabo.pt',499,NULL,NULL),(2474,'data',NULL,'2014-09-24 11:54:16','2014-09-24 11:54:16',499,NULL,NULL),(2475,'unique_id',NULL,'fa492a94df5cf6b3b6f3ecc193e09bfc','fa492a94df5cf6b3b6f3ecc193e09bfc',499,NULL,NULL),(2476,'premio',NULL,'','',499,NULL,NULL),(2477,'nome',NULL,'Miguel','Miguel',500,NULL,NULL),(2478,'email',NULL,'miguelareiasmarques@gmail.com','miguelareiasmarques@gmail.com',500,NULL,NULL),(2479,'data',NULL,'2014-09-24 12:18:14','2014-09-24 12:18:14',500,NULL,NULL),(2480,'unique_id',NULL,'8fb58a7c2b08063bf0baeafa9da3d7b0','8fb58a7c2b08063bf0baeafa9da3d7b0',500,NULL,NULL),(2481,'premio',NULL,'4','4',500,NULL,NULL),(2482,'nome',NULL,'Santos','Santos',501,NULL,NULL),(2483,'email',NULL,'rsantos.geral@gmail.com','rsantos.geral@gmail.com',501,NULL,NULL),(2484,'data',NULL,'2014-09-24 12:19:19','2014-09-24 12:19:19',501,NULL,NULL),(2485,'unique_id',NULL,'b7272c07833a11e9ffded144fa808344','b7272c07833a11e9ffded144fa808344',501,NULL,NULL),(2486,'premio',NULL,'','',501,NULL,NULL),(2487,'nome',NULL,'Santos','Santos',502,NULL,NULL),(2488,'email',NULL,'rsantos.geral@gmail.com','rsantos.geral@gmail.com',502,NULL,NULL),(2489,'data',NULL,'2014-09-24 12:21:38','2014-09-24 12:21:38',502,NULL,NULL),(2490,'unique_id',NULL,'c6fa4eed87ed8673181e6f1e716f0ced','c6fa4eed87ed8673181e6f1e716f0ced',502,NULL,NULL),(2491,'premio',NULL,'','',502,NULL,NULL),(2492,'nome',NULL,'Paulo','Paulo',503,NULL,NULL),(2493,'email',NULL,'paulo@mail.com','paulo@mail.com',503,NULL,NULL),(2494,'data',NULL,'2016-01-26 18:36:54','2016-01-26 18:36:54',503,NULL,NULL),(2495,'unique_id',NULL,'a4f6cdc67d777aeb2f3bf643c7f4ad0b','a4f6cdc67d777aeb2f3bf643c7f4ad0b',503,NULL,NULL),(2496,'premio',NULL,'','',503,NULL,NULL),(2497,'nome',NULL,'Paulo ','Paulo ',504,NULL,NULL),(2498,'email',NULL,'paulo@mail.com','paulo@mail.com',504,NULL,NULL),(2499,'data',NULL,'2016-01-26 18:38:04','2016-01-26 18:38:04',504,NULL,NULL),(2500,'unique_id',NULL,'19701c88af91d375faa787c086263778','19701c88af91d375faa787c086263778',504,NULL,NULL),(2501,'premio',NULL,'1','1',504,NULL,NULL),(2502,'nome',NULL,'Rui rebelo','Rui rebelo',505,NULL,NULL),(2503,'email',NULL,'a@gmail.com','a@gmail.com',505,NULL,NULL),(2504,'data',NULL,'2016-01-27 17:32:14','2016-01-27 17:32:14',505,NULL,NULL),(2505,'unique_id',NULL,'c1c67fc62f9145c2c62a5492adf798cf','c1c67fc62f9145c2c62a5492adf798cf',505,NULL,NULL),(2506,'premio',NULL,'','',505,NULL,NULL),(2507,'nome',NULL,'Rui Rebelo','Rui Rebelo',506,NULL,NULL),(2508,'email',NULL,'mail@mail.com','mail@mail.com',506,NULL,NULL),(2509,'data',NULL,'2016-01-27 17:37:12','2016-01-27 17:37:12',506,NULL,NULL),(2510,'unique_id',NULL,'0d0bbddf86ea2f4c055b6149b2f16799','0d0bbddf86ea2f4c055b6149b2f16799',506,NULL,NULL),(2511,'premio',NULL,'','',506,NULL,NULL),(2512,'nome',NULL,'Rui rebelo','Rui rebelo',507,NULL,NULL),(2513,'email',NULL,'name@mail.com','name@mail.com',507,NULL,NULL),(2514,'data',NULL,'2016-01-27 17:39:00','2016-01-27 17:39:00',507,NULL,NULL),(2515,'unique_id',NULL,'9adb2613c02088b3e2bfecbde39d8992','9adb2613c02088b3e2bfecbde39d8992',507,NULL,NULL),(2516,'premio',NULL,'3','3',507,NULL,NULL);
/*!40000 ALTER TABLE `tara_page_part` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tara_page_part_forms`
--

DROP TABLE IF EXISTS `tara_page_part_forms`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tara_page_part_forms` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `definition` text,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tara_page_part_forms`
--

LOCK TABLES `tara_page_part_forms` WRITE;
/*!40000 ALTER TABLE `tara_page_part_forms` DISABLE KEYS */;
INSERT INTO `tara_page_part_forms` (`id`, `name`, `definition`) VALUES (1,'form','titulo_en:\r\n type:\"text\"\r\n title:\"Título EN:\"\r\nspace:\r\n type:\"space\"\r\n title:\"\"\r\nlead:\r\n type:\"page_part\"\r\n title:\"Lead PT:\"\r\nlead_en:\r\n type:\"page_part\"\r\n title:\"Lead EN:\"\r\ndescricao:\r\n type:\"page_part\"\r\n title:\"Descrição PT:\"\r\ndescricao_en:\r\n type:\"page_part\"\r\n title:\"Descrição EN:\"\r\nimagem_list:\r\n type:\"image\"\r\n title:\"Imagem para listagem:\"\r\nimagem:\r\n type:\"image\"\r\n title:\"Imagens:\"'),(2,'form2','titulo_en:\r\n type:\"text\"\r\n title:\"Título EN:\"\r\nspace:\r\n type:\"space\"\r\n title:\"\"\r\nlead:\r\n type:\"page_part\"\r\n title:\"Lead PT:\"\r\nlead_en:\r\n type:\"page_part\"\r\n title:\"Lead EN:\"'),(3,'screen_msg','connect_1:\r\n type:text\r\n title:\"Mensagem QRCode Screen 1:\"\r\nconnect_2:\r\n type:text\r\n title:\"Mensagem QRCode Screen 2:\"\r\nconnect_3:\r\n type:text\r\n title:\"Mensagem QRCode Screen 3:\"\r\nspace:\r\n type:\"space\"\r\n title:\"\"\r\nspace2:\r\n type:\"space\"\r\n title:\"\"\r\nspace3:\r\n type:\"space\"\r\n title:\"\"\r\nslot_1:\r\n type:text\r\n title:\"Mensagem Slot Screen 1:\"\r\nslot_2:\r\n type:text\r\n title:\"Mensagem Slot Screen 2:\"\r\nspace4:\r\n type:\"space\"\r\n title:\"\"\r\nspace5:\r\n type:\"space\"\r\n title:\"\"\r\nloose_1:\r\n type:text\r\n title:\"Mensagem Loose Screen 1:\"\r\nloose_2:\r\n type:text\r\n title:\"Mensagem Loose Screen 2 (Sem tentativas):\"\r\nloose_3:\r\n type:text\r\n title:\"Mensagem Loose Screen 3 (Com tentativas 1):\"\r\nloose_4:\r\n type:text\r\n title:\"Mensagem Loose Screen 4 (Com tentativas 2):\"\r\nloose_5:\r\n type:text\r\n title:\"Mensagem Loose Screen 5 (Com tentativas 3):\"\r\nspace7:\r\n type:\"space\"\r\n title:\"\"\r\nspace8:\r\n type:\"space\"\r\n title:\"\"\r\nwin_1:\r\n type:text\r\n title:\"Mensagem Win Screen 1:\"\r\nwin_2:\r\n type:text\r\n title:\"Mensagem Win Screen 2:\"'),(4,'configuracoes','nr_premios:\r\n type:text\r\n title: \"Número de prémios por dia:\"\r\nclient_url:\r\n type:text\r\n title: \"URL da máquina cliente (APP):\"'),(5,'contactos','morada:\r\n type:lead\r\n title:\"Morada:\"\r\ntelefone:\r\n type:text\r\n title:\"Telefone:\"\r\ntelemovel:\r\n type:text\r\n title:\"Telemóvel:\"\r\nemail:\r\n type:text\r\n title:\"Email:\"\r\nfacebook:\r\n type:text\r\n title:\"Facebook:\"\r\nslogan:\r\n type:text\r\n title:\"Slogan:\"\r\ntexto:\r\n type:lead\r\n title:\"Texto:\"\r\nmaps:\r\n type:lead\r\n title:\"iFrame mapa:\"'),(6,'area','lead:\r\n type:text\r\n title:\"Texto:\"'),(7,'users','nome:\r\n type:text\r\n title: \"Nome:\"\r\nemail:\r\n type:text\r\n title: \"Email:\"\r\ndata:\r\n type:text\r\n title: \"Data:\"\r\npremio:\r\n type:text\r\n title: \"Prémio:\"\r\nunique_id:\r\n type:text\r\n title: \"ID:\"'),(8,'wait','wait:\r\n type:text\r\n title: \"Mensagem 1:\"\r\nread:\r\n type:text\r\n title: \"Mensagem 2:\"'),(9,'register','name:\r\n type:text\r\n title: \"Legenda 1:\"\r\nemail:\r\n type:text\r\n title: \"Leganda 2:\"\r\nregister:\r\n type:text\r\n title: \"Botão\"'),(10,'mensagens-mobile','formlabel1:\r\n type:text\r\n title: \"Label Nome:\"\r\nformlabel2:\r\n type:text\r\n title: \"Label Email:\"\r\nformbutton:\r\n type:text\r\n title: \"Botão Registo:\"\r\nvalidationwarning:\r\n type:text\r\n title: \"Alerta Validação:\"\r\nwaitwarning:\r\n type:text\r\n title: \"Alerta Aguarda a tua vez:\"\r\nesgotadaswarning:\r\n type:text\r\n title: \"Tentativas esgotadas:\"\r\njogar:\r\n type:text\r\n title: \"Botão Jogar:\"\r\nwait:\r\n type:text\r\n title: \"Msg Aguarda a tua vez 1:\"\r\nwait2:\r\n type:text\r\n title: \"Msg Aguarda a tua vez 2:\"'),(11,'mensagens-mail','titulo:\r\n type:text\r\n title: \"Mail Title:\"\r\ntexto1:\r\n type:text\r\n title: \"Text 1:\"\r\ntexto2:\r\n type:text\r\n title: \"Text 2:\"');
/*!40000 ALTER TABLE `tara_page_part_forms` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tara_page_tag`
--

DROP TABLE IF EXISTS `tara_page_tag`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tara_page_tag` (
  `page_id` int(11) unsigned NOT NULL,
  `tag_id` int(11) unsigned NOT NULL,
  UNIQUE KEY `page_id` (`page_id`,`tag_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tara_page_tag`
--

LOCK TABLES `tara_page_tag` WRITE;
/*!40000 ALTER TABLE `tara_page_tag` DISABLE KEYS */;
/*!40000 ALTER TABLE `tara_page_tag` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tara_paginas`
--

DROP TABLE IF EXISTS `tara_paginas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tara_paginas` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pagina_id` int(11) NOT NULL,
  `campos` text NOT NULL,
  `parent` tinyint(4) NOT NULL,
  `menu` tinyint(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tara_paginas`
--

LOCK TABLES `tara_paginas` WRITE;
/*!40000 ALTER TABLE `tara_paginas` DISABLE KEYS */;
INSERT INTO `tara_paginas` (`id`, `pagina_id`, `campos`, `parent`, `menu`) VALUES (7,130,'',0,0);
/*!40000 ALTER TABLE `tara_paginas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tara_paginas_log`
--

DROP TABLE IF EXISTS `tara_paginas_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tara_paginas_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ident` char(16) NOT NULL,
  `priority` int(11) NOT NULL,
  `message` varchar(255) DEFAULT NULL,
  `username` varchar(64) DEFAULT NULL,
  `created_on` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tara_paginas_log`
--

LOCK TABLES `tara_paginas_log` WRITE;
/*!40000 ALTER TABLE `tara_paginas_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `tara_paginas_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tara_permission`
--

DROP TABLE IF EXISTS `tara_permission`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tara_permission` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(25) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tara_permission`
--

LOCK TABLES `tara_permission` WRITE;
/*!40000 ALTER TABLE `tara_permission` DISABLE KEYS */;
INSERT INTO `tara_permission` (`id`, `name`) VALUES (1,'administrator'),(2,'developer'),(3,'editor');
/*!40000 ALTER TABLE `tara_permission` ENABLE KEYS */;
UNLOCK TABLES;

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
INSERT INTO `tara_plugin_settings` (`plugin_id`, `name`, `value`) VALUES ('comment','auto_approve_comment','0'),('comment','use_captcha','1'),('comment','rowspage','15'),('comment','numlabel','1'),('tinymce','version','2.0.0'),('tinymce','listpublished','1'),('tinymce','listhidden','0'),('tinymce','imagesdir','/Applications/XAMPP/xamppfiles/htdocs/escola/public/images'),('tinymce','imagesuri','/public/images'),('tinymce','cssuri','/public/themes/mylayout/mystylesheet.css'),('googlemap','version',''),('googlemap','apikey','1'),('googlemap','mapid','googlemap'),('googlemap','mapwidth','500'),('googlemap','mapheight','500'),('googlemap','mapcode','<div id=\"googlemap\"></div>'),('googlemap','sensor','false'),('googlemap','zoom','14'),('googlemap','zoomcontrol','large'),('googlemap','latitude','37.0625'),('googlemap','longitude','-95.6707'),('googlemap','markerimg',''),('googlemap','markerwidth',''),('googlemap','markerheight',''),('googlemap','html','<p style=\"width:200px\">Tarambola</p>'),('googlemap','directions','true'),('googlemap','autodisplay','true'),('easygal','cols','3'),('easygal','csssfx',''),('easygal','exts','jpg,jpeg,png,bmp,gif,svg'),('easygal','filenamedisp','2'),('easygal','lightbox','fancybox'),('easygal','rows','2'),('easygal','thumbsize','140');
/*!40000 ALTER TABLE `tara_plugin_settings` ENABLE KEYS */;
UNLOCK TABLES;

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
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tara_premios_diarios`
--

LOCK TABLES `tara_premios_diarios` WRITE;
/*!40000 ALTER TABLE `tara_premios_diarios` DISABLE KEYS */;
INSERT INTO `tara_premios_diarios` (`id`, `data`, `qtd`, `time`) VALUES (1,'2014-05-26',9,'17:55:00'),(2,'2014-06-03',0,'00:00:00'),(3,'2014-06-04',3,'11:13:41'),(4,'2014-06-05',13,'22:50:13'),(5,'2014-06-06',2,'16:42:24'),(6,'2014-06-11',6,'23:47:00'),(7,'2014-06-11',0,'00:00:00'),(8,'2014-06-11',0,'00:00:00'),(9,'2014-06-12',22,'23:28:33'),(10,'2014-06-13',4,'16:20:15'),(11,'2014-06-16',1,'12:24:59'),(12,'2014-06-26',0,'00:00:00'),(13,'2014-06-27',0,'00:00:00'),(14,'2014-07-01',0,'00:00:00'),(15,'2014-07-02',0,'00:00:00'),(16,'2014-07-03',0,'00:00:00'),(17,'2014-07-07',0,'00:00:00'),(18,'2014-07-08',0,'00:00:00'),(19,'2014-08-13',0,'00:00:00'),(20,'2014-09-09',0,'00:00:00'),(21,'2014-09-24',2,'12:18:42'),(22,'2015-06-26',0,'00:00:00'),(23,'2016-01-26',1,'18:38:25'),(24,'2016-01-27',1,'17:39:53');
/*!40000 ALTER TABLE `tara_premios_diarios` ENABLE KEYS */;
UNLOCK TABLES;

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
INSERT INTO `tara_setting` (`name`, `value`) VALUES ('admin_title','<img src=\"../tarabackend/images/tarabackend.png\" alt=\"tarabackend\" title=\"tarabackend\"/> '),('language','pt'),('theme','default'),('default_status_id','1'),('default_filter_id',''),('default_tab','plugin/dashboard'),('allow_html_title','off'),('plugins','a:28:{s:6:\"jquery\";i:1;s:7:\"textile\";i:1;s:8:\"markdown\";i:1;s:8:\"skeleton\";i:1;s:9:\"jquery_ui\";i:1;s:7:\"lytebox\";i:1;s:7:\"tinymce\";i:1;s:9:\"wymeditor\";i:1;s:8:\"noticias\";i:1;s:19:\"cs_children_by_part\";i:1;s:7:\"sqlite3\";i:1;s:15:\"page_part_forms\";i:1;s:13:\"page_metadata\";i:1;s:4:\"ifhs\";i:1;s:7:\"archive\";i:1;s:7:\"imagens\";i:1;s:12:\"image_resize\";i:1;s:9:\"dashboard\";i:1;s:7:\"modulos\";i:1;s:9:\"codepress\";i:1;s:9:\"googlemap\";i:1;s:7:\"paginas\";i:1;s:13:\"configuracoes\";i:1;s:12:\"utilizadores\";i:1;s:10:\"documentos\";i:1;s:10:\"encomendas\";i:1;s:12:\"file_manager\";i:1;s:11:\"formularios\";i:1;}');
/*!40000 ALTER TABLE `tara_setting` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tara_snippet`
--

DROP TABLE IF EXISTS `tara_snippet`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tara_snippet` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL DEFAULT '',
  `filter_id` varchar(25) DEFAULT NULL,
  `content` text,
  `content_html` text,
  `created_on` datetime DEFAULT NULL,
  `updated_on` datetime DEFAULT NULL,
  `created_by_id` int(11) DEFAULT NULL,
  `updated_by_id` int(11) DEFAULT NULL,
  `position` mediumint(6) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=MyISAM AUTO_INCREMENT=17 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tara_snippet`
--

LOCK TABLES `tara_snippet` WRITE;
/*!40000 ALTER TABLE `tara_snippet` DISABLE KEYS */;
INSERT INTO `tara_snippet` (`id`, `name`, `filter_id`, `content`, `content_html`, `created_on`, `updated_on`, `created_by_id`, `updated_by_id`, `position`) VALUES (1,'layoutFunctions','','<?php\r\n/*+++++++++++++++++++++++++++++++++++++++Active menu layout+++++++++++++++++++++++++++++++++++++++++*/\r\n   function getAClass($slug, $page)\r\n    {\r\n        if($page->slug == $slug || ($page->slug!=\'\' && $page->parent!=null && $page->parent->slug==$slug && $page->parent->slug!=\'\') || ($page->slug!=\'\' && $page->parent->parent!=null && $page->parent->parent->slug==$slug && $page->parent->parent->slug!=\'\'))\r\n        {\r\n            echo(\"active\");\r\n        }\r\n        else\r\n        {\r\n            echo(\"\");\r\n        }\r\n    }\r\n    function getLiClass ($slug, $page )\r\n    {\r\n        if($page->slug == $slug || ($page->parent!=null && $page->parent->slug==$slug && $page->parent->slug!=\'\'))\r\n        {\r\n            echo(\"active\");\r\n        }\r\n        else\r\n        {\r\n            echo(\"\");\r\n        }\r\n\r\n    }\r\n/*+++++++++++++++++++++++++++++++++++++++@Active menu layout+++++++++++++++++++++++++++++++++++++++++*/\r\n\r\n/*+++++++++++++++++++++++++++++++++++++++Title+++++++++++++++++++++++++++++++++++++++++*/\r\nfunction getTitle($page)\r\n{\r\n    $title=\' | \';\r\n\r\n    if($page->parent && $page->parent->slug!=\'\')\r\n    {\r\n            $title.=$page->parent->title().\' - \';\r\n    }\r\n    $title.=$page->title();\r\n    echo($title);\r\n}\r\n/*+++++++++++++++++++++++++++++++++++++++@Title+++++++++++++++++++++++++++++++++++++++++*/\r\n?>\r\n','<?php\r\n/*+++++++++++++++++++++++++++++++++++++++Active menu layout+++++++++++++++++++++++++++++++++++++++++*/\r\n   function getAClass($slug, $page)\r\n    {\r\n        if($page->slug == $slug || ($page->slug!=\'\' && $page->parent!=null && $page->parent->slug==$slug && $page->parent->slug!=\'\') || ($page->slug!=\'\' && $page->parent->parent!=null && $page->parent->parent->slug==$slug && $page->parent->parent->slug!=\'\'))\r\n        {\r\n            echo(\"active\");\r\n        }\r\n        else\r\n        {\r\n            echo(\"\");\r\n        }\r\n    }\r\n    function getLiClass ($slug, $page )\r\n    {\r\n        if($page->slug == $slug || ($page->parent!=null && $page->parent->slug==$slug && $page->parent->slug!=\'\'))\r\n        {\r\n            echo(\"active\");\r\n        }\r\n        else\r\n        {\r\n            echo(\"\");\r\n        }\r\n\r\n    }\r\n/*+++++++++++++++++++++++++++++++++++++++@Active menu layout+++++++++++++++++++++++++++++++++++++++++*/\r\n\r\n/*+++++++++++++++++++++++++++++++++++++++Title+++++++++++++++++++++++++++++++++++++++++*/\r\nfunction getTitle($page)\r\n{\r\n    $title=\' | \';\r\n\r\n    if($page->parent && $page->parent->slug!=\'\')\r\n    {\r\n            $title.=$page->parent->title().\' - \';\r\n    }\r\n    $title.=$page->title();\r\n    echo($title);\r\n}\r\n/*+++++++++++++++++++++++++++++++++++++++@Title+++++++++++++++++++++++++++++++++++++++++*/\r\n?>\r\n','2014-03-17 18:00:32','2014-03-25 15:39:45',1,1,NULL),(9,'jsAppend','','<!-- ############################ TEMPLATE ################################## -->\r\n<script type=\"text/javascript\" src=\"<? echo(URL_PUBLIC); ?>public/js/template.js\"></script>\r\n<!-- ############################ END TEMPLATE ################################## -->\r\n\r\n<!-- ############################ GENERICO ################################## -->\r\n<? if($this!=null && $this->slug!=null && file_exists(SERVER_URL.\'/public/js/\'.$this->slug.\'.js\')): ?>\r\n    <script type=\"text/javascript\" src=\"<? echo(URL_PUBLIC); ?>public/js/<? echo($this->slug); ?>.js\"></script>\r\n<? endif; ?>\r\n<!-- ############################ END GENERICO ################################## -->','<!-- ############################ TEMPLATE ################################## -->\r\n<script type=\"text/javascript\" src=\"<? echo(URL_PUBLIC); ?>public/js/template.js\"></script>\r\n<!-- ############################ END TEMPLATE ################################## -->\r\n\r\n<!-- ############################ GENERICO ################################## -->\r\n<? if($this!=null && $this->slug!=null && file_exists(SERVER_URL.\'/public/js/\'.$this->slug.\'.js\')): ?>\r\n    <script type=\"text/javascript\" src=\"<? echo(URL_PUBLIC); ?>public/js/<? echo($this->slug); ?>.js\"></script>\r\n<? endif; ?>\r\n<!-- ############################ END GENERICO ################################## -->','2014-03-18 11:48:02','2014-05-21 16:10:28',1,1,NULL),(14,'service','','<?\r\n\r\nif (isset($_GET[\'opt\'])) {\r\n    $__tarambola_CONN__ = new PDO(DB_DSN, DB_USER, DB_PASS);\r\n\r\n    if ($__tarambola_CONN__->getAttribute(PDO::ATTR_DRIVER_NAME) == \'mysql\')\r\n        $__tarambola_CONN__->setAttribute(PDO::MYSQL_ATTR_USE_BUFFERED_QUERY, true);\r\n\r\n    Record::connection($__tarambola_CONN__);\r\n    Record::getConnection()->exec(\"set names \'utf8\'\");\r\n\r\n    if ($_GET[\'opt\'] == \"win\") { //****************************************************** WIN SEND EMAIL\r\n        $user = getUser($_GET[\'id\']);\r\n        $nome = $user->content(\'nome\');\r\n        $email = $user->content(\'email\');\r\n        echo($nome . \' - \' . $email);\r\n        echo(updatePremio($_GET[\'id\'], $_GET[\'premio\']));\r\n        sendEmail($nome, $email, $_GET[\'premio\']);\r\n        incrementPremio();\r\n    } else if ($_GET[\'opt\'] == \"loose\") { //************************************************ LOOSE\r\n    } else if ($_GET[\'opt\'] == \"getid\") { //************************************************ GET UNIQUE ID\r\n        require_once SERVER_URL . \'tarambola/app/classes/Item.php\';\r\n\r\n        $premios = getPremiosByDate();\r\n        if ($premios == null) {\r\n            insertPremios();\r\n            $premios = getPremiosByDate();\r\n        }\r\n        $config = getConfig();\r\n\r\n        $p = new Item();\r\n        $p = $p->getPageById(315);\r\n        echo(\'<?xml version=\"1.0\" encoding=\"UTF-8\"?>\' .\r\n        \'<data>\' .\r\n        \'<unique_id>\' . generateId() . \'</unique_id>\' .\r\n        \'<connect_msg>\' .\r\n        \'<msg_1>\' . $p->content(\"connect_1\") . \'</msg_1>\' .\r\n        \'<msg_2>\' . $p->content(\"connect_2\") . \'</msg_2>\' .\r\n        \'<msg_3>\' . $p->content(\"connect_3\") . \'</msg_3>\' .\r\n        \'</connect_msg>\' .\r\n        \'<slot_msg>\' .\r\n        \'<msg_1>\' . $p->content(\"slot_1\") . \'</msg_1>\' .\r\n        \'<msg_2>\' . $p->content(\"slot_2\") . \'</msg_2>\' .\r\n        \'</slot_msg>\' .\r\n        \'<loose_msg>\' .\r\n        \'<msg_1>\' . $p->content(\"loose_1\") . \'</msg_1>\' .\r\n        \'<msg_2>\' . $p->content(\"loose_2\") . \'</msg_2>\' .\r\n        \'<msg_3>\' . $p->content(\"loose_3\") . \'</msg_3>\' .\r\n        \'<msg_4>\' . $p->content(\"loose_4\") . \'</msg_4>\' .\r\n        \'<msg_5>\' . $p->content(\"loose_5\") . \'</msg_5>\' .\r\n        \'</loose_msg>\' .\r\n        \'<win_msg>\' .\r\n        \'<msg_1>\' . $p->content(\"win_1\") . \'</msg_1>\' .\r\n        \'<msg_2>\' . $p->content(\"win_2\") . \'</msg_2>\' .\r\n        \'</win_msg>\' .\r\n        \'<prizes>\' .\r\n        \'<act_prizes>\' . $premios->qtd . \'</act_prizes>\' .\r\n        \'<max_prize>\' . $config->content(\'nr_premios\') . \'</max_prize>\' .\r\n        \'<last_prize>\' . $premios->last . \'</last_prize>\' .\r\n        \'</prizes>\' .\r\n        \'</data>\'\r\n        );\r\n    }\r\n} else {\r\n    $user = getUser($_GET[\'id\']);\r\n    $attempts = getAttempts($user->content(\'email\'));\r\n    $attempts = 3 - $attempts;\r\n    $premios = getPremiosByDate();\r\n    if ($premios == null) {\r\n        insertPremios();\r\n        $premios = getPremiosByDate();\r\n    }\r\n    echo(\'<?xml version=\"1.0\" encoding=\"UTF-8\"?>\' .\r\n    \'<user>\' .\r\n    \'<id>\' . $user->id . \'</id>\' .\r\n    \'<nome>\' . $user->content(\'nome\') . \'</nome>\' .\r\n    \'<email>\' . $user->content(\'email\') . \'</email>\' .\r\n    \'<unique_id>\' . $user->content(\'unique_id\') . \'</unique_id>\' .\r\n    \'<attempts>\' . $attempts . \'</attempts>\' .\r\n    \'</user>\');\r\n}\r\n\r\n//*************************** FUNCTIONS *********************************//\r\nfunction getUser($id) {\r\n    require_once SERVER_URL . \'tarambola/app/classes/Item.php\';\r\n    $p = new Item();\r\n    $p = $p->getPageById($id);\r\n    return($p);\r\n}\r\n\r\nfunction getAttempts($email) {\r\n    global $__tarambola_CONN__;\r\n\r\n    $sql = \"SELECT DISTINCT count(p.id) AS count From tara_page_part AS p INNER JOIN tara_page_part AS p2 ON p2.page_id=p.page_id WHERE p.name=\'data\' AND DAY(NOW())=DAY(p.content) AND MONTH(NOW())=MONTH(p.content) AND YEAR(NOW())=YEAR(p.content) AND p2.name=\'email\' AND p2.content=\'\" . $email . \"\'\";\r\n    $arr = array();\r\n    if ($stmt = $__tarambola_CONN__->prepare($sql)) {\r\n        $stmt->execute();\r\n        $object = $stmt->fetchObject();\r\n    }\r\n    if ($object->count < 3) {\r\n        return $object->count;\r\n    } else {\r\n        return(-1);\r\n    }\r\n    return(false);\r\n}\r\n\r\nfunction getConfig() {\r\n    require_once SERVER_URL . \'tarambola/app/classes/Item.php\';\r\n    $p = new Item();\r\n    $p = $p->getPageById(130);\r\n    return($p);\r\n}\r\n\r\nfunction generateId() {\r\n    $c = uniqid(rand(), true);\r\n    $md5c = md5($c);\r\n\r\n    global $__tarambola_CONN__;\r\n\r\n    $sql = \"INSERT INTO tara_unique_id (unique_id)\r\n                VALUES (\'\" . $md5c . \"\')\";\r\n\r\n    if ($stmt = $__tarambola_CONN__->prepare($sql)) {\r\n\r\n        if ($stmt->execute()) {\r\n            $flag = $md5c;\r\n        }\r\n        else\r\n            $flag = 0;\r\n    }\r\n    return($flag);\r\n}\r\n\r\nfunction sendEmail($nome, $email, $premio) {\r\n    require_once SERVER_URL . \'tarambola/app/classes/Mailer.php\';\r\n    require_once SERVER_URL . \'tarambola/app/classes/Item.php\';\r\n\r\n    if($premio==1)\r\n        $premio = \"SURPRISE BOX\";\r\n    if($premio==2)\r\n        $premio = \"CAP\";\r\n    if($premio==3)\r\n        $premio = \"T-SHIRT\";\r\n    if($premio==4)\r\n        $premio = \"BOXERS\";\r\n    if($premio==5)\r\n        $premio = \"10% DISCOUNT\";\r\n\r\n    $mensagens = new Item();\r\n    $mensagens = $mensagens->getPageById(368);\r\n    $titulo = $mensagens->content(\'titulo\');\r\n    $texto1 = $mensagens->content(\'texto1\');\r\n    $texto2 = $mensagens->content(\'texto2\');\r\n    $body = \'<!DOCTYPE html>\r\n<html>\r\n    <head>\r\n        <title></title>\r\n        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\r\n    </head>\r\n    <body style=\"background-color:#eee;padding:0;border:0;margin:0;\">\r\n    <center>\r\n        <table width=\"600px\" border=\"0\" cellpadding=\"0\" cellspacing=\"0\" style=\"background-color:#eeeeee;padding:0;border:0;margin:0;\">\r\n            <tr>\r\n                <td style=\"background-color:#FFF;padding:20px\">\r\n            <center>\r\n                <img src=\"\' . URL_PUBLIC . \'public/themes/default/_img/slotmachine.png\" width=\"400\" alt=\"SLOTMACHINE\" />\r\n                <br><br>\r\n                <h3 style=\"font-family:\\\'arial\\\', sans-sarif;color:#444\">\' . $titulo . \'</h3>\r\n                <p style=\"font-family:\\\'arial\\\', sans-sarif;color:#444\">\' . $texto1 . \'</b></p>\r\n                <p style=\"font-family:\\\'arial\\\', sans-sarif;color:#444\">\';\r\n    $body.=$premio;\r\n    $body.=\'</p>\r\n                <p style=\"font-family:\\\'arial\\\', sans-sarif;color:#444\">\' . $texto2 . \'</p>\r\n                <br><br>\r\n                 <img src=\"\' . URL_PUBLIC . \'public/themes/default/_img/boombap.jpg\" width=\"200\" alt=\"BOOMBAP\" /><br />\r\n            </center>\r\n            </td>\r\n            </tr>\r\n        </table>\r\n    </center>\r\n</body>\r\n</html>\';\r\n    $mailer = new Mailer(\"geral@tarambola.pt\", \"BOOM BAP\", $email, $titulo, $body);\r\n\r\n    return($mailer->sendMail());\r\n}\r\n\r\nfunction updatePremio($id, $premio) {\r\n    global $__tarambola_CONN__;\r\n\r\n    $sql = \"UPDATE tara_page_part SET content=\'\" . $premio . \"\', content_html=\'\" . $premio . \"\' WHERE name=\'premio\' AND page_id=\'\" . $id . \"\'\";\r\n\r\n    if ($stmt = $__tarambola_CONN__->prepare($sql)) {\r\n        if ($stmt->execute())\r\n            $flag = 1;\r\n        else\r\n            $flag = 0;\r\n    }\r\n    return($flag);\r\n}\r\n\r\nfunction incrementPremio() {\r\n    global $__tarambola_CONN__;\r\n\r\n    $hasPremio = getPremiosByDate();\r\n\r\n    if ($hasPremio != null)\r\n        $premio = $hasPremio->id;\r\n    else\r\n        $premio = insertPremios();\r\n\r\n    $sql = \"UPDATE tara_premios_diarios SET qtd=qtd+1, time=CURTIME() WHERE id=\'\" . $premio . \"\'\";\r\n\r\n    if ($stmt = $__tarambola_CONN__->prepare($sql)) {\r\n        if ($stmt->execute())\r\n            $flag = 1;\r\n        else\r\n            $flag = 0;\r\n    }\r\n    return($flag);\r\n}\r\n\r\nfunction getPremiosByDate() {\r\n    global $__tarambola_CONN__;\r\n\r\n    $sql = \"SELECT *, CURTIME(), (CURTIME()-TIME(time)) AS last FROM tara_premios_diarios WHERE data= DATE(NOW())\";\r\n\r\n    if ($stmt = $__tarambola_CONN__->prepare($sql)) {\r\n        $stmt->execute();\r\n\r\n        $object = $stmt->fetchObject();\r\n    }\r\n    return($object);\r\n}\r\n\r\nfunction insertPremios() {\r\n    global $__tarambola_CONN__;\r\n\r\n    $sql = \"INSERT INTO tara_premios_diarios (data, qtd)\r\n                VALUES (NOW(), \'0\')\";\r\n\r\n    if ($stmt = $__tarambola_CONN__->prepare($sql)) {\r\n\r\n        if ($stmt->execute()) {\r\n            $id = $__tarambola_CONN__->lastInsertId();\r\n            $flag = $id;\r\n        }\r\n        else\r\n            $flag = 0;\r\n    }\r\n    return($flag);\r\n}\r\n','<?\r\n\r\nif (isset($_GET[\'opt\'])) {\r\n    $__tarambola_CONN__ = new PDO(DB_DSN, DB_USER, DB_PASS);\r\n\r\n    if ($__tarambola_CONN__->getAttribute(PDO::ATTR_DRIVER_NAME) == \'mysql\')\r\n        $__tarambola_CONN__->setAttribute(PDO::MYSQL_ATTR_USE_BUFFERED_QUERY, true);\r\n\r\n    Record::connection($__tarambola_CONN__);\r\n    Record::getConnection()->exec(\"set names \'utf8\'\");\r\n\r\n    if ($_GET[\'opt\'] == \"win\") { //****************************************************** WIN SEND EMAIL\r\n        $user = getUser($_GET[\'id\']);\r\n        $nome = $user->content(\'nome\');\r\n        $email = $user->content(\'email\');\r\n        echo($nome . \' - \' . $email);\r\n        echo(updatePremio($_GET[\'id\'], $_GET[\'premio\']));\r\n        sendEmail($nome, $email, $_GET[\'premio\']);\r\n        incrementPremio();\r\n    } else if ($_GET[\'opt\'] == \"loose\") { //************************************************ LOOSE\r\n    } else if ($_GET[\'opt\'] == \"getid\") { //************************************************ GET UNIQUE ID\r\n        require_once SERVER_URL . \'tarambola/app/classes/Item.php\';\r\n\r\n        $premios = getPremiosByDate();\r\n        if ($premios == null) {\r\n            insertPremios();\r\n            $premios = getPremiosByDate();\r\n        }\r\n        $config = getConfig();\r\n\r\n        $p = new Item();\r\n        $p = $p->getPageById(315);\r\n        echo(\'<?xml version=\"1.0\" encoding=\"UTF-8\"?>\' .\r\n        \'<data>\' .\r\n        \'<unique_id>\' . generateId() . \'</unique_id>\' .\r\n        \'<connect_msg>\' .\r\n        \'<msg_1>\' . $p->content(\"connect_1\") . \'</msg_1>\' .\r\n        \'<msg_2>\' . $p->content(\"connect_2\") . \'</msg_2>\' .\r\n        \'<msg_3>\' . $p->content(\"connect_3\") . \'</msg_3>\' .\r\n        \'</connect_msg>\' .\r\n        \'<slot_msg>\' .\r\n        \'<msg_1>\' . $p->content(\"slot_1\") . \'</msg_1>\' .\r\n        \'<msg_2>\' . $p->content(\"slot_2\") . \'</msg_2>\' .\r\n        \'</slot_msg>\' .\r\n        \'<loose_msg>\' .\r\n        \'<msg_1>\' . $p->content(\"loose_1\") . \'</msg_1>\' .\r\n        \'<msg_2>\' . $p->content(\"loose_2\") . \'</msg_2>\' .\r\n        \'<msg_3>\' . $p->content(\"loose_3\") . \'</msg_3>\' .\r\n        \'<msg_4>\' . $p->content(\"loose_4\") . \'</msg_4>\' .\r\n        \'<msg_5>\' . $p->content(\"loose_5\") . \'</msg_5>\' .\r\n        \'</loose_msg>\' .\r\n        \'<win_msg>\' .\r\n        \'<msg_1>\' . $p->content(\"win_1\") . \'</msg_1>\' .\r\n        \'<msg_2>\' . $p->content(\"win_2\") . \'</msg_2>\' .\r\n        \'</win_msg>\' .\r\n        \'<prizes>\' .\r\n        \'<act_prizes>\' . $premios->qtd . \'</act_prizes>\' .\r\n        \'<max_prize>\' . $config->content(\'nr_premios\') . \'</max_prize>\' .\r\n        \'<last_prize>\' . $premios->last . \'</last_prize>\' .\r\n        \'</prizes>\' .\r\n        \'</data>\'\r\n        );\r\n    }\r\n} else {\r\n    $user = getUser($_GET[\'id\']);\r\n    $attempts = getAttempts($user->content(\'email\'));\r\n    $attempts = 3 - $attempts;\r\n    $premios = getPremiosByDate();\r\n    if ($premios == null) {\r\n        insertPremios();\r\n        $premios = getPremiosByDate();\r\n    }\r\n    echo(\'<?xml version=\"1.0\" encoding=\"UTF-8\"?>\' .\r\n    \'<user>\' .\r\n    \'<id>\' . $user->id . \'</id>\' .\r\n    \'<nome>\' . $user->content(\'nome\') . \'</nome>\' .\r\n    \'<email>\' . $user->content(\'email\') . \'</email>\' .\r\n    \'<unique_id>\' . $user->content(\'unique_id\') . \'</unique_id>\' .\r\n    \'<attempts>\' . $attempts . \'</attempts>\' .\r\n    \'</user>\');\r\n}\r\n\r\n//*************************** FUNCTIONS *********************************//\r\nfunction getUser($id) {\r\n    require_once SERVER_URL . \'tarambola/app/classes/Item.php\';\r\n    $p = new Item();\r\n    $p = $p->getPageById($id);\r\n    return($p);\r\n}\r\n\r\nfunction getAttempts($email) {\r\n    global $__tarambola_CONN__;\r\n\r\n    $sql = \"SELECT DISTINCT count(p.id) AS count From tara_page_part AS p INNER JOIN tara_page_part AS p2 ON p2.page_id=p.page_id WHERE p.name=\'data\' AND DAY(NOW())=DAY(p.content) AND MONTH(NOW())=MONTH(p.content) AND YEAR(NOW())=YEAR(p.content) AND p2.name=\'email\' AND p2.content=\'\" . $email . \"\'\";\r\n    $arr = array();\r\n    if ($stmt = $__tarambola_CONN__->prepare($sql)) {\r\n        $stmt->execute();\r\n        $object = $stmt->fetchObject();\r\n    }\r\n    if ($object->count < 3) {\r\n        return $object->count;\r\n    } else {\r\n        return(-1);\r\n    }\r\n    return(false);\r\n}\r\n\r\nfunction getConfig() {\r\n    require_once SERVER_URL . \'tarambola/app/classes/Item.php\';\r\n    $p = new Item();\r\n    $p = $p->getPageById(130);\r\n    return($p);\r\n}\r\n\r\nfunction generateId() {\r\n    $c = uniqid(rand(), true);\r\n    $md5c = md5($c);\r\n\r\n    global $__tarambola_CONN__;\r\n\r\n    $sql = \"INSERT INTO tara_unique_id (unique_id)\r\n                VALUES (\'\" . $md5c . \"\')\";\r\n\r\n    if ($stmt = $__tarambola_CONN__->prepare($sql)) {\r\n\r\n        if ($stmt->execute()) {\r\n            $flag = $md5c;\r\n        }\r\n        else\r\n            $flag = 0;\r\n    }\r\n    return($flag);\r\n}\r\n\r\nfunction sendEmail($nome, $email, $premio) {\r\n    require_once SERVER_URL . \'tarambola/app/classes/Mailer.php\';\r\n    require_once SERVER_URL . \'tarambola/app/classes/Item.php\';\r\n\r\n    if($premio==1)\r\n        $premio = \"SURPRISE BOX\";\r\n    if($premio==2)\r\n        $premio = \"CAP\";\r\n    if($premio==3)\r\n        $premio = \"T-SHIRT\";\r\n    if($premio==4)\r\n        $premio = \"BOXERS\";\r\n    if($premio==5)\r\n        $premio = \"10% DISCOUNT\";\r\n\r\n    $mensagens = new Item();\r\n    $mensagens = $mensagens->getPageById(368);\r\n    $titulo = $mensagens->content(\'titulo\');\r\n    $texto1 = $mensagens->content(\'texto1\');\r\n    $texto2 = $mensagens->content(\'texto2\');\r\n    $body = \'<!DOCTYPE html>\r\n<html>\r\n    <head>\r\n        <title></title>\r\n        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\r\n    </head>\r\n    <body style=\"background-color:#eee;padding:0;border:0;margin:0;\">\r\n    <center>\r\n        <table width=\"600px\" border=\"0\" cellpadding=\"0\" cellspacing=\"0\" style=\"background-color:#eeeeee;padding:0;border:0;margin:0;\">\r\n            <tr>\r\n                <td style=\"background-color:#FFF;padding:20px\">\r\n            <center>\r\n                <img src=\"\' . URL_PUBLIC . \'public/themes/default/_img/slotmachine.png\" width=\"400\" alt=\"SLOTMACHINE\" />\r\n                <br><br>\r\n                <h3 style=\"font-family:\\\'arial\\\', sans-sarif;color:#444\">\' . $titulo . \'</h3>\r\n                <p style=\"font-family:\\\'arial\\\', sans-sarif;color:#444\">\' . $texto1 . \'</b></p>\r\n                <p style=\"font-family:\\\'arial\\\', sans-sarif;color:#444\">\';\r\n    $body.=$premio;\r\n    $body.=\'</p>\r\n                <p style=\"font-family:\\\'arial\\\', sans-sarif;color:#444\">\' . $texto2 . \'</p>\r\n                <br><br>\r\n                 <img src=\"\' . URL_PUBLIC . \'public/themes/default/_img/boombap.jpg\" width=\"200\" alt=\"BOOMBAP\" /><br />\r\n            </center>\r\n            </td>\r\n            </tr>\r\n        </table>\r\n    </center>\r\n</body>\r\n</html>\';\r\n    $mailer = new Mailer(\"geral@tarambola.pt\", \"BOOM BAP\", $email, $titulo, $body);\r\n\r\n    return($mailer->sendMail());\r\n}\r\n\r\nfunction updatePremio($id, $premio) {\r\n    global $__tarambola_CONN__;\r\n\r\n    $sql = \"UPDATE tara_page_part SET content=\'\" . $premio . \"\', content_html=\'\" . $premio . \"\' WHERE name=\'premio\' AND page_id=\'\" . $id . \"\'\";\r\n\r\n    if ($stmt = $__tarambola_CONN__->prepare($sql)) {\r\n        if ($stmt->execute())\r\n            $flag = 1;\r\n        else\r\n            $flag = 0;\r\n    }\r\n    return($flag);\r\n}\r\n\r\nfunction incrementPremio() {\r\n    global $__tarambola_CONN__;\r\n\r\n    $hasPremio = getPremiosByDate();\r\n\r\n    if ($hasPremio != null)\r\n        $premio = $hasPremio->id;\r\n    else\r\n        $premio = insertPremios();\r\n\r\n    $sql = \"UPDATE tara_premios_diarios SET qtd=qtd+1, time=CURTIME() WHERE id=\'\" . $premio . \"\'\";\r\n\r\n    if ($stmt = $__tarambola_CONN__->prepare($sql)) {\r\n        if ($stmt->execute())\r\n            $flag = 1;\r\n        else\r\n            $flag = 0;\r\n    }\r\n    return($flag);\r\n}\r\n\r\nfunction getPremiosByDate() {\r\n    global $__tarambola_CONN__;\r\n\r\n    $sql = \"SELECT *, CURTIME(), (CURTIME()-TIME(time)) AS last FROM tara_premios_diarios WHERE data= DATE(NOW())\";\r\n\r\n    if ($stmt = $__tarambola_CONN__->prepare($sql)) {\r\n        $stmt->execute();\r\n\r\n        $object = $stmt->fetchObject();\r\n    }\r\n    return($object);\r\n}\r\n\r\nfunction insertPremios() {\r\n    global $__tarambola_CONN__;\r\n\r\n    $sql = \"INSERT INTO tara_premios_diarios (data, qtd)\r\n                VALUES (NOW(), \'0\')\";\r\n\r\n    if ($stmt = $__tarambola_CONN__->prepare($sql)) {\r\n\r\n        if ($stmt->execute()) {\r\n            $id = $__tarambola_CONN__->lastInsertId();\r\n            $flag = $id;\r\n        }\r\n        else\r\n            $flag = 0;\r\n    }\r\n    return($flag);\r\n}\r\n','2014-05-19 15:47:51','2014-06-13 16:26:07',1,1,NULL),(15,'register','','<!-- ****************** CONTENT **************** -->\r\n<?php $reg = PAGE::find(\'mensagens/mensagens-mobile\'); ?>\r\n<article class=\"content-container\">\r\n    <img src=\"<? echo(URL_PUBLIC); ?>public/themes/default/_img/slotmachine.png\" id=\"slotmachine\" alt=\"\" />\r\n    <div class=\"clear2\"></div>\r\n    <!-- ************** FORM **************** -->\r\n    <div id=\"formContainer\">\r\n        <form id=\"registform\">\r\n            <input type=\"hidden\" class=\"input\" id=\"unique_id\" value=\"<? echo($_GET[\'id\']); ?>\">\r\n            <section class=\"form-side\">\r\n                <label for=\"name\">\r\n                    <?php $reg->pContent(\'formlabel1\'); ?>\r\n                </label>\r\n                <input type=\"text\" class=\"input\" id=\"nameInput\" value=\"\">\r\n                <div class=\"clear20 hide1280\"></div>\r\n            </section>\r\n            <div class=\"clear4\"></div>\r\n            <section class=\"form-side\">\r\n                <label for=\"email\">\r\n                    <?php $reg->pContent(\'formlabel2\'); ?>\r\n                </label>\r\n                <div class=\"clear0\"></div>\r\n                <input type=\"email\" class=\"input\" id=\"emailInput\" value=\"\">\r\n            </section>\r\n            <div class=\"clear3\"></div>\r\n            <button type=\"submit\" class=\"classname\" id=\"submit\"><center><h4><?php $reg->pContent(\'formbutton\'); ?></h4></center></button>\r\n            <input id=\"validationMsg\" type=\"hidden\" value=\"<?php $reg->pContent(\'validationwarning\'); ?>\"></input>\r\n            <input id=\"tentativasMsg\" type=\"hidden\" value=\"<?php $reg->pContent(\'esgotadaswarning\'); ?>\"></input>\r\n            <input id=\"aguardaMsg\" type=\"hidden\" value=\"<?php $reg->pContent(\'waitwarning\'); ?>\"></input>\r\n        </form>\r\n    </div>\r\n</article>','<!-- ****************** CONTENT **************** -->\r\n<?php $reg = PAGE::find(\'mensagens/mensagens-mobile\'); ?>\r\n<article class=\"content-container\">\r\n    <img src=\"<? echo(URL_PUBLIC); ?>public/themes/default/_img/slotmachine.png\" id=\"slotmachine\" alt=\"\" />\r\n    <div class=\"clear2\"></div>\r\n    <!-- ************** FORM **************** -->\r\n    <div id=\"formContainer\">\r\n        <form id=\"registform\">\r\n            <input type=\"hidden\" class=\"input\" id=\"unique_id\" value=\"<? echo($_GET[\'id\']); ?>\">\r\n            <section class=\"form-side\">\r\n                <label for=\"name\">\r\n                    <?php $reg->pContent(\'formlabel1\'); ?>\r\n                </label>\r\n                <input type=\"text\" class=\"input\" id=\"nameInput\" value=\"\">\r\n                <div class=\"clear20 hide1280\"></div>\r\n            </section>\r\n            <div class=\"clear4\"></div>\r\n            <section class=\"form-side\">\r\n                <label for=\"email\">\r\n                    <?php $reg->pContent(\'formlabel2\'); ?>\r\n                </label>\r\n                <div class=\"clear0\"></div>\r\n                <input type=\"email\" class=\"input\" id=\"emailInput\" value=\"\">\r\n            </section>\r\n            <div class=\"clear3\"></div>\r\n            <button type=\"submit\" class=\"classname\" id=\"submit\"><center><h4><?php $reg->pContent(\'formbutton\'); ?></h4></center></button>\r\n            <input id=\"validationMsg\" type=\"hidden\" value=\"<?php $reg->pContent(\'validationwarning\'); ?>\"></input>\r\n            <input id=\"tentativasMsg\" type=\"hidden\" value=\"<?php $reg->pContent(\'esgotadaswarning\'); ?>\"></input>\r\n            <input id=\"aguardaMsg\" type=\"hidden\" value=\"<?php $reg->pContent(\'waitwarning\'); ?>\"></input>\r\n        </form>\r\n    </div>\r\n</article>','2014-05-21 15:21:18','2014-06-12 18:13:42',1,1,NULL),(16,'tryagain','','<!-- ****************** CONTENT **************** -->\r\n<article class=\"content-container\">\r\n<?php $wait = PAGE::find(\'mensagens/mensagens-mobile\'); ?>\r\n    <img src=\"<? echo(URL_PUBLIC); ?>public/themes/default/_img/slotmachine.png\" id=\"slotmachine\" alt=\"\" />\r\n    <div class=\"clear2\"></div>\r\n    <div class=\"messages-style\">\r\n        <h4><?php $wait->pContent(\'wait\'); ?></h4>\r\n        <h5><?php $wait->pContent(\'wait2\'); ?></h5>\r\n    </div>\r\n\r\n</article>\r\n','<!-- ****************** CONTENT **************** -->\r\n<article class=\"content-container\">\r\n<?php $wait = PAGE::find(\'mensagens/mensagens-mobile\'); ?>\r\n    <img src=\"<? echo(URL_PUBLIC); ?>public/themes/default/_img/slotmachine.png\" id=\"slotmachine\" alt=\"\" />\r\n    <div class=\"clear2\"></div>\r\n    <div class=\"messages-style\">\r\n        <h4><?php $wait->pContent(\'wait\'); ?></h4>\r\n        <h5><?php $wait->pContent(\'wait2\'); ?></h5>\r\n    </div>\r\n\r\n</article>\r\n','2014-05-21 15:21:31','2014-06-12 10:52:46',1,1,NULL);
/*!40000 ALTER TABLE `tara_snippet` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tara_statistics_api`
--

DROP TABLE IF EXISTS `tara_statistics_api`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tara_statistics_api` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `event_type` varchar(50) NOT NULL,
  `description` text,
  `username` varchar(50) DEFAULT NULL,
  `occurred_on` datetime DEFAULT NULL,
  `ipaddress` char(100) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `occurred_on` (`occurred_on`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tara_statistics_api`
--

LOCK TABLES `tara_statistics_api` WRITE;
/*!40000 ALTER TABLE `tara_statistics_api` DISABLE KEYS */;
/*!40000 ALTER TABLE `tara_statistics_api` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tara_tag`
--

DROP TABLE IF EXISTS `tara_tag`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tara_tag` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(40) NOT NULL,
  `count` int(11) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tara_tag`
--

LOCK TABLES `tara_tag` WRITE;
/*!40000 ALTER TABLE `tara_tag` DISABLE KEYS */;
/*!40000 ALTER TABLE `tara_tag` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tara_unique_id`
--

DROP TABLE IF EXISTS `tara_unique_id`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tara_unique_id` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `unique_id` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=904 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tara_unique_id`
--

LOCK TABLES `tara_unique_id` WRITE;
/*!40000 ALTER TABLE `tara_unique_id` DISABLE KEYS */;
INSERT INTO `tara_unique_id` (`id`, `unique_id`) VALUES (1,'bb6cfd48a05aeaf22b9a2222cfefaf92'),(2,'01411367ad54b33b2514b7e71320e3c0'),(3,'2f644dfc3d9785d18194fb91c958d4c6'),(4,'d1144a86795cc3f737c235f0786cc516'),(5,'9436f2433b50262ce035607006ef1e69'),(6,'eb0d82a5cac65dd916e49996f6d764c9'),(7,'e3aea66b79ccafefdda070ea63ee23b0'),(8,'a56f4e4aa54fb75cf4b059cd8cf0c799'),(9,'5fa8cf7ad37f5ae078caa8c4c5c8cc92'),(10,'bed23d092eee112ec74f080fbd190811'),(11,'f49bf3f1c517ce5927ec82d92e1feb71'),(12,'6ed701fa14f11b95331510862014951c'),(13,'6ffdb37b8405ed631a78db55cf3de466'),(14,'796036f9e42a2e158659ce23b2cdd752'),(15,'621ad38c65a4b3480dd5fd708a91908d'),(16,'36b18054315dd2e2420e0eb50c9c5587'),(17,'5039ee5098fb4fe3f36b35374ec9cbcb'),(18,'e680ba73488b961d67bf5d7ea431c44b'),(19,'0983d5bb337d205cdd09b6b394dd2647'),(20,'6b6d261e44eb8988f10fa98b5e9e90dc'),(21,'96bf66a579f7138444d8f301d98269ac'),(22,'ba0bd4d8674d937d4e696f635caab680'),(23,'282d90ff497c5052ec5b668bfddeaa3c'),(24,'a0179af554539030a22ad21c3e54d4a6'),(25,'affb39093e14db9fe1f17465075a7695'),(26,'fe6c46192da2907980b1afd9eea2d265'),(27,'ae1bbf216d2bdf6246de3c7a6c00b587'),(28,'b7c297110d2c66b8d7ac9207896a6996'),(29,'7f73b47e5c99d4fbf5c04cf35db2173e'),(30,'d06930bc4f81eb3892ef88f33901efd0'),(31,'3047380281bd0010334f69ed31872eda'),(32,'ed1108f19ab51e703e32c479165e598e'),(33,'f4462cb8c753afa4be9376ebf89d6555'),(34,'d7c1ce7dca51371f95e063b664dd0f03'),(35,'2d9e838ffb7ef27a0924f2d201df2a9f'),(36,'e3122c07bfbf34746a88e2416c35363f'),(37,'22c8b839636be6c821fecdb1037ed383'),(38,'55c5b8226629011774bab7cdd6670c17'),(39,'5b7032e9c48c8a104b46e5569f3a960e'),(40,'14a9a124fb1725b6c59eea158667a67c'),(41,'a7dac2f0ff7fa9bcd48c5c36491b0780'),(42,'dd6cfab8f19fde2d85957965498c6088'),(43,'79c7b4db77cbe2a49091c6b376092a5b'),(44,'e57f827eda9845063aa8e61f183c1ceb'),(45,'5341798ad8c974a9b04973953f2b15e6'),(46,'7d9875e9dbe83c205ef6d118c273646f'),(47,'0af7dbb3c3fa1e52b88eb01903617f78'),(48,'a41c025f5764a5468300d4a85de0aee5'),(49,'20c50cc44fb3b09505a4296acf65cd71'),(50,'ad2c1766160c7707b155061de7d56daf'),(51,'9b8a2152c1afdd96fa4e5ab3a87a4784'),(52,'6fb68c63504ddc97f2f151443eee819d'),(53,'8d9f3157758b5bc775f59a83958e7f9c'),(54,'08cdf75a05e28e9e29f89a119bdcd2fa'),(55,'5d7515fb76f41c8be0eb6ca0465c5455'),(56,'7286a3f71f518e8cf74ae270be32093d'),(57,'909c31a7e01ff506e037b63d41073314'),(58,'d7a0ea8188e88352e4580abb0b913df3'),(59,'4b22080e313012b852b3f796ed9c7b26'),(60,'ce731c4dfaa01f4beb0e9a3e80f9ab86'),(61,'08d1c371745203345953de0426366d25'),(62,'e725cb13bf0d45e10bdf1a2a85023b53'),(63,'e95516b2f97459734bb8b2f94eef0e2c'),(64,'6f948106108cbea339bd94d22e2f5b87'),(65,'52937420d61931dfdf23f8854f64dbaf'),(66,'1e960769ef44df58eec578595fce4e68'),(67,'0ed5230472cc3e5ef6deca00cd2ab590'),(68,'b01935b9bc7405304551af35d67a83b3'),(69,'3ea198bd62117ed2f6361f61c53aec75'),(70,'dfacb6c34e53dbb4c8fbbd1ae6bf4bc1'),(71,'8970ba2c92b78c57fc4d4d7cbf5d5dd7'),(72,'80b94102741159f968955cbfe5991bc5'),(73,'c33c8944fb72b78afedbceb3353fed55'),(74,'7733e1cfdfba608bb191686028814d44'),(75,'a1dc14a95bfcd81bfc78b0a629d31aea'),(76,'8c75d6185d49d2dcc0a32a05b3f37a87'),(77,'8b5d267b9c979e59830e1ae2514b151e'),(78,'f00a17c659efc8d8256aeefc89f4b319'),(79,'d2f4545d31675264d17d80e4f24060e9'),(80,'b5ccacf995673b5cdc84461d0afa9e93'),(81,'69e5c68a79c68c08043345158d48ae12'),(82,'ce56860fcb7d62743c2c4c3c53919ca4'),(83,'3c8fbd14ff4de6ee433b1412c9cac569'),(84,'5315dc521372a12188ce83607ee609e3'),(85,'a30e9a5131ad24e413d4e8993a0b2167'),(86,'fd66ccce708438c5157a0b0f29e7b0ce'),(87,'00763709577570f5a7c78f672fb99432'),(88,'50fd75add33a72e42fdb5991e5632d0a'),(89,'e7d8760685ccd2e8911767911f1f0a02'),(90,'f1a912cf00401ff1754d2d4e6dcb76f1'),(91,'17c0b7445522ae6a7933e4abd23a4533'),(92,'8930bfb1c77338cd13816dbda4ee7c98'),(93,'714bcd1400479acea5858228a666fefb'),(94,'eb321204d08c20ccbcfb6df789829413'),(95,'edf4708cd2129279f73740ab36e802dd'),(96,'f3adcc52b78b9eec7757f14700795c5c'),(97,'cb1a67064824cbf252e0eac940ef68b0'),(98,'9f9cc402832f441025e2ce3f09c6c37b'),(99,'b60471f5d40d1d24232d14221f5d347b'),(100,'ae7b100b38738b39e2875ca4df92dda4'),(101,'a40156ba7752849fafa1944e930e0d26'),(102,'a921de6e74f0ca5b45f298d7b9b43e4a'),(103,'9d98d33fe78e13a2587c11c6a3e2aec3'),(104,'c6ed7be02a1a9949fe43b6361b85b203'),(105,'cace7635fb22d78e2c06cf1be0b87491'),(106,'06d0ffdb548a2d82145ab8bca1cadfa6'),(107,'0563f11c95e72b2fe19327082cde0f08'),(108,'905bb8fcafeee6583b43a784a601f074'),(109,'1b410b8c825e0e5d1b7ecb39ee4952c2'),(110,'c4f713a95fd6b44f3178240e37bbd11e'),(111,'623ec9e0814ac7a229d5e865b184fbb2'),(112,'39bd1b1ba7a7ec27f7755c629ca4413f'),(113,'9e142d1425b0ca1c2d59b24f518c4cbf'),(114,'67793ac87970e5eae8ca4c1579070e94'),(115,'fae1f28b61a951b7667da54a17f05826'),(116,'d196c5b78de992fe185ebbd6ed5ac681'),(117,'36989e7f416a26ffdf0667434c2f8381'),(118,'2339d5236f3366e8f3a2552fde112ccc'),(119,'939cd944878fc6633b1fe2f2e37f8a77'),(120,'ead82b5df0c541df7770604970946dc5'),(121,'eeb7eb1795dbf540285e2579175e8585'),(122,'a33d59cc996ba28c7eb43c08b4f53ce7'),(123,'1095700c5a5c73ad7edaa93613774840'),(124,'28b3dcefe2f5e2a90087fbeb9561ce0b'),(125,'8b31ab0aa70c27438698d85fa6a4fe42'),(126,'012b9b0330519f8cc87b930084e51d57'),(127,'57f13a66f5da76bc84be89072d16791f'),(128,'57f13a66f5da76bc84be89072d167222'),(129,'6373fb18e8bf3ec2594cb926a791f8fe'),(130,'63e8838f60fb25c13fd732472e5e4615'),(131,'6e0fedb7120132acca95944c4db00f2d'),(132,'5ef3fa388de67a2415c9495d45caef67'),(133,'b56fde8fbf7e8d498597ca5f9c9ebd71'),(134,'7bd4f28be9ffa7eddcb66f4645608adb'),(135,'8191a1b7d6743a09c95c0de5cacc1b8f'),(136,'b981ad76e47782b5e6eb0dbf64da66f3'),(137,'2fc23af84202ca887eb6ca03fefac175'),(138,'b11ef2aa8982838728d0745c860dd068'),(139,'c4c4fb1ba490ef538d378ec1510a9b5e'),(140,'d605b655d96853380ecfca4dcab94e72'),(141,'7a356acc252a7d49edcb6428ebf7d3dc'),(142,'d6e4f22b3c80d930db707ab98c2e681a'),(143,'48421b8eae8f98fbcdbfb0b37344699c'),(144,'0e4884c7adc3328256c99fb2b569a632'),(145,'7131784845ad00cf6637c7ffbf94a1c8'),(146,'fae9d75e30e97ea30f2d39e385b9cff1'),(147,'95d32abe57b3f93baaa0a97d0634e4a1'),(148,'5d016ec75bc9335782abd68aeb115645'),(149,'880c0d8b79d8d2ee03fe8ae1097a26fe'),(150,'136ad392b2dd499fbc840ff5bd77988b'),(151,'44d557a3f6d479dfc500a58818866994'),(152,'611f68c3d12eaad7c72914d5776f6d9f'),(153,'4e4e18f6894c01e2347b34b80d498ae6'),(154,'25312ce1f83a1c061f3ab2887e9fd75f'),(155,'da5e067a38932f7c83e3858f1285d433'),(156,'631cd03569563f11a5156377ed75f43c'),(157,'b4b3028bdde4171ec79a6b65c54e5a4f'),(158,'11ff5af2c85e47cf744664b12fd523f6'),(159,'c5d417b64824274948bfe6752963ce03'),(160,'6aac8dba2a186efb8fe81b842aea3a16'),(161,'c4ca269c7587694b80b856ed4caa5c57'),(162,'aa5313b7170a9c65a936e4db4fe23604'),(163,'33816606301a1a6c5837ec0400644961'),(164,'da8f59108d4df7d8ab9c1c334abf6ae9'),(165,'38e6d897766016707debb6cb85ed22a4'),(166,'779e5b7271b759743af3e41a6bf8f9d6'),(167,'f3a4664ec980ead38b1fe6b2fba080ea'),(168,'8370237565a0554ca6dac73268c5bed1'),(169,'d84ab540fabdd6f838ca9128f1c50ae2'),(170,'7659bc451c30f48219d9a332855c09ee'),(171,'16deee6370416a6e6e92953dcc2b5618'),(172,'22722c555b998f3a54650f055fa4fbd9'),(173,'3caa444878882035765337895c89a97c'),(174,'aead3dd82e8caeca31b5e6916e7a773d'),(175,'9ddb005b20e91656da6b8ed015423fba'),(176,'d5e1e4f7c701560ee415b9da23da39d7'),(177,'27905b93f7fc394ab6eeaa566c600d5f'),(178,'670e68293d282e9dbe4d0b131c029ba9'),(179,'280a8f21ea0bce1ba2aa916145aa229d'),(180,'645e043b7ea7b5712a8fa46787779b9b'),(181,'aa2efa54d9d11bd09a1ea8cdc5289373'),(182,'f17b2cc318ba56c6545810603bccfeee'),(183,'9dfcce56588d479fca9f146e02481ca0'),(184,'0dac39939bff47644cad397b9779cf70'),(185,'bec72df662b7597a50729a05b335da7f'),(186,'5afda121fe4ce4625eebc69c5db1ec12'),(187,'5a9a53d3ecbed15cb1da875c503d0864'),(188,'a253f94f60ce3cf64ff1185282745be9'),(189,'565cb2fd26f6cb08239abf47ceff1b7d'),(190,'8213d9d93d8721f2cc501c158709d9f9'),(191,'9f44fd5390a209eabc6f9e24d310d7fc'),(192,'f6ea7dd4ee5c0e2a3c9cc57f574764a9'),(193,'2ec2af9e5c6aeae246603d6168870068'),(194,'909723c7fa663b56e7f47e87e887a776'),(195,'f073e66c1fc6646c836aa7efc5cf368b'),(196,'a2ced412d8a9559b5d3c21dda363abc3'),(197,'579a13e9fa302af3b22e95a0b159341d'),(198,'98c45d35b9193d3aa43e2c6334db6fe8'),(199,'942669490b8109a5edae6899bda5f908'),(200,'34b9f150cb5587b1537aa7e9537fa17e'),(201,'fe463c3363e27c346e54cae0118a8e54'),(202,'67051fdbbfff0e3a17951ab33158af65'),(203,'796a7faa00fc4061c69e228447b8b4b5'),(204,'a68ba9929b7acb5389ff30d08f79594b'),(205,'fd644072b383217390fe5288c0903eaf'),(206,'d0aa9a1f8627f3a3d33282ea88eb9ab3'),(207,'cdc702996bafc7b3e9caeca7f28b962c'),(208,'ff53c323da7db0dd54902de2971c95d8'),(209,'da6d0187d696535cd9905a2c98738d2d'),(210,'e45f4341c20d51f1d3105e89d1968853'),(211,'54c5310cc4fdc8d84db8b9fd0b9a44d6'),(212,'8c4661f9e41af5a58d5b492410fdfc6e'),(213,'207bd618cc3710fc44ed8d64a33ebad6'),(214,'8cecc9eb1cf71b6fcdb5949aadd6ccfe'),(215,'6e68b3c95d877fbe8da168663e98e62e'),(216,'911d6a3ba98a79cd01364593e0c0cc30'),(217,'d93a32aac4ebdc5bf2fb15f8d767eb89'),(218,'bf3c48018ae8f21d1546d2dea990c1dc'),(219,'17f4d5a245c4625e9100ceaf8d50c1ac'),(220,'a65c15eb6118fda239fda55a0c8666ff'),(221,'d321929ce4d967e4fea0633261c3f470'),(222,'02a1f16e52c635b75914591341f7c274'),(223,'c0f25733cbb1dfb1982759b0d208044e'),(224,'9363ea4ac68d8bd425f54784fc59d890'),(225,'58a886b64d4656297b692531d741190f'),(226,'fb00b150dd7405ffbd3478a091bf1de6'),(227,'0cdae0910bce789fc0c259d799a52372'),(228,'53bb231041172de8ca35c664cf157471'),(229,'d91b9eceb6c225031bdf50236d1940ea'),(230,'6e97f393148317d4aa0ebff0acbc420a'),(231,'44a020c99d5b625e0ff67dc83ac258f8'),(232,'646aeb3403e7beaa2168638d6607a8d3'),(233,'92d95cbbe7a95d0357e56c776a66bdad'),(234,'c7e6b3575c1c89f43f139b5d0b5ffbe4'),(235,'6adefe45d45bf2b7a5b04cb932fbcba7'),(236,'09b3dce1e825feb6f6d09b7ae6faf0d8'),(237,'4a59fea40a6da8b008954117278febfd'),(238,'52a99a757c7d49e63da5fd700c785ef2'),(239,'2aea699be1780883f0a51689ea7cd1bf'),(240,'429fc67e95b426314df53a21a2efdeab'),(241,'77806884dfc560e0e5047d85cbe41cff'),(242,'1aff868c6f2c4c0f363d40733dd34244'),(243,'0b3c8dd8694cc7e9bb809c91fba2e98e'),(244,'4133d54f240bdc5e76215a8f244cead8'),(245,'8e8655fa5b01d4e2c2c0525484a309a7'),(246,'eea27484f0ff3c0af46311a50e1e6230'),(247,'a9b8fdd2c95d2c2d1ccfb6a18bc0717f'),(248,'76838d556f6ce362aa426110032ba00c'),(249,'95b8235230ba688665da8e2981e039d5'),(250,'6ff27d69728d28c8cba0302f0d0f5d74'),(251,'4251d7ef0643445ead8ff279073a7d3e'),(252,'46f8c88ddecf8d78a2a9eb4e1775b7bf'),(253,'3b0b3470a788800bcba77c05e269341d'),(254,'bf6cb8bd0b2612103fab95443d03a15e'),(255,'3ded02b117035d36c1381047d2fb5cca'),(256,'1c54ce7e405f46f7da462ef284cf55e8'),(257,'1f6cf78841ced0a23919e7b21821342f'),(258,'a77dff1c784d5c3c7f071a5e0c714c85'),(259,'2dcdb0637aa0c99f2c65edd2025d9be7'),(260,'95eb25589c15f1a6f1d6ff7d8b7b5189'),(261,'b680c0f81f726d07c6c86951d8220656'),(262,'a572f512484702a9bb889d94eb4d0a57'),(263,'4a93f6694b21e7b4f97086be5b998851'),(264,'d9a60e772937b908d7755c5419b483b3'),(265,'175c830d664782ea2e76efbcfd7431a6'),(266,'cf872b9b014d6189e4cd9de97a9d7ccb'),(267,'d29da470e83c857e52eb11f758b4c950'),(268,'ee13dd82df2e0830a132b6ee12d504d9'),(269,'dcba9c4105f57d9876123c00109d9803'),(270,'509c0eddf0f05f505c4ad9bcdf664d0e'),(271,'0f0640d2044c669cca89d8d236661703'),(272,'11bb30eceedc699450454a9657d7b4f1'),(273,'1245b756f2465c09012f388e46fce3dc'),(274,'359538d426c9beabeb689aac03f92821'),(275,'075f13a1d5f644c555a3aac9b41473e5'),(276,'beb235b3158f4d60e5e645eb8ec99bc1'),(277,'5dac4e0f6e49cf66172e93f356b69854'),(278,'5007dfe9eb99bdcf527d2b1e0e6ca415'),(279,'134f5bbbe55ecc406e4b48fafccd5ada'),(280,'242617dd52365279da1fb48254330c8b'),(281,'01f18a2abe7d712e5201621387047a16'),(282,'1dafc260475e94d1d4b7e707bb9f67c4'),(283,'eac0a0e3e7b40714aa96b443550bf3d4'),(284,'1c435585fdbc9fba9458b684b1e2ac40'),(285,'6836012a62b6f8fbe2fb9c9e15cfbb9d'),(286,'360deee9f507f5963581e80035912918'),(287,'e2b7e1a3970552cbc568def7f923403d'),(288,'086ec2f6f324cb6707f93176aee574c5'),(289,'9b7c725d52a0db2442ba5e364959704e'),(290,'0e34f349a02e29d56fc4825f86f81dae'),(291,'58aeaef102444553c72f86fbd8952e5c'),(292,'23fc3cf880479010b7d9ae5329ba02ff'),(293,'c66bff012ea432d85e6afdad3c3b1dc1'),(294,'5efc93b42fab2363f62a325bc3782e1a'),(295,'892fbee2b3d7f6b484d117b86fbb3d1c'),(296,'5db3eea79006a71d2436125583dc61ce'),(297,'2274371e73dc359035284d8ee8cce0f9'),(298,'47bc41314bfbff00baa3276b65c4eb52'),(299,'25c76286b6fefcf8c8da5038629e1f54'),(300,'e0cab8a90a90bae67ff255ab34494bb4'),(301,'1bb55f1a5c0b8c5cb7d1ed05905d3c8d'),(302,'55a626087fe1c71dee5d862985ab5fbf'),(303,'b8755c85df20b7b9e051d1b48c16e47a'),(304,'a8aa253e6e7c39dd3e76e14c1c8dd9e9'),(305,'da17821d47dad8e50530717b6d440e77'),(306,'9651a282850407028abffdd114819de4'),(307,'eb6c3293db62c8ce21ae7bbefdf4127b'),(308,'ec75de115ccafda0cfc3a16949b3b2fe'),(309,'0cef87531197168b2407f8169611cd76'),(310,'47dbccbba42eea7b60a6b5d3d5064361'),(311,'696bac091ba762ad045e9b023c5deb11'),(312,'a2fa75ade7af5fef9a9c10f1e2c4f7b3'),(313,'025c12ef03fe2eb619bd0fac758c45aa'),(314,'bc0980a21e2dc5cd5d115280b7228b0f'),(315,'a3ea46911cb970354c6a93343883cf92'),(316,'2e14bf36f9b4dd6c71c58e5dde2bcca5'),(317,'7719f9ce1a114a5861a15118143983ad'),(318,'250ef0688b081efb405da2551c5caabe'),(319,'bb903f0b3ca6f2c4bf1a8a98961cc02b'),(320,'66f78b950d177236192aa1c91283d28c'),(321,'5dbceb4f01ae673a9f427d6ea0a6129f'),(322,'e4ed7a28a5e256812b466c9950974421'),(323,'792460ed4a6e803391a9c5960b3bbbb6'),(324,'5b32a5e1c785320d14f53c70d9002f73'),(325,'f5b0a61266b2b5c6552d48bbd624a000'),(326,'c2a071e70bec9671326c3336801e79bb'),(327,'45b917a3ef6cea9db53235bf2b301de6'),(328,'4d2944ac0b65e7ddc61ac1a5e401314f'),(329,'b46e230c5fd73eb492bc5588873222e5'),(330,'3bbe97c51a00a054c310e9aee688f66e'),(331,'5d2c57ca960c52ce4e234ef01effa726'),(332,'d7969a94b67b50b6c3979ef8878d019a'),(333,'31045629a5bdf039bf548cc10f740d0a'),(334,'74d86a013807e3b63c0a7627e57ea86b'),(335,'1d16daf1aea97efdc6c006a867279c23'),(336,'8d01dc75ca64d44eaa2ad9f74289fb5d'),(337,'8a31964d1b548ffa0570fde2c86e6c45'),(338,'c1e130cc157ce0196154f2a3be59146b'),(339,'c3cf483d82a73431e42ed9003a3a0779'),(340,'126d431a791472ea6c66624003d64c08'),(341,'d9bf5304dd046c23a01bae45fe48b021'),(342,'9d9c6277295b47c0df2f766560960dd5'),(343,'025a8386a1c478765da065b8a00ce4e5'),(344,'c3e5ff424592f8a80f3f5d45ceb5d1b1'),(345,'1aab54062ec311acdbd00f6662d4d867'),(346,'d7f6b3e924855db1fb8302b5993059b9'),(347,'fd61408eda6daafe9e42142ab5e1719d'),(348,'936a7a2eb1e7fcf215f67994467619f7'),(349,'9a4847f60858487b02882b3092a8f92d'),(350,'4ff49d5fa0d02a3c6ab8e7801faa675d'),(351,'861bffec942a8f588724d9223c19f675'),(352,'f0f2ec57083b6fb7f4fd56fb1297ffa2'),(353,'bca4d194d8619e576f3a00cdd9c6c3bd'),(354,'046ea892db9ba48471a160393f37acea'),(355,'47902c2e10b65ffbe2dc8f36dc65d08d'),(356,'38a9f343cca43bd52ac42ce3339bd688'),(357,'97bbbe6189da7ae4b4053d3da8b81c25'),(358,'1d2c1652ec126f29ef0bb2c02e5821d0'),(359,'333d297a41d38a80f66981305d464c0b'),(360,'224e20a8ea18ba0f4c8b69f5d6a875fa'),(361,'c204b69ddcd54087627abf2b4282b28d'),(362,'d4c021622f17a7513ab38563b755254b'),(363,'072358fe24a5dbc17ffcc5d8d51dc969'),(364,'1e90b691eb7f77d3710d98d48b9f7b6f'),(365,'6ba44300c30c8f69ed40b2b9f025764b'),(366,'6d5ceb50d0362e9c0dd3241fd1e04dcc'),(367,'604a6110f936ba4e0179f80eb07dad27'),(368,'c667c81412a247dfda14a357879189d7'),(369,'10cd790709f5313e0a59b8fcb44dfaaa'),(370,'8d3a715fb1f1d0c0f8c12699d4361064'),(371,'2599ba7bd0036a33764d6e8617158da4'),(372,'f3587bd900797da2e4dba9b0f5acd990'),(373,'cb686a50247b01dc9bb8ab6b1bc30902'),(374,'b458bef7d8fb920a7c369b2a7a0d8b7a'),(375,'53886564639667bc005f8fb98e6f118e'),(376,'ba0384c3dfc98a6656d6efc77c21cac1'),(377,'9813061b80dd1ca33f47fe67d717263a'),(378,'112348396d4652408c11fd5d54392fad'),(379,'0ea656a20aec76563e76ab157692aac6'),(380,'f0efb457a6d2a0589869f03846797ca3'),(381,'d2cc308c7658795ef28ec6cfeec8887e'),(382,'a43d928330938d5ee959ecb0d640d739'),(383,'b0eed6550ef8c327d8806e0e9472e2fd'),(384,'d03ec957eb0456b30f571995b0cac376'),(385,'3c02e451ded64e5a6568929242ad4417'),(386,'f0a006bdb8cfda4d49a18171aef7166a'),(387,'ec8f6029772cd66f3c39e30bb4595809'),(388,'e6373c3878a0e9d649b9f30305673bfc'),(389,'f9322f0eb920bf3412a06c57ec97e429'),(390,'8e7099462005cb9dce6897b5f8a3fb00'),(391,'1659b945de2a8912db2d1c748b05efb4'),(392,'aebea428b8678bfd6b6b8501f4c2e46e'),(393,'118caaae2f844c7508d6a6fca681adae'),(394,'770808566893d010349a6e441b78c5d0'),(395,'a40abada2a83c5adf41fae89fca14382'),(396,'808028b9bf765d2305da68b68ea50370'),(397,'343929699aac89bbab883f0cb83c85ff'),(398,'74eb6394301220127e304ff1858244e6'),(399,'de44efed347a4ffcb9ea1189f0adf3e7'),(400,'333a459bc9ca5ec1a2e4528fbeb6e5b5'),(401,'0641fc824e08ae1d160d5442536bc15f'),(402,'7afdd612c68ae5101bd02d549b44ad75'),(403,'8684df773082169ef026d890bce72086'),(404,'c9a7957455c4b0a6c5f393ebf808e7a4'),(405,'9777b7cf2358f125451c008739b1da2d'),(406,'43140956d87c97430a8845c2fc04b59c'),(407,'35356bb4b470cb6ea04bb8fa1bb68394'),(408,'9b3ff191ed4e7a9cbd9e1f408bd18239'),(409,'e468eceab5c56ea207e4d8b55c4a1d9b'),(410,'e41f63729fad24246cbff5e2a4863ad1'),(411,'9713d784c641c39c18644fca21aa8bd5'),(412,'9ab78068980c3299a2560478e0771436'),(413,'9ac65aaaf78738d8fcddd9799054725f'),(414,'32061dfeae4a9593aef1d58e673b0fa7'),(415,'71c6df8ed948c364d0d75d35311b3fb9'),(416,'6322156aa2ee8983d788e2952ac11690'),(417,'058d1fee0495939d16bf9cb648af0f23'),(418,'8a16a2ed347c8d8617bb307c2e53c4cf'),(419,'e3e856f93ee59634efc2539e352dd7c4'),(420,'602e28139dfe1054a088ce1b6be2ed41'),(421,'5fe5f69f6d733be1028bab3d3915572b'),(422,'94257c2a240f92c8390a68b190708f72'),(423,'24ba249e0247b9568a58955201370aca'),(424,'5dd3cde646afd8909522587e6cb598c4'),(425,'01962ddcda468985b7ca6592e75e32d3'),(426,'ecad83fa8306e39b780d8f79cf1b9a6b'),(427,'c2ba7e7b5e1b961ad3f034e60854c8b5'),(428,'2e96be0d6fa1cdd78aefa9f910f2b4aa'),(429,'8169ecd946398b2c462073762394ea67'),(430,'edee4b601056ae1c4181ab6111aaf385'),(431,'1da6f7cf4c8685db68e54c3c57a42c7e'),(432,'9f3591a515a26f74a212cd6d378dbbab'),(433,'32d7dcc17d0737f635b3a45ef2b6176e'),(434,'a64c92e44eb2524d76799dce730d9b79'),(435,'dc43d64f7baae985edb09aa377c3b90f'),(436,'7d3c61208854c0fa81ca960c06ab4d3b'),(437,'f5a96f0ef1dd37b84c814e7d7d5e96e5'),(438,'251e9528c1f35be932a39b579b455181'),(439,'fd2fc1aba98de3e6ba6a82cbc5088c37'),(440,'ef4d3f343d1cc55b5d53cbacc26e2a99'),(441,'210f0fdf6cf6c4f2acf295bac34a3203'),(442,'4af8b020c11058a8774f88c1cfa4f9ae'),(443,'2210a0345e33eb13a264667816aa9f13'),(444,'e2b82ffc605d936aaa395779a998e8de'),(445,'4a67a5eb722d4fe56f7265c10a1c81f0'),(446,'731ab7cdf23a218f2ef0062f6eb8dbcb'),(447,'dde022c2bba11447aaafec6d828ec137'),(448,'5d9d1ff6b93c4549ae2031500dd410b9'),(449,'3dcaf2840a8bb69aebd7eb3b50e35d42'),(450,'599f9d8e5844fcfca36d14ed973b1c23'),(451,'f931b743e9344e1283ecffd564931662'),(452,'fcc417ac8a2c9b023841d6f6b2571a4d'),(453,'fdca791a615c757f8a0127c1bdcc42a7'),(454,'ba4e65532ac6b36316ee11255b264443'),(455,'ce995509ef75028dbefd6c60742730b0'),(456,'78b30b42963dc444ce2c319776d4e540'),(457,'8f14b29dab9ffea4ea9a562ab5eec4b0'),(458,'6fdfb7865ec06eafe535b0cdb8422cdb'),(459,'ee27e0272ef6dc271017be5a57efe372'),(460,'622f66351e3e0b44a21eeab44ad767d2'),(461,'bb81a66ad36592ca30b9854008cb6319'),(462,'ba9d2366bbd2315277b1a5ffd9d9052c'),(463,'70dea03adda7fa30d4b549637df7eae3'),(464,'3b85a31a98759f8ccfcd15b476415afe'),(465,'87bee7b2465aced4d9c64da55ecc5e8e'),(466,'0a5e3170d1f5a0e466e6524a41b06175'),(467,'e4a78905f5f9d94326227270e3be2016'),(468,'fa33085d5cd60ebb2e409af209582e30'),(469,'fd88f75f6a8581cdfd17d0d24e32ec1c'),(470,'1be1198336ea89a44098df377146a47a'),(471,'fdcd475c8161483edf9556bbfc8b602b'),(472,'deabf3f586a2af12f0367a2576a1ae8c'),(473,'01f14ae6fffbd3d49d1208f5fc78efca'),(474,'0ae71b33e57d0cb8be3cf2696f0762ef'),(475,'eaf26795145d083fe7d3fff415f0a346'),(476,'2ddf9a47f82ac83e7e8a5bea844eb1f7'),(477,'d02a927283219f553d0b92c81b652d0b'),(478,'b00d073ecb78e98a06164de9c97a02c2'),(479,'a1a33145089a6e72b978a90f5ee116b1'),(480,'a7184728ddfba758ce611a71b2142c34'),(481,'fee3b834bea0e265d47366d5dd10c41d'),(482,'75982b745f083b5efbe14eb946e96a4f'),(483,'6bb49630452a2e331e0d7aa3d3a0809b'),(484,'1ef2e6e160f9089240f523bff964c55d'),(485,'62e85d8b31408ab8be31fb4d560fe991'),(486,'2a2372f00456c702c42b34ac1832e0c3'),(487,'43bb07cca5a2fa3564be7572dc525590'),(488,'bffd665eed1d6c7b5df7825e8101ee4f'),(489,'b7cc5e2274367b4b6d93b61283232d04'),(490,'070b2724023b21b2c3217a50ff49e8c1'),(491,'28fffaa6d1352799b53686e7303af5d0'),(492,'4a52db6e73eb168ea1d94cecd4c7f2b8'),(493,'85789deed4a0bed12c35cb6ac33207c7'),(494,'15b0219ffa0dc544bd825b51a5a8a1e6'),(495,'a983dfedc219c4f36576d4dac9dae1d2'),(496,'a1251ac9196e563c04047a63006c366d'),(497,'7f9d0f3d77d1a01df6ec908bac4f29eb'),(498,'38a18ea8632f21bfb7b0616a5219986b'),(499,'f870150b36007670a0380110d8889005'),(500,'460492b73bde43bb2754d0adddd4b32b'),(501,'e3db385c89b3003c0472ef20e2a84ac3'),(502,'564c1a1bd3009fa5b2a880dae28c9b5e'),(503,'a33a30dbe481e2dc7ad0ab947e37e6d7'),(504,'907c52d4d7aec08f9cd0faf7ec2b99d7'),(505,'83e04a168805821d262c6191d5f27716'),(506,'00d37e52740403310d6d15330d71bcac'),(507,'de8ceea29d6f6fbaa95d04ef6b92d4f2'),(508,'e01068d9c087e517e5edbf5284171f0b'),(509,'c1c7f1ffed3d38ac20e162ba246df4a7'),(510,'75cba17f54b8e7a984919a080d685fab'),(511,'c227a9c4b1d34dae4f4387a02703d896'),(512,'f7aeaedc6e5d578aa59fc62a149fc37d'),(513,'2a906b583a7b741534b0ea2206288025'),(514,'ed005c1265fe98f7245aca0313c508bc'),(515,'176f0e81c80f31d099f96ef323d9dde3'),(516,'45bc85bd814fa58cc76af6136377d3d8'),(517,'22ac7be5dbc7ab59fb686b0d3e5eb3ef'),(518,'351cd08cba5747dc7c646244f50ae9e5'),(519,'34781603a546548be85cb6a5f6442190'),(520,'1e21a31ad63f24a6dd0165d9eea4e741'),(521,'b3a769edde7e7a4b2ae0f84a170a06b5'),(522,'50ea693d431a0f7d47cd0660a871ffa7'),(523,'6182883363dd8c8d37b3dae769b7c938'),(524,'de6242312c2accd8207d700386595037'),(525,'6ea72fe02a858d33f7c6dd481afafc33'),(526,'86802f4b1217f36b5aa46cf90ee47c54'),(527,'67aa3d0b92a61b8ea5e847a15c37190b'),(528,'92d5958fee32e1f023cf76ec813e25e6'),(529,'8a5e63a1daba80efa87a183623a07b59'),(530,'8b9013d43e9be12f85334ce62370279f'),(531,'e69fb694112f6f3a789fae1440dad6a6'),(532,'06c48ab35b344a2ea7179d93bf6eddcf'),(533,'b7949419b9c1573e5ede3f5c207bad66'),(534,'581e32e2547efa8913b1ba03300e693e'),(535,'a69ec54cadbec8fc1adcd27fc68821f7'),(536,'e1a36f42afa2aadd06ad648b7c80713e'),(537,'73a79cbb971deea7946238febb738149'),(538,'9fd4ab5e149aa393f9110e962dcf5539'),(539,'920652ccd53647a12c250a5f5e331dde'),(540,'9cfb634702ae4171d3fb27075eafcdde'),(541,'bee3fca5ab844de9931cd9dbce8457d2'),(542,'e3001b4195ac2a48550d4d9648ec2153'),(543,'ff5ef1bb0ff07a3719a70d5b9dfef42a'),(544,'a876989141545450defb152d6ec02aac'),(545,'5e62bcff3507798dba0e32648b2ecb32'),(546,'28a6e62be877315bd5a53d814957976d'),(547,'7879864ad0d004b96d3344ece0d51ba5'),(548,'79acfa9a350f011687a468634f254f6f'),(549,'08bc322cc2c4b6938a4e2892957ea97e'),(550,'286340ff22483879886ff34f9d577ff7'),(551,'6a0f16d412a44c191f96faaa2a83e002'),(552,'78ddda073aa9140a9c70966ccaf7b5af'),(553,'dfca16f975f5bcce36b0dd6223d1df08'),(554,'c2437b0fdea25979ac457b5053bb48d3'),(555,'309ed907a5261cd713b45000b52b3971'),(556,'60d2009423429603fa4e4c13b0cbd903'),(557,'063658f454adaa0d0c5e435474fc8267'),(558,'70b084efcaaa2b486efcecfadaf7da74'),(559,'7a38507c5505371d614c7399afabd028'),(560,'9c03e70ecf9524ab84ed7410be5df1f1'),(561,'eddb71ecc734df7605b17537d81f0ae2'),(562,'d970b7058390ab042b3f99d096fa0ffc'),(563,'6156129f4fe487cd354d67d7dc07f107'),(564,'67d4efb841eeaf2252fef4c19b431222'),(565,'3668e056a65adb915d53291253dc017a'),(566,'c08399c0cc29d62f6f963816094fc44e'),(567,'0d82c2521e147c2af25e55597c0ca245'),(568,'a6a79f2da0c2f7786ed73550295ac6c9'),(569,'aef5b4a502bceef99bbdc7dffc411a62'),(570,'48588b5f56956bbdbfcb2057c0b87f4c'),(571,'863207cf8af777f2ad969ff79480d1fa'),(572,'16557e5e1275ebbfa72f0d0b3fb82636'),(573,'360fcf5fbb6372400c567d3659481fd7'),(574,'f7ccdfac4f2e013dd50871f7ec397717'),(575,'6fb568fbf958b8f098fb03c344b888ba'),(576,'75a4061bebab2d0fa99e69a0bf50d7b4'),(577,'259479810680b0f94a2d4a4739ae5b23'),(578,'ed024cccbd39ccd9dd5a68c07f0251ec'),(579,'fc77d4fd29610c06fbaf05c3d8425302'),(580,'de46682d5a13d736fcd923ddb0cbe814'),(581,'e21f2babf647af5d66bf7d5e3d34adaf'),(582,'54b0fd12603b31c9c23de8faa15e9129'),(583,'8812dcbf71d81f2cd6a0ac61026522d5'),(584,'5ae9c8e801d3a84f89d811002e9fb8e2'),(585,'e5395a4a4ea21f1ada0fc3d0d043d372'),(586,'6569b1921ce39cadb1d115ac390942f5'),(587,'9727b1363cd57b06613fb11227b59970'),(588,'06ad06bbd9a39b3705c503ab7e345815'),(589,'3adda4e639e30c3297584abc00ffb143'),(590,'fac30ba0ff8989e471489c921887677b'),(591,'22a5023780d98691bc09829b8030167a'),(592,'ca4ef36ddcc638a98ba3195a2b87e0bf'),(593,'86c43140bae0857589da378102c00e8c'),(594,'cefe6d130bc8916d098b7df3cf01eaa2'),(595,'98f394095632a14f101501521c85f6a5'),(596,'fd30078e2ba01c9957ea5e8ea1f06225'),(597,'d529806455bfccc453494db72af543b5'),(598,'d9addc6ef10f34c292dfd588947aa154'),(599,'02e58ec7fde35fe060e7a19d8a873123'),(600,'9b66cbc5a1e0ad7a7800b5c5c5709548'),(601,'2f64a755b13d517d17c7b1ebd478a147'),(602,'fb5305c29b901fc75a05f9d8405f849f'),(603,'05d4efa8db002e1d1cc9d6c0392aa0aa'),(604,'332c21ed8bec8e5a5cfb19d66946bbb5'),(605,'e1c712f40ba231645f0967644be80738'),(606,'267c30172e1d952ab22cb1be460a54c9'),(607,'a54db8bc70f481a4aeb555067eb2105b'),(608,'39a7b284c40a682efdf8bf6601a403f7'),(609,'078972dcc74959bfbba5875237db8b08'),(610,'5b3aeb6213c0f7475373948d2dfc8eca'),(611,'672307996f95a441778a391840b9779f'),(612,'604679339dfd54e5bba8e14e9721b537'),(613,'d6ecbb5cf91bcd33dd5395daaa141b04'),(614,'e7d8fe8e2748ae083523a3c57a4c43a7'),(615,'f6455763b7ee6d4cfe3f591bfd36ab7f'),(616,'1dd0e7cbefdfb35caff95c39db990831'),(617,'d4dd21f954a323a6bb247e447bad3d9f'),(618,'4f4b03af67daf61a2929371a0e1cc715'),(619,'93388652c0df4a372b2179107b8705d5'),(620,'f79e0fd1bfffe859ea14e278405367ab'),(621,'98eba281aa9ea1f590f7425bcc26b07d'),(622,'f2d94d11ea387eb1b40f993efdeffd69'),(623,'db9c2cf3fa10cd4e5b874647bb6f3776'),(624,'1932ac796a1ac58dadf3590cd63102a8'),(625,'499487deffabe86eb5e0e0d2e4f5e3f8'),(626,'7d7794d0937da7fcf23b3e1b48e4d688'),(627,'effc23b7980a9af8ee397b162217a9fc'),(628,'430b95637ada943637bc29543a1fb922'),(629,'a28c6432cb2bcfa2395810ad78486bc5'),(630,'28e587a56183b896df0573182d769165'),(631,'45d7a5779464e7865fd103b854f15bd8'),(632,'eab139284d2b00e9f13c1227d0d73504'),(633,'24900032ed08765544cf5f36b3cd01b9'),(634,'8ae4bc56f1f9a539945fbc02d619b4f4'),(635,'c018e6b614803630131d93b08185c292'),(636,'7607e200192aa8f8efa8ecc0897196e7'),(637,'c935a530eb8fcc73238fd618299d3cc5'),(638,'50ac13defc37d5e2c692eb3dbc0cadb2'),(639,'3a170a7bcfb5071d492fb8e4f55dbd04'),(640,'4369faa851c5d334d3c89831d62bae87'),(641,'192dbf5ea3143e3a1cd5ebf9bdfd0403'),(642,'46d801671668176f81485dae84fbf3c5'),(643,'ae4631debeb5225c84d3825754a68a96'),(644,'da18f2b1ba7ca6e5cb87f6849fcc58f6'),(645,'111'),(646,'653a62745a598dbd07d0d81b267f610a'),(647,'16fbbf5fdca6600a2176aeccd7c888b1'),(648,'8810e044fa71a27c57e602e75b331d77'),(649,'7d13585f83c072363a3b520746fa76ae'),(650,'7d380e8d808be6f3eea6b6f4f1ce5b59'),(651,'d4edcad11ad3f7d1aa223f31a1fda4aa'),(652,'86f170051da847a93b1b3f0f999754c2'),(653,'5fd8b6de1965a3d4d2999a63d033e7b7'),(654,'327822aada493a91341d277a2475bfde'),(655,'524f785cf54e4bcdd12ea15f51399573'),(656,'32b014a2dc55e16bccb587e742b6128e'),(657,'ba2db3872c53c762feb0d9c8f61d4055'),(658,'d14b08e264f675a2280bdeaa66db6a10'),(659,'8074339b7de50cdb0a7bc5af218ef125'),(660,'328fa00f5c13dc5d5a8404e5eef0d282'),(661,'575d1799f5dfda928e2078ef8bfe2f41'),(662,'92af92bf8c5b14d92fbc55c599edace3'),(663,'370880b16d7d2c437274efe78ed1fef6'),(664,'2f391b5c6a19e09b48fc90523de7698a'),(665,'9051da28c716229e145e5e58a443c748'),(666,'8788f41fce498a1721e0d65999d0b085'),(667,'f97dc27ef60575ee7940417c2e4e59b7'),(668,'6712161267ed218075d4ba3aa61f2011'),(669,'4073985f5adcebe0783620ee180a979e'),(670,'baaffebea410b09a56d8d466c9f5c5f0'),(671,'ff5ac5f90c4294dff2f134314cd2ff3d'),(672,'5d2f5a6c80f373f2f835b62d748d2e65'),(673,'65a7586a4d8802f7e60fb0709c77b594'),(674,'c22c0f920a80eae0a68f797e13078267'),(675,'28c073c27650bd658fde29723945c5a2'),(676,'77246e21cba222deb39bcd8148766c48'),(677,'4c7596c4c33ad60ae4225bfb5a1d40c1'),(678,'a0b663e2e6bdd22932da358b11cc9f25'),(679,'eb0e7beb18957690d5af44d6ba4226a8'),(680,'37ad67f274b30870b5d923d01d4291c7'),(681,'73165fbf81b56bcf41b2604a5aa3caa7'),(682,'ad762107d6b36af283835a1670efc187'),(683,'75f87d8eba3a025b0643f61fc6d5e792'),(684,'126f5cac89d415e18ee4e1fab1f8a595'),(685,'1a2d1e8c09a65c118a1a8f46039afb93'),(686,'c33f95674ed20e062e280220e333f1cb'),(687,'7b245d848d05b4964b799d3e45af1757'),(688,'e35091c88ba8855a62be2cef49fe29c9'),(689,'d75936e0c6c0c21044ee6357f179e581'),(690,'9a5744b5962adacbec3885c86b508f0f'),(691,'b32198bdcf2073e4727554839955e21d'),(692,'48a32c701d31ba30d80950e01b67a893'),(693,'f98cd06e215d419678df4f65017d63ab'),(694,'487d5efa23ec05fb1f61f0dc0647411f'),(695,'df1141af417bde15e07c2c2bc60c0f2d'),(696,'065d6e371b3069f36afbeca9baf4ecfd'),(697,'3b69f4b38e10adcde23e935a0c3b4a6f'),(698,'9b43619d06dc25df36b8ee4190bb39fd'),(699,'98a2460c0f7e7b0184773e79957fcc7c'),(700,'4d9c24a7b3502abde7500178a09267ef'),(701,'e66b0fb8ceb884c45889d1dcb8c0d916'),(702,'ebfdc7cfbce18551793d8065f9643a8d'),(703,'2cf3172dbbfb131ed2c5df3c204299ba'),(704,'fe9825a53e2f8b448657cb7cc4b913cf'),(705,'a1d4b014ad3081b3b0359107ee206ffa'),(706,'68c76359b2742fc33daf12d4e55a602e'),(707,'d17c33e472cf74276aa44e206d0269b8'),(708,'56dfc2f3531d13503ecc88da2bfd0eaa'),(709,'1bff5677220cd24cec0c431fa8c185c1'),(710,'50f6a1772a1fcd4cf57776733e1af518'),(711,'971897b781874695d094609a5f05b3fd'),(712,'1679d3d795c3549c2f1d121ad28bd35c'),(713,'4197dba6935d46dc9d324f6cc4e78e1c'),(714,'997359a5d5361e3269a6dc91b2348c77'),(715,'8651d4a10a11f301ed14bcaa3ca0e6da'),(716,'ab241bb5dbb258260a951cc5d74765ea'),(717,'d4385da019b85f24997184d45736fa1f'),(718,'8371ec33cd71e44ee3680e3c908ad594'),(719,'267bc1dae642ad8b925d0e146b223be6'),(720,'f8b55694853231480ac26953c175e4eb'),(721,'108a780939b21e995a23689425da7e27'),(722,'0607838cbfc5737e7435233778e67dd0'),(723,'bcd47b4f47493a5e6f7bc3d9a578e1dd'),(724,'466e11a03a6e07a502b9decd4ec8eb00'),(725,'e7356eff8b0e2373a31addba2ee48e39'),(726,'3b2b0939c21ecc89f1e3e05acc294f6f'),(727,'d17ee0d50a5f93116c97eaf26a7abe4d'),(728,'a4760a0172518f98903983b2ea00944d'),(729,'339232c077b1d51570a433aad242a7a0'),(730,'a8ebe38b39627d61f2919799bafa9a81'),(731,'5ba9f222be2113d9882b1a9dd5e52a18'),(732,'1fe7d7b29c0c19e421a178dbb8ac5d76'),(733,'714a53b8257ded3fbaec0cc7225be678'),(734,'6f887def66d750022ca15af8be4eda7b'),(735,'4e587dad5244a119cf87f1ce6b406abf'),(736,'4c6caffc1135133c8ab9383b4873de03'),(737,'e4729c3464be5777e71040f75bace27e'),(738,'1f6cb9a69121fccd3d0419890a1d8b44'),(739,'691d2a260074f8dd21869bac60b11ded'),(740,'1a7b7f685521b76cea36567ef94d1d39'),(741,'a6480fffb068104db9a20a0ec77ba431'),(742,'43e68e2f657c934bfee621f975a95f25'),(743,'601cda2242e4d1c7f3fcf18c54098e69'),(744,'62e330d863993f19a555a1eb187c694b'),(745,'8fded2dcfdae70d54bcad24de411c0df'),(746,'1be1beb163c891ba30b8e7748f92a02f'),(747,'43febe13f01139c36665b19165af15e5'),(748,'910e38d6a0a17e40f077432741dee097'),(749,'9d03b71da51ae248eb05ec8034625de6'),(750,'2b870c33092ddc9944e79ba0cfa9c1e2'),(751,'9f184ad6f5c2548f273f389a686c6ad0'),(752,'0b76550802b7862d0c55e700880ee505'),(753,'4585fa8d8239dddeef36154148c63493'),(754,'6a82b16c7cfdb9205b97a47fb2f41603'),(755,'f957c05fbcdc5da4c974f9771a20af20'),(756,'f66a31ee44f332959aac7232f70f4b38'),(757,'480d74c7ca4431f8995b4af2b6ae07e7'),(758,'63cb7e6a8b10945098364a15579d81a3'),(759,'f6aa16b51ab72a2b513b66a512727e3b'),(760,'f58cc0c559cba177ff1b19d119cd064a'),(761,'f687253bfdda89bffe1111d54d845fed'),(762,'b30a8b03ac6dfc2bdce67969f4de8cde'),(763,'60e3d2ffc409a31538c429c8c5ce052f'),(764,'fb11941da433803b2e40d5a74683774f'),(765,'bc07b75d7f6958e3e2090da63adc3305'),(766,'0b407d3e95f1a04da1c0d28524fbcc9b'),(767,'c6b7086f594b98b5906150b7672f01d5'),(768,'b7858f39ad0cabaa5e8bbf2a798e6cad'),(769,'46ef85d4e65fb00e5fcf557886abd6aa'),(770,'ed3793b0e65eb7201b04e2603937afa2'),(771,'079b2201501ecb640a77ed51991da292'),(772,'8cb354a1cb07d93e91db3e05d038ab1d'),(773,'4e10540a14a09e9480fe61fcde6e84ad'),(774,'867f7a8f0020ce9b1a368c45f3873b2a'),(775,'0bf740aaa014c8e20780edb74c723bab'),(776,'2fe30da01be0c34e19088374d3bc9b99'),(777,'54294facfda5d79f828cf851a193218b'),(778,'484f749731364e17ad3c26bd1721717d'),(779,'2ce8d21227965590f5284744c218a6d7'),(780,'3288dcb063b7e4c6c3a77e75a40030c8'),(781,'94d4e42505fc431701fef2eb55e086b9'),(782,'89e9e8ba1fd2b568bd8696c20e91b5ef'),(783,'f6ac3acd6c7c6566b17b6041a54a9c05'),(784,'7fcd645b5536b0ed8a076515af76ad71'),(785,'3a43a341b5bc448fb4b9fe9c8f4456c7'),(786,'8dfd0afd723c2f366b2036bee89f6ddd'),(787,'ccabf09011505f563b25e3c5263747aa'),(788,'a41518e1b1f9aa671891cee0c52784e2'),(789,'c8ed6315f35f4dbcbbeca4ecbdfa17a5'),(790,'5359a4371d0c24945276ad7802a86ecf'),(791,'ca9d093008fdbf4a8e0130f1e651c196'),(792,'57cee817203f1474768895987510952f'),(793,'0f9e148a3b567ad8ff0ba71296cd82b8'),(794,'c6302e9904a5b1ffd01538a97ed0a893'),(795,'eb0735f5ac591abddac131b8f51651cd'),(796,'5fcee035c4269889fcdecdeb66d3790b'),(797,'46cbcdfb3bfbf6f3ed4d84b303a388be'),(798,'d69277f8fcaa4d074f4ace9e4adbd658'),(799,'31ce5ecf1c5bb87daee9abdf2949352f'),(800,'c55e110d429a2ddb630f9d799a30f075'),(801,'c011bbf2d120fe533415b0122f617efd'),(802,'5a2452ed87c679a8613509c5989ff268'),(803,'f266aad075e8e92962cec838f2f1ec65'),(804,'d1154f9dd5e7c87743b3b0659912c1cc'),(805,'6fd8a5aa37a2ea58d8768705340a440a'),(806,'2c0e481ccabaf34a08d8c02468667c66'),(807,'5b3c21e3b3592666bc17abc4a4422fac'),(808,'f2e67b112c96a036c0b5690ed6daca4b'),(809,'624257d27131801673390fa99e7d43d5'),(810,'69ef19fba966d6bf9de66537209ad197'),(811,'40607dcee6f151207f6cee10538f03b8'),(812,'0b6c41275c30fdc9119bd7e1c79a7cd9'),(813,'61337313f77e033eeeecfe1cc0e69933'),(814,'5f335b2699d99f0676b69d92c18d8148'),(815,'eed990e4352c2e9c0103d40782514ac8'),(816,'ee984fc339145e8143ef04f470bff35a'),(817,'a364ac2929e8e6a00c7e4a3d30e5e496'),(818,'7af78e6a5fa6a8a1c30e36477991c19a'),(819,'ac7e30470492ced7c3b96a703256a4cd'),(820,'ec2cb5650dad3a7b185586eef4582a46'),(821,'8d74282a0ab3fa74a07d2370ad3d2b3d'),(822,'5801f89506a571a9a950a7fa4e87763d'),(823,'816b748fe8a9f5f6cecc7c695ec64c62'),(824,'3218c5d858dc49b15ceb7853864cd0aa'),(825,'bbcc0faa50656af64466a237e73df6f0'),(826,'189cf3e2e33beb56c41cf757326be7fb'),(827,'90c09b38ee11c4bef46bd7989c0994d7'),(828,'ac4eb4b8ad07776e0825da858a37998b'),(829,'d1cbc931f33a30c5b2bbf9229007fcb9'),(830,'3b095fcb932bfd0b50a68df081bead58'),(831,'b70a45838a2354bc2a96c74772425f2c'),(832,'f01be6103a312f7b335e0e0148e566a3'),(833,'67a599364301bd01ca4b5952c9f4efd3'),(834,'5f6978ecff7dcc146a0592a2c7b0b3ad'),(835,'044c4873d175e50e9c5c6ae688a4c503'),(836,'749c4452bda4a505cf36f71b24355828'),(837,'c3b08e8ee4e6d6819f7512575234c89a'),(838,'cb29b149ed203be9f13857edbc43c8c7'),(839,'764cdeb7aab7df7abe2b9b21d8225b81'),(840,'307b029dfda99f9de0fceb9b6ce09dda'),(841,'9168a4f77616a7a233f2777c8a7cdeb6'),(842,'6af6bd1717dafc2e40c9663055ecce2f'),(843,'3415fbfc55914aa629224325f1b769e6'),(844,'0c13c478c96b50097af21ede9775c278'),(845,'9e82ceb73b1c61743703fc5c6fd1fa75'),(846,'9e4bfbc040fa6a6621646225f6b91740'),(847,'e0581b68d7e7bc3e833fd855262d1ee3'),(848,'c165d2185a2672c277496fc57b7c627b'),(849,'22a2e93d0ebb6e1c35fe5e37f8b86411'),(850,'fbb7e8e709199f66afb6044b56cdd23a'),(851,'c53d4f2eebeb1f7de305d21ea6b5d2f9'),(852,'ccf0024ea69edda45484bbcb5fab867d'),(853,'bdaf61471a480ded35e35136f1a23acf'),(854,'659b942bfc910b1d6543fad9891e928c'),(855,'43e63cc783602d9fc004705132712ed4'),(856,'c117c44a4ca232809ffa166b35c7e160'),(857,'62ea7121c9a8ff110d0d360d1025e0e3'),(858,'79ce23b082880f750a29a5d465af0ec3'),(859,'155a838d26d4ec16fb0a865cbf0726f8'),(860,'18d56aeff9642d9863e65db83fe5ea32'),(861,'63978659a4e2a93f00784f5826d76efa'),(862,'156762f1bc09d1fff6b8cc10133eb703'),(863,'8fe33d7f01904c3f7eb1977cc814472c'),(864,'1d87de9fe63f328182f037c2d25e16cc'),(865,'c826e8e0f5585f5d8aa5338ec2fcb161'),(866,'e87359073c538cc2b82ff7ef2d0f79ed'),(867,'1a228fc4481c372deac6ff060ee9f663'),(868,'564a74ca4e9d27eadda6b4d70d54f5de'),(869,'e520bf9d269a0877ed6bf5b806058af0'),(870,'87acbeb73f313760e8e3d90d929a02eb'),(871,'1cd298f29b211056ac263d5cba88d378'),(872,'dcec9d820ae90ed99eff4f383093cf09'),(873,'fef8ba9cb3fe6b430015f34a90726cec'),(874,'98a2d6a2ad4d1a64fb29e574f95b7fc8'),(875,'ef9d131e94340ccb9d1d5c5ee741d578'),(876,'d22050e994968ffba4442de8ea58dda6'),(877,'c425a3222ab5258775645cc9934ed600'),(878,'09ccfbf59c2c9dd78bb39667017334de'),(879,'bd2aa13ff8f88963c8f52fea8039d653'),(880,'038e9697bd6ced872b335eb1dd45fd31'),(881,'28fb8a3594480c86cd3a01874358c1a8'),(882,'59efdff53c4cfa1a9496e4a4d870eed1'),(883,'c66db7a9666807de5c3f67e0298182e1'),(884,'fa492a94df5cf6b3b6f3ecc193e09bfc'),(885,'761c2d74371b78866987958de2b459e4'),(886,'4776d157f140a480f74db3b7011ae0d8'),(887,'8fb58a7c2b08063bf0baeafa9da3d7b0'),(888,'b7272c07833a11e9ffded144fa808344'),(889,'c6fa4eed87ed8673181e6f1e716f0ced'),(890,'95515855ad2f06d378c39d760204bcea'),(891,'e86d657f66251a0c9b7cd93b4ceef173'),(892,'e1d12b76361262b3be681acd8b40447d'),(893,'7403c4c65ac3e78553836ef29a3ed3bc'),(894,'dc9c7869db1b6801cde6d92c495702ee'),(895,'78637c10420ce069606653dbb20da021'),(896,'bf0bbcdbeeed2f71dfdd7b27df37037f'),(897,'a4f6cdc67d777aeb2f3bf643c7f4ad0b'),(898,'19701c88af91d375faa787c086263778'),(899,'47bafa32bee245f0466187ca87748bbe'),(900,'c1c67fc62f9145c2c62a5492adf798cf'),(901,'0d0bbddf86ea2f4c055b6149b2f16799'),(902,'9adb2613c02088b3e2bfecbde39d8992'),(903,'596d14515103bc0a23363bace0dda1e7');
/*!40000 ALTER TABLE `tara_unique_id` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tara_user`
--

DROP TABLE IF EXISTS `tara_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tara_user` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `username` varchar(40) NOT NULL,
  `password` varchar(40) DEFAULT NULL,
  `created_on` datetime DEFAULT NULL,
  `updated_on` datetime DEFAULT NULL,
  `created_by_id` int(11) DEFAULT NULL,
  `updated_by_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tara_user`
--

LOCK TABLES `tara_user` WRITE;
/*!40000 ALTER TABLE `tara_user` DISABLE KEYS */;
INSERT INTO `tara_user` (`id`, `name`, `email`, `username`, `password`, `created_on`, `updated_on`, `created_by_id`, `updated_by_id`) VALUES (1,'Administrator','paulofernandes@tarambola.pt','tarambola','accb4348444d84943913e0f867148b21eab2b325','2009-07-29 11:22:42','2009-07-29 11:22:43',1,1),(8,'Boom Bap','','boombap','d9cc49e8c9aa748c67dcabd3b6a7c06cca411fce','2014-06-12 10:16:52',NULL,1,NULL);
/*!40000 ALTER TABLE `tara_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tara_user_permission`
--

DROP TABLE IF EXISTS `tara_user_permission`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tara_user_permission` (
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  UNIQUE KEY `user_id` (`user_id`,`permission_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tara_user_permission`
--

LOCK TABLES `tara_user_permission` WRITE;
/*!40000 ALTER TABLE `tara_user_permission` DISABLE KEYS */;
INSERT INTO `tara_user_permission` (`user_id`, `permission_id`) VALUES (1,1),(2,3),(3,3),(4,3),(5,3),(6,3),(7,3),(8,3);
/*!40000 ALTER TABLE `tara_user_permission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tara_utilizadores_log`
--

DROP TABLE IF EXISTS `tara_utilizadores_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tara_utilizadores_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ident` char(16) NOT NULL,
  `priority` int(11) NOT NULL,
  `message` varchar(255) DEFAULT NULL,
  `username` varchar(64) DEFAULT NULL,
  `created_on` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tara_utilizadores_log`
--

LOCK TABLES `tara_utilizadores_log` WRITE;
/*!40000 ALTER TABLE `tara_utilizadores_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `tara_utilizadores_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'slot_boombap'
--

--
-- Dumping routines for database 'slot_boombap'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2016-06-11  5:49:52
