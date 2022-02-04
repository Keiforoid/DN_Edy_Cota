-- MySQL dump 10.13  Distrib 8.0.27, for Win64 (x86_64)
--
-- Host: localhost    Database: gymmanagertest2
-- ------------------------------------------------------
-- Server version	8.0.27

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
-- Table structure for table `__efmigrationshistory`
--

DROP TABLE IF EXISTS `__efmigrationshistory`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `__efmigrationshistory` (
  `MigrationId` varchar(150) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `ProductVersion` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  PRIMARY KEY (`MigrationId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `__efmigrationshistory`
--

LOCK TABLES `__efmigrationshistory` WRITE;
/*!40000 ALTER TABLE `__efmigrationshistory` DISABLE KEYS */;
INSERT INTO `__efmigrationshistory` VALUES ('20220201000728_init','5.0.11'),('20220202233016_02-02-2022_01','5.0.11'),('20220202233209_02-02-2022_02','5.0.11'),('20220202233258_02-02-2022_03','5.0.11'),('20220202233700_02-02-2022_04','5.0.11'),('20220203014709_02-02-2022_05','5.0.11'),('20220203123457_03-02-2022_01','5.0.11');
/*!40000 ALTER TABLE `__efmigrationshistory` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aspnetroleclaims`
--

DROP TABLE IF EXISTS `aspnetroleclaims`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `aspnetroleclaims` (
  `Id` int NOT NULL AUTO_INCREMENT,
  `RoleId` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `ClaimType` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
  `ClaimValue` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
  PRIMARY KEY (`Id`),
  KEY `IX_AspNetRoleClaims_RoleId` (`RoleId`),
  CONSTRAINT `FK_AspNetRoleClaims_AspNetRoles_RoleId` FOREIGN KEY (`RoleId`) REFERENCES `aspnetroles` (`Id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aspnetroleclaims`
--

LOCK TABLES `aspnetroleclaims` WRITE;
/*!40000 ALTER TABLE `aspnetroleclaims` DISABLE KEYS */;
/*!40000 ALTER TABLE `aspnetroleclaims` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aspnetroles`
--

DROP TABLE IF EXISTS `aspnetroles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `aspnetroles` (
  `Id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `Name` varchar(256) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `NormalizedName` varchar(256) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `ConcurrencyStamp` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
  PRIMARY KEY (`Id`),
  UNIQUE KEY `RoleNameIndex` (`NormalizedName`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aspnetroles`
--

LOCK TABLES `aspnetroles` WRITE;
/*!40000 ALTER TABLE `aspnetroles` DISABLE KEYS */;
/*!40000 ALTER TABLE `aspnetroles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aspnetuserclaims`
--

DROP TABLE IF EXISTS `aspnetuserclaims`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `aspnetuserclaims` (
  `Id` int NOT NULL AUTO_INCREMENT,
  `UserId` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `ClaimType` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
  `ClaimValue` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
  PRIMARY KEY (`Id`),
  KEY `IX_AspNetUserClaims_UserId` (`UserId`),
  CONSTRAINT `FK_AspNetUserClaims_AspNetUsers_UserId` FOREIGN KEY (`UserId`) REFERENCES `aspnetusers` (`Id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aspnetuserclaims`
--

LOCK TABLES `aspnetuserclaims` WRITE;
/*!40000 ALTER TABLE `aspnetuserclaims` DISABLE KEYS */;
/*!40000 ALTER TABLE `aspnetuserclaims` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aspnetuserlogins`
--

DROP TABLE IF EXISTS `aspnetuserlogins`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `aspnetuserlogins` (
  `LoginProvider` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `ProviderKey` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `ProviderDisplayName` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
  `UserId` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  PRIMARY KEY (`LoginProvider`,`ProviderKey`),
  KEY `IX_AspNetUserLogins_UserId` (`UserId`),
  CONSTRAINT `FK_AspNetUserLogins_AspNetUsers_UserId` FOREIGN KEY (`UserId`) REFERENCES `aspnetusers` (`Id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aspnetuserlogins`
--

LOCK TABLES `aspnetuserlogins` WRITE;
/*!40000 ALTER TABLE `aspnetuserlogins` DISABLE KEYS */;
/*!40000 ALTER TABLE `aspnetuserlogins` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aspnetuserroles`
--

DROP TABLE IF EXISTS `aspnetuserroles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `aspnetuserroles` (
  `UserId` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `RoleId` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  PRIMARY KEY (`UserId`,`RoleId`),
  KEY `IX_AspNetUserRoles_RoleId` (`RoleId`),
  CONSTRAINT `FK_AspNetUserRoles_AspNetRoles_RoleId` FOREIGN KEY (`RoleId`) REFERENCES `aspnetroles` (`Id`) ON DELETE CASCADE,
  CONSTRAINT `FK_AspNetUserRoles_AspNetUsers_UserId` FOREIGN KEY (`UserId`) REFERENCES `aspnetusers` (`Id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aspnetuserroles`
--

LOCK TABLES `aspnetuserroles` WRITE;
/*!40000 ALTER TABLE `aspnetuserroles` DISABLE KEYS */;
/*!40000 ALTER TABLE `aspnetuserroles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aspnetusers`
--

DROP TABLE IF EXISTS `aspnetusers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `aspnetusers` (
  `Id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `UserName` varchar(256) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `NormalizedUserName` varchar(256) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `Email` varchar(256) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `NormalizedEmail` varchar(256) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `EmailConfirmed` tinyint(1) NOT NULL,
  `PasswordHash` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
  `SecurityStamp` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
  `ConcurrencyStamp` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
  `PhoneNumber` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
  `PhoneNumberConfirmed` tinyint(1) NOT NULL,
  `TwoFactorEnabled` tinyint(1) NOT NULL,
  `LockoutEnd` datetime(6) DEFAULT NULL,
  `LockoutEnabled` tinyint(1) NOT NULL,
  `AccessFailedCount` int NOT NULL,
  PRIMARY KEY (`Id`),
  UNIQUE KEY `UserNameIndex` (`NormalizedUserName`),
  KEY `EmailIndex` (`NormalizedEmail`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aspnetusers`
--

LOCK TABLES `aspnetusers` WRITE;
/*!40000 ALTER TABLE `aspnetusers` DISABLE KEYS */;
INSERT INTO `aspnetusers` VALUES ('cbb89024-2eed-4ec8-8087-c8780aca0cf4','edycota@gmail.com','EDYCOTA@GMAIL.COM','edycota@gmail.com','EDYCOTA@GMAIL.COM',1,'AQAAAAEAACcQAAAAEBGKJt5LNfrsB96kzk+2oAb5MCYk54H7j9jPxZzGfMHrUqwJFAbWwoTl0tpQqIrWGQ==','RYBRFWYTWLFTASTURE5WT65LT2MSLSTQ','6a548720-dc45-4894-a939-c065bc53decc',NULL,0,0,NULL,1,0);
/*!40000 ALTER TABLE `aspnetusers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aspnetusertokens`
--

DROP TABLE IF EXISTS `aspnetusertokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `aspnetusertokens` (
  `UserId` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `LoginProvider` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `Name` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `Value` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
  PRIMARY KEY (`UserId`,`LoginProvider`,`Name`),
  CONSTRAINT `FK_AspNetUserTokens_AspNetUsers_UserId` FOREIGN KEY (`UserId`) REFERENCES `aspnetusers` (`Id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aspnetusertokens`
--

LOCK TABLES `aspnetusertokens` WRITE;
/*!40000 ALTER TABLE `aspnetusertokens` DISABLE KEYS */;
/*!40000 ALTER TABLE `aspnetusertokens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `assists`
--

DROP TABLE IF EXISTS `assists`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `assists` (
  `Id` int NOT NULL AUTO_INCREMENT,
  `AssitanceTypeId` int DEFAULT NULL,
  `DateTime` datetime(6) NOT NULL,
  `MemberId` int DEFAULT NULL,
  PRIMARY KEY (`Id`),
  KEY `IX_Assists_AssitanceTypeId` (`AssitanceTypeId`),
  KEY `IX_Assists_MemberId` (`MemberId`),
  CONSTRAINT `FK_Assists_AssitanceTypes_AssitanceTypeId` FOREIGN KEY (`AssitanceTypeId`) REFERENCES `assitancetypes` (`Id`) ON DELETE RESTRICT,
  CONSTRAINT `FK_Assists_Members_MemberId` FOREIGN KEY (`MemberId`) REFERENCES `members` (`Id`) ON DELETE RESTRICT
) ENGINE=InnoDB AUTO_INCREMENT=55 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `assists`
--

LOCK TABLES `assists` WRITE;
/*!40000 ALTER TABLE `assists` DISABLE KEYS */;
INSERT INTO `assists` VALUES (1,2,'2022-02-03 03:29:14.328010',2),(2,2,'2022-02-03 03:29:57.198265',2),(3,1,'2022-02-03 03:30:11.902316',2),(4,1,'2022-02-03 03:35:18.830518',2),(5,1,'2022-02-03 03:35:26.828048',2),(6,1,'2022-02-03 03:35:27.834534',2),(7,1,'2022-02-03 03:35:28.900792',2),(8,1,'2022-02-03 03:35:29.979413',2),(9,1,'2022-02-03 03:35:31.049666',2),(10,1,'2022-01-02 03:35:32.122427',2),(11,1,'2022-01-05 03:35:33.164444',2),(12,1,'2022-01-04 03:35:34.231595',2),(13,1,'2022-01-03 03:35:35.837898',2),(14,2,'2022-01-03 03:37:18.903116',2),(15,1,'2022-02-03 20:28:56.898072',3),(16,2,'2022-02-03 20:29:00.806441',3),(17,1,'2022-02-03 20:29:03.702950',4),(18,2,'2022-02-03 20:29:05.841977',4),(19,1,'2022-02-03 20:29:08.460194',5),(20,2,'2022-02-03 20:29:10.436495',5),(21,1,'2022-02-03 20:29:19.882831',7),(22,2,'2022-02-03 20:29:21.903544',7),(23,1,'2022-02-03 20:29:30.276218',9),(24,2,'2022-02-03 20:29:32.356418',9),(25,1,'2022-02-03 20:29:36.424441',10),(26,2,'2022-02-03 20:29:38.404651',10),(27,1,'2022-02-03 20:29:41.617297',11),(28,2,'2022-02-03 20:29:43.558198',11),(29,1,'2022-02-03 20:29:46.460712',12),(30,2,'2022-02-03 20:29:50.178863',12),(31,1,'2022-02-03 20:29:53.918234',13),(32,2,'2022-02-03 20:29:55.868158',13),(33,1,'2022-02-03 20:29:59.569108',14),(34,2,'2022-02-03 20:30:01.534537',14),(35,1,'2022-02-03 20:30:06.650011',15),(36,2,'2022-02-03 20:30:08.554708',15),(37,1,'2022-02-03 20:30:11.568869',16),(38,2,'2022-02-03 20:30:14.334266',16),(39,1,'2022-02-03 20:30:17.117568',17),(40,2,'2022-02-03 20:30:19.089024',17),(41,1,'2022-02-03 20:30:24.289801',18),(42,2,'2022-02-03 20:30:26.209155',18),(43,1,'2022-02-03 20:30:31.493560',19),(44,2,'2022-02-03 20:30:33.920626',19),(45,1,'2022-02-03 20:30:38.086147',20),(46,2,'2022-02-03 20:30:40.074283',20),(47,1,'2022-02-03 20:30:43.082826',21),(48,2,'2022-02-03 20:30:44.838551',21),(49,1,'2022-02-03 20:30:47.352805',22),(50,2,'2022-02-03 20:30:49.256043',22),(51,1,'2022-02-03 20:30:52.053394',23),(52,2,'2022-02-03 20:30:53.655090',23),(53,1,'2022-02-03 20:30:57.106644',24),(54,2,'2022-02-03 20:30:58.744113',24);
/*!40000 ALTER TABLE `assists` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `assitancetypes`
--

DROP TABLE IF EXISTS `assitancetypes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `assitancetypes` (
  `Id` int NOT NULL AUTO_INCREMENT,
  `NameType` varchar(15) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `assitancetypes`
--

LOCK TABLES `assitancetypes` WRITE;
/*!40000 ALTER TABLE `assitancetypes` DISABLE KEYS */;
INSERT INTO `assitancetypes` VALUES (1,'In'),(2,'Out');
/*!40000 ALTER TABLE `assitancetypes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `city`
--

DROP TABLE IF EXISTS `city`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `city` (
  `Id` int NOT NULL AUTO_INCREMENT,
  `Name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `city`
--

LOCK TABLES `city` WRITE;
/*!40000 ALTER TABLE `city` DISABLE KEYS */;
INSERT INTO `city` VALUES (1,'Alabama'),(2,'Alaska'),(3,'Arizona'),(4,'Arkansas');
/*!40000 ALTER TABLE `city` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `equipmenttypes`
--

DROP TABLE IF EXISTS `equipmenttypes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `equipmenttypes` (
  `Id` int NOT NULL AUTO_INCREMENT,
  `Name` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `Description` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `equipmenttypes`
--

LOCK TABLES `equipmenttypes` WRITE;
/*!40000 ALTER TABLE `equipmenttypes` DISABLE KEYS */;
INSERT INTO `equipmenttypes` VALUES (7,'Pesa 10kg',NULL),(8,'Pesa 20kg',NULL);
/*!40000 ALTER TABLE `equipmenttypes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `inventories`
--

DROP TABLE IF EXISTS `inventories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `inventories` (
  `Id` int NOT NULL AUTO_INCREMENT,
  `Name` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `ProductTypesId` int DEFAULT NULL,
  `Description` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `MeasureTypeId` int DEFAULT NULL,
  `Price` double NOT NULL,
  `Measure` double NOT NULL,
  `cuantity` int NOT NULL,
  `CreateOn` datetime(6) NOT NULL,
  PRIMARY KEY (`Id`),
  KEY `IX_Inventories_MeasureTypeId` (`MeasureTypeId`),
  KEY `IX_Inventories_ProductTypesId` (`ProductTypesId`),
  CONSTRAINT `FK_Inventories_MeasureTypes_MeasureTypeId` FOREIGN KEY (`MeasureTypeId`) REFERENCES `measuretypes` (`Id`) ON DELETE RESTRICT,
  CONSTRAINT `FK_Inventories_ProductTypes_ProductTypesId` FOREIGN KEY (`ProductTypesId`) REFERENCES `producttypes` (`Id`) ON DELETE RESTRICT
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `inventories`
--

LOCK TABLES `inventories` WRITE;
/*!40000 ALTER TABLE `inventories` DISABLE KEYS */;
/*!40000 ALTER TABLE `inventories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `measuretypes`
--

DROP TABLE IF EXISTS `measuretypes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `measuretypes` (
  `Id` int NOT NULL AUTO_INCREMENT,
  `Name` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `CreatedOn` datetime(6) NOT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `measuretypes`
--

LOCK TABLES `measuretypes` WRITE;
/*!40000 ALTER TABLE `measuretypes` DISABLE KEYS */;
/*!40000 ALTER TABLE `measuretypes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `members`
--

DROP TABLE IF EXISTS `members`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `members` (
  `Id` int NOT NULL AUTO_INCREMENT,
  `Name` varchar(15) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `LastName` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `BirthDay` datetime(6) NOT NULL,
  `CityId` int DEFAULT NULL,
  `Email` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `AllowNewsLetter` tinyint(1) NOT NULL,
  `MembershipTypeId` int DEFAULT NULL,
  `LastMembership` datetime(6) NOT NULL,
  `CreatedOn` datetime(6) NOT NULL,
  PRIMARY KEY (`Id`),
  KEY `IX_Members_CityId` (`CityId`),
  KEY `IX_Members_MembershipTypeId` (`MembershipTypeId`),
  CONSTRAINT `FK_Members_City_CityId` FOREIGN KEY (`CityId`) REFERENCES `city` (`Id`) ON DELETE RESTRICT,
  CONSTRAINT `FK_Members_MembershipTypes_MembershipTypeId` FOREIGN KEY (`MembershipTypeId`) REFERENCES `membershiptypes` (`Id`) ON DELETE RESTRICT
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `members`
--

LOCK TABLES `members` WRITE;
/*!40000 ALTER TABLE `members` DISABLE KEYS */;
INSERT INTO `members` VALUES (2,'Alejandra','Biñedos','1985-04-05 00:00:00.000000',1,'alejandra@example.com',1,2,'2022-02-03 04:36:11.669757','0001-01-01 00:00:00.000000'),(3,'Fernando','Vizqueda','1989-01-23 00:00:00.000000',2,'fernando@example.com',0,2,'2021-11-10 00:00:00.000000','2021-11-10 00:00:00.000000'),(4,'Mermelada','Simela','1973-03-14 00:00:00.000000',3,'mermelada@example.com',1,3,'2021-11-20 00:00:00.000000','2021-11-20 00:00:00.000000'),(5,'Arquimides','De Soto','1991-07-24 00:00:00.000000',4,'arquimides@example.com',0,4,'2021-06-20 00:00:00.000000','2021-06-20 00:00:00.000000'),(7,'Edy','Cota','2021-12-02 00:00:00.000000',1,'edycotavillalp99@gmail.com',0,1,'2022-02-03 04:36:20.082540','0001-01-01 00:00:00.000000'),(9,'Alfredo','Moreno','1999-03-28 00:00:00.000000',1,'alfredo@gmail.com',0,1,'2021-11-01 00:00:00.000000','2021-11-01 00:00:00.000000'),(10,'Miriam','Guadalupe','1999-03-28 00:00:00.000000',1,'miriam@gmail.com',0,1,'2021-11-01 00:00:00.000000','2021-11-01 00:00:00.000000'),(11,'Jovany','Estrada','1999-03-28 00:00:00.000000',1,'jovany@gmail.com',0,1,'2021-11-01 00:00:00.000000','2021-11-01 00:00:00.000000'),(12,'Chuleta','Pastrami','1999-03-28 00:00:00.000000',1,'chuleta@gmail.com',0,1,'2021-11-01 00:00:00.000000','2021-11-01 00:00:00.000000'),(13,'Golondrino','Mercado','1999-03-28 00:00:00.000000',1,'golondrino@gmail.com',0,1,'2021-11-01 00:00:00.000000','2021-11-01 00:00:00.000000'),(14,'Chavez','Risoto','1999-03-28 00:00:00.000000',1,'risoto@gmail.com',0,1,'2021-11-01 00:00:00.000000','2021-11-01 00:00:00.000000'),(15,'Coromuel','Ibarra','1999-03-28 00:00:00.000000',1,'coromuel@gmail.com',0,1,'2021-11-01 00:00:00.000000','2021-11-01 00:00:00.000000'),(16,'Maldonado','Patiño','1999-03-28 00:00:00.000000',1,'maldonado@gmail.com',0,1,'2021-11-01 00:00:00.000000','2021-11-01 00:00:00.000000'),(17,'Betoven','Mazo','1999-03-28 00:00:00.000000',1,'betoven@gmail.com',0,1,'2021-11-01 00:00:00.000000','2021-11-01 00:00:00.000000'),(18,'Miguel','Angel','1999-03-28 00:00:00.000000',1,'miguel@gmail.com',0,1,'2021-11-01 00:00:00.000000','2021-11-01 00:00:00.000000'),(19,'Jose','Tamarindo','1999-03-28 00:00:00.000000',1,'jose@gmail.com',0,1,'2021-11-01 00:00:00.000000','2021-11-01 00:00:00.000000'),(20,'Elena','Mirinda','1999-03-28 00:00:00.000000',1,'mirinda@gmail.com',0,1,'2021-11-01 00:00:00.000000','2021-11-01 00:00:00.000000'),(21,'Sprite','Ramirez','1999-03-28 00:00:00.000000',1,'sprite@gmail.com',0,1,'2021-11-01 00:00:00.000000','2021-11-01 00:00:00.000000'),(22,'Chavo','del Ocho','1999-03-28 00:00:00.000000',1,'chavo@gmail.com',0,1,'2021-11-01 00:00:00.000000','2021-11-01 00:00:00.000000'),(23,'Quico','Mariano','1999-03-28 00:00:00.000000',1,'quico@gmail.com',0,1,'2021-11-01 00:00:00.000000','2021-11-01 00:00:00.000000'),(24,'Memo','Mermudez','1999-03-28 00:00:00.000000',1,'memo@gmail.com',0,1,'2021-11-01 00:00:00.000000','2021-11-01 00:00:00.000000');
/*!40000 ALTER TABLE `members` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `membershiptypes`
--

DROP TABLE IF EXISTS `membershiptypes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `membershiptypes` (
  `Id` int NOT NULL AUTO_INCREMENT,
  `Name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `Cost` double NOT NULL,
  `Duration` int NOT NULL,
  `CreatedOn` datetime(6) NOT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `membershiptypes`
--

LOCK TABLES `membershiptypes` WRITE;
/*!40000 ALTER TABLE `membershiptypes` DISABLE KEYS */;
INSERT INTO `membershiptypes` VALUES (1,'Basic',300,1,'2022-01-31 16:10:51.000000'),(2,'Extended',850,3,'2022-01-31 16:10:51.000000'),(3,'Prolonged',1400,6,'2022-01-31 16:10:51.000000'),(4,'Yearly',3000,12,'2022-01-31 16:10:51.000000'),(5,'ForLife',8000,120,'2022-01-31 16:10:51.000000'),(7,'Extended',850,3,'0001-01-01 00:00:00.000000');
/*!40000 ALTER TABLE `membershiptypes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `producttypes`
--

DROP TABLE IF EXISTS `producttypes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `producttypes` (
  `Id` int NOT NULL AUTO_INCREMENT,
  `Name` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `CreatedOn` datetime(6) NOT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `producttypes`
--

LOCK TABLES `producttypes` WRITE;
/*!40000 ALTER TABLE `producttypes` DISABLE KEYS */;
/*!40000 ALTER TABLE `producttypes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sales`
--

DROP TABLE IF EXISTS `sales`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sales` (
  `Id` int NOT NULL AUTO_INCREMENT,
  `Datetime` datetime(6) NOT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sales`
--

LOCK TABLES `sales` WRITE;
/*!40000 ALTER TABLE `sales` DISABLE KEYS */;
/*!40000 ALTER TABLE `sales` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `salesinventory`
--

DROP TABLE IF EXISTS `salesinventory`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `salesinventory` (
  `IdSales` int NOT NULL,
  `IdInventory` int NOT NULL,
  `SalesId` int DEFAULT NULL,
  `InventoryId` int DEFAULT NULL,
  `Cuantity` int NOT NULL,
  PRIMARY KEY (`IdSales`,`IdInventory`),
  KEY `IX_SalesInventory_InventoryId` (`InventoryId`),
  KEY `IX_SalesInventory_SalesId` (`SalesId`),
  CONSTRAINT `FK_SalesInventory_Inventories_InventoryId` FOREIGN KEY (`InventoryId`) REFERENCES `inventories` (`Id`) ON DELETE RESTRICT,
  CONSTRAINT `FK_SalesInventory_Sales_SalesId` FOREIGN KEY (`SalesId`) REFERENCES `sales` (`Id`) ON DELETE RESTRICT
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `salesinventory`
--

LOCK TABLES `salesinventory` WRITE;
/*!40000 ALTER TABLE `salesinventory` DISABLE KEYS */;
/*!40000 ALTER TABLE `salesinventory` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'gymmanagertest2'
--
/*!50003 DROP PROCEDURE IF EXISTS `Top20MembersAssistance` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `Top20MembersAssistance`()
BEGIN
	SELECT ROW_NUMBER() OVER (ORDER BY (SELECT 1)) AS 'No', m.Name, m.LastName, COUNT(asi.MemberId) AS 'Assist'  FROM members m
    inner join assists asi on m.Id = asi.MemberId
    inner join assitancetypes asit on asi.AssitanceTypeId = asit.Id 
    Where  asit.NameType = 'In' AND DATe(asi.DateTime) > DATE(NOW()) - INTERVAL 30 DAY
    Group by asi.MemberId
    order by Assist desc
    Limit 20;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-02-03 21:57:31
