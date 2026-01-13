-- MariaDB dump 10.19  Distrib 10.6.16-MariaDB, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: docker
-- ------------------------------------------------------
-- Server version	10.6.16-MariaDB-1:10.6.16+maria~ubu2004

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
-- Table structure for table `caches`
--

DROP TABLE IF EXISTS `caches`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `caches` (
  `name` varchar(191) NOT NULL,
  `data` mediumtext NOT NULL,
  `expires` datetime NOT NULL,
  PRIMARY KEY (`name`),
  KEY `expires` (`expires`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `field_admin_theme`
--

DROP TABLE IF EXISTS `field_admin_theme`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `field_admin_theme` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` int(11) NOT NULL,
  PRIMARY KEY (`pages_id`),
  KEY `data` (`data`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `field_birthdate`
--

DROP TABLE IF EXISTS `field_birthdate`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `field_birthdate` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` datetime NOT NULL,
  PRIMARY KEY (`pages_id`),
  KEY `data` (`data`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `field_company_ref`
--

DROP TABLE IF EXISTS `field_company_ref`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `field_company_ref` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` int(11) NOT NULL,
  `sort` int(10) unsigned NOT NULL,
  PRIMARY KEY (`pages_id`,`sort`),
  KEY `data` (`data`,`pages_id`,`sort`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `field_email`
--

DROP TABLE IF EXISTS `field_email`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `field_email` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` varchar(191) NOT NULL DEFAULT '',
  PRIMARY KEY (`pages_id`),
  KEY `data_exact` (`data`),
  FULLTEXT KEY `data` (`data`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `field_expires`
--

DROP TABLE IF EXISTS `field_expires`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `field_expires` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` tinyint(4) NOT NULL,
  PRIMARY KEY (`pages_id`),
  KEY `data` (`data`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `field_expires_month_end`
--

DROP TABLE IF EXISTS `field_expires_month_end`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `field_expires_month_end` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` tinyint(4) NOT NULL,
  PRIMARY KEY (`pages_id`),
  KEY `data` (`data`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `field_jobs_ref`
--

DROP TABLE IF EXISTS `field_jobs_ref`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `field_jobs_ref` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` int(11) NOT NULL,
  `sort` int(10) unsigned NOT NULL,
  PRIMARY KEY (`pages_id`,`sort`),
  KEY `data` (`data`,`pages_id`,`sort`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `field_last_renewal`
--

DROP TABLE IF EXISTS `field_last_renewal`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `field_last_renewal` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` datetime NOT NULL,
  PRIMARY KEY (`pages_id`),
  KEY `data` (`data`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `field_nachname`
--

DROP TABLE IF EXISTS `field_nachname`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `field_nachname` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` text NOT NULL,
  PRIMARY KEY (`pages_id`),
  KEY `data_exact` (`data`(191)),
  FULLTEXT KEY `data` (`data`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `field_pass`
--

DROP TABLE IF EXISTS `field_pass`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `field_pass` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` char(40) NOT NULL,
  `salt` char(32) NOT NULL,
  PRIMARY KEY (`pages_id`),
  KEY `data` (`data`)
) ENGINE=InnoDB DEFAULT CHARSET=ascii COLLATE=ascii_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `field_permissions`
--

DROP TABLE IF EXISTS `field_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `field_permissions` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` int(11) NOT NULL,
  `sort` int(10) unsigned NOT NULL,
  PRIMARY KEY (`pages_id`,`sort`),
  KEY `data` (`data`,`pages_id`,`sort`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `field_process`
--

DROP TABLE IF EXISTS `field_process`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `field_process` (
  `pages_id` int(11) NOT NULL DEFAULT 0,
  `data` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`pages_id`),
  KEY `data` (`data`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `field_renewal_period`
--

DROP TABLE IF EXISTS `field_renewal_period`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `field_renewal_period` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` int(11) NOT NULL,
  PRIMARY KEY (`pages_id`),
  KEY `data` (`data`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `field_roles`
--

DROP TABLE IF EXISTS `field_roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `field_roles` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` int(11) NOT NULL,
  `sort` int(10) unsigned NOT NULL,
  PRIMARY KEY (`pages_id`,`sort`),
  KEY `data` (`data`,`pages_id`,`sort`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `field_title`
--

DROP TABLE IF EXISTS `field_title`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `field_title` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` text NOT NULL,
  PRIMARY KEY (`pages_id`),
  KEY `data_exact` (`data`(191)),
  FULLTEXT KEY `data` (`data`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `field_validity_period`
--

DROP TABLE IF EXISTS `field_validity_period`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `field_validity_period` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` int(11) NOT NULL,
  PRIMARY KEY (`pages_id`),
  KEY `data` (`data`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `field_vorname`
--

DROP TABLE IF EXISTS `field_vorname`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `field_vorname` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` text NOT NULL,
  PRIMARY KEY (`pages_id`),
  KEY `data_exact` (`data`(191)),
  FULLTEXT KEY `data` (`data`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `fieldgroups`
--

DROP TABLE IF EXISTS `fieldgroups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fieldgroups` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) CHARACTER SET ascii COLLATE ascii_general_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=105 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `fieldgroups_fields`
--

DROP TABLE IF EXISTS `fieldgroups_fields`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fieldgroups_fields` (
  `fieldgroups_id` int(10) unsigned NOT NULL DEFAULT 0,
  `fields_id` int(10) unsigned NOT NULL DEFAULT 0,
  `sort` int(11) unsigned NOT NULL DEFAULT 0,
  `data` text DEFAULT NULL,
  PRIMARY KEY (`fieldgroups_id`,`fields_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `fields`
--

DROP TABLE IF EXISTS `fields`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fields` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `type` varchar(128) CHARACTER SET ascii COLLATE ascii_general_ci NOT NULL,
  `name` varchar(191) CHARACTER SET ascii COLLATE ascii_general_ci NOT NULL,
  `flags` int(11) NOT NULL DEFAULT 0,
  `label` varchar(191) NOT NULL DEFAULT '',
  `data` text NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`),
  KEY `type` (`type`)
) ENGINE=InnoDB AUTO_INCREMENT=108 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `modules`
--

DROP TABLE IF EXISTS `modules`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `modules` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `class` varchar(128) CHARACTER SET ascii COLLATE ascii_general_ci NOT NULL,
  `flags` int(11) NOT NULL DEFAULT 0,
  `data` mediumtext NOT NULL,
  `created` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  UNIQUE KEY `class` (`class`)
) ENGINE=InnoDB AUTO_INCREMENT=549 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `pages`
--

DROP TABLE IF EXISTS `pages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pages` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `parent_id` int(11) unsigned NOT NULL DEFAULT 0,
  `templates_id` int(11) unsigned NOT NULL DEFAULT 0,
  `name` varchar(128) CHARACTER SET ascii COLLATE ascii_general_ci NOT NULL,
  `status` int(10) unsigned NOT NULL DEFAULT 1,
  `modified` timestamp NOT NULL DEFAULT current_timestamp(),
  `modified_users_id` int(10) unsigned NOT NULL DEFAULT 2,
  `created` timestamp NOT NULL DEFAULT '2015-12-18 06:09:00',
  `created_users_id` int(10) unsigned NOT NULL DEFAULT 2,
  `published` datetime DEFAULT NULL,
  `sort` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name_parent_id` (`name`,`parent_id`),
  KEY `parent_id` (`parent_id`),
  KEY `templates_id` (`templates_id`),
  KEY `modified` (`modified`),
  KEY `created` (`created`),
  KEY `status` (`status`),
  KEY `published` (`published`)
) ENGINE=InnoDB AUTO_INCREMENT=1022 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `pages_access`
--

DROP TABLE IF EXISTS `pages_access`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pages_access` (
  `pages_id` int(11) NOT NULL,
  `templates_id` int(11) NOT NULL,
  `ts` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`pages_id`),
  KEY `templates_id` (`templates_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `pages_parents`
--

DROP TABLE IF EXISTS `pages_parents`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pages_parents` (
  `pages_id` int(10) unsigned NOT NULL,
  `parents_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`pages_id`,`parents_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `pages_sortfields`
--

DROP TABLE IF EXISTS `pages_sortfields`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pages_sortfields` (
  `pages_id` int(10) unsigned NOT NULL DEFAULT 0,
  `sortfield` varchar(20) NOT NULL DEFAULT '',
  PRIMARY KEY (`pages_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `session_login_throttle`
--

DROP TABLE IF EXISTS `session_login_throttle`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `session_login_throttle` (
  `name` varchar(128) NOT NULL,
  `attempts` int(10) unsigned NOT NULL DEFAULT 0,
  `last_attempt` int(10) unsigned NOT NULL,
  PRIMARY KEY (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `templates`
--

DROP TABLE IF EXISTS `templates`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `templates` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) CHARACTER SET ascii COLLATE ascii_general_ci NOT NULL,
  `fieldgroups_id` int(10) unsigned NOT NULL DEFAULT 0,
  `flags` int(11) NOT NULL DEFAULT 0,
  `cache_time` mediumint(9) NOT NULL DEFAULT 0,
  `data` text NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`),
  KEY `fieldgroups_id` (`fieldgroups_id`)
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2026-01-13 11:13:52
-- MariaDB dump 10.19  Distrib 10.6.16-MariaDB, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: docker
-- ------------------------------------------------------
-- Server version	10.6.16-MariaDB-1:10.6.16+maria~ubu2004

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
-- Dumping data for table `field_admin_theme`
--

LOCK TABLES `field_admin_theme` WRITE;
/*!40000 ALTER TABLE `field_admin_theme` DISABLE KEYS */;
INSERT INTO `field_admin_theme` VALUES (41,187);
/*!40000 ALTER TABLE `field_admin_theme` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `field_birthdate`
--

LOCK TABLES `field_birthdate` WRITE;
/*!40000 ALTER TABLE `field_birthdate` DISABLE KEYS */;
/*!40000 ALTER TABLE `field_birthdate` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `field_company_ref`
--

LOCK TABLES `field_company_ref` WRITE;
/*!40000 ALTER TABLE `field_company_ref` DISABLE KEYS */;
/*!40000 ALTER TABLE `field_company_ref` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `field_email`
--

LOCK TABLES `field_email` WRITE;
/*!40000 ALTER TABLE `field_email` DISABLE KEYS */;
INSERT INTO `field_email` VALUES (41,'nicole.barnabee@gmail.com');
/*!40000 ALTER TABLE `field_email` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `field_expires`
--

LOCK TABLES `field_expires` WRITE;
/*!40000 ALTER TABLE `field_expires` DISABLE KEYS */;
/*!40000 ALTER TABLE `field_expires` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `field_expires_month_end`
--

LOCK TABLES `field_expires_month_end` WRITE;
/*!40000 ALTER TABLE `field_expires_month_end` DISABLE KEYS */;
/*!40000 ALTER TABLE `field_expires_month_end` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `field_jobs_ref`
--

LOCK TABLES `field_jobs_ref` WRITE;
/*!40000 ALTER TABLE `field_jobs_ref` DISABLE KEYS */;
/*!40000 ALTER TABLE `field_jobs_ref` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `field_last_renewal`
--

LOCK TABLES `field_last_renewal` WRITE;
/*!40000 ALTER TABLE `field_last_renewal` DISABLE KEYS */;
/*!40000 ALTER TABLE `field_last_renewal` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `field_nachname`
--

LOCK TABLES `field_nachname` WRITE;
/*!40000 ALTER TABLE `field_nachname` DISABLE KEYS */;
/*!40000 ALTER TABLE `field_nachname` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `field_pass`
--

LOCK TABLES `field_pass` WRITE;
/*!40000 ALTER TABLE `field_pass` DISABLE KEYS */;
INSERT INTO `field_pass` VALUES (40,'',''),(41,'BPsDrHaqaQJ6W1gYDj.2X5RrVeBvrzC','$2y$11$vo0SSk.cGYh4N/9i1STclu');
/*!40000 ALTER TABLE `field_pass` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `field_permissions`
--

LOCK TABLES `field_permissions` WRITE;
/*!40000 ALTER TABLE `field_permissions` DISABLE KEYS */;
INSERT INTO `field_permissions` VALUES (38,32,1),(38,34,2),(38,35,3),(37,36,0),(38,36,0),(38,50,4),(38,51,5),(38,52,7),(38,53,8),(38,54,6);
/*!40000 ALTER TABLE `field_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `field_process`
--

LOCK TABLES `field_process` WRITE;
/*!40000 ALTER TABLE `field_process` DISABLE KEYS */;
INSERT INTO `field_process` VALUES (10,7),(23,10),(3,12),(8,12),(9,14),(6,17),(11,47),(16,48),(21,50),(29,66),(30,68),(22,76),(28,76),(2,87),(300,104),(301,109),(302,121),(303,129),(31,136),(304,138),(1007,150),(1010,175),(1012,200);
/*!40000 ALTER TABLE `field_process` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `field_renewal_period`
--

LOCK TABLES `field_renewal_period` WRITE;
/*!40000 ALTER TABLE `field_renewal_period` DISABLE KEYS */;
/*!40000 ALTER TABLE `field_renewal_period` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `field_roles`
--

LOCK TABLES `field_roles` WRITE;
/*!40000 ALTER TABLE `field_roles` DISABLE KEYS */;
INSERT INTO `field_roles` VALUES (40,37,0),(41,37,0),(41,38,2);
/*!40000 ALTER TABLE `field_roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `field_title`
--

LOCK TABLES `field_title` WRITE;
/*!40000 ALTER TABLE `field_title` DISABLE KEYS */;
INSERT INTO `field_title` VALUES (1,'Home'),(2,'Admin'),(3,'Pages'),(6,'Add Page'),(7,'Trash'),(8,'Tree'),(9,'Save Sort'),(10,'Edit'),(11,'Templates'),(16,'Fields'),(21,'Modules'),(22,'Setup'),(23,'Login'),(27,'404 Not Found'),(28,'Access'),(29,'Users'),(30,'Roles'),(31,'Permissions'),(32,'Edit pages'),(34,'Delete pages'),(35,'Move pages (change parent)'),(36,'View pages'),(50,'Sort child pages'),(51,'Change templates on pages'),(52,'Administer users'),(53,'User can update profile/password'),(54,'Lock or unlock a page'),(300,'Search'),(301,'Empty Trash'),(302,'Insert Link'),(303,'Insert Image'),(304,'Profile'),(1006,'Use Page Lister'),(1007,'Find'),(1010,'Recent'),(1011,'Can see recently edited pages'),(1012,'Logs'),(1013,'Can view system logs'),(1014,'Can manage system logs'),(1015,'Companies'),(1016,'Trainings'),(1017,'Pilots'),(1018,'Jobs'),(1019,'Pilot'),(1020,'Rettungssanitäter'),(1021,'Flugbegleiter');
/*!40000 ALTER TABLE `field_title` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `field_validity_period`
--

LOCK TABLES `field_validity_period` WRITE;
/*!40000 ALTER TABLE `field_validity_period` DISABLE KEYS */;
/*!40000 ALTER TABLE `field_validity_period` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `field_vorname`
--

LOCK TABLES `field_vorname` WRITE;
/*!40000 ALTER TABLE `field_vorname` DISABLE KEYS */;
/*!40000 ALTER TABLE `field_vorname` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `fieldgroups`
--

LOCK TABLES `fieldgroups` WRITE;
/*!40000 ALTER TABLE `fieldgroups` DISABLE KEYS */;
INSERT INTO `fieldgroups` VALUES (2,'admin'),(83,'basic-page'),(97,'companies'),(98,'company'),(1,'home'),(102,'job'),(101,'jobs'),(5,'permission'),(104,'pilot'),(103,'pilots'),(4,'role'),(100,'training'),(99,'trainings'),(3,'user');
/*!40000 ALTER TABLE `fieldgroups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `fieldgroups_fields`
--

LOCK TABLES `fieldgroups_fields` WRITE;
/*!40000 ALTER TABLE `fieldgroups_fields` DISABLE KEYS */;
INSERT INTO `fieldgroups_fields` VALUES (1,1,0,NULL),(2,1,0,NULL),(2,2,1,NULL),(3,3,0,NULL),(3,4,2,NULL),(3,92,1,NULL),(3,97,3,NULL),(4,5,0,NULL),(5,1,0,NULL),(83,1,0,NULL),(97,1,0,NULL),(98,1,0,NULL),(99,1,0,NULL),(100,1,0,NULL),(100,99,1,'{\"label\":\"Related Jobs\"}'),(100,104,2,NULL),(100,105,4,NULL),(100,106,3,NULL),(100,107,5,NULL),(101,1,0,NULL),(102,1,0,NULL),(103,1,0,NULL),(104,1,0,NULL),(104,98,4,NULL),(104,99,5,NULL),(104,100,3,'{\"required\":1}'),(104,101,1,'{\"required\":1}'),(104,102,2,'{\"required\":1}');
/*!40000 ALTER TABLE `fieldgroups_fields` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `fields`
--

LOCK TABLES `fields` WRITE;
/*!40000 ALTER TABLE `fields` DISABLE KEYS */;
INSERT INTO `fields` VALUES (1,'FieldtypePageTitle','title',13,'Title','{\"required\":1,\"textformatters\":[\"TextformatterEntities\"],\"size\":0,\"maxlength\":255}'),(2,'FieldtypeModule','process',25,'Process','{\"description\":\"The process that is executed on this page. Since this is mostly used by ProcessWire internally, it is recommended that you don\'t change the value of this unless adding your own pages in the admin.\",\"collapsed\":1,\"required\":1,\"moduleTypes\":[\"Process\"],\"permanent\":1}'),(3,'FieldtypePassword','pass',24,'Set Password','{\"collapsed\":1,\"size\":50,\"maxlength\":128}'),(4,'FieldtypePage','roles',24,'Roles','{\"derefAsPage\":0,\"parent_id\":30,\"labelFieldName\":\"name\",\"inputfield\":\"InputfieldCheckboxes\",\"description\":\"User will inherit the permissions assigned to each role. You may assign multiple roles to a user. When accessing a page, the user will only inherit permissions from the roles that are also assigned to the page\'s template.\"}'),(5,'FieldtypePage','permissions',24,'Permissions','{\"derefAsPage\":0,\"parent_id\":31,\"labelFieldName\":\"title\",\"inputfield\":\"InputfieldCheckboxes\"}'),(92,'FieldtypeEmail','email',9,'E-Mail Address','{\"size\":70,\"maxlength\":255}'),(97,'FieldtypeModule','admin_theme',8,'Admin Theme','{\"moduleTypes\":[\"AdminTheme\"],\"labelField\":\"title\",\"inputfieldClass\":\"InputfieldRadios\"}'),(98,'FieldtypePage','company_ref',0,'Company','{\"derefAsPage\":2,\"inputfield\":\"InputfieldSelect\",\"distinctAutojoin\":true,\"parent_id\":0,\"template_id\":44,\"labelFieldName\":\"title\",\"collapsed\":0,\"required\":1}'),(99,'FieldtypePage','jobs_ref',0,'Jobs','{\"derefAsPage\":0,\"inputfield\":\"InputfieldAsmSelect\",\"distinctAutojoin\":true,\"usePageEdit\":0,\"parent_id\":0,\"template_id\":48,\"labelFieldName\":\"title\",\"collapsed\":0,\"required\":1}'),(100,'FieldtypeDatetime','birthdate',0,'Birthdate','{\"dateOutputFormat\":\"j.n.Y\",\"dateInputFormat\":\"Y-m-d\",\"inputType\":\"html\",\"htmlType\":\"date\",\"collapsed\":0,\"dateSelectFormat\":\"yMd\",\"yearFrom\":1926,\"yearTo\":2046,\"yearLock\":0,\"datepicker\":0,\"timeInputSelect\":0,\"size\":25,\"showAnim\":\"fade\",\"numberOfMonths\":1,\"changeMonth\":1,\"changeYear\":1,\"showButtonPanel\":0,\"showMonthAfterYear\":0,\"showOtherMonths\":0}'),(101,'FieldtypeText','vorname',0,'Vorname','{\"textformatters\":[\"TextformatterEntities\"],\"collapsed\":0,\"minlength\":0,\"maxlength\":2048,\"showCount\":0,\"size\":0}'),(102,'FieldtypeText','nachname',0,'Nachname','{\"textformatters\":[\"TextformatterEntities\"],\"collapsed\":0,\"minlength\":0,\"maxlength\":2048,\"showCount\":0,\"size\":0}'),(103,'FieldtypeDatetime','last_renewal',0,'Last Renewal','{\"dateOutputFormat\":\"j.n.Y\",\"dateInputFormat\":\"Y-m-d\",\"inputType\":\"html\",\"htmlType\":\"date\",\"collapsed\":0,\"dateSelectFormat\":\"yMd\",\"yearFrom\":1926,\"yearTo\":2046,\"yearLock\":0,\"datepicker\":0,\"timeInputSelect\":0,\"size\":25,\"showAnim\":\"fade\",\"numberOfMonths\":1,\"changeMonth\":1,\"changeYear\":1,\"showButtonPanel\":0,\"showMonthAfterYear\":0,\"showOtherMonths\":0}'),(104,'FieldtypeToggle','expires',0,'Expires?','{\"formatType\":0,\"labelType\":0,\"inputfieldClass\":0,\"useVertical\":0,\"yesLabel\":\"\\u2713\",\"noLabel\":\"\\u2717\",\"otherLabel\":\"?\",\"defaultOption\":\"yes\",\"collapsed\":0,\"required\":1}'),(105,'FieldtypeToggle','expires_month_end',0,'Expires end-of-month','{\"formatType\":0,\"labelType\":0,\"inputfieldClass\":0,\"useVertical\":0,\"yesLabel\":\"\\u2713\",\"noLabel\":\"\\u2717\",\"otherLabel\":\"?\",\"defaultOption\":\"no\",\"collapsed\":0,\"required\":1}'),(106,'FieldtypeInteger','validity_period',0,'Validity period','{\"description\":\"The number of months for which the training is valid (e.g., before it needs renewal)\",\"zeroNotEmpty\":0,\"collapsed\":0,\"inputType\":\"text\",\"size\":10}'),(107,'FieldtypeInteger','renewal_period',0,'Renewal period','{\"description\":\"The number of months prior to expiration during which the training can be renewed.  Blank or \\\"0\\\" indicate no renewal period.\",\"zeroNotEmpty\":0,\"collapsed\":0,\"inputType\":\"text\",\"size\":10}');
/*!40000 ALTER TABLE `fields` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `modules`
--

LOCK TABLES `modules` WRITE;
/*!40000 ALTER TABLE `modules` DISABLE KEYS */;
INSERT INTO `modules` VALUES (1,'FieldtypeTextarea',0,'','2026-01-13 10:41:43'),(3,'FieldtypeText',0,'','2026-01-13 10:41:43'),(4,'FieldtypePage',0,'','2026-01-13 10:41:43'),(6,'FieldtypeFile',0,'','2026-01-13 10:41:43'),(7,'ProcessPageEdit',1,'','2026-01-13 10:41:43'),(10,'ProcessLogin',0,'','2026-01-13 10:41:43'),(12,'ProcessPageList',0,'{\"pageLabelField\":\"title\",\"paginationLimit\":25,\"limit\":50}','2026-01-13 10:41:43'),(14,'ProcessPageSort',0,'','2026-01-13 10:41:43'),(15,'InputfieldPageListSelect',0,'','2026-01-13 10:41:43'),(17,'ProcessPageAdd',0,'','2026-01-13 10:41:43'),(25,'InputfieldAsmSelect',0,'','2026-01-13 10:41:43'),(27,'FieldtypeModule',0,'','2026-01-13 10:41:43'),(28,'FieldtypeDatetime',0,'','2026-01-13 10:41:43'),(29,'FieldtypeEmail',0,'','2026-01-13 10:41:43'),(30,'InputfieldForm',0,'','2026-01-13 10:41:43'),(32,'InputfieldSubmit',0,'','2026-01-13 10:41:43'),(34,'InputfieldText',0,'','2026-01-13 10:41:43'),(35,'InputfieldTextarea',0,'','2026-01-13 10:41:43'),(36,'InputfieldSelect',0,'','2026-01-13 10:41:43'),(37,'InputfieldCheckbox',0,'','2026-01-13 10:41:43'),(38,'InputfieldCheckboxes',0,'','2026-01-13 10:41:43'),(39,'InputfieldRadios',0,'','2026-01-13 10:41:43'),(40,'InputfieldHidden',0,'','2026-01-13 10:41:43'),(41,'InputfieldName',0,'','2026-01-13 10:41:43'),(43,'InputfieldSelectMultiple',0,'','2026-01-13 10:41:43'),(45,'JqueryWireTabs',0,'','2026-01-13 10:41:43'),(47,'ProcessTemplate',0,'','2026-01-13 10:41:43'),(48,'ProcessField',32,'','2026-01-13 10:41:43'),(50,'ProcessModule',0,'','2026-01-13 10:41:43'),(55,'InputfieldFile',0,'','2026-01-13 10:41:43'),(56,'InputfieldImage',0,'','2026-01-13 10:41:43'),(57,'FieldtypeImage',0,'','2026-01-13 10:41:43'),(60,'InputfieldPage',0,'{\"inputfieldClasses\":[\"InputfieldSelect\",\"InputfieldSelectMultiple\",\"InputfieldCheckboxes\",\"InputfieldRadios\",\"InputfieldAsmSelect\",\"InputfieldPageListSelect\",\"InputfieldPageListSelectMultiple\",\"InputfieldPageAutocomplete\"]}','2026-01-13 10:41:43'),(61,'TextformatterEntities',0,'','2026-01-13 10:41:43'),(66,'ProcessUser',0,'{\"showFields\":[\"name\",\"email\",\"roles\"]}','2026-01-13 10:41:43'),(67,'MarkupAdminDataTable',0,'','2026-01-13 10:41:43'),(68,'ProcessRole',0,'{\"showFields\":[\"name\"]}','2026-01-13 10:41:43'),(76,'ProcessList',0,'','2026-01-13 10:41:43'),(78,'InputfieldFieldset',0,'','2026-01-13 10:41:43'),(79,'InputfieldMarkup',0,'','2026-01-13 10:41:43'),(80,'InputfieldEmail',0,'','2026-01-13 10:41:43'),(83,'ProcessPageView',0,'','2026-01-13 10:41:43'),(84,'FieldtypeInteger',0,'','2026-01-13 10:41:43'),(85,'InputfieldInteger',0,'','2026-01-13 10:41:43'),(86,'InputfieldPageName',0,'','2026-01-13 10:41:43'),(87,'ProcessHome',0,'','2026-01-13 10:41:43'),(89,'FieldtypeFloat',1,'','2026-01-13 10:41:43'),(90,'InputfieldFloat',0,'','2026-01-13 10:41:43'),(94,'InputfieldDatetime',0,'','2026-01-13 10:41:43'),(97,'FieldtypeCheckbox',1,'','2026-01-13 10:41:43'),(98,'MarkupPagerNav',0,'','2026-01-13 10:41:43'),(103,'JqueryTableSorter',1,'','2026-01-13 10:41:43'),(104,'ProcessPageSearch',1,'{\"searchFields\":\"title\",\"displayField\":\"title path\"}','2026-01-13 10:41:43'),(105,'FieldtypeFieldsetOpen',1,'','2026-01-13 10:41:43'),(106,'FieldtypeFieldsetClose',1,'','2026-01-13 10:41:43'),(107,'FieldtypeFieldsetTabOpen',1,'','2026-01-13 10:41:43'),(108,'InputfieldURL',0,'','2026-01-13 10:41:43'),(109,'ProcessPageTrash',1,'','2026-01-13 10:41:43'),(111,'FieldtypePageTitle',1,'','2026-01-13 10:41:43'),(112,'InputfieldPageTitle',0,'','2026-01-13 10:41:43'),(113,'MarkupPageArray',3,'','2026-01-13 10:41:43'),(114,'PagePermissions',3,'','2026-01-13 10:41:43'),(115,'PageRender',3,'{\"clearCache\":1}','2026-01-13 10:41:43'),(116,'JqueryCore',1,'','2026-01-13 10:41:43'),(117,'JqueryUI',1,'','2026-01-13 10:41:43'),(121,'ProcessPageEditLink',1,'','2026-01-13 10:41:43'),(122,'InputfieldPassword',0,'','2026-01-13 10:41:43'),(125,'SessionLoginThrottle',11,'','2026-01-13 10:41:43'),(129,'ProcessPageEditImageSelect',1,'','2026-01-13 10:41:43'),(131,'InputfieldButton',0,'','2026-01-13 10:41:43'),(133,'FieldtypePassword',1,'','2026-01-13 10:41:43'),(134,'ProcessPageType',33,'{\"showFields\":[]}','2026-01-13 10:41:43'),(135,'FieldtypeURL',1,'','2026-01-13 10:41:43'),(136,'ProcessPermission',1,'{\"showFields\":[\"name\",\"title\"]}','2026-01-13 10:41:43'),(137,'InputfieldPageListSelectMultiple',0,'','2026-01-13 10:41:43'),(138,'ProcessProfile',1,'{\"profileFields\":[\"pass\",\"email\",\"admin_theme\"]}','2026-01-13 10:41:43'),(139,'SystemUpdater',1,'{\"systemVersion\":20,\"coreVersion\":\"3.0.252\"}','2026-01-13 10:41:43'),(148,'AdminThemeDefault',10,'{\"colors\":\"classic\"}','2026-01-13 10:41:43'),(149,'InputfieldSelector',42,'','2026-01-13 10:41:43'),(150,'ProcessPageLister',32,'','2026-01-13 10:41:43'),(151,'JqueryMagnific',1,'','2026-01-13 10:41:43'),(155,'InputfieldTinyMCE',0,'','2026-01-13 10:41:43'),(156,'MarkupHTMLPurifier',0,'','2026-01-13 10:41:43'),(159,'.Modules.wire/modules/',8192,'Image/ImageSizerEngineAnimatedGif/ImageSizerEngineAnimatedGif.module\nImage/ImageSizerEngineIMagick/ImageSizerEngineIMagick.module\nLanguageSupport/FieldtypeTextareaLanguage.module\nLanguageSupport/LanguageTabs.module\nLanguageSupport/LanguageSupport.module\nLanguageSupport/ProcessLanguage.module\nLanguageSupport/LanguageSupportPageNames.module\nLanguageSupport/FieldtypePageTitleLanguage.module\nLanguageSupport/ProcessLanguageTranslator.module\nLanguageSupport/FieldtypeTextLanguage.module\nLanguageSupport/LanguageSupportFields.module\nSession/SessionLoginThrottle/SessionLoginThrottle.module\nSession/SessionHandlerDB/ProcessSessionDB.module\nSession/SessionHandlerDB/SessionHandlerDB.module\nPageRender.module\nLazyCron.module\nTextformatter/TextformatterNewlineBR.module\nTextformatter/TextformatterEntities.module\nTextformatter/TextformatterMarkdownExtra/TextformatterMarkdownExtra.module\nTextformatter/TextformatterNewlineUL.module\nTextformatter/TextformatterSmartypants/TextformatterSmartypants.module\nTextformatter/TextformatterStripTags.module\nTextformatter/TextformatterPstripper.module\nPagePaths.module\nMarkup/MarkupHTMLPurifier/MarkupHTMLPurifier.module\nMarkup/MarkupAdminDataTable/MarkupAdminDataTable.module\nMarkup/MarkupCache.module\nMarkup/MarkupPageFields.module\nMarkup/MarkupPagerNav/MarkupPagerNav.module\nMarkup/MarkupPageArray.module\nMarkup/MarkupRSS.module\nInputfield/InputfieldPage/InputfieldPage.module\nInputfield/InputfieldSelect.module\nInputfield/InputfieldPageName/InputfieldPageName.module\nInputfield/InputfieldText/InputfieldText.module\nInputfield/InputfieldPageAutocomplete/InputfieldPageAutocomplete.module\nInputfield/InputfieldTinyMCE/InputfieldTinyMCE.module.php\nInputfield/InputfieldPageListSelect/InputfieldPageListSelect.module\nInputfield/InputfieldPageListSelect/InputfieldPageListSelectMultiple.module\nInputfield/InputfieldAsmSelect/InputfieldAsmSelect.module\nInputfield/InputfieldButton.module\nInputfield/InputfieldFieldset.module\nInputfield/InputfieldEmail.module\nInputfield/InputfieldFloat.module\nInputfield/InputfieldCKEditor/InputfieldCKEditor.module\nInputfield/InputfieldRadios/InputfieldRadios.module\nInputfield/InputfieldSelector/InputfieldSelector.module\nInputfield/InputfieldCheckboxes/InputfieldCheckboxes.module\nInputfield/InputfieldPageTitle/InputfieldPageTitle.module\nInputfield/InputfieldPageTable/InputfieldPageTable.module\nInputfield/InputfieldToggle/InputfieldToggle.module\nInputfield/InputfieldCheckbox/InputfieldCheckbox.module\nInputfield/InputfieldForm.module\nInputfield/InputfieldURL.module\nInputfield/InputfieldName.module\nInputfield/InputfieldSelectMultiple.module\nInputfield/InputfieldMarkup.module\nInputfield/InputfieldFile/InputfieldFile.module\nInputfield/InputfieldPassword/InputfieldPassword.module\nInputfield/InputfieldSubmit/InputfieldSubmit.module\nInputfield/InputfieldIcon/InputfieldIcon.module\nInputfield/InputfieldImage/InputfieldImage.module\nInputfield/InputfieldInteger.module\nInputfield/InputfieldTextarea.module\nInputfield/InputfieldDatetime/InputfieldDatetime.module\nInputfield/InputfieldHidden.module\nInputfield/InputfieldTextTags/InputfieldTextTags.module\nJquery/JqueryMagnific/JqueryMagnific.module\nJquery/JqueryTableSorter/JqueryTableSorter.module\nJquery/JqueryCore/JqueryCore.module\nJquery/JqueryWireTabs/JqueryWireTabs.module\nJquery/JqueryUI/JqueryUI.module\nPagePermissions.module\nPagePathHistory.module\nProcess/ProcessPageTrash.module\nProcess/ProcessPageAdd/ProcessPageAdd.module\nProcess/ProcessRecentPages/ProcessRecentPages.module\nProcess/ProcessPageList/ProcessPageList.module\nProcess/ProcessPageSearch/ProcessPageSearch.module\nProcess/ProcessPageEdit/ProcessPageEdit.module\nProcess/ProcessPagesExportImport/ProcessPagesExportImport.module\nProcess/ProcessPageClone.module\nProcess/ProcessCommentsManager/ProcessCommentsManager.module\nProcess/ProcessTemplate/ProcessTemplate.module\nProcess/ProcessUser/ProcessUser.module\nProcess/ProcessHome.module\nProcess/ProcessPageView.module\nProcess/ProcessLogger/ProcessLogger.module\nProcess/ProcessField/ProcessField.module\nProcess/ProcessModule/ProcessModule.module\nProcess/ProcessProfile/ProcessProfile.module\nProcess/ProcessForgotPassword/ProcessForgotPassword.module\nProcess/ProcessPageEditLink/ProcessPageEditLink.module\nProcess/ProcessPermission/ProcessPermission.module\nProcess/ProcessPageEditImageSelect/ProcessPageEditImageSelect.module\nProcess/ProcessList.module\nProcess/ProcessPageType/ProcessPageType.module\nProcess/ProcessRole/ProcessRole.module\nProcess/ProcessPageLister/ProcessPageLister.module\nProcess/ProcessPageSort.module\nProcess/ProcessLogin/ProcessLogin.module\nPages/PagesVersions/PagesVersions.module.php\nPage/PageFrontEdit/PageFrontEdit.module\nFieldtype/FieldtypeSelector.module\nFieldtype/FieldtypeDecimal.module\nFieldtype/FieldtypeModule.module\nFieldtype/FieldtypeTextarea.module\nFieldtype/FieldtypeOptions/FieldtypeOptions.module\nFieldtype/FieldtypeFloat.module\nFieldtype/FieldtypeText.module\nFieldtype/FieldtypeImage/FieldtypeImage.module\nFieldtype/FieldtypePage.module\nFieldtype/FieldtypeInteger.module\nFieldtype/FieldtypeToggle.module\nFieldtype/FieldtypeDatetime.module\nFieldtype/FieldtypeCache.module\nFieldtype/FieldtypePageTitle.module\nFieldtype/FieldtypeFieldsetTabOpen.module\nFieldtype/FieldtypeComments/FieldtypeComments.module\nFieldtype/FieldtypeComments/CommentFilterAkismet.module\nFieldtype/FieldtypeComments/InputfieldCommentsAdmin.module\nFieldtype/FieldtypePassword.module\nFieldtype/FieldtypeCheckbox.module\nFieldtype/FieldtypeFieldsetClose.module\nFieldtype/FieldtypeFile/FieldtypeFile.module\nFieldtype/FieldtypeURL.module\nFieldtype/FieldtypeEmail.module\nFieldtype/FieldtypePageTable.module\nFieldtype/FieldtypeFieldsetOpen.module\nFieldtype/FieldtypeRepeater/FieldtypeRepeater.module\nFieldtype/FieldtypeRepeater/FieldtypeFieldsetPage.module\nFieldtype/FieldtypeRepeater/InputfieldRepeater.module\nSystem/SystemNotifications/SystemNotifications.module\nSystem/SystemNotifications/FieldtypeNotifications.module\nSystem/SystemUpdater/SystemUpdater.module\nAdminTheme/AdminThemeDefault/AdminThemeDefault.module\nAdminTheme/AdminThemeUikit/AdminThemeUikit.module\nAdminTheme/AdminThemeReno/AdminThemeReno.module\nFileCompilerTags.module','2026-01-13 10:42:04'),(160,'.Modules.site/modules/',8192,'','2026-01-13 10:42:04'),(161,'.Modules.info',8192,'{\"125\":{\"name\":\"SessionLoginThrottle\",\"title\":\"Session Login Throttle\",\"version\":103,\"autoload\":\"function\",\"singular\":true,\"created\":1768300903,\"configurable\":3},\"115\":{\"name\":\"PageRender\",\"title\":\"Page Render\",\"version\":105,\"autoload\":true,\"singular\":true,\"created\":1768300903,\"configurable\":3,\"permanent\":true},\"61\":{\"name\":\"TextformatterEntities\",\"title\":\"HTML Entity Encoder (htmlspecialchars)\",\"version\":100,\"created\":1768300903},\"156\":{\"name\":\"MarkupHTMLPurifier\",\"title\":\"HTML Purifier\",\"version\":497,\"created\":1768300903},\"67\":{\"name\":\"MarkupAdminDataTable\",\"title\":\"Admin Data Table\",\"version\":107,\"created\":1768300903,\"permanent\":true},\"98\":{\"name\":\"MarkupPagerNav\",\"title\":\"Pager (Pagination) Navigation\",\"version\":105,\"created\":1768300903},\"113\":{\"name\":\"MarkupPageArray\",\"title\":\"PageArray Markup\",\"version\":100,\"autoload\":true,\"singular\":true,\"created\":1768300903},\"60\":{\"name\":\"InputfieldPage\",\"title\":\"Page\",\"version\":109,\"created\":1768300903,\"configurable\":3,\"permanent\":true},\"36\":{\"name\":\"InputfieldSelect\",\"title\":\"Select\",\"version\":103,\"created\":1768300903,\"permanent\":true},\"86\":{\"name\":\"InputfieldPageName\",\"title\":\"Page Name\",\"version\":106,\"created\":1768300903,\"configurable\":3,\"permanent\":true},\"34\":{\"name\":\"InputfieldText\",\"title\":\"Text\",\"version\":106,\"created\":1768300903,\"permanent\":true},\"319\":{\"name\":\"InputfieldPageAutocomplete\",\"title\":\"Page Auto Complete\",\"version\":113,\"created\":1768301420},\"155\":{\"name\":\"InputfieldTinyMCE\",\"title\":\"TinyMCE\",\"version\":618,\"icon\":\"keyboard-o\",\"requiresVersions\":{\"ProcessWire\":[\">=\",\"3.0.200\"],\"MarkupHTMLPurifier\":[\">=\",0]},\"created\":1768300903,\"configurable\":4},\"15\":{\"name\":\"InputfieldPageListSelect\",\"title\":\"Page List Select\",\"version\":101,\"created\":1768300903,\"permanent\":true},\"137\":{\"name\":\"InputfieldPageListSelectMultiple\",\"title\":\"Page List Select Multiple\",\"version\":103,\"created\":1768300903,\"permanent\":true},\"25\":{\"name\":\"InputfieldAsmSelect\",\"title\":\"asmSelect\",\"version\":203,\"created\":1768300903,\"permanent\":true},\"131\":{\"name\":\"InputfieldButton\",\"title\":\"Button\",\"version\":100,\"created\":1768300903,\"permanent\":true},\"78\":{\"name\":\"InputfieldFieldset\",\"title\":\"Fieldset\",\"version\":101,\"created\":1768300903,\"permanent\":true},\"80\":{\"name\":\"InputfieldEmail\",\"title\":\"Email\",\"version\":102,\"created\":1768300903},\"90\":{\"name\":\"InputfieldFloat\",\"title\":\"Float\",\"version\":105,\"created\":1768300903,\"permanent\":true},\"39\":{\"name\":\"InputfieldRadios\",\"title\":\"Radio Buttons\",\"version\":106,\"created\":1768300903,\"permanent\":true},\"149\":{\"name\":\"InputfieldSelector\",\"title\":\"Selector\",\"version\":28,\"autoload\":\"template=admin\",\"created\":1768300903,\"configurable\":3,\"addFlag\":32},\"38\":{\"name\":\"InputfieldCheckboxes\",\"title\":\"Checkboxes\",\"version\":108,\"created\":1768300903,\"permanent\":true},\"112\":{\"name\":\"InputfieldPageTitle\",\"title\":\"Page Title\",\"version\":102,\"created\":1768300903,\"permanent\":true},\"353\":{\"name\":\"InputfieldToggle\",\"title\":\"Toggle\",\"version\":1,\"created\":1768301567},\"37\":{\"name\":\"InputfieldCheckbox\",\"title\":\"Checkbox\",\"version\":106,\"created\":1768300903,\"permanent\":true},\"30\":{\"name\":\"InputfieldForm\",\"title\":\"Form\",\"version\":107,\"created\":1768300903,\"permanent\":true},\"108\":{\"name\":\"InputfieldURL\",\"title\":\"URL\",\"version\":103,\"created\":1768300903},\"41\":{\"name\":\"InputfieldName\",\"title\":\"Name\",\"version\":100,\"created\":1768300903,\"permanent\":true},\"43\":{\"name\":\"InputfieldSelectMultiple\",\"title\":\"Select Multiple\",\"version\":101,\"created\":1768300903,\"permanent\":true},\"79\":{\"name\":\"InputfieldMarkup\",\"title\":\"Markup\",\"version\":102,\"created\":1768300903,\"permanent\":true},\"55\":{\"name\":\"InputfieldFile\",\"title\":\"Files\",\"version\":129,\"created\":1768300903,\"permanent\":true},\"122\":{\"name\":\"InputfieldPassword\",\"title\":\"Password\",\"version\":102,\"created\":1768300903,\"permanent\":true},\"32\":{\"name\":\"InputfieldSubmit\",\"title\":\"Submit\",\"version\":103,\"created\":1768300903,\"permanent\":true},\"205\":{\"name\":\"InputfieldIcon\",\"title\":\"Icon\",\"version\":3,\"created\":1768300935},\"56\":{\"name\":\"InputfieldImage\",\"title\":\"Images\",\"version\":129,\"created\":1768300903,\"permanent\":true},\"85\":{\"name\":\"InputfieldInteger\",\"title\":\"Integer\",\"version\":105,\"created\":1768300903,\"permanent\":true},\"35\":{\"name\":\"InputfieldTextarea\",\"title\":\"Textarea\",\"version\":103,\"created\":1768300903,\"permanent\":true},\"94\":{\"name\":\"InputfieldDatetime\",\"title\":\"Datetime\",\"version\":108,\"created\":1768300903,\"permanent\":true},\"40\":{\"name\":\"InputfieldHidden\",\"title\":\"Hidden\",\"version\":101,\"created\":1768300903,\"permanent\":true},\"250\":{\"name\":\"InputfieldTextTags\",\"title\":\"Text Tags\",\"version\":7,\"icon\":\"tags\",\"created\":1768301106},\"151\":{\"name\":\"JqueryMagnific\",\"title\":\"jQuery Magnific Popup\",\"version\":\"1.1.0\",\"singular\":1,\"created\":1768300903},\"103\":{\"name\":\"JqueryTableSorter\",\"title\":\"jQuery Table Sorter Plugin\",\"version\":\"2.31.3\",\"singular\":1,\"created\":1768300903},\"116\":{\"name\":\"JqueryCore\",\"title\":\"jQuery Core\",\"version\":\"1.12.4\",\"singular\":true,\"created\":1768300903,\"permanent\":true},\"45\":{\"name\":\"JqueryWireTabs\",\"title\":\"jQuery Wire Tabs Plugin\",\"version\":110,\"created\":1768300903,\"configurable\":3,\"permanent\":true},\"117\":{\"name\":\"JqueryUI\",\"title\":\"jQuery UI\",\"version\":\"1.10.4\",\"singular\":true,\"created\":1768300903,\"permanent\":true},\"114\":{\"name\":\"PagePermissions\",\"title\":\"Page Permissions\",\"version\":105,\"autoload\":true,\"singular\":true,\"created\":1768300903,\"permanent\":true},\"109\":{\"name\":\"ProcessPageTrash\",\"title\":\"Page Trash\",\"version\":103,\"singular\":1,\"created\":1768300903,\"permanent\":true},\"17\":{\"name\":\"ProcessPageAdd\",\"title\":\"Page Add\",\"version\":109,\"icon\":\"plus-circle\",\"permission\":\"page-edit\",\"created\":1768300903,\"configurable\":3,\"permanent\":true,\"useNavJSON\":true},\"175\":{\"name\":\"ProcessRecentPages\",\"title\":\"Recent Pages\",\"version\":2,\"icon\":\"clock-o\",\"permission\":\"page-edit-recent\",\"singular\":1,\"created\":1768300924,\"useNavJSON\":true,\"nav\":[{\"url\":\"?edited=1\",\"label\":\"Edited\",\"icon\":\"users\",\"navJSON\":\"navJSON\\/?edited=1\"},{\"url\":\"?added=1\",\"label\":\"Created\",\"icon\":\"users\",\"navJSON\":\"navJSON\\/?added=1\"},{\"url\":\"?edited=1&me=1\",\"label\":\"Edited by me\",\"icon\":\"user\",\"navJSON\":\"navJSON\\/?edited=1&me=1\"},{\"url\":\"?added=1&me=1\",\"label\":\"Created by me\",\"icon\":\"user\",\"navJSON\":\"navJSON\\/?added=1&me=1\"},{\"url\":\"another\\/\",\"label\":\"Add another\",\"icon\":\"plus-circle\",\"navJSON\":\"anotherNavJSON\\/\"}]},\"12\":{\"name\":\"ProcessPageList\",\"title\":\"Page List\",\"version\":124,\"icon\":\"sitemap\",\"permission\":\"page-edit\",\"created\":1768300903,\"configurable\":3,\"permanent\":true,\"useNavJSON\":true},\"104\":{\"name\":\"ProcessPageSearch\",\"title\":\"Page Search\",\"version\":108,\"permission\":\"page-edit\",\"singular\":1,\"created\":1768300903,\"configurable\":3,\"permanent\":true},\"7\":{\"name\":\"ProcessPageEdit\",\"title\":\"Page Edit\",\"version\":112,\"icon\":\"edit\",\"permission\":\"page-edit\",\"singular\":1,\"created\":1768300903,\"configurable\":3,\"permanent\":true,\"useNavJSON\":true},\"47\":{\"name\":\"ProcessTemplate\",\"title\":\"Templates\",\"version\":114,\"icon\":\"cubes\",\"permission\":\"template-admin\",\"created\":1768300903,\"configurable\":4,\"permanent\":true,\"useNavJSON\":true},\"66\":{\"name\":\"ProcessUser\",\"title\":\"Users\",\"version\":107,\"icon\":\"group\",\"permission\":\"user-admin\",\"created\":1768300903,\"configurable\":\"ProcessUserConfig.php\",\"permanent\":true,\"useNavJSON\":true},\"87\":{\"name\":\"ProcessHome\",\"title\":\"Admin Home\",\"version\":101,\"permission\":\"page-view\",\"created\":1768300903,\"permanent\":true},\"83\":{\"name\":\"ProcessPageView\",\"title\":\"Page View\",\"version\":106,\"permission\":\"page-view\",\"created\":1768300903,\"permanent\":true},\"200\":{\"name\":\"ProcessLogger\",\"title\":\"Logs\",\"version\":2,\"icon\":\"tree\",\"permission\":\"logs-view\",\"singular\":1,\"created\":1768300935,\"useNavJSON\":true},\"48\":{\"name\":\"ProcessField\",\"title\":\"Fields\",\"version\":114,\"icon\":\"cube\",\"permission\":\"field-admin\",\"created\":1768300903,\"configurable\":3,\"permanent\":true,\"useNavJSON\":true,\"addFlag\":32},\"50\":{\"name\":\"ProcessModule\",\"title\":\"Modules\",\"version\":121,\"permission\":\"module-admin\",\"created\":1768300903,\"permanent\":true,\"useNavJSON\":true,\"nav\":[{\"url\":\"?site#tab_site_modules\",\"label\":\"Site\",\"icon\":\"plug\",\"navJSON\":\"navJSON\\/?site=1\"},{\"url\":\"?core#tab_core_modules\",\"label\":\"Core\",\"icon\":\"plug\",\"navJSON\":\"navJSON\\/?core=1\"},{\"url\":\"?configurable#tab_configurable_modules\",\"label\":\"Configure\",\"icon\":\"gear\",\"navJSON\":\"navJSON\\/?configurable=1\"},{\"url\":\"?install#tab_install_modules\",\"label\":\"Install\",\"icon\":\"sign-in\",\"navJSON\":\"navJSON\\/?install=1\"},{\"url\":\"?new#tab_new_modules\",\"label\":\"New\",\"icon\":\"plus\"},{\"url\":\"?reset=1\",\"label\":\"Refresh\",\"icon\":\"refresh\"}]},\"138\":{\"name\":\"ProcessProfile\",\"title\":\"User Profile\",\"version\":105,\"permission\":\"profile-edit\",\"singular\":1,\"created\":1768300903,\"configurable\":3,\"permanent\":true},\"121\":{\"name\":\"ProcessPageEditLink\",\"title\":\"Page Edit Link\",\"version\":112,\"icon\":\"link\",\"permission\":\"page-edit\",\"singular\":1,\"created\":1768300903,\"configurable\":4,\"permanent\":true},\"136\":{\"name\":\"ProcessPermission\",\"title\":\"Permissions\",\"version\":101,\"icon\":\"gear\",\"permission\":\"permission-admin\",\"singular\":1,\"created\":1768300903,\"configurable\":3,\"permanent\":true,\"useNavJSON\":true},\"129\":{\"name\":\"ProcessPageEditImageSelect\",\"title\":\"Page Edit Image\",\"version\":121,\"permission\":\"page-edit\",\"singular\":1,\"created\":1768300903,\"configurable\":3,\"permanent\":true},\"76\":{\"name\":\"ProcessList\",\"title\":\"List\",\"version\":101,\"permission\":\"page-view\",\"created\":1768300903,\"permanent\":true},\"134\":{\"name\":\"ProcessPageType\",\"title\":\"Page Type\",\"version\":101,\"singular\":1,\"created\":1768300903,\"configurable\":3,\"permanent\":true,\"useNavJSON\":true,\"addFlag\":32},\"68\":{\"name\":\"ProcessRole\",\"title\":\"Roles\",\"version\":104,\"icon\":\"gears\",\"permission\":\"role-admin\",\"created\":1768300903,\"configurable\":3,\"permanent\":true,\"useNavJSON\":true},\"150\":{\"name\":\"ProcessPageLister\",\"title\":\"Lister\",\"version\":26,\"icon\":\"search\",\"permission\":\"page-lister\",\"created\":1768300903,\"configurable\":true,\"permanent\":true,\"useNavJSON\":true,\"addFlag\":32},\"14\":{\"name\":\"ProcessPageSort\",\"title\":\"Page Sort and Move\",\"version\":101,\"permission\":\"page-edit\",\"created\":1768300903,\"permanent\":true},\"10\":{\"name\":\"ProcessLogin\",\"title\":\"Login\",\"version\":109,\"permission\":\"page-view\",\"created\":1768300903,\"configurable\":4,\"permanent\":true},\"27\":{\"name\":\"FieldtypeModule\",\"title\":\"Module Reference\",\"version\":102,\"created\":1768300903,\"permanent\":true},\"1\":{\"name\":\"FieldtypeTextarea\",\"title\":\"Textarea\",\"version\":107,\"created\":1768300903,\"permanent\":true},\"89\":{\"name\":\"FieldtypeFloat\",\"title\":\"Float\",\"version\":108,\"singular\":1,\"created\":1768300903,\"permanent\":true},\"3\":{\"name\":\"FieldtypeText\",\"title\":\"Text\",\"version\":102,\"created\":1768300903,\"permanent\":true},\"57\":{\"name\":\"FieldtypeImage\",\"title\":\"Images\",\"version\":102,\"created\":1768300903,\"configurable\":4,\"permanent\":true},\"4\":{\"name\":\"FieldtypePage\",\"title\":\"Page Reference\",\"version\":107,\"created\":1768300903,\"configurable\":3,\"permanent\":true},\"84\":{\"name\":\"FieldtypeInteger\",\"title\":\"Integer\",\"version\":102,\"created\":1768300903,\"permanent\":true},\"28\":{\"name\":\"FieldtypeDatetime\",\"title\":\"Datetime\",\"version\":105,\"created\":1768300903},\"111\":{\"name\":\"FieldtypePageTitle\",\"title\":\"Page Title\",\"version\":100,\"singular\":true,\"created\":1768300903,\"permanent\":true},\"107\":{\"name\":\"FieldtypeFieldsetTabOpen\",\"title\":\"Fieldset in Tab (Open)\",\"version\":100,\"singular\":1,\"created\":1768300903,\"permanent\":true},\"133\":{\"name\":\"FieldtypePassword\",\"title\":\"Password\",\"version\":101,\"singular\":true,\"created\":1768300903,\"permanent\":true},\"97\":{\"name\":\"FieldtypeCheckbox\",\"title\":\"Checkbox\",\"version\":101,\"singular\":1,\"created\":1768300903,\"permanent\":true},\"106\":{\"name\":\"FieldtypeFieldsetClose\",\"title\":\"Fieldset (Close)\",\"version\":100,\"singular\":1,\"created\":1768300903,\"permanent\":true},\"6\":{\"name\":\"FieldtypeFile\",\"title\":\"Files\",\"version\":107,\"created\":1768300903,\"configurable\":4,\"permanent\":true},\"135\":{\"name\":\"FieldtypeURL\",\"title\":\"URL\",\"version\":101,\"singular\":1,\"created\":1768300903,\"permanent\":true},\"29\":{\"name\":\"FieldtypeEmail\",\"title\":\"E-Mail\",\"version\":101,\"created\":1768300903},\"105\":{\"name\":\"FieldtypeFieldsetOpen\",\"title\":\"Fieldset (Open)\",\"version\":101,\"singular\":1,\"created\":1768300903,\"permanent\":true},\"139\":{\"name\":\"SystemUpdater\",\"title\":\"System Updater\",\"version\":20,\"singular\":true,\"created\":1768300903,\"configurable\":3,\"permanent\":true},\"148\":{\"name\":\"AdminThemeDefault\",\"title\":\"Default\",\"version\":14,\"autoload\":\"template=admin\",\"created\":1768300903,\"configurable\":19},\"187\":{\"name\":\"AdminThemeUikit\",\"title\":\"Uikit\",\"version\":36,\"icon\":\"smile-o\",\"autoload\":\"template=admin\",\"created\":1768300924,\"configurable\":4},\"429\":{\"name\":\"FieldtypeToggle\",\"title\":\"Toggle (Yes\\/No)\",\"version\":1,\"requiresVersions\":{\"InputfieldToggle\":[\">=\",0]},\"singular\":true}}','2026-01-13 10:42:04'),(162,'.ModulesVerbose.info',8192,'{\"125\":{\"summary\":\"Throttles login attempts to help prevent dictionary attacks.\",\"core\":true,\"versionStr\":\"1.0.3\"},\"115\":{\"summary\":\"Adds a render method to Page and caches page output.\",\"core\":true,\"versionStr\":\"1.0.5\"},\"61\":{\"summary\":\"Entity encode ampersands, quotes (single and double) and greater-than\\/less-than signs using htmlspecialchars(str, ENT_QUOTES). It is recommended that you use this on all text\\/textarea fields except those using a rich text editor or a markup language like Markdown.\",\"core\":true,\"versionStr\":\"1.0.0\"},\"156\":{\"summary\":\"Front-end to the HTML Purifier library.\",\"core\":true,\"versionStr\":\"4.9.7\"},\"67\":{\"summary\":\"Generates markup for data tables used by ProcessWire admin\",\"core\":true,\"versionStr\":\"1.0.7\"},\"98\":{\"summary\":\"Generates markup for pagination navigation\",\"core\":true,\"versionStr\":\"1.0.5\"},\"113\":{\"summary\":\"Adds renderPager() method to all PaginatedArray types, for easy pagination output. Plus a render() method to PageArray instances.\",\"core\":true,\"versionStr\":\"1.0.0\"},\"60\":{\"summary\":\"Select one or more pages\",\"core\":true,\"versionStr\":\"1.0.9\"},\"36\":{\"summary\":\"Selection of a single value from a select pulldown\",\"core\":true,\"versionStr\":\"1.0.3\"},\"86\":{\"summary\":\"Text input validated as a ProcessWire Page name field\",\"core\":true,\"versionStr\":\"1.0.6\"},\"34\":{\"summary\":\"Single line of text\",\"core\":true,\"versionStr\":\"1.0.6\"},\"319\":{\"summary\":\"Multiple Page selection using auto completion and sorting capability. Intended for use as an input field for Page reference fields.\",\"core\":true,\"versionStr\":\"1.1.3\"},\"155\":{\"summary\":\"TinyMCE rich text editor version 6.8.2.\",\"core\":true,\"versionStr\":\"6.1.8\"},\"15\":{\"summary\":\"Selection of a single page from a ProcessWire page tree list\",\"core\":true,\"versionStr\":\"1.0.1\"},\"137\":{\"summary\":\"Selection of multiple pages from a ProcessWire page tree list\",\"core\":true,\"versionStr\":\"1.0.3\"},\"25\":{\"summary\":\"Multiple selection, progressive enhancement to select multiple\",\"core\":true,\"versionStr\":\"2.0.3\"},\"131\":{\"summary\":\"Form button element that you can optionally pass an href attribute to.\",\"core\":true,\"versionStr\":\"1.0.0\"},\"78\":{\"summary\":\"Groups one or more fields together in a container\",\"core\":true,\"versionStr\":\"1.0.1\"},\"80\":{\"summary\":\"E-Mail address in valid format\",\"core\":true,\"versionStr\":\"1.0.2\"},\"90\":{\"summary\":\"Floating point number with precision\",\"core\":true,\"versionStr\":\"1.0.5\"},\"39\":{\"summary\":\"Radio buttons for selection of a single item\",\"core\":true,\"versionStr\":\"1.0.6\"},\"149\":{\"summary\":\"Build a page finding selector visually.\",\"author\":\"Avoine + ProcessWire\",\"core\":true,\"versionStr\":\"0.2.8\"},\"38\":{\"summary\":\"Multiple checkbox toggles\",\"core\":true,\"versionStr\":\"1.0.8\"},\"112\":{\"summary\":\"Handles input of Page Title and auto-generation of Page Name (when name is blank)\",\"core\":true,\"versionStr\":\"1.0.2\"},\"353\":{\"summary\":\"A toggle providing similar input capability to a checkbox but much more configurable.\",\"core\":true,\"versionStr\":\"0.0.1\"},\"37\":{\"summary\":\"Single checkbox toggle\",\"core\":true,\"versionStr\":\"1.0.6\"},\"30\":{\"summary\":\"Contains one or more fields in a form\",\"core\":true,\"versionStr\":\"1.0.7\"},\"108\":{\"summary\":\"URL in valid format\",\"core\":true,\"versionStr\":\"1.0.3\"},\"41\":{\"summary\":\"Text input validated as a ProcessWire name field\",\"core\":true,\"versionStr\":\"1.0.0\"},\"43\":{\"summary\":\"Select multiple items from a list\",\"core\":true,\"versionStr\":\"1.0.1\"},\"79\":{\"summary\":\"Contains any other markup and optionally child Inputfields\",\"core\":true,\"versionStr\":\"1.0.2\"},\"55\":{\"summary\":\"One or more file uploads (sortable)\",\"core\":true,\"versionStr\":\"1.2.9\"},\"122\":{\"summary\":\"Password input with confirmation field.\",\"core\":true,\"versionStr\":\"1.0.2\"},\"32\":{\"summary\":\"Form submit button\",\"core\":true,\"versionStr\":\"1.0.3\"},\"205\":{\"summary\":\"Select an icon\",\"core\":true,\"versionStr\":\"0.0.3\"},\"56\":{\"summary\":\"One or more image uploads (sortable)\",\"core\":true,\"versionStr\":\"1.2.9\"},\"85\":{\"summary\":\"Integer (positive or negative)\",\"core\":true,\"versionStr\":\"1.0.5\"},\"35\":{\"summary\":\"Multiple lines of text\",\"core\":true,\"versionStr\":\"1.0.3\"},\"94\":{\"summary\":\"Inputfield that accepts date and optionally time\",\"core\":true,\"versionStr\":\"1.0.8\"},\"40\":{\"summary\":\"Hidden input in a form\",\"core\":true,\"versionStr\":\"1.0.1\"},\"250\":{\"summary\":\"Enables input of user entered tags or selection of predefined tags.\",\"core\":true,\"versionStr\":\"0.0.7\"},\"151\":{\"summary\":\"Provides lightbox capability for image galleries. Replacement for FancyBox. Uses Magnific Popup by @dimsemenov.\",\"href\":\"https:\\/\\/github.com\\/dimsemenov\\/Magnific-Popup\\/\",\"core\":true,\"versionStr\":\"1.1.0\"},\"103\":{\"summary\":\"Provides a jQuery plugin for sorting tables.\",\"href\":\"https:\\/\\/mottie.github.io\\/tablesorter\\/\",\"core\":true,\"versionStr\":\"2.31.3\"},\"116\":{\"summary\":\"jQuery Core as required by ProcessWire Admin and plugins\",\"href\":\"https:\\/\\/jquery.com\",\"core\":true,\"versionStr\":\"1.12.4\"},\"45\":{\"summary\":\"Provides a jQuery plugin for generating tabs in ProcessWire.\",\"core\":true,\"versionStr\":\"1.1.0\"},\"117\":{\"summary\":\"jQuery UI as required by ProcessWire and plugins\",\"href\":\"https:\\/\\/ui.jquery.com\",\"core\":true,\"versionStr\":\"1.10.4\"},\"114\":{\"summary\":\"Adds various permission methods to Page objects that are used by Process modules.\",\"core\":true,\"versionStr\":\"1.0.5\"},\"109\":{\"summary\":\"Handles emptying of Page trash\",\"core\":true,\"versionStr\":\"1.0.3\"},\"17\":{\"summary\":\"Add a new page\",\"core\":true,\"versionStr\":\"1.0.9\"},\"175\":{\"summary\":\"Shows a list of recently edited pages in your admin.\",\"author\":\"Ryan Cramer\",\"href\":\"http:\\/\\/modules.processwire.com\\/\",\"core\":true,\"versionStr\":\"0.0.2\",\"permissions\":{\"page-edit-recent\":\"Can see recently edited pages\"},\"page\":{\"name\":\"recent-pages\",\"parent\":\"page\",\"title\":\"Recent\"}},\"12\":{\"summary\":\"List pages in a hierarchical tree structure\",\"core\":true,\"versionStr\":\"1.2.4\"},\"104\":{\"summary\":\"Provides a page search engine for admin use.\",\"core\":true,\"versionStr\":\"1.0.8\"},\"7\":{\"summary\":\"Edit a Page\",\"core\":true,\"versionStr\":\"1.1.2\"},\"47\":{\"summary\":\"List and edit the templates that control page output\",\"core\":true,\"versionStr\":\"1.1.4\",\"searchable\":\"templates\"},\"66\":{\"summary\":\"Manage system users\",\"core\":true,\"versionStr\":\"1.0.7\",\"searchable\":\"users\"},\"87\":{\"summary\":\"Acts as a placeholder Process for the admin root. Ensures proper flow control after login.\",\"core\":true,\"versionStr\":\"1.0.1\"},\"83\":{\"summary\":\"All page views are routed through this Process\",\"core\":true,\"versionStr\":\"1.0.6\"},\"200\":{\"summary\":\"View and manage system logs.\",\"author\":\"Ryan Cramer\",\"core\":true,\"versionStr\":\"0.0.2\",\"permissions\":{\"logs-view\":\"Can view system logs\",\"logs-edit\":\"Can manage system logs\"},\"page\":{\"name\":\"logs\",\"parent\":\"setup\",\"title\":\"Logs\"}},\"48\":{\"summary\":\"Edit individual fields that hold page data\",\"core\":true,\"versionStr\":\"1.1.4\",\"searchable\":\"fields\"},\"50\":{\"summary\":\"List, edit or install\\/uninstall modules\",\"core\":true,\"versionStr\":\"1.2.1\"},\"138\":{\"summary\":\"Enables user to change their password, email address and other settings that you define.\",\"core\":true,\"versionStr\":\"1.0.5\"},\"121\":{\"summary\":\"Provides a link capability as used by some Fieldtype modules (like rich text editors).\",\"core\":true,\"versionStr\":\"1.1.2\"},\"136\":{\"summary\":\"Manage system permissions\",\"core\":true,\"versionStr\":\"1.0.1\"},\"129\":{\"summary\":\"Provides image manipulation functions for image fields and rich text editors.\",\"core\":true,\"versionStr\":\"1.2.1\"},\"76\":{\"summary\":\"Lists the Process assigned to each child page of the current\",\"core\":true,\"versionStr\":\"1.0.1\"},\"134\":{\"summary\":\"List, Edit and Add pages of a specific type\",\"core\":true,\"versionStr\":\"1.0.1\"},\"68\":{\"summary\":\"Manage user roles and what permissions are attached\",\"core\":true,\"versionStr\":\"1.0.4\"},\"150\":{\"summary\":\"Admin tool for finding and listing pages by any property.\",\"author\":\"Ryan Cramer\",\"core\":true,\"versionStr\":\"0.2.6\",\"permissions\":{\"page-lister\":\"Use Page Lister\"}},\"14\":{\"summary\":\"Handles page sorting and moving for PageList\",\"core\":true,\"versionStr\":\"1.0.1\"},\"10\":{\"summary\":\"Login to ProcessWire\",\"core\":true,\"versionStr\":\"1.0.9\"},\"27\":{\"summary\":\"Field that stores a reference to another module\",\"core\":true,\"versionStr\":\"1.0.2\"},\"1\":{\"summary\":\"Field that stores multiple lines of text\",\"core\":true,\"versionStr\":\"1.0.7\"},\"89\":{\"summary\":\"Field that stores a floating point number\",\"core\":true,\"versionStr\":\"1.0.8\"},\"3\":{\"summary\":\"Field that stores a single line of text\",\"core\":true,\"versionStr\":\"1.0.2\"},\"57\":{\"summary\":\"Field that stores one or more GIF, JPG, or PNG images\",\"core\":true,\"versionStr\":\"1.0.2\"},\"4\":{\"summary\":\"Field that stores one or more references to ProcessWire pages\",\"core\":true,\"versionStr\":\"1.0.7\"},\"84\":{\"summary\":\"Field that stores an integer\",\"core\":true,\"versionStr\":\"1.0.2\"},\"28\":{\"summary\":\"Field that stores a date and optionally time\",\"core\":true,\"versionStr\":\"1.0.5\"},\"111\":{\"summary\":\"Field that stores a page title\",\"core\":true,\"versionStr\":\"1.0.0\"},\"107\":{\"summary\":\"Open a fieldset to group fields. Same as Fieldset (Open) except that it displays in a tab instead.\",\"core\":true,\"versionStr\":\"1.0.0\"},\"133\":{\"summary\":\"Field that stores a hashed and salted password\",\"core\":true,\"versionStr\":\"1.0.1\"},\"97\":{\"summary\":\"This Fieldtype stores an ON\\/OFF toggle via a single checkbox. The ON value is 1 and OFF value is 0.\",\"core\":true,\"versionStr\":\"1.0.1\"},\"106\":{\"summary\":\"Close a fieldset opened by FieldsetOpen. \",\"core\":true,\"versionStr\":\"1.0.0\"},\"6\":{\"summary\":\"Field that stores one or more files\",\"core\":true,\"versionStr\":\"1.0.7\"},\"135\":{\"summary\":\"Field that stores a URL\",\"core\":true,\"versionStr\":\"1.0.1\"},\"29\":{\"summary\":\"Field that stores an e-mail address\",\"core\":true,\"versionStr\":\"1.0.1\"},\"105\":{\"summary\":\"Open a fieldset to group fields. Should be followed by a Fieldset (Close) after one or more fields.\",\"core\":true,\"versionStr\":\"1.0.1\"},\"139\":{\"summary\":\"Manages system versions and upgrades.\",\"core\":true,\"versionStr\":\"0.2.0\"},\"148\":{\"summary\":\"Minimal admin theme that supports all ProcessWire features.\",\"core\":true,\"versionStr\":\"0.1.4\"},\"187\":{\"summary\":\"Uikit v3 admin theme\",\"core\":true,\"versionStr\":\"0.3.6\"},\"429\":{\"summary\":\"Configurable yes\\/no, on\\/off toggle alternative to a checkbox, plus optional \\u201cother\\u201d option.\",\"core\":true,\"versionStr\":\"0.0.1\"}}','2026-01-13 10:42:04'),(163,'.ModulesUninstalled.info',8192,'{\"ImageSizerEngineAnimatedGif\":{\"name\":\"ImageSizerEngineAnimatedGif\",\"title\":\"Animated GIF Image Sizer\",\"version\":1,\"versionStr\":\"0.0.1\",\"author\":\"Horst Nogajski\",\"summary\":\"Upgrades image manipulations for animated GIFs.\",\"created\":1760612563,\"installed\":false,\"configurable\":4,\"core\":true},\"ImageSizerEngineIMagick\":{\"name\":\"ImageSizerEngineIMagick\",\"title\":\"IMagick Image Sizer\",\"version\":3,\"versionStr\":\"0.0.3\",\"author\":\"Horst Nogajski\",\"summary\":\"Upgrades image manipulations to use PHP\'s ImageMagick library when possible.\",\"created\":1760612563,\"installed\":false,\"configurable\":4,\"core\":true},\"FieldtypeTextareaLanguage\":{\"name\":\"FieldtypeTextareaLanguage\",\"title\":\"Textarea (Multi-language)\",\"version\":100,\"versionStr\":\"1.0.0\",\"summary\":\"Field that stores a multiple lines of text in multiple languages\",\"requiresVersions\":{\"LanguageSupportFields\":[\">=\",0]},\"created\":1760612563,\"installed\":false,\"core\":true},\"LanguageTabs\":{\"name\":\"LanguageTabs\",\"title\":\"Languages Support - Tabs\",\"version\":117,\"versionStr\":\"1.1.7\",\"author\":\"adamspruijt, ryan, flipzoom\",\"summary\":\"Organizes multi-language fields into tabs for a cleaner easier to use interface.\",\"requiresVersions\":{\"LanguageSupport\":[\">=\",0]},\"autoload\":\"template=admin\",\"singular\":true,\"created\":1760612563,\"installed\":false,\"configurable\":4,\"core\":true},\"LanguageSupport\":{\"name\":\"LanguageSupport\",\"title\":\"Languages Support\",\"version\":104,\"versionStr\":\"1.0.4\",\"author\":\"Ryan Cramer\",\"summary\":\"ProcessWire multi-language support.\",\"installs\":[\"ProcessLanguage\",\"ProcessLanguageTranslator\"],\"autoload\":true,\"singular\":true,\"created\":1760612563,\"installed\":false,\"configurable\":3,\"core\":true,\"addFlag\":32},\"ProcessLanguage\":{\"name\":\"ProcessLanguage\",\"title\":\"Languages\",\"version\":103,\"versionStr\":\"1.0.3\",\"author\":\"Ryan Cramer\",\"summary\":\"Manage system languages\",\"icon\":\"language\",\"requiresVersions\":{\"LanguageSupport\":[\">=\",0]},\"permission\":\"lang-edit\",\"permissions\":{\"lang-edit\":\"Administer languages and static translation files\"},\"created\":1760612563,\"installed\":false,\"configurable\":3,\"core\":true,\"useNavJSON\":true},\"LanguageSupportPageNames\":{\"name\":\"LanguageSupportPageNames\",\"title\":\"Languages Support - Page Names\",\"version\":14,\"versionStr\":\"0.1.4\",\"author\":\"Ryan Cramer\",\"summary\":\"Required to use multi-language page names.\",\"requiresVersions\":{\"LanguageSupport\":[\">=\",0],\"LanguageSupportFields\":[\">=\",0]},\"autoload\":true,\"singular\":true,\"created\":1760612563,\"installed\":false,\"configurable\":4,\"core\":true},\"FieldtypePageTitleLanguage\":{\"name\":\"FieldtypePageTitleLanguage\",\"title\":\"Page Title (Multi-Language)\",\"version\":100,\"versionStr\":\"1.0.0\",\"author\":\"Ryan Cramer\",\"summary\":\"Field that stores a page title in multiple languages. Use this only if you want title inputs created for ALL languages on ALL pages. Otherwise create separate languaged-named title fields, i.e. title_fr, title_es, title_fi, etc. \",\"requiresVersions\":{\"LanguageSupportFields\":[\">=\",0],\"FieldtypeTextLanguage\":[\">=\",0]},\"created\":1760612563,\"installed\":false,\"core\":true},\"ProcessLanguageTranslator\":{\"name\":\"ProcessLanguageTranslator\",\"title\":\"Language Translator\",\"version\":103,\"versionStr\":\"1.0.3\",\"author\":\"Ryan Cramer\",\"summary\":\"Provides language translation capabilities for ProcessWire core and modules.\",\"requiresVersions\":{\"LanguageSupport\":[\">=\",0]},\"permission\":\"lang-edit\",\"created\":1760612563,\"installed\":false,\"configurable\":4,\"core\":true},\"FieldtypeTextLanguage\":{\"name\":\"FieldtypeTextLanguage\",\"title\":\"Text (Multi-language)\",\"version\":100,\"versionStr\":\"1.0.0\",\"summary\":\"Field that stores a single line of text in multiple languages\",\"requiresVersions\":{\"LanguageSupportFields\":[\">=\",0]},\"created\":1760612563,\"installed\":false,\"core\":true},\"LanguageSupportFields\":{\"name\":\"LanguageSupportFields\",\"title\":\"Languages Support - Fields\",\"version\":101,\"versionStr\":\"1.0.1\",\"author\":\"Ryan Cramer\",\"summary\":\"Required to use multi-language fields.\",\"requiresVersions\":{\"LanguageSupport\":[\">=\",0]},\"installs\":[\"FieldtypePageTitleLanguage\",\"FieldtypeTextareaLanguage\",\"FieldtypeTextLanguage\"],\"autoload\":true,\"singular\":true,\"created\":1760612563,\"installed\":false,\"core\":true},\"ProcessSessionDB\":{\"name\":\"ProcessSessionDB\",\"title\":\"Sessions\",\"version\":5,\"versionStr\":\"0.0.5\",\"summary\":\"Enables you to browse active database sessions.\",\"icon\":\"dashboard\",\"requiresVersions\":{\"SessionHandlerDB\":[\">=\",0]},\"created\":1760612563,\"installed\":false,\"core\":true,\"page\":{\"name\":\"sessions-db\",\"parent\":\"access\",\"title\":\"Sessions\"}},\"SessionHandlerDB\":{\"name\":\"SessionHandlerDB\",\"title\":\"Session Handler Database\",\"version\":6,\"versionStr\":\"0.0.6\",\"summary\":\"Installing this module makes ProcessWire store sessions in the database rather than the file system. Note that this module will log you out after install or uninstall.\",\"installs\":[\"ProcessSessionDB\"],\"created\":1760612563,\"installed\":false,\"configurable\":3,\"core\":true},\"LazyCron\":{\"name\":\"LazyCron\",\"title\":\"Lazy Cron\",\"version\":104,\"versionStr\":\"1.0.4\",\"summary\":\"Provides hooks that are automatically executed at various intervals. It is called \'lazy\' because it\'s triggered by a pageview, so the interval is guaranteed to be at least the time requested, rather than exactly the time requested. This is fine for most cases, but you can make it not lazy by connecting this to a real CRON job. See the module file for details. \",\"href\":\"https:\\/\\/processwire.com\\/api\\/modules\\/lazy-cron\\/\",\"autoload\":true,\"singular\":true,\"created\":1760612563,\"installed\":false,\"core\":true},\"TextformatterNewlineBR\":{\"name\":\"TextformatterNewlineBR\",\"title\":\"Newlines to XHTML Line Breaks\",\"version\":100,\"versionStr\":\"1.0.0\",\"summary\":\"Converts newlines to XHTML line break <br \\/> tags. \",\"created\":1760612563,\"installed\":false,\"core\":true},\"TextformatterMarkdownExtra\":{\"name\":\"TextformatterMarkdownExtra\",\"title\":\"Markdown\\/Parsedown Extra\",\"version\":180,\"versionStr\":\"1.8.0\",\"summary\":\"Markdown\\/Parsedown extra lightweight markup language by Emanuil Rusev. Based on Markdown by John Gruber.\",\"created\":1760612563,\"installed\":false,\"configurable\":4,\"core\":true},\"TextformatterNewlineUL\":{\"name\":\"TextformatterNewlineUL\",\"title\":\"Newlines to Unordered List\",\"version\":100,\"versionStr\":\"1.0.0\",\"summary\":\"Converts newlines to <li> list items and surrounds in an <ul> unordered list. \",\"created\":1760612563,\"installed\":false,\"core\":true},\"TextformatterSmartypants\":{\"name\":\"TextformatterSmartypants\",\"title\":\"SmartyPants Typographer\",\"version\":171,\"versionStr\":\"1.7.1\",\"summary\":\"Smart typography for web sites, by Michel Fortin based on SmartyPants by John Gruber. If combined with Markdown, it should be applied AFTER Markdown.\",\"created\":1760612563,\"installed\":false,\"configurable\":4,\"core\":true,\"url\":\"https:\\/\\/github.com\\/michelf\\/php-smartypants\"},\"TextformatterStripTags\":{\"name\":\"TextformatterStripTags\",\"title\":\"Strip Markup Tags\",\"version\":100,\"versionStr\":\"1.0.0\",\"summary\":\"Strips HTML\\/XHTML Markup Tags\",\"created\":1760612563,\"installed\":false,\"configurable\":3,\"core\":true},\"TextformatterPstripper\":{\"name\":\"TextformatterPstripper\",\"title\":\"Paragraph Stripper\",\"version\":100,\"versionStr\":\"1.0.0\",\"summary\":\"Strips paragraph <p> tags that may have been applied by other text formatters before it. \",\"created\":1760612563,\"installed\":false,\"core\":true},\"PagePaths\":{\"name\":\"PagePaths\",\"title\":\"Page Paths\",\"version\":4,\"versionStr\":\"0.0.4\",\"summary\":\"Enables page paths\\/urls to be queryable by selectors. Also offers potential for improved load performance. Builds an index at install (may take time on a large site).\",\"autoload\":true,\"singular\":true,\"created\":1760612563,\"installed\":false,\"configurable\":4,\"core\":true},\"MarkupCache\":{\"name\":\"MarkupCache\",\"title\":\"Markup Cache\",\"version\":101,\"versionStr\":\"1.0.1\",\"summary\":\"A simple way to cache segments of markup in your templates. \",\"href\":\"https:\\/\\/processwire.com\\/api\\/modules\\/markupcache\\/\",\"autoload\":true,\"singular\":true,\"created\":1760612563,\"installed\":false,\"configurable\":3,\"core\":true},\"MarkupPageFields\":{\"name\":\"MarkupPageFields\",\"title\":\"Markup Page Fields\",\"version\":100,\"versionStr\":\"1.0.0\",\"summary\":\"Adds $page->renderFields() and $page->images->render() methods that return basic markup for output during development and debugging.\",\"autoload\":true,\"singular\":true,\"created\":1760612563,\"installed\":false,\"core\":true,\"permanent\":true},\"MarkupRSS\":{\"name\":\"MarkupRSS\",\"title\":\"Markup RSS Feed\",\"version\":105,\"versionStr\":\"1.0.5\",\"summary\":\"Renders an RSS feed. Given a PageArray, renders an RSS feed of them.\",\"icon\":\"rss-square\",\"created\":1760612563,\"installed\":false,\"configurable\":3,\"core\":true},\"InputfieldPageAutocomplete\":{\"name\":\"InputfieldPageAutocomplete\",\"title\":\"Page Auto Complete\",\"version\":113,\"versionStr\":\"1.1.3\",\"summary\":\"Multiple Page selection using auto completion and sorting capability. Intended for use as an input field for Page reference fields.\",\"created\":1760612563,\"installed\":false,\"core\":true},\"InputfieldCKEditor\":{\"name\":\"InputfieldCKEditor\",\"title\":\"CKEditor\",\"version\":172,\"versionStr\":\"1.7.2\",\"summary\":\"CKEditor textarea rich text editor.\",\"installs\":[\"MarkupHTMLPurifier\"],\"created\":1760612563,\"installed\":false,\"core\":true},\"InputfieldPageTable\":{\"name\":\"InputfieldPageTable\",\"title\":\"ProFields: Page Table\",\"version\":14,\"versionStr\":\"0.1.4\",\"summary\":\"Inputfield to accompany FieldtypePageTable\",\"requiresVersions\":{\"FieldtypePageTable\":[\">=\",0]},\"created\":1760612563,\"installed\":false,\"core\":true},\"InputfieldToggle\":{\"name\":\"InputfieldToggle\",\"title\":\"Toggle\",\"version\":1,\"versionStr\":\"0.0.1\",\"summary\":\"A toggle providing similar input capability to a checkbox but much more configurable.\",\"created\":1760612563,\"installed\":false,\"core\":true},\"InputfieldIcon\":{\"name\":\"InputfieldIcon\",\"title\":\"Icon\",\"version\":3,\"versionStr\":\"0.0.3\",\"summary\":\"Select an icon\",\"created\":1760612563,\"installed\":false,\"core\":true},\"InputfieldTextTags\":{\"name\":\"InputfieldTextTags\",\"title\":\"Text Tags\",\"version\":7,\"versionStr\":\"0.0.7\",\"summary\":\"Enables input of user entered tags or selection of predefined tags.\",\"icon\":\"tags\",\"created\":1760612563,\"installed\":false,\"core\":true},\"PagePathHistory\":{\"name\":\"PagePathHistory\",\"title\":\"Page Path History\",\"version\":8,\"versionStr\":\"0.0.8\",\"summary\":\"Keeps track of past URLs where pages have lived and automatically redirects (301 permanent) to the new location whenever the past URL is accessed.\",\"autoload\":true,\"singular\":true,\"created\":1760612563,\"installed\":false,\"configurable\":4,\"core\":true},\"ProcessRecentPages\":{\"name\":\"ProcessRecentPages\",\"title\":\"Recent Pages\",\"version\":2,\"versionStr\":\"0.0.2\",\"author\":\"Ryan Cramer\",\"summary\":\"Shows a list of recently edited pages in your admin.\",\"href\":\"http:\\/\\/modules.processwire.com\\/\",\"icon\":\"clock-o\",\"permission\":\"page-edit-recent\",\"permissions\":{\"page-edit-recent\":\"Can see recently edited pages\"},\"created\":1760612563,\"installed\":false,\"core\":true,\"page\":{\"name\":\"recent-pages\",\"parent\":\"page\",\"title\":\"Recent\"},\"useNavJSON\":true,\"nav\":[{\"url\":\"?edited=1\",\"label\":\"Edited\",\"icon\":\"users\",\"navJSON\":\"navJSON\\/?edited=1\"},{\"url\":\"?added=1\",\"label\":\"Created\",\"icon\":\"users\",\"navJSON\":\"navJSON\\/?added=1\"},{\"url\":\"?edited=1&me=1\",\"label\":\"Edited by me\",\"icon\":\"user\",\"navJSON\":\"navJSON\\/?edited=1&me=1\"},{\"url\":\"?added=1&me=1\",\"label\":\"Created by me\",\"icon\":\"user\",\"navJSON\":\"navJSON\\/?added=1&me=1\"},{\"url\":\"another\\/\",\"label\":\"Add another\",\"icon\":\"plus-circle\",\"navJSON\":\"anotherNavJSON\\/\"}]},\"ProcessPagesExportImport\":{\"name\":\"ProcessPagesExportImport\",\"title\":\"Pages Export\\/Import\",\"version\":1,\"versionStr\":\"0.0.1\",\"author\":\"Ryan Cramer\",\"summary\":\"Enables exporting and importing of pages. Development version, not yet recommended for production use.\",\"icon\":\"paper-plane-o\",\"permission\":\"page-edit-export\",\"created\":1760612563,\"installed\":false,\"core\":true,\"page\":{\"name\":\"export-import\",\"parent\":\"page\",\"title\":\"Export\\/Import\"}},\"ProcessPageClone\":{\"name\":\"ProcessPageClone\",\"title\":\"Page Clone\",\"version\":106,\"versionStr\":\"1.0.6\",\"summary\":\"Provides ability to clone\\/copy\\/duplicate pages in the admin. Adds a &quot;copy&quot; option to all applicable pages in the PageList.\",\"permission\":\"page-clone\",\"permissions\":{\"page-clone\":\"Clone a page\",\"page-clone-tree\":\"Clone a tree of pages\"},\"autoload\":\"template=admin\",\"created\":1760612563,\"installed\":false,\"configurable\":4,\"core\":true,\"page\":{\"name\":\"clone\",\"title\":\"Clone\",\"parent\":\"page\",\"status\":1024}},\"ProcessCommentsManager\":{\"name\":\"ProcessCommentsManager\",\"title\":\"Comments\",\"version\":12,\"versionStr\":\"0.1.2\",\"author\":\"Ryan Cramer\",\"summary\":\"Manage comments in your site outside of the page editor.\",\"icon\":\"comments\",\"requiresVersions\":{\"FieldtypeComments\":[\">=\",0]},\"permission\":\"comments-manager\",\"permissions\":{\"comments-manager\":\"Use the comments manager\"},\"created\":1760612563,\"installed\":false,\"searchable\":\"comments\",\"core\":true,\"page\":{\"name\":\"comments\",\"parent\":\"setup\",\"title\":\"Comments\"},\"nav\":[{\"url\":\"?go=approved\",\"label\":\"Approved\"},{\"url\":\"?go=pending\",\"label\":\"Pending\"},{\"url\":\"?go=spam\",\"label\":\"Spam\"},{\"url\":\"?go=all\",\"label\":\"All\"}]},\"ProcessLogger\":{\"name\":\"ProcessLogger\",\"title\":\"Logs\",\"version\":2,\"versionStr\":\"0.0.2\",\"author\":\"Ryan Cramer\",\"summary\":\"View and manage system logs.\",\"icon\":\"tree\",\"permission\":\"logs-view\",\"permissions\":{\"logs-view\":\"Can view system logs\",\"logs-edit\":\"Can manage system logs\"},\"created\":1760612563,\"installed\":false,\"core\":true,\"page\":{\"name\":\"logs\",\"parent\":\"setup\",\"title\":\"Logs\"},\"useNavJSON\":true},\"ProcessForgotPassword\":{\"name\":\"ProcessForgotPassword\",\"title\":\"Forgot Password\",\"version\":104,\"versionStr\":\"1.0.4\",\"summary\":\"Provides password reset\\/email capability for the Login process.\",\"permission\":\"page-view\",\"created\":1760612563,\"installed\":false,\"configurable\":4,\"core\":true},\"PagesVersions\":{\"name\":\"PagesVersions\",\"title\":\"Pages Versions\",\"version\":2,\"versionStr\":\"0.0.2\",\"author\":\"Ryan Cramer\",\"summary\":\"Provides a version control API for pages in ProcessWire.\",\"icon\":\"code-fork\",\"autoload\":true,\"singular\":true,\"created\":1760612563,\"installed\":false,\"core\":true},\"PageFrontEdit\":{\"name\":\"PageFrontEdit\",\"title\":\"Front-End Page Editor\",\"version\":6,\"versionStr\":\"0.0.6\",\"author\":\"Ryan Cramer\",\"summary\":\"Enables front-end editing of page fields.\",\"icon\":\"cube\",\"permissions\":{\"page-edit-front\":\"Use the front-end page editor\"},\"autoload\":true,\"created\":1760612563,\"installed\":false,\"configurable\":\"PageFrontEditConfig.php\",\"core\":true,\"license\":\"MPL 2.0\"},\"FieldtypeSelector\":{\"name\":\"FieldtypeSelector\",\"title\":\"Selector\",\"version\":13,\"versionStr\":\"0.1.3\",\"author\":\"Avoine + ProcessWire\",\"summary\":\"Build a page finding selector visually.\",\"created\":1760612563,\"installed\":false,\"core\":true},\"FieldtypeDecimal\":{\"name\":\"FieldtypeDecimal\",\"title\":\"Decimal\",\"version\":1,\"versionStr\":\"0.0.1\",\"summary\":\"Field that stores a decimal number\",\"created\":1760612563,\"installed\":false,\"core\":true},\"FieldtypeOptions\":{\"name\":\"FieldtypeOptions\",\"title\":\"Select Options\",\"version\":2,\"versionStr\":\"0.0.2\",\"summary\":\"Field that stores single and multi select options.\",\"created\":1760612563,\"installed\":false,\"core\":true},\"FieldtypeToggle\":{\"name\":\"FieldtypeToggle\",\"title\":\"Toggle (Yes\\/No)\",\"version\":1,\"versionStr\":\"0.0.1\",\"summary\":\"Configurable yes\\/no, on\\/off toggle alternative to a checkbox, plus optional \\u201cother\\u201d option.\",\"requiresVersions\":{\"InputfieldToggle\":[\">=\",0]},\"created\":1760612563,\"installed\":false,\"core\":true},\"FieldtypeCache\":{\"name\":\"FieldtypeCache\",\"title\":\"Cache\",\"version\":102,\"versionStr\":\"1.0.2\",\"summary\":\"Caches the values of other fields for fewer runtime queries. Can also be used to combine multiple text fields and have them all be searchable under the cached field name.\",\"created\":1760612563,\"installed\":false,\"core\":true},\"FieldtypeComments\":{\"name\":\"FieldtypeComments\",\"title\":\"Comments\",\"version\":110,\"versionStr\":\"1.1.0\",\"summary\":\"Field that stores user posted comments for a single Page\",\"installs\":[\"InputfieldCommentsAdmin\"],\"created\":1760612563,\"installed\":false,\"core\":true},\"CommentFilterAkismet\":{\"name\":\"CommentFilterAkismet\",\"title\":\"Comment Filter: Akismet\",\"version\":200,\"versionStr\":\"2.0.0\",\"summary\":\"Uses the Akismet service to identify comment spam. Module plugin for the Comments Fieldtype.\",\"requiresVersions\":{\"FieldtypeComments\":[\">=\",0]},\"created\":1760612563,\"installed\":false,\"configurable\":3,\"core\":true},\"InputfieldCommentsAdmin\":{\"name\":\"InputfieldCommentsAdmin\",\"title\":\"Comments Admin\",\"version\":104,\"versionStr\":\"1.0.4\",\"summary\":\"Provides an administrative interface for working with comments\",\"requiresVersions\":{\"FieldtypeComments\":[\">=\",0]},\"created\":1760612563,\"installed\":false,\"core\":true},\"FieldtypePageTable\":{\"name\":\"FieldtypePageTable\",\"title\":\"ProFields: Page Table\",\"version\":8,\"versionStr\":\"0.0.8\",\"summary\":\"A fieldtype containing a group of editable pages.\",\"installs\":[\"InputfieldPageTable\"],\"autoload\":true,\"created\":1760612563,\"installed\":false,\"core\":true},\"FieldtypeRepeater\":{\"name\":\"FieldtypeRepeater\",\"title\":\"Repeater\",\"version\":113,\"versionStr\":\"1.1.3\",\"summary\":\"Maintains a collection of fields that are repeated for any number of times.\",\"installs\":[\"InputfieldRepeater\"],\"autoload\":true,\"created\":1760612563,\"installed\":false,\"configurable\":3,\"core\":true},\"FieldtypeFieldsetPage\":{\"name\":\"FieldtypeFieldsetPage\",\"title\":\"Fieldset (Page)\",\"version\":1,\"versionStr\":\"0.0.1\",\"summary\":\"Fieldset with fields isolated to separate namespace (page), enabling re-use of fields.\",\"requiresVersions\":{\"FieldtypeRepeater\":[\">=\",0]},\"autoload\":true,\"created\":1760612563,\"installed\":false,\"configurable\":3,\"core\":true},\"InputfieldRepeater\":{\"name\":\"InputfieldRepeater\",\"title\":\"Repeater\",\"version\":111,\"versionStr\":\"1.1.1\",\"summary\":\"Repeats fields from another template. Provides the input for FieldtypeRepeater.\",\"requiresVersions\":{\"FieldtypeRepeater\":[\">=\",0]},\"created\":1760612563,\"installed\":false,\"core\":true},\"SystemNotifications\":{\"name\":\"SystemNotifications\",\"title\":\"System Notifications\",\"version\":12,\"versionStr\":\"0.1.2\",\"summary\":\"Adds support for notifications in ProcessWire (currently in development)\",\"icon\":\"bell\",\"installs\":[\"FieldtypeNotifications\"],\"autoload\":true,\"created\":1760612563,\"installed\":false,\"configurable\":\"SystemNotificationsConfig.php\",\"core\":true},\"FieldtypeNotifications\":{\"name\":\"FieldtypeNotifications\",\"title\":\"Notifications\",\"version\":4,\"versionStr\":\"0.0.4\",\"summary\":\"Field that stores user notifications.\",\"requiresVersions\":{\"SystemNotifications\":[\">=\",0]},\"created\":1760612563,\"installed\":false,\"core\":true},\"AdminThemeUikit\":{\"name\":\"AdminThemeUikit\",\"title\":\"Uikit\",\"version\":36,\"versionStr\":\"0.3.6\",\"summary\":\"Uikit v3 admin theme\",\"icon\":\"smile-o\",\"autoload\":\"template=admin\",\"created\":1760612563,\"installed\":false,\"configurable\":4,\"core\":true},\"AdminThemeReno\":{\"name\":\"AdminThemeReno\",\"title\":\"Reno\",\"version\":17,\"versionStr\":\"0.1.7\",\"author\":\"Tom Reno (Renobird)\",\"summary\":\"Admin theme for ProcessWire 2.5+ by Tom Reno (Renobird)\",\"requiresVersions\":{\"AdminThemeDefault\":[\">=\",0]},\"autoload\":\"template=admin\",\"created\":1760612563,\"installed\":false,\"configurable\":3,\"core\":true},\"FileCompilerTags\":{\"name\":\"FileCompilerTags\",\"title\":\"Tags File Compiler\",\"version\":1,\"versionStr\":\"0.0.1\",\"summary\":\"Enables {var} or {var.property} variables in markup sections of a file. Can be used with any API variable.\",\"created\":1760612563,\"installed\":false,\"configurable\":4,\"core\":true}}','2026-01-13 10:42:04'),(164,'.ModulesVersions.info',8192,'[]','2026-01-13 10:42:04'),(175,'ProcessRecentPages',1,'','2026-01-13 10:42:04'),(187,'AdminThemeUikit',10,'','2026-01-13 10:42:04'),(200,'ProcessLogger',1,'','2026-01-13 10:42:15'),(205,'InputfieldIcon',0,'','2026-01-13 10:42:15'),(250,'InputfieldTextTags',0,'','2026-01-13 10:45:06'),(319,'InputfieldPageAutocomplete',0,'','2026-01-13 10:50:20'),(353,'InputfieldToggle',0,'','2026-01-13 10:52:47'),(429,'FieldtypeToggle',1,'','2026-01-13 10:59:34');
/*!40000 ALTER TABLE `modules` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `pages`
--

LOCK TABLES `pages` WRITE;
/*!40000 ALTER TABLE `pages` DISABLE KEYS */;
INSERT INTO `pages` VALUES (1,0,1,'home',9,'2026-01-13 10:41:43',41,'2026-01-13 10:41:43',41,'2026-01-13 10:41:43',0),(2,1,2,'backend',1035,'2026-01-13 10:42:15',40,'2026-01-13 10:41:43',41,'2026-01-13 10:41:43',5),(3,2,2,'page',21,'2026-01-13 10:41:43',41,'2026-01-13 10:41:43',41,'2026-01-13 10:41:43',0),(6,3,2,'add',21,'2026-01-13 10:42:27',40,'2026-01-13 10:41:43',41,'2026-01-13 10:41:43',1),(7,1,2,'trash',1039,'2026-01-13 10:41:43',41,'2026-01-13 10:41:43',41,'2026-01-13 10:41:43',6),(8,3,2,'list',21,'2026-01-13 10:42:32',41,'2026-01-13 10:41:43',41,'2026-01-13 10:41:43',0),(9,3,2,'sort',1047,'2026-01-13 10:41:43',41,'2026-01-13 10:41:43',41,'2026-01-13 10:41:43',3),(10,3,2,'edit',1045,'2026-01-13 10:42:32',41,'2026-01-13 10:41:43',41,'2026-01-13 10:41:43',4),(11,22,2,'template',21,'2026-01-13 10:41:43',41,'2026-01-13 10:41:43',41,'2026-01-13 10:41:43',0),(16,22,2,'field',21,'2026-01-13 10:41:43',41,'2026-01-13 10:41:43',41,'2026-01-13 10:41:43',2),(21,2,2,'module',21,'2026-01-13 10:41:43',41,'2026-01-13 10:41:43',41,'2026-01-13 10:41:43',2),(22,2,2,'setup',21,'2026-01-13 10:41:43',41,'2026-01-13 10:41:43',41,'2026-01-13 10:41:43',1),(23,2,2,'login',1035,'2026-01-13 10:41:43',41,'2026-01-13 10:41:43',41,'2026-01-13 10:41:43',4),(27,1,29,'http404',1035,'2026-01-13 10:41:43',41,'2026-01-13 10:41:43',3,'2026-01-13 10:41:43',4),(28,2,2,'access',13,'2026-01-13 10:41:43',41,'2026-01-13 10:41:43',41,'2026-01-13 10:41:43',3),(29,28,2,'users',29,'2026-01-13 10:41:43',41,'2026-01-13 10:41:43',41,'2026-01-13 10:41:43',0),(30,28,2,'roles',29,'2026-01-13 10:41:43',41,'2026-01-13 10:41:43',41,'2026-01-13 10:41:43',1),(31,28,2,'permissions',29,'2026-01-13 10:41:43',41,'2026-01-13 10:41:43',41,'2026-01-13 10:41:43',2),(32,31,5,'page-edit',25,'2026-01-13 10:41:43',41,'2026-01-13 10:41:43',41,'2026-01-13 10:41:43',2),(34,31,5,'page-delete',25,'2026-01-13 10:41:43',41,'2026-01-13 10:41:43',41,'2026-01-13 10:41:43',3),(35,31,5,'page-move',25,'2026-01-13 10:41:43',41,'2026-01-13 10:41:43',41,'2026-01-13 10:41:43',4),(36,31,5,'page-view',25,'2026-01-13 10:41:43',41,'2026-01-13 10:41:43',41,'2026-01-13 10:41:43',0),(37,30,4,'guest',25,'2026-01-13 10:41:43',41,'2026-01-13 10:41:43',41,'2026-01-13 10:41:43',0),(38,30,4,'superuser',25,'2026-01-13 10:41:43',41,'2026-01-13 10:41:43',41,'2026-01-13 10:41:43',1),(40,29,3,'guest',25,'2026-01-13 10:41:43',41,'2026-01-13 10:41:43',41,'2026-01-13 10:41:43',1),(41,29,3,'admin',1,'2026-01-13 10:42:15',40,'2026-01-13 10:41:43',41,'2026-01-13 10:41:43',0),(50,31,5,'page-sort',25,'2026-01-13 10:41:43',41,'2026-01-13 10:41:43',41,'2026-01-13 10:41:43',5),(51,31,5,'page-template',25,'2026-01-13 10:41:43',41,'2026-01-13 10:41:43',41,'2026-01-13 10:41:43',6),(52,31,5,'user-admin',25,'2026-01-13 10:41:43',41,'2026-01-13 10:41:43',41,'2026-01-13 10:41:43',10),(53,31,5,'profile-edit',1,'2026-01-13 10:41:43',41,'2026-01-13 10:41:43',41,'2026-01-13 10:41:43',13),(54,31,5,'page-lock',1,'2026-01-13 10:41:43',41,'2026-01-13 10:41:43',41,'2026-01-13 10:41:43',8),(300,3,2,'search',1045,'2026-01-13 10:41:43',41,'2026-01-13 10:41:43',41,'2026-01-13 10:41:43',6),(301,3,2,'trash',1047,'2026-01-13 10:41:43',41,'2026-01-13 10:41:43',41,'2026-01-13 10:41:43',6),(302,3,2,'link',1041,'2026-01-13 10:41:43',41,'2026-01-13 10:41:43',41,'2026-01-13 10:41:43',7),(303,3,2,'image',1041,'2026-01-13 10:41:43',41,'2026-01-13 10:41:43',41,'2026-01-13 10:41:43',8),(304,2,2,'profile',1025,'2026-01-13 10:41:43',41,'2026-01-13 10:41:43',41,'2026-01-13 10:41:43',5),(1006,31,5,'page-lister',1,'2026-01-13 10:41:43',40,'2026-01-13 10:41:43',40,'2026-01-13 10:41:43',9),(1007,3,2,'lister',1,'2026-01-13 10:41:43',40,'2026-01-13 10:41:43',40,'2026-01-13 10:41:43',9),(1010,3,2,'recent-pages',1,'2026-01-13 10:42:04',40,'2026-01-13 10:42:04',40,'2026-01-13 10:42:04',10),(1011,31,5,'page-edit-recent',1,'2026-01-13 10:42:04',40,'2026-01-13 10:42:04',40,'2026-01-13 10:42:04',10),(1012,22,2,'logs',1,'2026-01-13 10:42:15',40,'2026-01-13 10:42:15',40,'2026-01-13 10:42:15',2),(1013,31,5,'logs-view',1,'2026-01-13 10:42:15',40,'2026-01-13 10:42:15',40,'2026-01-13 10:42:15',11),(1014,31,5,'logs-edit',1,'2026-01-13 10:42:15',40,'2026-01-13 10:42:15',40,'2026-01-13 10:42:15',12),(1015,1,43,'companies',1,'2026-01-13 11:11:38',41,'2026-01-13 11:11:38',41,'2026-01-13 11:11:38',3),(1016,1,45,'trainings',1,'2026-01-13 11:12:04',41,'2026-01-13 11:12:04',41,'2026-01-13 11:12:04',4),(1017,1,49,'pilots',1,'2026-01-13 11:12:18',41,'2026-01-13 11:12:18',41,'2026-01-13 11:12:18',5),(1018,1,47,'jobs',1,'2026-01-13 11:12:30',41,'2026-01-13 11:12:30',41,'2026-01-13 11:12:30',6),(1019,1018,48,'pilot',1,'2026-01-13 11:12:48',41,'2026-01-13 11:12:48',41,'2026-01-13 11:12:48',0),(1020,1018,48,'rettungssanitaeter',1,'2026-01-13 11:13:07',41,'2026-01-13 11:13:07',41,'2026-01-13 11:13:07',1),(1021,1018,48,'flugbegleiter',1,'2026-01-13 11:13:16',41,'2026-01-13 11:13:16',41,'2026-01-13 11:13:16',2);
/*!40000 ALTER TABLE `pages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `pages_access`
--

LOCK TABLES `pages_access` WRITE;
/*!40000 ALTER TABLE `pages_access` DISABLE KEYS */;
INSERT INTO `pages_access` VALUES (32,2,'2026-01-13 10:41:43'),(34,2,'2026-01-13 10:41:43'),(35,2,'2026-01-13 10:41:43'),(36,2,'2026-01-13 10:41:43'),(37,2,'2026-01-13 10:41:43'),(38,2,'2026-01-13 10:41:43'),(50,2,'2026-01-13 10:41:43'),(51,2,'2026-01-13 10:41:43'),(52,2,'2026-01-13 10:41:43'),(53,2,'2026-01-13 10:41:43'),(54,2,'2026-01-13 10:41:43'),(1006,2,'2026-01-13 10:41:43'),(1011,2,'2026-01-13 10:42:04'),(1013,2,'2026-01-13 10:42:15'),(1014,2,'2026-01-13 10:42:15'),(1015,1,'2026-01-13 11:11:38'),(1016,1,'2026-01-13 11:12:04'),(1017,1,'2026-01-13 11:12:18'),(1018,1,'2026-01-13 11:12:30'),(1019,1,'2026-01-13 11:12:48'),(1020,1,'2026-01-13 11:13:07'),(1021,1,'2026-01-13 11:13:16');
/*!40000 ALTER TABLE `pages_access` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `pages_parents`
--

LOCK TABLES `pages_parents` WRITE;
/*!40000 ALTER TABLE `pages_parents` DISABLE KEYS */;
INSERT INTO `pages_parents` VALUES (2,1),(3,1),(3,2),(7,1),(22,1),(22,2),(28,1),(28,2),(29,1),(29,2),(29,28),(30,1),(30,2),(30,28),(31,1),(31,2),(31,28);
/*!40000 ALTER TABLE `pages_parents` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `pages_sortfields`
--

LOCK TABLES `pages_sortfields` WRITE;
/*!40000 ALTER TABLE `pages_sortfields` DISABLE KEYS */;
/*!40000 ALTER TABLE `pages_sortfields` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `session_login_throttle`
--

LOCK TABLES `session_login_throttle` WRITE;
/*!40000 ALTER TABLE `session_login_throttle` DISABLE KEYS */;
INSERT INTO `session_login_throttle` VALUES ('admin',1,1768300951);
/*!40000 ALTER TABLE `session_login_throttle` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `templates`
--

LOCK TABLES `templates` WRITE;
/*!40000 ALTER TABLE `templates` DISABLE KEYS */;
INSERT INTO `templates` VALUES (1,'home',1,0,0,'{\"useRoles\":1,\"noParents\":1,\"slashUrls\":1,\"compile\":3,\"modified\":1768300663,\"ns\":\"ProcessWire\",\"_lazy\":1,\"roles\":[37]}'),(2,'admin',2,8,0,'{\"useRoles\":1,\"parentTemplates\":[2],\"allowPageNum\":1,\"redirectLogin\":23,\"slashUrls\":1,\"noGlobal\":1,\"compile\":3,\"modified\":1768300663,\"ns\":\"ProcessWire\",\"_lazy\":1}'),(3,'user',3,8,0,'{\"useRoles\":1,\"noChildren\":1,\"parentTemplates\":[2],\"slashUrls\":1,\"pageClass\":\"User\",\"noGlobal\":1,\"noMove\":1,\"noTrash\":1,\"noSettings\":1,\"noChangeTemplate\":1,\"nameContentTab\":1}'),(4,'role',4,8,0,'{\"noChildren\":1,\"parentTemplates\":[2],\"slashUrls\":1,\"pageClass\":\"Role\",\"noGlobal\":1,\"noMove\":1,\"noTrash\":1,\"noSettings\":1,\"noChangeTemplate\":1,\"nameContentTab\":1}'),(5,'permission',5,8,0,'{\"noChildren\":1,\"parentTemplates\":[2],\"slashUrls\":1,\"guestSearchable\":1,\"pageClass\":\"Permission\",\"noGlobal\":1,\"noMove\":1,\"noTrash\":1,\"noSettings\":1,\"noChangeTemplate\":1,\"nameContentTab\":1}'),(29,'basic-page',83,0,0,'{\"slashUrls\":1,\"compile\":3,\"modified\":1768300663,\"ns\":\"ProcessWire\",\"_lazy\":1}'),(43,'companies',97,0,0,'{\"noParents\":-1,\"childTemplates\":[44],\"slashUrls\":1,\"compile\":0,\"modified\":1768301272,\"_lazy\":1}'),(44,'company',98,0,0,'{\"slashUrls\":1,\"pageLabelField\":\"fa-building title\",\"compile\":0,\"label\":\"Company\",\"modified\":1768301227,\"_lazy\":1}'),(45,'trainings',99,0,0,'{\"noParents\":-1,\"childTemplates\":[46],\"slashUrls\":1,\"compile\":0,\"modified\":1768301304,\"_lazy\":1}'),(46,'training',100,0,0,'{\"slashUrls\":1,\"pageLabelField\":\"fa-trophy title\",\"compile\":0,\"label\":\"Training\",\"modified\":1768302456,\"_lazy\":1}'),(47,'jobs',101,0,0,'{\"noParents\":-1,\"childTemplates\":[48],\"slashUrls\":1,\"compile\":0,\"modified\":1768301290,\"_lazy\":1}'),(48,'job',102,0,0,'{\"slashUrls\":1,\"pageLabelField\":\"fa-briefcase title\",\"compile\":0,\"label\":\"Job\",\"modified\":1768301185,\"_lazy\":1}'),(49,'pilots',103,0,0,'{\"slashUrls\":1,\"compile\":3,\"modified\":1768301320}'),(50,'pilot',104,0,0,'{\"slashUrls\":1,\"pageLabelField\":\"fa-user-o title\",\"compile\":0,\"label\":\"Pilot\",\"modified\":1768301768,\"_lazy\":1}');
/*!40000 ALTER TABLE `templates` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2026-01-13 11:13:52
