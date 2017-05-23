-- MySQL dump 10.13  Distrib 5.6.36, for Linux (i686)
--
-- Host: localhost    Database: ror_blog
-- ------------------------------------------------------
-- Server version	5.6.36

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
-- Table structure for table `ar_internal_metadata`
--

DROP TABLE IF EXISTS `ar_internal_metadata`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ar_internal_metadata` (
  `key` varchar(255) NOT NULL,
  `value` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ar_internal_metadata`
--

LOCK TABLES `ar_internal_metadata` WRITE;
/*!40000 ALTER TABLE `ar_internal_metadata` DISABLE KEYS */;
INSERT INTO `ar_internal_metadata` VALUES ('environment','development','2017-05-09 10:39:24','2017-05-09 10:39:24');
/*!40000 ALTER TABLE `ar_internal_metadata` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `categories`
--

DROP TABLE IF EXISTS `categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `categories` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `slug` varchar(255) DEFAULT NULL,
  `parent` int(11) DEFAULT '0',
  `products_count` int(11) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categories`
--

LOCK TABLES `categories` WRITE;
/*!40000 ALTER TABLE `categories` DISABLE KEYS */;
INSERT INTO `categories` VALUES (1,'Mobiles','mobiles',0,NULL,NULL,'2017-05-19 00:00:00','2017-05-19 05:08:00'),(2,'Computers/Laptops','computers-laptops',0,NULL,NULL,'2017-05-19 00:00:00','2017-05-19 00:00:00'),(3,'Baby','baby',0,NULL,NULL,'2017-05-19 00:00:00','2017-05-19 00:00:00');
/*!40000 ALTER TABLE `categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `images`
--

DROP TABLE IF EXISTS `images`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `images` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `product_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `featured` int(11) NOT NULL DEFAULT '0',
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `images`
--

LOCK TABLES `images` WRITE;
/*!40000 ALTER TABLE `images` DISABLE KEYS */;
INSERT INTO `images` VALUES (1,2,'52510_1495457277.jpg',0,'2017-05-22 12:47:57','2017-05-22 12:47:57'),(2,2,'26486_1495457277.jpg',0,'2017-05-22 12:47:57','2017-05-22 12:47:57'),(3,2,'64326_1495457277.jpg',0,'2017-05-22 12:47:57','2017-05-22 12:47:57');
/*!40000 ALTER TABLE `images` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `products`
--

DROP TABLE IF EXISTS `products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `products` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) DEFAULT NULL,
  `sku` varchar(255) DEFAULT NULL,
  `description` text,
  `short_description` text,
  `available_from` varchar(55) DEFAULT NULL,
  `available_to` varchar(55) DEFAULT NULL,
  `price` varchar(50) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `category_id` bigint(20) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `products`
--

LOCK TABLES `products` WRITE;
/*!40000 ALTER TABLE `products` DISABLE KEYS */;
INSERT INTO `products` VALUES (1,'Apple iPhone 7 (Black, 128GB)','SKU2410','\r\n    12MP primary camera with optical image stabilisation, Quad-LED True Tone flash and Live Photos, 4K video recording at 30 fps and slow-motion video recording in 1080p at 120 fps, 7MP front facing FaceTime HD camera with Retina Flash\r\n    4.7-inch (diagonal) Retina HD 3D Touch capacitive touchscreen display and home button with 1334x750 resolution and wide colour, Splash, water and dust resistant\r\n    iOS 10 and iCloud operating system with A10 Fusion chip with integrated M10 motion coprocessor, 128GB internal memory and single Nano-SIM\r\n    Non-removable Li-Ion 1960 mAh battery (7.45 Wh) providing talktime up to 14 hours on 3G network\r\n    1 year manufacturer warranty for device and in-box accessories including batteries from the date of purchase\r\n','12MP primary camera with optical image stabilisation, Quad-LED True Tone flash and Live Photos, 4K video recording at 30 fps and slow-motion video recording in 1080p at 120 fps, 7MP front facing FaceTime HD camera with Retina Flash.','0000-00-00 00:00:00','0000-00-00 00:00:00','50999',1,2,'2017-05-19 12:18:16','2017-05-19 12:18:16'),(2,'Redmi Note 4│4G VoLTE│Grey│3GB RAM│32GB ROM','SKU-REDNOT-4','\r\nPower on slim with 4100mAh battery\r\n\r\nThanks to an overall design upgrade, the 4100mAh powerhouse has never looked better. 2.5D curved glass and slimmer, tapered edges deliver great hand feel. It also offers better sustained performance on a 14nm FinFET Snapdragon 625 processor and up to 4GB of RAM. We\'ve also added power to pixels with a 13MP CMOS camera for amazing low-light results.\r\n\r\nRedmi Note 4 is supercharged by Snapdragon 625, an octa-core processor chip that uses the most advanced 14nm FinFET technology. It is 20% more power efficient than Redmi Note 3, and is bound to put more power in your pocket.\r\n','Redmi Note 4 is supercharged by Snapdragon 625, an octa-core processor chip that uses the most advanced 14nm FinFET technology. It is 20% more power efficient than Redmi Note 3, and is bound to put more power in your pocket.','0000-00-00 00:00:00','0000-00-00 00:00:00','14000',1,1,'2017-05-19 12:28:01','2017-05-19 12:28:01'),(3,'Apple iPhone 7 (Black, 128GB)','APPLE7','Apple iPhone 7 (Black, 128GB)','Apple iPhone 7 (Black, 128GB)','05/10/2017','06/30/2017','50999',1,1,'2017-05-22 08:01:54','2017-05-22 08:01:54'),(4,'Test','TEST12','Test','Test',NULL,NULL,'111',1,3,'2017-05-22 08:10:10','2017-05-22 08:10:10'),(5,'Test1','TEST121','Test1','Test1',NULL,NULL,'1111',1,3,'2017-05-22 08:10:36','2017-05-22 08:10:36'),(6,'Test1','TEST1211','Test1','Test11',NULL,NULL,'1111',1,3,'2017-05-22 08:12:09','2017-05-22 08:12:09');
/*!40000 ALTER TABLE `products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `schema_migrations`
--

DROP TABLE IF EXISTS `schema_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `schema_migrations` (
  `version` varchar(255) NOT NULL,
  PRIMARY KEY (`version`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `schema_migrations`
--

LOCK TABLES `schema_migrations` WRITE;
/*!40000 ALTER TABLE `schema_migrations` DISABLE KEYS */;
INSERT INTO `schema_migrations` VALUES ('20170509083837'),('20170509084556'),('20170509085102'),('20170509105352'),('20170510090329');
/*!40000 ALTER TABLE `schema_migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `firstname` varchar(255) DEFAULT NULL,
  `lastname` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `user_type` varchar(255) DEFAULT 'normal',
  `salt` varchar(255) DEFAULT NULL,
  `encrypted_password` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (3,'Sonu','Sindhu','sonupnf@gmail.com',NULL,'2017-05-10 10:43:49','2017-05-10 10:43:49','admin',NULL,'7c4a8d09ca3762af61e59520943dc26494f8941b'),(4,'Sahil','Kapoor','sahil@gmail.com',NULL,'2017-05-10 12:38:29','2017-05-10 12:38:29','normal',NULL,'7c4a8d09ca3762af61e59520943dc26494f8941b');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-05-23 13:25:21
