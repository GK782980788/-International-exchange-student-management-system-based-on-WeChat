-- MySQL dump 10.13  Distrib 5.6.24, for Win64 (x86_64)
--
-- Host: localhost    Database: iesssbow
-- ------------------------------------------------------
-- Server version	5.6.24

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
-- Table structure for table `loginuser`
--

DROP TABLE IF EXISTS `loginuser`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `loginuser` (
  `id_LU` int(11) NOT NULL AUTO_INCREMENT,
  `userName` char(50) DEFAULT NULL,
  `password` char(50) DEFAULT NULL,
  PRIMARY KEY (`id_LU`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `loginuser`
--

LOCK TABLES `loginuser` WRITE;
/*!40000 ALTER TABLE `loginuser` DISABLE KEYS */;
INSERT INTO `loginuser` VALUES (1,'admin','12345678');
/*!40000 ALTER TABLE `loginuser` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `news`
--

DROP TABLE IF EXISTS `news`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `news` (
  `id_news` int(11) NOT NULL AUTO_INCREMENT,
  `time` datetime DEFAULT NULL,
  `biaoTi` char(255) DEFAULT NULL,
  `isFaBu` bit(1) DEFAULT NULL,
  `isKorean` bit(1) DEFAULT NULL,
  `isJapanese` bit(1) DEFAULT NULL,
  `isIndonesians` bit(1) DEFAULT NULL,
  `isBrazilians` bit(1) DEFAULT NULL,
  `leixing` char(50) DEFAULT NULL,
  `neiRongURL` char(50) DEFAULT NULL,
  PRIMARY KEY (`id_news`)
) ENGINE=InnoDB AUTO_INCREMENT=48 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `news`
--

LOCK TABLES `news` WRITE;
/*!40000 ALTER TABLE `news` DISABLE KEYS */;
INSERT INTO `news` VALUES (3,'2016-11-09 00:00:00','欢迎XXXX来我校访问','','','','','','国际',''),(4,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(5,'2016-11-09 00:00:00','欢迎YYY来我校访问','','',NULL,NULL,NULL,'热点',''),(15,NULL,'dfdsfdsfsdfs','',NULL,NULL,NULL,NULL,'热点',NULL),(16,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(17,NULL,'是打发师大范德萨','',NULL,'',NULL,NULL,'热点',NULL),(18,'2016-11-01 00:00:00','欢迎来我校访查.0.00.0','','','','','','校内',''),(19,'2016-11-08 00:00:00','åçé¡¿åå¤ä¸æ¯',NULL,NULL,'',NULL,NULL,'å¬å',''),(20,'2016-11-07 00:00:00','åå½ å¤§å®¶ä¸å¥½',NULL,NULL,'',NULL,NULL,'å¬å',''),(22,'2016-11-15 00:00:00','我们不喝咖啡',NULL,NULL,'',NULL,NULL,'公告',''),(24,'2016-11-21 00:00:00','啊啊啊啊  求求你能修改吧','',NULL,'',NULL,NULL,'公告',''),(25,NULL,'欢迎日本来我校访查','',NULL,NULL,NULL,NULL,'热点',NULL),(26,NULL,'新建新闻','','','','','','公告',NULL),(29,NULL,'欢迎李夺来我校访问','','','','','','国际',NULL),(30,NULL,'54546545','',NULL,'',NULL,NULL,'热点',NULL),(33,'2016-11-08 00:00:00','测试能获取的信息的第二条','','','','','','热点','getAllHtml()'),(34,'2016-11-09 00:00:00','添加新闻','','','','','','国际',''),(35,'2016-11-02 00:00:00','花神盾回复不是','',NULL,'',NULL,NULL,'公告',''),(36,'2016-11-09 00:00:00','修改了','',NULL,'',NULL,NULL,'公告',''),(37,'2016-11-09 00:00:00','你好呀','','','','','','公告',''),(38,'2016-11-02 00:00:00','华盛顿回复不是','',NULL,'',NULL,NULL,'公告',''),(39,'2016-11-09 00:00:00','发士大夫士大夫','',NULL,'',NULL,NULL,'公告',''),(40,'2016-11-09 00:00:00','花神盾没有做出回复','','','','','','公告',''),(41,'2016-11-01 00:00:00','测试生命周期','',NULL,'',NULL,NULL,'公告',''),(42,'2016-11-02 00:00:00','华盛顿回复不是','',NULL,'',NULL,NULL,'公告',''),(43,'2016-11-07 00:00:00','华盛顿回复不是','',NULL,'',NULL,NULL,'公告',''),(44,'2016-11-09 00:00:00','dsfafasfsadfasfasddfsaddf','',NULL,'',NULL,NULL,'公告',''),(45,'2016-11-02 00:00:00','判断为空','',NULL,NULL,NULL,NULL,'公告',''),(46,'2016-11-16 00:00:00','哪来的萨芬','',NULL,NULL,NULL,NULL,'国际',''),(47,'2016-11-17 00:00:00','的撒范德萨发','',NULL,NULL,NULL,NULL,'校内','');
/*!40000 ALTER TABLE `news` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shouyelunbotu`
--

DROP TABLE IF EXISTS `shouyelunbotu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `shouyelunbotu` (
  `id_SYLB` int(11) NOT NULL AUTO_INCREMENT,
  `pictureURL_href` char(100) DEFAULT NULL,
  PRIMARY KEY (`id_SYLB`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shouyelunbotu`
--

LOCK TABLES `shouyelunbotu` WRITE;
/*!40000 ALTER TABLE `shouyelunbotu` DISABLE KEYS */;
/*!40000 ALTER TABLE `shouyelunbotu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `student`
--

DROP TABLE IF EXISTS `student`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `student` (
  `id_Stu` int(11) NOT NULL AUTO_INCREMENT,
  `guoJi` char(50) DEFAULT NULL,
  `niCheng` char(50) DEFAULT NULL,
  `touXiangURL` char(50) DEFAULT NULL,
  `yuYan` char(50) DEFAULT NULL,
  PRIMARY KEY (`id_Stu`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `student`
--

LOCK TABLES `student` WRITE;
/*!40000 ALTER TABLE `student` DISABLE KEYS */;
/*!40000 ALTER TABLE `student` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2016-11-28 16:36:59
