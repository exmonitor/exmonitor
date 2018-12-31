-- MySQL dump 10.17  Distrib 10.3.11-MariaDB, for Linux (x86_64)
--
-- Host: localhost    Database: monitoring_prod
-- ------------------------------------------------------
-- Server version	10.3.11-MariaDB

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `credit`
--

DROP TABLE IF EXISTS `credit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `credit` (
  `id_credit` int(5) NOT NULL AUTO_INCREMENT,
  `actual_value` int(6) NOT NULL,
  `transaction_value` int(6) NOT NULL,
  `timestamp` timestamp NOT NULL DEFAULT current_timestamp(),
  `fk_customer` int(4) NOT NULL,
  PRIMARY KEY (`id_credit`),
  KEY `fk_users` (`fk_customer`),
  CONSTRAINT `credit_customer` FOREIGN KEY (`fk_customer`) REFERENCES `customer` (`id_customer`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `customer`
--

DROP TABLE IF EXISTS `customer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `customer` (
  `id_customer` int(4) NOT NULL AUTO_INCREMENT,
  `name` varchar(32) NOT NULL,
  PRIMARY KEY (`id_customer`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dnd`
--

DROP TABLE IF EXISTS `dnd`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dnd` (
  `id_dnd` int(5) NOT NULL AUTO_INCREMENT,
  `time_interval` varchar(50) NOT NULL,
  `fk_users` int(5) NOT NULL,
  PRIMARY KEY (`id_dnd`),
  KEY `fk_users` (`fk_users`),
  CONSTRAINT `dnd_users` FOREIGN KEY (`fk_users`) REFERENCES `users` (`id_users`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `hosts`
--

DROP TABLE IF EXISTS `hosts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hosts` (
  `id_hosts` int(5) NOT NULL AUTO_INCREMENT,
  `dns_or_ip` varchar(50) NOT NULL,
  `extra_info` varchar(50) NOT NULL,
  `fk_customer` int(5) NOT NULL,
  PRIMARY KEY (`id_hosts`),
  KEY `fk_customer` (`fk_customer`),
  CONSTRAINT `fk_customer` FOREIGN KEY (`fk_customer`) REFERENCES `customer` (`id_customer`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `intervalSec`
--

DROP TABLE IF EXISTS `intervalSec`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `intervalSec` (
  `id_interval` int(5) NOT NULL AUTO_INCREMENT,
  `value` int(5) NOT NULL,
  PRIMARY KEY (`id_interval`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `location`
--

DROP TABLE IF EXISTS `location`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `location` (
  `id_location` int(5) NOT NULL AUTO_INCREMENT,
  `name` varchar(150) NOT NULL,
  PRIMARY KEY (`id_location`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `notification`
--

DROP TABLE IF EXISTS `notification`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `notification` (
  `id_notification` int(5) NOT NULL AUTO_INCREMENT,
  `type` varchar(30) NOT NULL,
  `target` varchar(30) NOT NULL,
  `fk_users` int(11) NOT NULL,
  `fk_settings` int(11) NOT NULL,
  PRIMARY KEY (`id_notification`),
  KEY `fk_users` (`fk_users`),
  KEY `fk_settings` (`fk_settings`),
  CONSTRAINT `notify_settings` FOREIGN KEY (`fk_settings`) REFERENCES `notify_settings` (`id_settings`),
  CONSTRAINT `users` FOREIGN KEY (`fk_users`) REFERENCES `users` (`id_users`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `notify_settings`
--

DROP TABLE IF EXISTS `notify_settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `notify_settings` (
  `id_settings` int(5) NOT NULL AUTO_INCREMENT,
  `description` varchar(50) NOT NULL,
  `intervalMin` int(5) DEFAULT NULL,
  PRIMARY KEY (`id_settings`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `permission`
--

DROP TABLE IF EXISTS `permission`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `permission` (
  `id_permission` int(5) NOT NULL AUTO_INCREMENT,
  `rights` int(10) NOT NULL,
  `fk_users` int(11) NOT NULL,
  PRIMARY KEY (`id_permission`),
  KEY `id_users` (`fk_users`),
  CONSTRAINT `fk_users` FOREIGN KEY (`fk_users`) REFERENCES `users` (`id_users`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `reporting`
--

DROP TABLE IF EXISTS `reporting`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `reporting` (
  `id_reporting` int(5) NOT NULL AUTO_INCREMENT,
  `time_interval` date NOT NULL,
  `email` varchar(50) NOT NULL,
  `fk_users` int(11) NOT NULL,
  `fk_host` int(11) NOT NULL,
  PRIMARY KEY (`id_reporting`),
  KEY `fk_users` (`fk_users`),
  KEY `fk_host` (`fk_host`),
  CONSTRAINT `fk_reporting_host` FOREIGN KEY (`fk_host`) REFERENCES `hosts` (`id_hosts`),
  CONSTRAINT `fk_reporting_users` FOREIGN KEY (`fk_users`) REFERENCES `users` (`id_users`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `service_metadata`
--

DROP TABLE IF EXISTS `service_metadata`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `service_metadata` (
  `id_service_metadata` int(5) NOT NULL AUTO_INCREMENT,
  `metadata` varchar(1000) NOT NULL,
  PRIMARY KEY (`id_service_metadata`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `service_type`
--

DROP TABLE IF EXISTS `service_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `service_type` (
  `id_service_type` int(5) NOT NULL AUTO_INCREMENT,
  `type_name` varchar(30) NOT NULL,
  PRIMARY KEY (`id_service_type`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `services`
--

DROP TABLE IF EXISTS `services`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `services` (
  `id_services` int(5) NOT NULL AUTO_INCREMENT,
  `fk_interval` int(5) NOT NULL,
  `fk_service_metadata` int(5) NOT NULL,
  `fk_service_type` int(5) NOT NULL,
  `fk_service_hosts` int(5) NOT NULL,
  `fk_location` int(5) NOT NULL,
  `fail_treshold` int(5) NOT NULL,
  PRIMARY KEY (`id_services`),
  KEY `fk_interval` (`fk_interval`),
  KEY `fk_service_metadata` (`fk_service_metadata`),
  KEY `fk_service_type` (`fk_service_type`),
  KEY `fk_service_hosts` (`fk_service_hosts`),
  KEY `fk_location` (`fk_location`),
  CONSTRAINT `fk_interval` FOREIGN KEY (`fk_interval`) REFERENCES `intervalSec` (`id_interval`),
  CONSTRAINT `fk_location` FOREIGN KEY (`fk_location`) REFERENCES `location` (`id_location`),
  CONSTRAINT `fk_service_hosts` FOREIGN KEY (`fk_service_hosts`) REFERENCES `hosts` (`id_hosts`),
  CONSTRAINT `fk_service_metadata` FOREIGN KEY (`fk_service_metadata`) REFERENCES `service_metadata` (`id_service_metadata`),
  CONSTRAINT `fk_service_type` FOREIGN KEY (`fk_service_type`) REFERENCES `service_type` (`id_service_type`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id_users` int(5) NOT NULL AUTO_INCREMENT,
  `name` varchar(15) NOT NULL,
  `surname` varchar(20) NOT NULL,
  `e-mail` varchar(40) NOT NULL,
  `password` varchar(30) NOT NULL,
  `fk_customer` int(11) NOT NULL,
  PRIMARY KEY (`id_users`),
  KEY `customer_id` (`fk_customer`),
  CONSTRAINT `customer` FOREIGN KEY (`fk_customer`) REFERENCES `customer` (`id_customer`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-12-31 10:40:17
