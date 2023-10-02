-- MySQL dump 10.13  Distrib 8.0.28, for Win64 (x86_64)
--
-- Host: localhost    Database: dsacharya
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
-- Table structure for table `videolecture`
--

DROP TABLE IF EXISTS `videolecture`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `videolecture` (
  `vid` int NOT NULL AUTO_INCREMENT,
  `vimg` varchar(255) DEFAULT 'defaultv.png',
  `vtitle` varchar(255) DEFAULT NULL,
  `vdesc` varchar(255) DEFAULT NULL,
  `vlink` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`vid`),
  UNIQUE KEY `vid_UNIQUE` (`vid`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `videolecture`
--

LOCK TABLES `videolecture` WRITE;
/*!40000 ALTER TABLE `videolecture` DISABLE KEYS */;
INSERT INTO `videolecture` VALUES (1,'http://i3.ytimg.com/vi/aWKJ5lRgI3U/hqdefault.jpg','Arrays in One Shot','C Programming Language','https://www.youtube.com/watch?v=aWKJ5lRgI3U'),(2,'http://i3.ytimg.com/vi/a199KZGMNxk/hqdefault.jpg','Java OOPs Concept','Java Programming Language','https://www.youtube.com/watch?v=a199KZGMNxk'),(3,'http://i3.ytimg.com/vi/Bd-1YM8taBc/hqdefault.jpg','Recursion in One Shot','C Programming Language','https://www.youtube.com/watch?v=Bd-1YM8taBc'),(4,'http://i3.ytimg.com/vi/D_wNQR3LeeM/hqdefault.jpg','Complete SQL','DataBase Management System','https://www.youtube.com/watch?v=D_wNQR3LeeM'),(5,'http://i3.ytimg.com/vi/rzA7UJ-hQn4/hqdefault.jpg','Java Collection Frameworl','Java Programming Language','https://www.youtube.com/watch?v=rzA7UJ-hQn4'),(6,'http://i3.ytimg.com/vi/WgMPrLX-zsA/hqdefault.jpg','Complete C++ STL','C++ Programming Language','https://www.youtube.com/watch?v=WgMPrLX-zsA');
/*!40000 ALTER TABLE `videolecture` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-03-31 11:19:19
