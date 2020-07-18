CREATE DATABASE  IF NOT EXISTS `kbc` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `kbc`;
-- MySQL dump 10.13  Distrib 8.0.20, for Win64 (x86_64)
--
-- Host: localhost    Database: kbc
-- ------------------------------------------------------
-- Server version	8.0.20

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `answer`
--

DROP TABLE IF EXISTS `answer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `answer` (
  `answerid` int NOT NULL AUTO_INCREMENT,
  `answers` varchar(45) DEFAULT NULL,
  `questionnumber` int DEFAULT NULL,
  PRIMARY KEY (`answerid`),
  KEY `QUESTIONANSWER_FK_idx` (`questionnumber`),
  CONSTRAINT `QUESTIONANSWER_FK` FOREIGN KEY (`questionnumber`) REFERENCES `question` (`Questionnumber`)
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `answer`
--

LOCK TABLES `answer` WRITE;
/*!40000 ALTER TABLE `answer` DISABLE KEYS */;
INSERT INTO `answer` VALUES (1,'inflation',1),(2,'devaluation',1),(3,'deflation',1),(4,' demonetization',1),(5,'Root system',2),(6,'Shoot system',2),(7,'Ecosystem',2),(8,'Tissue system',2),(9,'Kadphises I',3),(10,' Kanishka',3),(11,' Alexander',3),(12,'Menander',3),(13,'10 micron',4),(14,'100 micron',4),(15,'1000 micron',4),(16,'1 micron',4),(17,' Karnataka',5),(18,' Assam',5),(19,'Rajasthan',5),(20,' Punjab',5),(21,'1 only',6),(22,'2 only',6),(23,'Both 1 and 2',6),(24,'Neither 1 nor 2',6),(25,'Ammonium Sulphate',7),(26,'Calcium Chloride',7),(27,'Sodium Carbonate',7),(28,'Sodium Chloride',7),(29,' Brahmaputra',8),(30,'Ganga',8),(31,'Narmada',8),(32,' Godavari',8),(33,'Hooghly',9),(34,'Damodar',9),(35,'Ghaghara',9),(36,'Kosi',9),(37,'King of Jammu',10),(38,'King of Peshawar',10),(39,'King of Multan',10),(40,' King of Gujarat',10);
/*!40000 ALTER TABLE `answer` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-07-18 19:33:38
