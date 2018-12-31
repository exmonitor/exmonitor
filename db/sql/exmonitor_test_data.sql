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
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Dumping data for table `credit`
--

LOCK TABLES `credit` WRITE;
/*!40000 ALTER TABLE `credit` DISABLE KEYS */;
/*!40000 ALTER TABLE `credit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `customer`
--

LOCK TABLES `customer` WRITE;
/*!40000 ALTER TABLE `customer` DISABLE KEYS */;
INSERT INTO `customer` VALUES (1,'customer1');
/*!40000 ALTER TABLE `customer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `dnd`
--

LOCK TABLES `dnd` WRITE;
/*!40000 ALTER TABLE `dnd` DISABLE KEYS */;
/*!40000 ALTER TABLE `dnd` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `hosts`
--

LOCK TABLES `hosts` WRITE;
/*!40000 ALTER TABLE `hosts` DISABLE KEYS */;
INSERT INTO `hosts` VALUES (1,'master.cz','master_web',1),(2,'seznam.cz','seznam_web',1);
/*!40000 ALTER TABLE `hosts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `intervalSec`
--

LOCK TABLES `intervalSec` WRITE;
/*!40000 ALTER TABLE `intervalSec` DISABLE KEYS */;
INSERT INTO `intervalSec` VALUES (1,30),(2,60),(3,120),(4,180),(5,240),(6,300);
/*!40000 ALTER TABLE `intervalSec` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `location`
--

LOCK TABLES `location` WRITE;
/*!40000 ALTER TABLE `location` DISABLE KEYS */;
INSERT INTO `location` VALUES (1,'Brno_1'),(2,'Brno_2'),(3,'Prague_1'),(4,'Prague_2');
/*!40000 ALTER TABLE `location` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `notification`
--

LOCK TABLES `notification` WRITE;
/*!40000 ALTER TABLE `notification` DISABLE KEYS */;
INSERT INTO `notification` VALUES (1,'email','jaroslav-vethy001@seznam.cz',1,2);
/*!40000 ALTER TABLE `notification` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `notify_settings`
--

LOCK TABLES `notify_settings` WRITE;
/*!40000 ALTER TABLE `notify_settings` DISABLE KEYS */;
INSERT INTO `notify_settings` VALUES (1,'dont resent notification',999999),(2,'resent after 10min',10),(3,'resent after 20min',20),(4,'resent after 30min',30),(5,'resent after 60min',60),(6,'resent after 120min',120),(7,'resent after 240min',240);
/*!40000 ALTER TABLE `notify_settings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `permission`
--

LOCK TABLES `permission` WRITE;
/*!40000 ALTER TABLE `permission` DISABLE KEYS */;
/*!40000 ALTER TABLE `permission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `reporting`
--

LOCK TABLES `reporting` WRITE;
/*!40000 ALTER TABLE `reporting` DISABLE KEYS */;
/*!40000 ALTER TABLE `reporting` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `service_metadata`
--

LOCK TABLES `service_metadata` WRITE;
/*!40000 ALTER TABLE `service_metadata` DISABLE KEYS */;
INSERT INTO `service_metadata` VALUES (1,'{\"id\": 1,\"port\": 443,\"target\": \"master.cz\",\"timeout\": 5,\"proto\":\"https\",\"method\": \"GET\",\"query\": \"?var1=value1&var2=value2\",\"postData\": [{\"name\": \"var1\",\"value\": \"value1\"}],\"extraHeaders\": [{\"name\": \"MyHeader\",\"value\": \"My Value\"}],\"authEnabled\": false,\"authUsername\": \"admin\",\"authPassword\": \"adminPass\",\"contentCheckEnabled\": false,\"contentCheckString\": \"my_string\",\"allowedHttpStatusCodes\": [200, 201,403,404],\"tlsSkipVerify\": false,\"tlsCheckCertificates\": true,\"tlsCertExpirationThreshold\": 10}'),(2,'{\"id\": 2,\"target\": \"master.cz\",\"port\": 1234,\"timeout\": 5}'),(3,'{\"id\": 3,\"target\": \"master.cz\",\"port\": 80,\"timeout\": 5}'),(4,'{\"id\": 4,\"target\": \"seznam.cz\",\"timeout\": 5}');
/*!40000 ALTER TABLE `service_metadata` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `service_type`
--

LOCK TABLES `service_type` WRITE;
/*!40000 ALTER TABLE `service_type` DISABLE KEYS */;
INSERT INTO `service_type` VALUES (1,'http'),(2,'tcp'),(3,'icmp');
/*!40000 ALTER TABLE `service_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `services`
--

LOCK TABLES `services` WRITE;
/*!40000 ALTER TABLE `services` DISABLE KEYS */;
INSERT INTO `services` VALUES (1,1,1,1,1,1,5),(2,2,2,2,1,2,3),(3,2,3,2,1,2,3),(4,3,4,3,2,1,5);
/*!40000 ALTER TABLE `services` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'Jara','Vetchy','jara-vetchy@seznam.cz','XASDJHYHNJW213fewdcfe',1);
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-12-31 10:39:48
