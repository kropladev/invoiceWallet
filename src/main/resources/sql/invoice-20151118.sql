-- >$ mysql --user=root --password=123 invoice < ./sql/invoice-201511100527.sql


-- MySQL dump 10.16  Distrib 10.1.8-MariaDB, for Win32 (AMD64)
--
-- Host: localhost    Database: invoice
-- ------------------------------------------------------
-- Server version	10.1.8-MariaDB

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
-- Table structure for table `authorities`
--

DROP TABLE IF EXISTS `authorities`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `authorities` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `authority` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `username` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `authority` (`authority`),
  KEY `FK2B0F1321D964623E` (`username`),
  CONSTRAINT `FK2B0F1321D964623E` FOREIGN KEY (`username`) REFERENCES `users` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `authorities`
--

LOCK TABLES `authorities` WRITE;
/*!40000 ALTER TABLE `authorities` DISABLE KEYS */;
INSERT INTO `authorities` VALUES (1,'ROLE_USER','admin');
/*!40000 ALTER TABLE `authorities` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `counter_inv_states`
--

DROP TABLE IF EXISTS `counter_inv_states`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `counter_inv_states` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `STATE` double DEFAULT NULL,
  `FKINVOICE` int(11) DEFAULT NULL,
  `FKCOUNTER` int(11) DEFAULT NULL,
  `input_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`ID`),
  KEY `COUNTER_INV_STATES_COUNTERS_FK` (`FKCOUNTER`),
  KEY `COUNTER_INV_STATES_INVOICES_FK` (`FKINVOICE`),
  CONSTRAINT `COUNTER_INV_STATES_COUNTERS_FK` FOREIGN KEY (`FKCOUNTER`) REFERENCES `counters` (`ID`),
  CONSTRAINT `COUNTER_INV_STATES_INVOICES_FK` FOREIGN KEY (`FKINVOICE`) REFERENCES `invoices` (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=45 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `counter_inv_states`
--

LOCK TABLES `counter_inv_states` WRITE;
/*!40000 ALTER TABLE `counter_inv_states` DISABLE KEYS */;
INSERT INTO `counter_inv_states` VALUES (1,614.605,NULL,1,'2015-11-07 10:51:45'),(2,632.856,3,1,'2015-11-07 10:51:45'),(3,227.044,NULL,2,'2015-11-07 10:51:45'),(4,238.642,3,2,'2015-11-07 10:51:45'),(5,548.862,NULL,3,'2015-11-07 10:51:45'),(6,566.853,3,3,'2015-11-07 10:51:45'),(7,527.535,NULL,4,'2015-11-07 10:51:45'),(8,528.695,3,4,'2015-11-07 10:51:45'),(9,33,3,5,'2015-11-07 10:51:45'),(10,650.138,7,1,'2015-11-07 10:51:45'),(11,249.07,7,2,'2015-11-07 10:51:45'),(12,584.03,7,3,'2015-11-07 10:51:45'),(13,538.809,7,4,'2015-11-07 10:51:45'),(14,88,7,5,'2015-11-07 10:51:45'),(15,667.41,11,1,'2015-11-07 10:51:45'),(16,257.963,11,2,'2015-11-07 10:51:45'),(17,600.22,11,3,'2015-11-07 10:51:45'),(18,553.454,11,4,'2015-11-07 10:51:45'),(19,145,11,5,'2015-11-07 10:51:45'),(20,266.112,15,2,'2015-11-07 10:51:45'),(21,616.394,15,3,'2015-11-07 10:51:45'),(22,567.76,15,4,'2015-11-07 10:51:45'),(23,201,15,5,'2015-11-07 10:51:45'),(24,684.78,15,1,'2015-11-07 10:51:45'),(25,702.783,20,1,'2015-11-07 10:51:45'),(26,274.116,20,2,'2015-11-07 10:51:45'),(27,639.113,20,3,'2015-11-07 10:51:45'),(28,584.035,20,4,'2015-11-07 10:51:45'),(29,266,20,5,'2015-11-07 10:51:45'),(30,720.983,22,1,'2015-11-07 11:01:28'),(31,284.516,22,2,'2015-11-07 11:04:32'),(32,655.713,22,3,'2015-11-07 11:04:32'),(33,593.835,22,4,'2015-11-07 11:04:32'),(34,321,22,5,'2015-11-07 11:04:32'),(35,NULL,23,1,'2015-11-07 11:06:34'),(36,NULL,23,2,'2015-11-07 11:06:34'),(37,NULL,23,3,'2015-11-07 11:06:34'),(38,NULL,23,4,'2015-11-07 11:06:34'),(39,387,23,5,'2015-11-07 11:06:34'),(40,NULL,24,1,'2015-11-07 11:06:34'),(41,NULL,24,2,'2015-11-07 11:06:34'),(42,NULL,24,3,'2015-11-07 11:06:34'),(43,NULL,24,4,'2015-11-07 11:06:34'),(44,442,24,5,'2015-11-07 11:06:34');
/*!40000 ALTER TABLE `counter_inv_states` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `counter_states`
--

DROP TABLE IF EXISTS `counter_states`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `counter_states` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `STATE` double DEFAULT NULL,
  `READ_TIME` datetime DEFAULT NULL,
  `FKCOUNTER` int(11) DEFAULT NULL,
  `INPUT_TIME` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`ID`),
  KEY `COUNTER2_STATES_COUNTERS_FK` (`FKCOUNTER`),
  CONSTRAINT `COUNTER_STATES_COUNTERS_FK` FOREIGN KEY (`FKCOUNTER`) REFERENCES `counters` (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=56 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `counter_states`
--

LOCK TABLES `counter_states` WRITE;
/*!40000 ALTER TABLE `counter_states` DISABLE KEYS */;
INSERT INTO `counter_states` VALUES (1,577.865,'2014-02-03 14:35:33',1,'2014-12-20 14:37:25'),(2,601.35,'2013-05-04 14:35:33',1,'2014-12-20 14:37:25'),(3,622.11,'2014-07-26 14:35:33',1,'2014-12-20 14:37:25'),(4,643.217,'2014-10-10 14:35:33',1,'2014-12-20 14:37:25'),(5,655.711,'2014-11-26 14:35:33',1,'2014-12-20 14:37:25'),(6,NULL,'2014-12-20 14:35:33',1,'2014-12-20 14:37:25'),(7,205.828,'2014-02-03 14:35:33',2,'2014-12-20 14:37:25'),(8,516.04,'2014-02-03 14:35:33',3,'2014-12-20 14:37:25'),(9,515.052,'2014-02-03 14:35:33',4,'2014-12-20 14:37:25'),(10,1646.9727,'2014-02-03 14:35:33',5,'2014-12-20 14:37:25'),(11,219.08,'2013-05-04 14:35:33',2,'2014-12-20 14:37:25'),(12,537.86,'2013-05-04 14:35:33',3,'2014-12-20 14:37:25'),(13,522.85,'2013-05-04 14:35:33',4,'2014-12-20 14:37:25'),(14,1714.2,'2013-05-04 14:35:33',5,'2014-12-20 14:37:25'),(15,233.679,'2014-07-26 14:35:33',2,'2014-12-20 14:37:25'),(16,556.956,'2014-07-26 14:35:33',3,'2014-12-20 14:37:25'),(17,528.5,'2014-07-26 14:35:33',4,'2014-12-20 14:37:25'),(18,8.59,'2014-07-26 14:35:33',5,'2014-12-20 14:37:25'),(19,246.475,'2014-10-10 14:35:33',2,'2014-12-20 14:37:25'),(20,577.21,'2014-10-10 14:35:33',3,'2014-12-20 14:37:25'),(21,537.549,'2014-10-10 14:35:33',4,'2014-12-20 14:37:25'),(22,73.901,'2014-10-10 14:35:33',5,'2014-12-20 14:37:25'),(23,253.949,'2014-11-26 14:35:33',2,'2014-12-20 14:37:25'),(24,590.351,'2014-11-26 14:35:33',3,'2014-12-20 14:37:25'),(25,548.164,'2014-11-26 14:35:33',4,'2014-12-20 14:37:25'),(26,119.237,'2014-11-26 14:35:33',5,'2014-12-20 14:37:25'),(27,NULL,'2014-12-20 14:35:33',2,'2014-12-20 14:37:25'),(28,NULL,'2014-12-20 14:35:33',3,'2014-12-20 14:37:25'),(29,NULL,'2014-12-20 14:35:33',4,'2014-12-20 14:37:25'),(30,NULL,'2014-12-20 14:35:33',5,'2014-12-20 14:37:25'),(31,680.552,'2015-02-27 00:00:00',1,'2015-02-27 22:11:53'),(32,265.602,'2015-02-27 00:00:00',2,'2015-02-27 22:11:55'),(33,613.476,'2015-02-27 00:00:00',3,'2015-02-27 22:11:57'),(34,568.613,'2015-02-27 00:00:00',4,'2015-02-27 22:11:59'),(35,202.822,'2015-02-27 00:00:00',5,'2015-02-27 22:12:00'),(36,675.672,'2015-02-08 00:00:00',1,'2015-02-27 22:17:24'),(37,263.19,'2015-02-08 00:00:00',2,'2015-02-27 22:17:26'),(38,607.636,'2015-02-08 00:00:00',3,'2015-02-27 22:17:27'),(39,565.075,'2015-02-08 00:00:00',4,'2015-02-27 22:17:28'),(40,184.731,'2015-02-08 00:00:00',5,'2015-02-27 22:17:29'),(41,705.852,'2015-05-31 15:02:02',1,'2015-05-31 15:02:02'),(42,277.492,'2015-05-31 15:02:02',2,'2015-05-31 15:02:04'),(43,642.923,'2015-05-31 15:02:02',3,'2015-05-31 15:02:06'),(44,588.546,'2015-05-31 15:02:02',4,'2015-05-31 15:02:06'),(45,290.999,'2015-05-31 15:02:02',5,'2015-05-31 15:02:07'),(46,727.233,'2015-08-09 21:41:02',1,'2015-08-09 21:41:02'),(47,289.774,'2015-08-09 21:41:02',2,'2015-08-09 21:41:02'),(48,662.551,'2015-08-09 21:41:02',3,'2015-08-09 21:41:02'),(49,600.169,'2015-08-09 21:41:02',4,'2015-08-09 21:41:02'),(50,360.483,'2015-08-09 21:41:02',5,'2015-08-09 21:41:02'),(51,749.578,'2015-11-05 06:37:09',1,'2015-11-07 12:27:22'),(52,303.444,'2015-11-05 06:37:21',2,'2015-11-07 12:27:22'),(53,693.67,'2015-11-05 06:38:14',3,'2015-11-07 12:27:22'),(54,619.771,'2015-11-05 06:38:08',4,'2015-11-07 12:27:22'),(55,450.914,'2015-11-05 06:39:00',5,'2015-11-07 12:27:22');
/*!40000 ALTER TABLE `counter_states` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `counter_types`
--

DROP TABLE IF EXISTS `counter_types`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `counter_types` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `SYMBOL` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `DESCRIPTION` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `counter_types`
--

LOCK TABLES `counter_types` WRITE;
/*!40000 ALTER TABLE `counter_types` DISABLE KEYS */;
INSERT INTO `counter_types` VALUES (1,'G','gaz'),(2,'P','prąd'),(3,'W','woda'),(4,'R','woda -główny');
/*!40000 ALTER TABLE `counter_types` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `counters`
--

DROP TABLE IF EXISTS `counters`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `counters` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `SNUMBER` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'serial number',
  `TYPE` int(11) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `COUNTERS_COUNTER_TYPES_FK` (`TYPE`),
  CONSTRAINT `COUNTERS_COUNTER_TYPES_FK` FOREIGN KEY (`TYPE`) REFERENCES `counter_types` (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `counters`
--

LOCK TABLES `counters` WRITE;
/*!40000 ALTER TABLE `counters` DISABLE KEYS */;
INSERT INTO `counters` VALUES (1,'02233 224',3),(2,'02232 694',3),(3,'02233 227',3),(4,'02233 226',3),(5,'02',1),(6,'0',3),(7,'03',2);
/*!40000 ALTER TABLE `counters` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `firm_data`
--

DROP TABLE IF EXISTS `firm_data`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `firm_data` (
  `ADDRESS` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `PHONE` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `IBAN` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `MTIME` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `FKFIRM` decimal(10,0) NOT NULL,
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `ARCHTIME` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'time when record was put to archive',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `firm_data`
--

LOCK TABLES `firm_data` WRITE;
/*!40000 ALTER TABLE `firm_data` DISABLE KEYS */;
INSERT INTO `firm_data` VALUES (NULL,NULL,'34833500038011000000007120','2015-05-30 22:00:00',2,1,'0000-00-00 00:00:00');
/*!40000 ALTER TABLE `firm_data` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `firms`
--

DROP TABLE IF EXISTS `firms`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `firms` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `NAME` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ADDRESS` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `DESCRIPTION` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `PHONE` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `NIP` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `IBAN` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `REGON` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `firms`
--

LOCK TABLES `firms` WRITE;
/*!40000 ALTER TABLE `firms` DISABLE KEYS */;
INSERT INTO `firms` VALUES (1,'Ambert','','',NULL,NULL,'81116022020000000104827925',NULL),(2,'Reknica',NULL,NULL,NULL,NULL,'13124054261111000053755197',NULL),(3,'PGNIG',NULL,NULL,NULL,NULL,NULL,NULL),(4,'Energa',' ul.Mikołaja Reja 80-870 Gdańsk','ENERGA-OBRÓT SA',NULL,NULL,'36124020929907933901069567',NULL),(5,'Gmina',NULL,NULL,NULL,NULL,NULL,NULL),(6,'Orange',NULL,NULL,NULL,NULL,NULL,NULL),(7,'Cyfra',NULL,NULL,NULL,NULL,NULL,NULL),(8,'Generali',NULL,NULL,NULL,NULL,NULL,NULL),(9,'Kominiarz','Obr. Westerplatte 25/27','Spółdzielnia Pracy Usług Kominiarskich w Gdańsku; Jerzy Majchrzak','586823212','584-020-31-62','47116022020000000061894106',''),(10,'Uniqa','targ drzewny 3','UNIQA Towarzystwo Ubezpieczeń Spółka Akcyjna; Oddział Gdańsk','583200340','727-012-63-58','85124069603113645011182392','004275573'),(11,'Energa',NULL,NULL,NULL,NULL,'',NULL);
/*!40000 ALTER TABLE `firms` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `invoices`
--

DROP TABLE IF EXISTS `invoices`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `invoices` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `INVOICE_NUMBER` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'numer faktury',
  `AMOUNT` double DEFAULT NULL COMMENT 'kwota do zaplaty',
  `PAY_DATE` date DEFAULT NULL COMMENT 'data do zaplaty',
  `INVOICE_DATE` date DEFAULT NULL COMMENT 'data wystawienia',
  `FKFIRM` int(11) DEFAULT NULL,
  `DESCRIPTION` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `INPUT_TIME` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`ID`),
  KEY `INVOICES_FIRMS_FK` (`FKFIRM`),
  CONSTRAINT `INVOICES_FIRMS_FK` FOREIGN KEY (`FKFIRM`) REFERENCES `firms` (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `invoices`
--

LOCK TABLES `invoices` WRITE;
/*!40000 ALTER TABLE `invoices` DISABLE KEYS */;
INSERT INTO `invoices` VALUES (1,'145/10/14',42.92,'2014-11-14','2014-10-31',1,NULL,'2015-11-07 10:50:06'),(2,'75/11/14',30.23,'2014-12-14','2014-11-30',1,NULL,'2015-11-07 10:50:06'),(3,'5689/8/14/ZL',534.62,'2014-09-08','2014-08-25',2,NULL,'2015-11-07 10:50:06'),(4,'339010695/00001/0017/1F',33.84,'2014-12-13','2014-11-24',4,NULL,'2015-11-07 10:50:06'),(5,'14_00_00/2014/12/AP/106/4',420,'2014-12-26','2014-12-08',10,'polisa 645011182392','2015-11-07 10:50:06'),(6,'243/12/4-2014',378,'2014-12-23','2014-12-09',9,'P.K.O.B.-11 Kontrola stanu technicznego przewodów spalinowo-wentylacyjnych w bud. Wsp. mieszk. Bąkowo ul. Olchowa 3, w dniu: 05.12.2014','2015-11-07 10:50:06'),(7,'7358/10/14/ZL',599.29,'2014-11-07','2014-10-24',2,NULL,'2015-11-07 10:50:06'),(8,'339010695/00001/0016/1F',28.66,'2014-10-13','2014-09-24',4,NULL,'2015-11-07 10:50:06'),(9,'78/08/14\r',42.92,'2014-09-14','2014-08-31',1,NULL,'2015-11-07 10:50:06'),(10,'75/09/14\r',42.92,'2014-10-14','2014-09-30',1,NULL,'2015-11-07 10:50:06'),(11,'9142/12/14/ZL',620.85,'2015-01-12','2014-12-29',2,NULL,'2015-11-07 10:50:06'),(12,'339010695/00001/0018/1F',58.78,'2015-02-13','2015-02-03',4,NULL,'2015-11-07 10:50:06'),(13,'74/01/15',65.77,'2015-02-14','2015-01-31',1,NULL,'2015-11-07 10:50:06'),(14,'75/12/14',149.15,'2015-01-14','2014-12-31',1,NULL,'2015-11-07 10:50:06'),(15,'945/2/15/ZL',610.07,'2015-03-13','2015-02-27',2,NULL,'2015-11-07 10:50:06'),(16,'76/02/15',39.46,'2015-03-14','2015-02-28',1,NULL,'2015-11-07 10:50:06'),(17,'158/03/15',30.23,'2015-04-14','2015-03-31',1,NULL,'2015-11-07 10:50:06'),(18,'339010695/00001/0019/1F',46.65,'2015-04-15','2015-03-31',4,NULL,'2015-11-07 10:50:06'),(19,'73/04/15',42.92,'2015-05-14','2015-04-30',1,NULL,'2015-11-07 10:50:06'),(20,'2989/4/15/ZL',707.07,'2015-05-21','2015-04-30',2,'','2015-11-07 10:50:06'),(21,'339010695/00001/0020/1F',32.91,'2015-06-15','2015-05-28',4,NULL,'2015-11-07 10:50:06'),(22,'4493/6/15/ZL',599.29,'2015-07-21','2015-06-30',2,'','2015-11-07 10:56:52'),(23,'6502/8/15/ZL',717.85,'2015-09-14','2015-08-31',2,'','2015-11-07 10:58:41'),(24,'8120/10/15/ZL',599.29,'2015-11-14','2015-10-31',2,'','2015-11-07 10:59:38');
/*!40000 ALTER TABLE `invoices` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `person`
--

DROP TABLE IF EXISTS `person`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `person` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `age` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `person`
--

LOCK TABLES `person` WRITE;
/*!40000 ALTER TABLE `person` DISABLE KEYS */;
/*!40000 ALTER TABLE `person` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `segments`
--

DROP TABLE IF EXISTS `segments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `segments` (
  `l` int(11) NOT NULL,
  `r` int(11) NOT NULL,
  `testGroup` int(11) DEFAULT NULL,
  UNIQUE KEY `l` (`l`,`r`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `segments`
--

LOCK TABLES `segments` WRITE;
/*!40000 ALTER TABLE `segments` DISABLE KEYS */;
INSERT INTO `segments` VALUES (0,10,1),(1,5,2),(2,3,2),(4,6,2),(20,30,1);
/*!40000 ALTER TABLE `segments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `username` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `enabled` bit(1) NOT NULL,
  `password` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES ('admin','','VZlgWG3GSb');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'invoice'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2015-11-10 17:28:02
