CREATE DATABASE  IF NOT EXISTS `project` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `project`;
-- MySQL dump 10.13  Distrib 8.0.28, for Win64 (x86_64)
--
-- Host: localhost    Database: project
-- ------------------------------------------------------
-- Server version	8.0.28

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
-- Table structure for table `auction`
--

DROP TABLE IF EXISTS `auction`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auction` (
  `idauction` int NOT NULL AUTO_INCREMENT,
  `shoeid` int DEFAULT NULL,
  `currentPrice` int DEFAULT NULL,
  `increment` int DEFAULT NULL,
  `minSellPrice` int DEFAULT NULL,
  `maxBidder` varchar(45) DEFAULT NULL,
  `seller` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idauction`),
  KEY `idshoes_idx` (`shoeid`),
  CONSTRAINT `idshoes` FOREIGN KEY (`shoeid`) REFERENCES `shoes` (`idshoes`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auction`
--

LOCK TABLES `auction` WRITE;
/*!40000 ALTER TABLE `auction` DISABLE KEYS */;
/*!40000 ALTER TABLE `auction` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shoes`
--

DROP TABLE IF EXISTS `shoes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `shoes` (
  `idshoes` int NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT NULL,
  `brand` varchar(45) DEFAULT NULL,
  `color` varchar(100) DEFAULT NULL,
  `type` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idshoes`),
  UNIQUE KEY `idshoes_UNIQUE` (`idshoes`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shoes`
--

LOCK TABLES `shoes` WRITE;
/*!40000 ALTER TABLE `shoes` DISABLE KEYS */;
INSERT INTO `shoes` VALUES (1,'Reebok Floatride Energy 3 Les Mills Cold Grey (W)','Reebok','Cold Grey 2/Core Black/Orange Flare',NULL),(2,'Nike Metcon 6 Martian Sunrise','Nike','Black/Martian Sunrise/Red Plum/Black',NULL),(3,'Converse Chuck Taylor All-Star 70 Hi Padded Collar Anodized Metals Black','Converse','Black/Black/Egret',NULL),(4,'Nike Air Zoom Pegasus 37 Tie-Dye (W)','Nike','White/Bright Mango/Multi-Color',NULL),(5,'Converse Chuck Taylor All-Star 70 Hi Wolf Grey','Converse','Wolf Grey/Black/Egret',NULL),(6,'adidas Ultra Boost 4.0 DNA Chinese New Year Scarlet','adidas','Scarlet/Collegiate Purple/Cloud White',NULL),(7,'Reebok Zig Dynamica White Digital Glow (W)','Reebok','Footwear White/Neon Mint/Digital Glow',NULL),(8,'Nike Air Max Infinity 2 Triple Black','Nike','Black/Black/Black/Anthracite',NULL),(9,'Nike Superrep Go Martian Sunrise','Nike','Black/Martian Sunrise/Gum Light Brown/Sea Glass',NULL),(10,'Vans Comfycush Slip-On Half Big Checker','Vans','Multi-Color',NULL);
/*!40000 ALTER TABLE `shoes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `Name` varchar(45) DEFAULT NULL,
  `Username` varchar(45) DEFAULT NULL,
  `Password` varchar(45) DEFAULT NULL,
  `Email` varchar(45) DEFAULT NULL,
  `userid` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES ('Antonio Miranda','Antonio','antonio123','antonio@gmail.com',NULL),('Jingyan Xiang','Jingyan','jingyan123','jingyan@gmail.com',NULL),('Sharukh Khan','Sharukh','sharukh123','sharukh@gmail.com',NULL),('Siqi Wu','Siqi','siqi123','siqi@gmail.com',NULL),('Test Test','test','test','test@test.com',NULL),('test2','test2','test','test2@gmail.com',NULL),('test2','test4','test','testtest@test.com',NULL),('Upsham Naik','Upsham','upsham123','upsham@gmail.com',NULL);
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

-- Dump completed on 2022-05-09 21:31:26
