CREATE DATABASE  IF NOT EXISTS `bug_track` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `bug_track`;
-- MySQL dump 10.13  Distrib 8.0.33, for Win64 (x86_64)
--
-- Host: localhost    Database: bug_track
-- ------------------------------------------------------
-- Server version	8.0.33

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
-- Table structure for table `bug`
--

DROP TABLE IF EXISTS `bug`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `bug` (
  `bugId` int NOT NULL AUTO_INCREMENT,
  `bugPostingDate` datetime DEFAULT CURRENT_TIMESTAMP,
  `custLoginId` varchar(10) NOT NULL,
  `bugStatus` varchar(20) DEFAULT 'New Bug',
  `productName` varchar(45) NOT NULL,
  `bugDesc` text NOT NULL,
  `expertAssignedDate` datetime DEFAULT NULL,
  `expertLoginId` varchar(10) DEFAULT NULL,
  `bugSolvedDate` datetime DEFAULT NULL,
  `solution` text,
  `feedback` text,
  PRIMARY KEY (`bugId`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bug`
--

LOCK TABLES `bug` WRITE;
/*!40000 ALTER TABLE `bug` DISABLE KEYS */;
INSERT INTO `bug` VALUES (1,'2023-07-11 17:44:16','CU2001','Solved','Laptop','Screen is flickring','2023-07-12 15:44:16','ex3001','2023-07-12 22:04:02','contact the centre','not working'),(2,'2023-07-11 17:44:26','CU2001','New Bug','Mobile','Keyboard not working.',NULL,NULL,NULL,NULL,NULL),(3,'2023-07-11 17:44:38','CU2002','Assigned','Laptop','Wifi connection issues','2023-07-12 21:51:44','ex3003',NULL,NULL,NULL),(4,'2023-07-12 22:08:02','cu2003','New Bug','laptop','working speed slow',NULL,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `bug` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `customer`
--

DROP TABLE IF EXISTS `customer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `customer` (
  `custLoginId` varchar(10) NOT NULL,
  `custPassword` varchar(20) DEFAULT NULL,
  `custName` varchar(45) DEFAULT NULL,
  `custAge` int DEFAULT NULL,
  `custPhone` varchar(10) DEFAULT NULL,
  `custEmail` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`custLoginId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customer`
--

LOCK TABLES `customer` WRITE;
/*!40000 ALTER TABLE `customer` DISABLE KEYS */;
INSERT INTO `customer` VALUES ('CU2001','password','Priya',21,'9998887776','priya@demo.com'),('CU2002','password','Anjali',22,'9998887776','anjali@demo.com'),('CU2003','password','Naman',24,'98765','naman@email.com');
/*!40000 ALTER TABLE `customer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `employee`
--

DROP TABLE IF EXISTS `employee`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `employee` (
  `empLoginId` varchar(10) NOT NULL,
  `empPassword` varchar(20) DEFAULT NULL,
  `empType` varchar(20) DEFAULT NULL,
  `empName` varchar(45) DEFAULT NULL,
  `empPhone` varchar(10) DEFAULT NULL,
  `empEmail` varchar(45) DEFAULT NULL,
  `empStatus` varchar(20) DEFAULT 'ACTIVE',
  PRIMARY KEY (`empLoginId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `employee`
--

LOCK TABLES `employee` WRITE;
/*!40000 ALTER TABLE `employee` DISABLE KEYS */;
INSERT INTO `employee` VALUES ('AD1001','password','ADMIN','Priti Singh','9998887776','help@admin.com','ACTIVE'),('EX3001','password','EXPERT','DemoUser','4444444','expert@admin.com','active'),('EX3002','password','EXPERT','Anil','1234','anil@demo.com','ACTIVE'),('EX3003','password','Expert','Rahul','987654321','rahul@expert.com','ACTIVE');
/*!40000 ALTER TABLE `employee` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-07-14 22:28:01
