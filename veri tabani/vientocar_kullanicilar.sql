-- MySQL dump 10.13  Distrib 8.0.44, for Win64 (x86_64)
--
-- Host: localhost    Database: vientocar
-- ------------------------------------------------------
-- Server version	8.0.44

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
-- Table structure for table `kullanicilar`
--

DROP TABLE IF EXISTS `kullanicilar`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `kullanicilar` (
  `id` int NOT NULL AUTO_INCREMENT,
  `ad_soyad` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `telefon` varchar(20) DEFAULT NULL,
  `sifre` varchar(255) NOT NULL,
  `kayit_tarihi` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `role` enum('user','admin') DEFAULT 'user',
  `puan` decimal(3,1) DEFAULT '5.0',
  `profil_foto` varchar(255) DEFAULT 'default.png',
  PRIMARY KEY (`id`),
  UNIQUE KEY `email` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `kullanicilar`
--

LOCK TABLES `kullanicilar` WRITE;
/*!40000 ALTER TABLE `kullanicilar` DISABLE KEYS */;
INSERT INTO `kullanicilar` VALUES (2,'Ahmet Yılmaz','ahmet@viento.com','05551112233','12345','2025-12-13 17:07:28','user',2.0,'default.png'),(3,'Zeynep Kaya','zeynep@viento.com','05552223344','12345','2025-12-13 17:07:28','user',5.0,'default.png'),(4,'Mehmet Demir','mehmet@viento.com','05553334455','12345','2025-12-13 17:07:28','user',5.0,'default.png'),(5,'Ayşe Yıldız','ayse@viento.com','05554445566','12345','2025-12-13 17:07:28','user',5.0,'default.png'),(6,'Cennet hashim','cennet08@gmail.com','05314854516','cennet12345','2025-12-13 20:24:46','user',5.0,NULL),(21,'Merve Çelik','merve@fake.com','5551112233','12345','2025-12-27 07:59:55','user',4.0,'default.png'),(22,'Can Yılmaz','can@fake.com','5554445566','12345','2025-12-27 07:59:55','user',5.0,'default.png'),(23,'Elif Demir','elif@fake.com','5557778899','12345','2025-12-27 07:59:55','user',5.0,'default.png'),(24,'Burak Öz','burak@fake.com','5550001122','12345','2025-12-27 07:59:55','user',5.0,'default.png'),(26,'Rusul Alsafar','rusul@gmail.com','05314854517','12345','2025-12-27 15:05:42','user',5.0,'user-26-1766857855043.jpeg'),(27,'Admin Hesabı','vientoCar@mail.com','05000000000','12345','2025-12-27 18:59:05','admin',5.0,'default.png'),(29,'Hüseyin','huseyin@gmail.com','0555 276 27 93','12345','2025-12-28 14:52:48','user',5.0,NULL),(30,'Mustafa','m.@gmail.com','0555 276 27 93','12345','2025-12-29 08:50:02','user',5.0,'user-30-1766998233075.jpeg');
/*!40000 ALTER TABLE `kullanicilar` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-12-31 13:37:59
