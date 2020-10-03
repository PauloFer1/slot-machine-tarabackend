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
) ENGINE=MyISAM AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tara_page_part_forms`
--

LOCK TABLES `tara_page_part_forms` WRITE;
/*!40000 ALTER TABLE `tara_page_part_forms` DISABLE KEYS */;
INSERT INTO `tara_page_part_forms` VALUES (1,'form','titulo_en:\r\n type:\"text\"\r\n title:\"Título EN:\"\r\nspace:\r\n type:\"space\"\r\n title:\"\"\r\nlead:\r\n type:\"page_part\"\r\n title:\"Lead PT:\"\r\nlead_en:\r\n type:\"page_part\"\r\n title:\"Lead EN:\"\r\ndescricao:\r\n type:\"page_part\"\r\n title:\"Descrição PT:\"\r\ndescricao_en:\r\n type:\"page_part\"\r\n title:\"Descrição EN:\"\r\nimagem_list:\r\n type:\"image\"\r\n title:\"Imagem para listagem:\"\r\nimagem:\r\n type:\"image\"\r\n title:\"Imagens:\"'),(2,'form2','titulo_en:\r\n type:\"text\"\r\n title:\"Título EN:\"\r\nspace:\r\n type:\"space\"\r\n title:\"\"\r\nlead:\r\n type:\"page_part\"\r\n title:\"Lead PT:\"\r\nlead_en:\r\n type:\"page_part\"\r\n title:\"Lead EN:\"'),(3,'screen_msg','connect_1:\r\n type:text\r\n title:\"Mensagem QRCode Screen 1:\"\r\nconnect_2:\r\n type:text\r\n title:\"Mensagem QRCode Screen 2:\"\r\nconnect_3:\r\n type:text\r\n title:\"Mensagem QRCode Screen 3:\"\r\nspace:\r\n type:\"space\"\r\n title:\"\"\r\nspace2:\r\n type:\"space\"\r\n title:\"\"\r\nspace3:\r\n type:\"space\"\r\n title:\"\"\r\nslot_1:\r\n type:text\r\n title:\"Mensagem Slot Screen 1:\"\r\nslot_2:\r\n type:text\r\n title:\"Mensagem Slot Screen 2:\"\r\nspace4:\r\n type:\"space\"\r\n title:\"\"\r\nspace5:\r\n type:\"space\"\r\n title:\"\"\r\nloose_1:\r\n type:text\r\n title:\"Mensagem Loose Screen 1:\"\r\nloose_2:\r\n type:text\r\n title:\"Mensagem Loose Screen 2 (Sem tentativas):\"\r\nloose_3:\r\n type:text\r\n title:\"Mensagem Loose Screen 3 (Com tentativas 1):\"\r\nloose_4:\r\n type:text\r\n title:\"Mensagem Loose Screen 4 (Com tentativas 2):\"\r\nloose_5:\r\n type:text\r\n title:\"Mensagem Loose Screen 5 (Com tentativas 3):\"\r\nspace7:\r\n type:\"space\"\r\n title:\"\"\r\nspace8:\r\n type:\"space\"\r\n title:\"\"\r\nwin_1:\r\n type:text\r\n title:\"Mensagem Win Screen 1:\"\r\nwin_2:\r\n type:text\r\n title:\"Mensagem Win Screen 2:\"'),(4,'configuracoes','nr_premios:\r\n type:text\r\n title: \"Número de prémios por dia:\"\r\nclient_url:\r\n type:text\r\n title: \"URL da máquina cliente (APP):\"\r\nmax_attempts:\r\n type:text\r\n title: \"Máxima tentativas por email:\"\r\npremio1:\r\n type:text\r\n title: \"Premio 1:\"\r\npremio2:\r\n type:text\r\n title: \"Premio 2:\"\r\npremio3:\r\n type:text\r\n title: \"Premio 3:\"\r\npremio4:\r\n type:text\r\n title: \"Premio 4:\"\r\npremio5:\r\n type:text\r\n title: \"Premio 5:\"\r\ntemplate_img:\r\n type:image\r\n title:\"Logo mobile - site (dimensão: 463x193px nome: logo.png):\"\r\n maxsize: 2200\r\n translation:0\r\n validation: 0\r\nheader_img:\r\n type:image\r\n title:\"Imagem header email (dimensão: 400px):\"\r\n maxsize: 2200\r\n translation:0\r\n validation: 0\r\nfooter_img:\r\n type:image\r\n title:\"Imagem footer email (dimensão: 200px):\"\r\n maxsize: 2200\r\n translation:0\r\n validation: 0'),(5,'contactos','morada:\r\n type:lead\r\n title:\"Morada:\"\r\ntelefone:\r\n type:text\r\n title:\"Telefone:\"\r\ntelemovel:\r\n type:text\r\n title:\"Telemóvel:\"\r\nemail:\r\n type:text\r\n title:\"Email:\"\r\nfacebook:\r\n type:text\r\n title:\"Facebook:\"\r\nslogan:\r\n type:text\r\n title:\"Slogan:\"\r\ntexto:\r\n type:lead\r\n title:\"Texto:\"\r\nmaps:\r\n type:lead\r\n title:\"iFrame mapa:\"'),(6,'area','lead:\r\n type:text\r\n title:\"Texto:\"'),(7,'users','nome:\r\n type:text\r\n title: \"Nome:\"\r\nemail:\r\n type:text\r\n title: \"Email:\"\r\ndata:\r\n type:text\r\n title: \"Data:\"\r\npremio:\r\n type:text\r\n title: \"Prémio:\"\r\nunique_id:\r\n type:text\r\n title: \"ID:\"'),(8,'wait','wait:\r\n type:text\r\n title: \"Mensagem 1:\"\r\nread:\r\n type:text\r\n title: \"Mensagem 2:\"'),(9,'register','name:\r\n type:text\r\n title: \"Legenda 1:\"\r\nemail:\r\n type:text\r\n title: \"Leganda 2:\"\r\nregister:\r\n type:text\r\n title: \"Botão\"'),(10,'mensagens-mobile','formlabel1:\r\n type:text\r\n title: \"Label Nome:\"\r\nformlabel2:\r\n type:text\r\n title: \"Label Email:\"\r\nformbutton:\r\n type:text\r\n title: \"Botão Registo:\"\r\nvalidationwarning:\r\n type:text\r\n title: \"Alerta Validação:\"\r\nwaitwarning:\r\n type:text\r\n title: \"Alerta Aguarda a tua vez:\"\r\nesgotadaswarning:\r\n type:text\r\n title: \"Tentativas esgotadas:\"\r\njogar:\r\n type:text\r\n title: \"Botão Jogar:\"\r\nwait:\r\n type:text\r\n title: \"Msg Aguarda a tua vez 1:\"\r\nwait2:\r\n type:text\r\n title: \"Msg Aguarda a tua vez 2:\"\r\nimage:\r\n type:image\r\n title:\"Imagem header - Slot-machine (dimensão: 923x151px):\"\r\n maxsize: 2200\r\n translation:0\r\n validation: 0'),(11,'mensagens-mail','titulo:\r\n type:text\r\n title: \"Mail Title:\"\r\ntexto1:\r\n type:text\r\n title: \"Text 1:\"\r\ntexto2:\r\n type:text\r\n title: \"Text 2:\"'),(12,'premios','premio1:\r\n type:text\r\n title: \"Premio 1:\"\r\n\r\npremio2:\r\n type:text\r\n title: \"Premio 2:\"\r\n\r\npremio3:\r\n type:text\r\n title: \"Premio 3:\"\r\n\r\npremio4:\r\n type:text\r\n title: \"Premio 4:\"\r\n\r\npremio5:\r\n type:text\r\n title: \"Premio 5:\"');
/*!40000 ALTER TABLE `tara_page_part_forms` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-07-04 12:39:18
