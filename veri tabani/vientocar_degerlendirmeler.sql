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
-- Table structure for table `degerlendirmeler`
--

DROP TABLE IF EXISTS `degerlendirmeler`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `degerlendirmeler` (
  `id` int NOT NULL AUTO_INCREMENT,
  `yolculuk_id` int NOT NULL,
  `yolcu_id` int NOT NULL,
  `surucu_id` int NOT NULL,
  `puan` int NOT NULL,
  `yorum` text,
  `tarih` datetime DEFAULT CURRENT_TIMESTAMP,
  `rezervasyon_id` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `yolcu_id` (`yolcu_id`),
  KEY `surucu_id` (`surucu_id`),
  KEY `yolculuk_id` (`yolculuk_id`),
  CONSTRAINT `degerlendirmeler_ibfk_1` FOREIGN KEY (`yolcu_id`) REFERENCES `kullanicilar` (`id`) ON DELETE CASCADE,
  CONSTRAINT `degerlendirmeler_ibfk_2` FOREIGN KEY (`surucu_id`) REFERENCES `kullanicilar` (`id`) ON DELETE CASCADE,
  CONSTRAINT `degerlendirmeler_ibfk_3` FOREIGN KEY (`yolculuk_id`) REFERENCES `yolculuklar` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `degerlendirmeler`
--

LOCK TABLES `degerlendirmeler` WRITE;
/*!40000 ALTER TABLE `degerlendirmeler` DISABLE KEYS */;
INSERT INTO `degerlendirmeler` VALUES (1,1,6,2,2,'','2025-12-27 15:48:38',3),(2,5,6,21,4,'iyidi','2025-12-27 17:19:04',4);
/*!40000 ALTER TABLE `degerlendirmeler` ENABLE KEYS */;
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
