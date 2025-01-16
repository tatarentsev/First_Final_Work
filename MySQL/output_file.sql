-- MySQL dump 10.13  Distrib 8.0.39, for Linux (x86_64)
--
-- Host: localhost    Database: HumanFriends
-- ------------------------------------------------------
-- Server version	8.0.39-0ubuntu0.22.04.1

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
-- Table structure for table `AllAnimals`
--

DROP TABLE IF EXISTS `AllAnimals`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `AllAnimals` (
  `ID` int NOT NULL DEFAULT '0',
  `Name` varchar(50) DEFAULT NULL,
  `Type` varchar(50) DEFAULT NULL,
  `BirthDate` date DEFAULT NULL,
  `Commands` mediumtext,
  `Source` varchar(11) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `AllAnimals`
--

LOCK TABLES `AllAnimals` WRITE;
/*!40000 ALTER TABLE `AllAnimals` DISABLE KEYS */;
INSERT INTO `AllAnimals` VALUES (1,'Bobik','Dog','2020-01-01','Sit, Stay, Voice, Quietly','Pets'),(2,'Barsik','Cat','2019-05-15','Sit, Stay','Pets'),(3,'Homa','Hamster','2021-03-10','Jump, Stand','Pets'),(4,'Tuzik','Dog','2018-12-10','Sit, Stay, Voice, Quietly','Pets'),(5,'Timon','Cat','2020-02-20','Sit, Stay','Pets'),(6,'Step','Hamster','2021-08-01','Jump, Stand','Pets'),(7,'Belka','Dog','2019-11-11','Sit, Stay, Voice','Pets'),(8,'Pushok','Cat','2020-06-30','Voice, Quietly','Pets'),(1,'Mayak','Horse','2020-03-12','Trot, Canter, Gallop','PackAnimals'),(3,'Dior','Donkey','2021-08-11','Walk, Carry Load, Bray','PackAnimals'),(4,'Buran','Horse','2018-02-01','Trot, Canter','PackAnimals'),(5,'Perl','Donkey','2021-05-21','Walk, Bray, Kick','PackAnimals'),(6,'Vulkan','Horse','2019-09-21','Trot, Jump, Gallop','PackAnimals'),(7,'Bert','Donkey','2021-08-11','Walk, Carry Load, Bray','PackAnimals');
/*!40000 ALTER TABLE `AllAnimals` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `HorsesAndDonkeys`
--

DROP TABLE IF EXISTS `HorsesAndDonkeys`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `HorsesAndDonkeys` (
  `ID` int NOT NULL DEFAULT '0',
  `Name` varchar(50) DEFAULT NULL,
  `Type` varchar(50) DEFAULT NULL,
  `BirthDate` date DEFAULT NULL,
  `Commands` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `HorsesAndDonkeys`
--

LOCK TABLES `HorsesAndDonkeys` WRITE;
/*!40000 ALTER TABLE `HorsesAndDonkeys` DISABLE KEYS */;
INSERT INTO `HorsesAndDonkeys` VALUES (1,'Mayak','Horse','2020-03-12','Trot, Canter, Gallop'),(3,'Dior','Donkey','2021-08-11','Walk, Carry Load, Bray'),(4,'Buran','Horse','2018-02-01','Trot, Canter'),(5,'Perl','Donkey','2021-05-21','Walk, Bray, Kick'),(6,'Vulkan','Horse','2019-09-21','Trot, Jump, Gallop'),(7,'Bert','Donkey','2021-08-11','Walk, Carry Load, Bray');
/*!40000 ALTER TABLE `HorsesAndDonkeys` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `PackAnimals`
--

DROP TABLE IF EXISTS `PackAnimals`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `PackAnimals` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `Name` varchar(50) DEFAULT NULL,
  `Type` varchar(50) DEFAULT NULL,
  `BirthDate` date DEFAULT NULL,
  `Commands` text,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PackAnimals`
--

LOCK TABLES `PackAnimals` WRITE;
/*!40000 ALTER TABLE `PackAnimals` DISABLE KEYS */;
INSERT INTO `PackAnimals` VALUES (1,'Mayak','Horse','2020-03-12','Trot, Canter, Gallop'),(3,'Dior','Donkey','2021-08-11','Walk, Carry Load, Bray'),(4,'Buran','Horse','2018-02-01','Trot, Canter'),(5,'Perl','Donkey','2021-05-21','Walk, Bray, Kick'),(6,'Vulkan','Horse','2019-09-21','Trot, Jump, Gallop'),(7,'Bert','Donkey','2021-08-11','Walk, Carry Load, Bray');
/*!40000 ALTER TABLE `PackAnimals` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Pets`
--

DROP TABLE IF EXISTS `Pets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Pets` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `Name` varchar(50) DEFAULT NULL,
  `Type` varchar(50) DEFAULT NULL,
  `BirthDate` date DEFAULT NULL,
  `Commands` text,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Pets`
--

LOCK TABLES `Pets` WRITE;
/*!40000 ALTER TABLE `Pets` DISABLE KEYS */;
INSERT INTO `Pets` VALUES (1,'Bobik','Dog','2020-01-01','Sit, Stay, Voice, Quietly'),(2,'Barsik','Cat','2019-05-15','Sit, Stay'),(3,'Homa','Hamster','2021-03-10','Jump, Stand'),(4,'Tuzik','Dog','2018-12-10','Sit, Stay, Voice, Quietly'),(5,'Timon','Cat','2020-02-20','Sit, Stay'),(6,'Step','Hamster','2021-08-01','Jump, Stand'),(7,'Belka','Dog','2019-11-11','Sit, Stay, Voice'),(8,'Pushok','Cat','2020-06-30','Voice, Quietly');
/*!40000 ALTER TABLE `Pets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `YoungAnimals`
--

DROP TABLE IF EXISTS `YoungAnimals`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `YoungAnimals` (
  `ID` int NOT NULL DEFAULT '0',
  `Name` varchar(50) DEFAULT NULL,
  `Type` varchar(50) DEFAULT NULL,
  `BirthDate` date DEFAULT NULL,
  `Commands` text,
  `AgeMonths` bigint DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `YoungAnimals`
--

LOCK TABLES `YoungAnimals` WRITE;
/*!40000 ALTER TABLE `YoungAnimals` DISABLE KEYS */;
INSERT INTO `YoungAnimals` VALUES (3,'Homa','Hamster','2021-03-10','Jump, Stand',43),(6,'Step','Hamster','2021-08-01','Jump, Stand',38);
/*!40000 ALTER TABLE `YoungAnimals` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-16-01  10:42:59