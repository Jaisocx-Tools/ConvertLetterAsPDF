-- MySQL dump 10.13  Distrib 8.0.36, for Linux (aarch64)
--
-- Host: localhost    Database: cv
-- ------------------------------------------------------
-- Server version	8.0.36

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `cv_items`
--

DROP TABLE IF EXISTS `cv_items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cv_items` (
  `id` int NOT NULL AUTO_INCREMENT,
  `experience_art` varchar(16) NOT NULL DEFAULT 'job',
  `year_start` int NOT NULL DEFAULT '0',
  `month_start` int NOT NULL DEFAULT '0',
  `year_finish` int DEFAULT NULL,
  `month_finish` int DEFAULT NULL,
  `page_number` int NOT NULL DEFAULT '0',
  `company_name` varchar(255) NOT NULL,
  `company_location` varchar(255) NOT NULL,
  `job_description` varchar(1024) NOT NULL,
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cv_items`
--

LOCK TABLES `cv_items` WRITE;
/*!40000 ALTER TABLE `cv_items` DISABLE KEYS */;
INSERT INTO `cv_items` VALUES (1,'job',2023,9,NULL,NULL,1,'Multimedia Networks AG','Fraubrunnen, BE','Fullstack web developer and DevOps, performing software automated upgrades, writing scripts for mass batches, rewriting web apps UI. TechStack: Symfony, VueJS, MySQL, bash, docker','2024-06-23 01:26:28'),(2,'job',2022,9,2023,7,1,'Lionflence GmbH','Duisburg, Germany','Fullstack web/mobile developer. Implemented new features in web and mobile applications for connecting influencers and marketing agencies','2024-06-23 01:26:28'),(3,'job',2021,12,2022,8,1,'Grey engineering','Nurnberg, Germany','Fullstack developer, developed project for Vodafone Germany in CodeIgnier PHP Framework, VueJS 3, Oracle DB','2024-06-23 01:26:28'),(4,'job',2019,10,2021,11,1,'Brightgrove','Kharkiv, Ukraine','Fullstack web developer for Synetix GmbH in Dusseldorf, Germany. Developed features and fixed bugs in documentation aplication, built in PHP OOP Native, JS, XHTML, CSS3, MySQL, additional part-time projects in Symfony+ReactJS, Symfony/API','2024-06-23 01:26:28'),(5,'job',2018,11,2019,10,1,'Burda Moden','Warsaw, Poland','Fullstack web developer, working on sites of Burda Moden Corporation: Liza, Woman, My Garden and others. TechStack: Wordpress, Symfony, PHP, JS/ES6, MySQL','2024-06-23 01:26:28'),(6,'job',2018,5,2018,9,1,'Arithnea GmbH','Frankfurt am Main, Germany','Fullstack web developer, developed site for Lidl supermarkt, TechStack: MySQL, Symfony, Twig, Laravel, PHP Unit tests','2024-06-23 01:26:28'),(7,'job',2017,2,2018,4,2,'Hyperion Tech','Kharkiv, Ukraine','Fullstack web developer, develed many different sites, TechStack: MySQL, AJAX, native JavaScript, jQuery, WordPress, Symfony, Laravel, Angular, VueJS','2024-06-23 01:26:28'),(8,'job',2016,8,2017,2,2,'BlackHorse','Kharkiv, Ukraine','Fullstack web developer, developed sites, TecStack: CodeIgniter, Symfony, Laravel, JS native/ES6/jQuery, AJAX, API, CMS ocStore, MySQL','2024-06-23 01:26:28'),(9,'job',2014,3,2016,5,2,'Taifun-C Ltd','Kharkiv, Ukraine','Database operator at a security agency.','2024-06-23 01:26:28'),(10,'job',2006,1,2014,5,2,'RP Commerce','Kharkiv, Ukraine','PHP/Java/PLSQL developer, PHP OOP native, Java, JavaEE, Oracle DB, PL/SQL. Worked on custom CMS, Web-based Applications for State Financial Service for data management and analyse','2024-06-23 01:26:28'),(11,'job',2003,2,2005,2,2,'State Finance Inspection','Kharkiv, Ukraine','Financial inspector, MS Access developer','2024-06-23 01:26:28'),(12,'job',2002,5,2002,11,2,'Kyivstar GSM','Kharkiv, Ukraine','Accounter at the mobile provider','2024-06-23 01:26:28'),(13,'course',2019,9,2019,10,3,'IT School Hillel','Kharkiv, Ukraine','React JS Course (ES6, React, Redux)','2024-06-23 01:26:28'),(14,'studies',1996,9,1998,6,3,'University of Constance','Constance, Germany','Faculty of Macroeconomics, Exam in maths, statistics, accountance, IT','2024-06-23 01:26:28'),(15,'studies',1994,9,2001,6,3,'Kharkiv Economics University','Kharkiv, Ukraine','Faculty of Enterprise Economics, Master degree in Business planning','2024-06-23 01:26:28');
/*!40000 ALTER TABLE `cv_items` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-06-23  2:46:32
