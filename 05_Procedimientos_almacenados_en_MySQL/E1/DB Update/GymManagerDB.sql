-- MySQL dump 10.13  Distrib 8.0.27, for Win64 (x86_64)
--
-- Host: localhost    Database: gymmanager
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
-- Table structure for table `city`
--

DROP TABLE IF EXISTS `city`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `city` (
  `idCity` int NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  PRIMARY KEY (`idCity`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `city`
--

LOCK TABLES `city` WRITE;
/*!40000 ALTER TABLE `city` DISABLE KEYS */;
INSERT INTO `city` VALUES (1,'Tijuana'),(2,'Mexicali'),(3,'Ensenada'),(4,'Tecate'),(5,'Rosarito');
/*!40000 ALTER TABLE `city` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `equipmenttype`
--

DROP TABLE IF EXISTS `equipmenttype`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `equipmenttype` (
  `idEquipmentType` int NOT NULL AUTO_INCREMENT,
  `name` varchar(40) NOT NULL,
  `description` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`idEquipmentType`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `equipmenttype`
--

LOCK TABLES `equipmenttype` WRITE;
/*!40000 ALTER TABLE `equipmenttype` DISABLE KEYS */;
INSERT INTO `equipmenttype` VALUES (1,'Workout bench','Made from high quality steel and durable leather, with six back and four seat positions, the bench is easily adjustable for a full-body workout.'),(2,'Heavy bag','For boxing, kickboxing, or mixed martial arts (MMA), having a freestanding heavy bag and some boxing gloves.'),(3,'Kettlebells','These rubber-coated kettlebells from Rogue Fitness, these kettlebells are easy to grip thanks to their textured handles.'),(4,'Hydrow Rower','low impact way to get your heart pumping while also toning your arms, back, and core, Sturdily built using an aluminum and steel frame, the Hydrow Rower provides a fluid, quiet ride that simulates outdoor rowing.'),(5,'Exercise bike','The NordicTrack Commercial S22i Studio Cycle bike offers 24 resistance levels.');
/*!40000 ALTER TABLE `equipmenttype` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `inventory`
--

DROP TABLE IF EXISTS `inventory`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `inventory` (
  `idInventory` int NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL,
  `idProductType` int NOT NULL,
  `description` varchar(255) DEFAULT NULL,
  `idMesureType` int NOT NULL,
  `price` decimal(13,2) NOT NULL,
  `measure` decimal(13,2) NOT NULL,
  `cuantity` int NOT NULL DEFAULT '0',
  `createdOn` datetime NOT NULL,
  PRIMARY KEY (`idInventory`),
  KEY `idMesureType_idx` (`idMesureType`),
  KEY `idProductType` (`idProductType`),
  CONSTRAINT `idMesureType` FOREIGN KEY (`idMesureType`) REFERENCES `measuretype` (`idMeasureType`),
  CONSTRAINT `idProductType` FOREIGN KEY (`idProductType`) REFERENCES `producttypes` (`idProductType`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `inventory`
--

LOCK TABLES `inventory` WRITE;
/*!40000 ALTER TABLE `inventory` DISABLE KEYS */;
INSERT INTO `inventory` VALUES (1,'Nature valley bar',1,'Honey peanut butter protein bar.',2,20.00,35.00,28,'2022-01-07 13:27:32'),(2,'Kirland chocolate chip cokies',1,'Chocolate flavor cokies with a lot of protein.',2,18.00,34.00,14,'2022-01-07 13:27:32'),(3,'Optimal nutrition protein',3,'Well balance protein powder with suplements.',5,800.00,2.07,15,'2022-01-07 13:27:32'),(4,'Milky protein',3,'Protein powder for milk mixing.',2,350.00,850.00,30,'2022-01-07 13:27:32'),(5,'Pure protein shot',3,'Fully concentrate protein..',5,950.00,2.70,0,'2022-01-07 13:27:32'),(6,'Powerade',2,'Energy fill beverage',4,18.00,828.00,12,'2022-01-07 13:27:32');
/*!40000 ALTER TABLE `inventory` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `measuretype`
--

DROP TABLE IF EXISTS `measuretype`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `measuretype` (
  `idMeasureType` int NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL,
  `createdOn` datetime NOT NULL,
  PRIMARY KEY (`idMeasureType`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `measuretype`
--

LOCK TABLES `measuretype` WRITE;
/*!40000 ALTER TABLE `measuretype` DISABLE KEYS */;
INSERT INTO `measuretype` VALUES (1,'Kilograms','2022-01-07 13:27:32'),(2,'Grams','2022-01-07 13:27:32'),(3,'Liters','2022-01-07 13:27:32'),(4,'Milliliters','2022-01-07 13:27:32'),(5,'Pounds','2022-01-07 13:27:32'),(6,'Ounce','2022-01-07 13:27:32'),(7,'Gallon','2022-01-07 13:27:32');
/*!40000 ALTER TABLE `measuretype` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `member`
--

DROP TABLE IF EXISTS `member`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `member` (
  `idMember` int NOT NULL AUTO_INCREMENT,
  `name` varchar(15) NOT NULL,
  `lastName` varchar(20) NOT NULL,
  `birthDay` date DEFAULT NULL,
  `cityId` int DEFAULT NULL,
  `Email` varchar(100) NOT NULL,
  `allowNewsLetter` tinyint NOT NULL DEFAULT '1',
  `membershipTypeId` int NOT NULL,
  `lastMembership` date NOT NULL,
  `createdOn` datetime NOT NULL,
  PRIMARY KEY (`idMember`),
  KEY `cityId_idx` (`cityId`),
  KEY `membershipTypeId_idx` (`membershipTypeId`),
  CONSTRAINT `cityId` FOREIGN KEY (`cityId`) REFERENCES `city` (`idCity`),
  CONSTRAINT `membershipTypeId` FOREIGN KEY (`membershipTypeId`) REFERENCES `membershiptype` (`idMembershipType`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `member`
--

LOCK TABLES `member` WRITE;
/*!40000 ALTER TABLE `member` DISABLE KEYS */;
INSERT INTO `member` VALUES (1,'Alejandra','Biñedos','1985-04-05',1,'alejandra@example.com',1,1,'2022-01-03','2022-01-03 00:00:00'),(2,'Fernando','Vizqueda','1989-01-23',2,'fernando@example.com',0,2,'2022-01-09','2022-01-09 00:00:00'),(3,'Mermelada','Simela','1973-03-14',3,'mermelada@example.com',1,3,'2021-11-20','2021-11-20 00:00:00'),(4,'Arquimides','De Soto','1991-07-24',4,'arquimides@example.com',0,4,'2021-06-20','2021-06-20 00:00:00'),(5,'Roca','Jhonsong','1984-08-17',5,'roca@example.com',0,5,'2021-08-08','2021-08-08 00:00:00'),(6,'Jessica','Monsarret','1990-10-17',2,'jessica@example.com',0,3,'2021-09-05','2021-09-05 00:00:00');
/*!40000 ALTER TABLE `member` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `membershiptype`
--

DROP TABLE IF EXISTS `membershiptype`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `membershiptype` (
  `idMembershipType` int NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `cost` decimal(13,2) NOT NULL,
  `duration` int NOT NULL,
  `createdOn` datetime NOT NULL,
  PRIMARY KEY (`idMembershipType`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `membershiptype`
--

LOCK TABLES `membershiptype` WRITE;
/*!40000 ALTER TABLE `membershiptype` DISABLE KEYS */;
INSERT INTO `membershiptype` VALUES (1,'Basic',300.00,1,'2022-01-07 13:27:31'),(2,'Extended',850.00,3,'2022-01-07 13:27:32'),(3,'Prolonged',1400.00,6,'2022-01-07 13:27:32'),(4,'Yearly',3000.00,12,'2022-01-07 13:27:32'),(5,'ForLife',8000.00,120,'2022-01-07 13:27:32');
/*!40000 ALTER TABLE `membershiptype` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `products_in_existence`
--

DROP TABLE IF EXISTS `products_in_existence`;
/*!50001 DROP VIEW IF EXISTS `products_in_existence`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `products_in_existence` AS SELECT 
 1 AS `idProductType`,
 1 AS `name`,
 1 AS `cuantity`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `producttypes`
--

DROP TABLE IF EXISTS `producttypes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `producttypes` (
  `idProductType` int NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL,
  `createdOn` datetime NOT NULL,
  PRIMARY KEY (`idProductType`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `producttypes`
--

LOCK TABLES `producttypes` WRITE;
/*!40000 ALTER TABLE `producttypes` DISABLE KEYS */;
INSERT INTO `producttypes` VALUES (1,'Food','2022-01-07 13:27:32'),(2,'Beverages','2022-01-07 13:27:32'),(3,'Supplements','2022-01-07 13:27:32'),(4,'Own merchandise','2022-01-07 13:27:32'),(5,'Equipment','2022-01-07 13:27:32');
/*!40000 ALTER TABLE `producttypes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `roles`
--

DROP TABLE IF EXISTS `roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `roles` (
  `idRoles` int NOT NULL AUTO_INCREMENT,
  `roleName` varchar(100) NOT NULL,
  `description` varchar(255) DEFAULT NULL,
  `createdOn` datetime NOT NULL,
  PRIMARY KEY (`idRoles`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `roles`
--

LOCK TABLES `roles` WRITE;
/*!40000 ALTER TABLE `roles` DISABLE KEYS */;
INSERT INTO `roles` VALUES (1,'SuperAdmin','Full control user.','2022-01-07 13:27:32'),(2,'membersM','Access to members funtions.','2022-01-07 13:27:32'),(3,'invetoryM','Access to inventory funtions.','2022-01-07 13:27:32'),(4,'salesM','Access to sales funtions.','2022-01-07 13:27:32'),(5,'usersM','Access to users funtions.','2022-01-07 13:27:32'),(6,'equipmentM','Access to equipment funtions.','2022-01-07 13:27:32');
/*!40000 ALTER TABLE `roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sales`
--

DROP TABLE IF EXISTS `sales`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sales` (
  `idSales` int NOT NULL AUTO_INCREMENT,
  `datetime` datetime NOT NULL,
  `idUsers` int NOT NULL,
  PRIMARY KEY (`idSales`),
  KEY `idUsers_idx` (`idUsers`),
  CONSTRAINT `idUsersSales` FOREIGN KEY (`idUsers`) REFERENCES `users` (`idUsers`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sales`
--

LOCK TABLES `sales` WRITE;
/*!40000 ALTER TABLE `sales` DISABLE KEYS */;
INSERT INTO `sales` VALUES (1,'2021-11-12 00:00:00',2),(2,'2021-11-12 00:00:00',5),(3,'2021-11-13 00:00:00',2),(4,'2021-11-14 00:00:00',2),(5,'2021-11-14 00:00:00',5),(6,'2022-01-07 14:34:03',1),(7,'2022-01-07 14:34:40',1),(8,'2022-01-07 14:38:13',2),(9,'2022-01-07 14:38:13',2),(10,'2022-01-07 14:38:13',5);
/*!40000 ALTER TABLE `sales` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `salesinventory`
--

DROP TABLE IF EXISTS `salesinventory`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `salesinventory` (
  `idSales` int NOT NULL AUTO_INCREMENT,
  `idInventory` int NOT NULL,
  `cuantity` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`idSales`,`idInventory`),
  KEY `idInventory_idx` (`idInventory`),
  CONSTRAINT `idInventory` FOREIGN KEY (`idInventory`) REFERENCES `inventory` (`idInventory`),
  CONSTRAINT `idSales` FOREIGN KEY (`idSales`) REFERENCES `sales` (`idSales`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `salesinventory`
--

LOCK TABLES `salesinventory` WRITE;
/*!40000 ALTER TABLE `salesinventory` DISABLE KEYS */;
INSERT INTO `salesinventory` VALUES (1,1,1),(1,2,1),(2,3,2),(3,1,1),(3,3,2),(4,5,1),(5,1,1),(5,6,1),(7,1,3),(8,1,3),(9,3,2),(10,4,4);
/*!40000 ALTER TABLE `salesinventory` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `idUsers` int NOT NULL AUTO_INCREMENT,
  `username` varchar(40) NOT NULL,
  `password` varchar(50) NOT NULL,
  `email` varchar(100) NOT NULL,
  `createdOn` datetime NOT NULL,
  PRIMARY KEY (`idUsers`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'cutekyttycat','ilovecats000much','kittylove@gmail.com','2022-01-07 13:27:32'),(2,'musclemaster','muclePOWER','muscles@gmail.com','2022-01-07 13:27:32'),(3,'mejustme','anotherd@yingym','justliving@gmail.com','2022-01-07 13:27:32'),(4,'lovinglobster','needsmorebutter','ieatlobsters@gmail.com','2022-01-07 13:27:32'),(5,'xXxSuperMaxXx','needmorePOWER','maximus_maximilian@gmail.com','2022-01-07 13:27:32');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usersinroles`
--

DROP TABLE IF EXISTS `usersinroles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `usersinroles` (
  `idUsers` int NOT NULL,
  `idRoles` int NOT NULL,
  PRIMARY KEY (`idUsers`,`idRoles`),
  KEY `idROles_idx` (`idRoles`),
  CONSTRAINT `idRoles` FOREIGN KEY (`idRoles`) REFERENCES `roles` (`idRoles`),
  CONSTRAINT `idUsers` FOREIGN KEY (`idUsers`) REFERENCES `users` (`idUsers`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usersinroles`
--

LOCK TABLES `usersinroles` WRITE;
/*!40000 ALTER TABLE `usersinroles` DISABLE KEYS */;
INSERT INTO `usersinroles` VALUES (1,1),(2,2),(4,3),(2,4),(5,4),(5,5),(3,6);
/*!40000 ALTER TABLE `usersinroles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `usuarios_roles`
--

DROP TABLE IF EXISTS `usuarios_roles`;
/*!50001 DROP VIEW IF EXISTS `usuarios_roles`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `usuarios_roles` AS SELECT 
 1 AS `idUsers`,
 1 AS `username`,
 1 AS `idRoles`,
 1 AS `roleName`*/;
SET character_set_client = @saved_cs_client;

--
-- Dumping routines for database 'gymmanager'
--
/*!50003 DROP PROCEDURE IF EXISTS `CreateSale` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `CreateSale`(IN _idUser INT,
IN _idInventory INT, IN _cuantity INT)
BEGIN
	
    DECLARE _idSales INT;
    
    SELECT max(idSales) + 1 INTO _idSales FROM sales;
    
    INSERT INTO sales (idSales, datetime, idUsers)
    VALUES (_idSales, now(), _idUser);
    
    INSERT INTO salesinventory (idSales, idInventory, cuantity)
    Values (_idSales, _idInventory, _cuantity);
    
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `GetProductsInProductTypes` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `GetProductsInProductTypes`(IN _idProductType INT)
BEGIN
	SELECT i.idInventory, i.name AS 'productName', pt.idProductType, pt.name AS 'productTypeName' FROM inventory i
	INNER JOIN producttypes pt ON  pt.idProductType = i.idProductType
	WHERE i.idProductType = _idProductType;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `LastWeekRegisteredMembers` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `LastWeekRegisteredMembers`()
BEGIN

	DECLARE _lastMonday DATE;
    SET _lastMonday = SUBDATE(curdate(), WEEKDAY(curdate()));
	SELECT m.idMember, m.createdOn, mt.name FROM member m
	INNER JOIN membershipType mt ON mt.idMembershipType = m.membershipTypeId
	WHERE m.createdOn BETWEEN _lastMonday AND DATE_ADD(_lastMonday, INTERVAL 7 DAY);

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Final view structure for view `products_in_existence`
--

/*!50001 DROP VIEW IF EXISTS `products_in_existence`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `products_in_existence` AS select `pt`.`idProductType` AS `idProductType`,`pt`.`name` AS `name`,`i`.`cuantity` AS `cuantity` from (`producttypes` `pt` join `inventory` `i` on((`i`.`idProductType` = `pt`.`idProductType`))) where (`i`.`cuantity` > 0) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `usuarios_roles`
--

/*!50001 DROP VIEW IF EXISTS `usuarios_roles`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `usuarios_roles` AS select `u`.`idUsers` AS `idUsers`,`u`.`username` AS `username`,`r`.`idRoles` AS `idRoles`,`r`.`roleName` AS `roleName` from ((`users` `u` join `usersinroles` `ur` on((`u`.`idUsers` = `ur`.`idUsers`))) join `roles` `r` on((`r`.`idRoles` = `ur`.`idRoles`))) order by `u`.`idUsers` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-01-11  7:30:17
