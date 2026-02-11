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
-- Table structure for table `yolculuklar`
--

DROP TABLE IF EXISTS `yolculuklar`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `yolculuklar` (
  `id` int NOT NULL AUTO_INCREMENT,
  `surucu_id` int NOT NULL,
  `nereden` varchar(50) NOT NULL,
  `nereye` varchar(50) NOT NULL,
  `tarih` date NOT NULL,
  `saat` time NOT NULL,
  `ucret` decimal(10,2) NOT NULL,
  `koltuk_sayisi` int DEFAULT '4',
  `bos_koltuk` int DEFAULT '4',
  `arac_bilgisi` varchar(100) DEFAULT 'Standart Sedan',
  `durum` enum('aktif','tamamlandi','iptal') DEFAULT 'aktif',
  `olusturma_tarihi` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `bagaj` varchar(50) DEFAULT 'orta',
  `duraklar` varchar(255) DEFAULT NULL,
  `notlar` text,
  `muzik` tinyint(1) DEFAULT '0',
  `sigara` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `surucu_id` (`surucu_id`),
  CONSTRAINT `yolculuklar_ibfk_1` FOREIGN KEY (`surucu_id`) REFERENCES `kullanicilar` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `yolculuklar`
--

LOCK TABLES `yolculuklar` WRITE;
/*!40000 ALTER TABLE `yolculuklar` DISABLE KEYS */;
INSERT INTO `yolculuklar` VALUES (1,2,'Ankara','İstanbul','2026-01-01','09:00:00',500.00,4,3,'Mercedes Vito','aktif','2025-12-26 10:17:04','orta',NULL,NULL,0,0),(2,3,'İzmir','Antalya','2025-01-20','14:30:00',450.00,3,3,'Fiat Egea','aktif','2025-12-26 10:17:04','orta',NULL,NULL,0,0),(5,21,'Bursa','İstanbul','2025-12-28','08:30:00',400.00,4,0,'Fiat Egea (Beyaz)','aktif','2025-12-27 07:59:55','orta','Yalova, Gebze','Sadece kadın yolcular lütfen.',1,0),(6,22,'Antalya','Muğla','2025-12-29','14:00:00',350.00,4,1,'Renault Clio (Gri)','aktif','2025-12-27 07:59:55','kucuk','Fethiye','Klimamız açıktır.',1,1),(7,23,'Ankara','Samsun','2025-12-30','10:00:00',600.00,4,4,'Ford Focus (Mavi)','aktif','2025-12-27 07:59:55','buyuk','Çorum, Merzifon','Bagaj sorun değil, geniş.',1,0),(12,6,'istanbul','ankara','2026-01-02','22:44:00',400.00,4,2,'tofaş','aktif','2025-12-27 17:44:16','medium','var','',0,0),(14,26,'istanbul','ankara','2026-01-02','22:09:00',400.00,4,1,'tofaş','aktif','2025-12-27 18:09:54','medium','var','',0,0),(15,29,'istanbul','ankara','2026-01-02','18:20:00',400.00,4,2,'tofaş','aktif','2025-12-28 15:15:59','medium','var','',0,0),(16,30,'istanbul','ankara','2026-01-02','12:51:00',400.00,4,0,'tofaş','aktif','2025-12-29 08:51:22','small','var','',0,0);
/*!40000 ALTER TABLE `yolculuklar` ENABLE KEYS */;
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
