CREATE DATABASE  IF NOT EXISTS `w3schooldb` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci */;
USE `w3schooldb`;
-- MySQL dump 10.13  Distrib 8.0.34, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: w3schooldb
-- ------------------------------------------------------
-- Server version	5.5.5-10.4.28-MariaDB

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
-- Table structure for table `categories`
--

DROP TABLE IF EXISTS `categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `categories` (
  `CategoryID` int(11) NOT NULL AUTO_INCREMENT,
  `CategoryName` varchar(255) NOT NULL,
  `Description` varchar(255) NOT NULL,
  PRIMARY KEY (`CategoryID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categories`
--

LOCK TABLES `categories` WRITE;
/*!40000 ALTER TABLE `categories` DISABLE KEYS */;
/*!40000 ALTER TABLE `categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `customers`
--

DROP TABLE IF EXISTS `customers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `customers` (
  `CustomerID` int(11) NOT NULL AUTO_INCREMENT,
  `CustomerName` varchar(255) NOT NULL,
  `ContactName` varchar(255) NOT NULL,
  `Address` varchar(255) NOT NULL,
  `City` varchar(255) NOT NULL,
  `PostalCode` varchar(255) NOT NULL,
  `Country` varchar(255) NOT NULL,
  PRIMARY KEY (`CustomerID`)
) ENGINE=InnoDB AUTO_INCREMENT=182 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customers`
--

LOCK TABLES `customers` WRITE;
/*!40000 ALTER TABLE `customers` DISABLE KEYS */;
INSERT INTO `customers` VALUES (91,'Alfreds Futterkiste','Maria Anders','Obere Str. 57','Berlin','12209','Germany'),(92,'Ana Trujillo Emparedados y helados','Ana Trujillo','Avda. de la Constitución 2222','México D.F.','05021','Mexico'),(93,'Antonio Moreno Taquería','Antonio Moreno','Mataderos 2312','México D.F.','05023','Mexico'),(94,'Around the Horn','Thomas Hardy','120 Hanover Sq.','London','WA1 1DP','UK'),(95,'Berglunds snabbköp','Christina Berglund','Berguvsvägen 8','Luleå','S-958 22','Sweden'),(96,'Blauer See Delikatessen','Hanna Moos','Forsterstr. 57','Mannheim','68306','Germany'),(97,'Blondel père et fils','Frédérique Citeaux','24, place Kléber','Strasbourg','67000','France'),(98,'Bólido Comidas preparadas','Martín Sommer','C/ Araquil, 67','Madrid','28023','Spain'),(99,'Bon app\'','Laurence Lebihans','12, rue des Bouchers','Marseille','13008','France'),(100,'Bottom-Dollar Marketse','Elizabeth Lincoln','23 Tsawassen Blvd.','Tsawassen','T2F 8M4','Canada'),(101,'B\'s Beverages','Victoria Ashworth','Fauntleroy Circus','London','EC2 5NT','UK'),(102,'Cactus Comidas para llevar','Patricio Simpson','Cerrito 333','Buenos Aires','1010','Argentina'),(103,'Centro comercial Moctezuma','Francisco Chang','Sierras de Granada 9993','México D.F.','05022','Mexico'),(104,'Chop-suey Chinese','Yang Wang','Hauptstr. 29','Bern','3012','Switzerland'),(105,'Comércio Mineiro','Pedro Afonso','Av. dos Lusíadas, 23','São Paulo','05432-043','Brazil'),(106,'Consolidated Holdings','Elizabeth Brown','Berkeley Gardens 12 Brewery','London','WX1 6LT','UK'),(107,'Drachenblut Delikatessend','Sven Ottlieb','Walserweg 21','Aachen','52066','Germany'),(108,'Du monde entier','Janine Labrune','67, rue des Cinquante Otages','Nantes','44000','France'),(109,'Eastern Connection','Ann Devon','35 King George','London','WX3 6FW','UK'),(110,'Ernst Handel','Roland Mendel','Kirchgasse 6','Graz','8010','Austria'),(111,'Familia Arquibaldo','Aria Cruz','Rua Orós, 92','São Paulo','05442-030','Brazil'),(112,'FISSA Fabrica Inter. Salchichas S.A.','Diego Roel','C/ Moralzarzal, 86','Madrid','28034','Spain'),(113,'Folies gourmandes','Martine Rancé','184, chaussée de Tournai','Lille','59000','France'),(114,'Folk och fä HB','Maria Larsson','Åkergatan 24','Bräcke','S-844 67','Sweden'),(115,'Frankenversand','Peter Franken','Berliner Platz 43','München','80805','Germany'),(116,'France restauration','Carine Schmitt','54, rue Royale','Nantes','44000','France'),(117,'Franchi S.p.A.','Paolo Accorti','Via Monte Bianco 34','Torino','10100','Italy'),(118,'Furia Bacalhau e Frutos do Mar','Lino Rodriguez','Jardim das rosas n. 32','Lisboa','1675','Portugal'),(119,'Galería del gastrónomo','Eduardo Saavedra','Rambla de Cataluña, 23','Barcelona','08022','Spain'),(120,'Godos Cocina Típica','José Pedro Freyre','C/ Romero, 33','Sevilla','41101','Spain'),(121,'Gourmet Lanchonetes','André Fonseca','Av. Brasil, 442','Campinas','04876-786','Brazil'),(122,'Great Lakes Food Market','Howard Snyder','2732 Baker Blvd.','Eugene','97403','USA'),(123,'GROSELLA-Restaurante','Manuel Pereira','5ª Ave. Los Palos Grandes','Caracas','1081','Venezuela'),(124,'Hanari Carnes','Mario Pontes','Rua do Paço, 67','Rio de Janeiro','05454-876','Brazil'),(125,'HILARIÓN-Abastos','Carlos Hernández','Carrera 22 con Ave. Carlos Soublette #8-35','San Cristóbal','5022','Venezuela'),(126,'Hungry Coyote Import Store','Yoshi Latimer','City Center Plaza 516 Main St.','Elgin','97827','USA'),(127,'Hungry Owl All-Night Grocers','Patricia McKenna','8 Johnstown Road','Cork','','Ireland'),(128,'Island Trading','Helen Bennett','Garden House Crowther Way','Cowes','PO31 7PJ','UK'),(129,'Königlich Essen','Philip Cramer','Maubelstr. 90','Brandenburg','14776','Germany'),(130,'La corne d\'abondance','Daniel Tonini','67, avenue de l\'Europe','Versailles','78000','France'),(131,'La maison d\'Asie','Annette Roulet','1 rue Alsace-Lorraine','Toulouse','31000','France'),(132,'Laughing Bacchus Wine Cellars','Yoshi Tannamuri','1900 Oak St.','Vancouver','V3F 2K1','Canada'),(133,'Lazy K Kountry Store','John Steel','12 Orchestra Terrace','Walla Walla','99362','USA'),(134,'Lehmanns Marktstand','Renate Messner','Magazinweg 7','Frankfurt a.M.','60528','Germany'),(135,'Let\'s Stop N Shop','Jaime Yorres','87 Polk St. Suite 5','San Francisco','94117','USA'),(136,'LILA-Supermercado','Carlos González','Carrera 52 con Ave. Bolívar #65-98 Llano Largo','Barquisimeto','3508','Venezuela'),(137,'LINO-Delicateses','Felipe Izquierdo','Ave. 5 de Mayo Porlamar','I. de Margarita','4980','Venezuela'),(138,'Lonesome Pine Restaurant','Fran Wilson','89 Chiaroscuro Rd.','Portland','97219','USA'),(139,'Magazzini Alimentari Riuniti','Giovanni Rovelli','Via Ludovico il Moro 22','Bergamo','24100','Italy'),(140,'Maison Dewey','Catherine Dewey','Rue Joseph-Bens 532','Bruxelles','B-1180','Belgium'),(141,'Mère Paillarde','Jean Fresnière','43 rue St. Laurent','Montréal','H1J 1C3','Canada'),(142,'Morgenstern Gesundkost','Alexander Feuer','Heerstr. 22','Leipzig','04179','Germany'),(143,'North/South','Simon Crowther','South House 300 Queensbridge','London','SW7 1RZ','UK'),(144,'Océano Atlántico Ltda.','Yvonne Moncada','Ing. Gustavo Moncada 8585 Piso 20-A','Buenos Aires','1010','Argentina'),(145,'Old World Delicatessen','Rene Phillips','2743 Bering St.','Anchorage','99508','USA'),(146,'Ottilies Käseladen','Henriette Pfalzheim','Mehrheimerstr. 369','Köln','50739','Germany'),(147,'Paris spécialités','Marie Bertrand','265, boulevard Charonne','Paris','75012','France'),(148,'Pericles Comidas clásicas','Guillermo Fernández','Calle Dr. Jorge Cash 321','México D.F.','05033','Mexico'),(149,'Piccolo und mehr','Georg Pipps','Geislweg 14','Salzburg','5020','Austria'),(150,'Princesa Isabel Vinhoss','Isabel de Castro','Estrada da saúde n. 58','Lisboa','1756','Portugal'),(151,'Que Delícia','Bernardo Batista','Rua da Panificadora, 12','Rio de Janeiro','02389-673','Brazil'),(152,'Queen Cozinha','Lúcia Carvalho','Alameda dos Canàrios, 891','São Paulo','05487-020','Brazil'),(153,'QUICK-Stop','Horst Kloss','Taucherstraße 10','Cunewalde','01307','Germany'),(154,'Rancho grande','Sergio Gutiérrez','Av. del Libertador 900','Buenos Aires','1010','Argentina'),(155,'Rattlesnake Canyon Grocery','Paula Wilson','2817 Milton Dr.','Albuquerque','87110','USA'),(156,'Reggiani Caseifici','Maurizio Moroni','Strada Provinciale 124','Reggio Emilia','42100','Italy'),(157,'Ricardo Adocicados','Janete Limeira','Av. Copacabana, 267','Rio de Janeiro','02389-890','Brazil'),(158,'Richter Supermarkt','Michael Holz','Grenzacherweg 237','Genève','1203','Switzerland'),(159,'Romero y tomillo','Alejandra Camino','Gran Vía, 1','Madrid','28001','Spain'),(160,'Santé Gourmet','Jonas Bergulfsen','Erling Skakkes gate 78','Stavern','4110','Norway'),(161,'Save-a-lot Markets','Jose Pavarotti','187 Suffolk Ln.','Boise','83720','USA'),(162,'Seven Seas Imports','Hari Kumar','90 Wadhurst Rd.','London','OX15 4NB','UK'),(163,'Simons bistro','Jytte Petersen','Vinbæltet 34','København','1734','Denmark'),(164,'Spécialités du monde','Dominique Perrier','25, rue Lauriston','Paris','75016','France'),(165,'Split Rail Beer & Ale','Art Braunschweiger','P.O. Box 555','Lander','82520','USA'),(166,'Suprêmes délices','Pascale Cartrain','Boulevard Tirou, 255','Charleroi','B-6000','Belgium'),(167,'The Big Cheese','Liz Nixon','89 Jefferson Way Suite 2','Portland','97201','USA'),(168,'The Cracker Box','Liu Wong','55 Grizzly Peak Rd.','Butte','59801','USA'),(169,'Toms Spezialitäten','Karin Josephs','Luisenstr. 48','Münster','44087','Germany'),(170,'Tortuga Restaurante','Miguel Angel Paolino','Avda. Azteca 123','México D.F.','05033','Mexico'),(171,'Tradição Hipermercados','Anabela Domingues','Av. Inês de Castro, 414','São Paulo','05634-030','Brazil'),(172,'Trail\'s Head Gourmet Provisioners','Helvetius Nagy','722 DaVinci Blvd.','Kirkland','98034','USA'),(173,'Vaffeljernet','Palle Ibsen','Smagsløget 45','Århus','8200','Denmark'),(174,'Victuailles en stock','Mary Saveley','2, rue du Commerce','Lyon','69004','France'),(175,'Vins et alcools Chevalier','Paul Henriot','59 rue de l\'Abbaye','Reims','51100','France'),(176,'Die Wandernde Kuh','Rita Müller','Adenauerallee 900','Stuttgart','70563','Germany'),(177,'Wartian Herkku','Pirkko Koskitalo','Torikatu 38','Oulu','90110','Finland'),(178,'Wellington Importadora','Paula Parente','Rua do Mercado, 12','Resende','08737-363','Brazil'),(179,'White Clover Markets','Karl Jablonski','305 - 14th Ave. S. Suite 3B','Seattle','98128','USA'),(180,'Wilman Kala','Matti Karttunen','Keskuskatu 45','Helsinki','21240','Finland'),(181,'Wolski','Zbyszek','ul. Filtrowa 68','Walla','01-012','Poland');
/*!40000 ALTER TABLE `customers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `employees`
--

DROP TABLE IF EXISTS `employees`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `employees` (
  `EmployeeID` int(11) NOT NULL AUTO_INCREMENT,
  `LastName` varchar(255) NOT NULL,
  `FirstName` varchar(255) NOT NULL,
  `BirthDate` date NOT NULL,
  `Photo` longblob NOT NULL,
  `Notes` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`EmployeeID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `employees`
--

LOCK TABLES `employees` WRITE;
/*!40000 ALTER TABLE `employees` DISABLE KEYS */;
/*!40000 ALTER TABLE `employees` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orderdetails`
--

DROP TABLE IF EXISTS `orderdetails`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `orderdetails` (
  `OrderDetailID` int(11) NOT NULL AUTO_INCREMENT,
  `OrderID` int(11) DEFAULT NULL,
  `ProductID` int(11) DEFAULT NULL,
  `Quantity` int(11) NOT NULL,
  PRIMARY KEY (`OrderDetailID`),
  KEY `OrderID` (`OrderID`),
  KEY `ProductID` (`ProductID`),
  CONSTRAINT `OrderID` FOREIGN KEY (`OrderID`) REFERENCES `orders` (`OrderID`),
  CONSTRAINT `ProductID` FOREIGN KEY (`ProductID`) REFERENCES `products` (`ProductID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orderdetails`
--

LOCK TABLES `orderdetails` WRITE;
/*!40000 ALTER TABLE `orderdetails` DISABLE KEYS */;
/*!40000 ALTER TABLE `orderdetails` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orders`
--

DROP TABLE IF EXISTS `orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `orders` (
  `OrderID` int(11) NOT NULL AUTO_INCREMENT,
  `CustomerID` int(11) DEFAULT NULL,
  `EmployeeID` int(11) DEFAULT NULL,
  `OrderDate` date NOT NULL,
  `ShipperID` int(11) DEFAULT NULL,
  PRIMARY KEY (`OrderID`),
  KEY `CustomerID` (`CustomerID`),
  KEY `EmplyeeID` (`EmployeeID`),
  KEY `ShipperID` (`ShipperID`),
  CONSTRAINT `CustomerID` FOREIGN KEY (`CustomerID`) REFERENCES `customers` (`CustomerID`),
  CONSTRAINT `EmplyeeID` FOREIGN KEY (`EmployeeID`) REFERENCES `employees` (`EmployeeID`),
  CONSTRAINT `ShipperID` FOREIGN KEY (`ShipperID`) REFERENCES `shippers` (`ShipperID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orders`
--

LOCK TABLES `orders` WRITE;
/*!40000 ALTER TABLE `orders` DISABLE KEYS */;
/*!40000 ALTER TABLE `orders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `products`
--

DROP TABLE IF EXISTS `products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `products` (
  `ProductID` int(11) NOT NULL AUTO_INCREMENT,
  `ProductName` varchar(255) NOT NULL,
  `SupplierID` int(11) DEFAULT NULL,
  `CategoryID` int(11) DEFAULT NULL,
  `Unit` varchar(255) NOT NULL,
  `Price` varchar(255) NOT NULL,
  PRIMARY KEY (`ProductID`),
  KEY `SupplierID` (`SupplierID`),
  KEY `CategoryID` (`CategoryID`),
  CONSTRAINT `CategoryID` FOREIGN KEY (`CategoryID`) REFERENCES `categories` (`CategoryID`),
  CONSTRAINT `SupplierID` FOREIGN KEY (`SupplierID`) REFERENCES `suppliers` (`SupplierID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `products`
--

LOCK TABLES `products` WRITE;
/*!40000 ALTER TABLE `products` DISABLE KEYS */;
/*!40000 ALTER TABLE `products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shippers`
--

DROP TABLE IF EXISTS `shippers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `shippers` (
  `ShipperID` int(11) NOT NULL AUTO_INCREMENT,
  `ShipperName` varchar(255) NOT NULL,
  `Phone` varchar(255) NOT NULL,
  PRIMARY KEY (`ShipperID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shippers`
--

LOCK TABLES `shippers` WRITE;
/*!40000 ALTER TABLE `shippers` DISABLE KEYS */;
/*!40000 ALTER TABLE `shippers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `suppliers`
--

DROP TABLE IF EXISTS `suppliers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `suppliers` (
  `SupplierID` int(11) NOT NULL AUTO_INCREMENT,
  `SupplierName` varchar(255) NOT NULL,
  `ContactName` varchar(255) NOT NULL,
  `Address` varchar(255) NOT NULL,
  `City` varchar(255) NOT NULL,
  `PostalCode` varchar(255) NOT NULL,
  `Phone` varchar(255) NOT NULL,
  PRIMARY KEY (`SupplierID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `suppliers`
--

LOCK TABLES `suppliers` WRITE;
/*!40000 ALTER TABLE `suppliers` DISABLE KEYS */;
/*!40000 ALTER TABLE `suppliers` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-10-25 17:39:36
