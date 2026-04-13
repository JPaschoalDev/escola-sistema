-- MySQL dump 10.13  Distrib 8.0.45, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: escola
-- ------------------------------------------------------
-- Server version	8.0.45

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
-- Table structure for table `nota`
--

DROP TABLE IF EXISTS `nota`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `nota` (
  `id` int NOT NULL AUTO_INCREMENT,
  `id_matricula` int NOT NULL,
  `id_turma_disciplina` int NOT NULL,
  `bimestre` tinyint NOT NULL,
  `nota` decimal(4,2) NOT NULL,
  `faltas` int DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_matricula` (`id_matricula`,`id_turma_disciplina`,`bimestre`),
  KEY `id_turma_disciplina` (`id_turma_disciplina`),
  CONSTRAINT `nota_ibfk_1` FOREIGN KEY (`id_matricula`) REFERENCES `matricula` (`id`),
  CONSTRAINT `nota_ibfk_2` FOREIGN KEY (`id_turma_disciplina`) REFERENCES `turma_disciplina` (`id`),
  CONSTRAINT `nota_chk_1` CHECK ((`bimestre` between 1 and 4)),
  CONSTRAINT `nota_chk_2` CHECK ((`nota` between 0 and 10))
) ENGINE=InnoDB AUTO_INCREMENT=81 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `nota`
--

LOCK TABLES `nota` WRITE;
/*!40000 ALTER TABLE `nota` DISABLE KEYS */;
INSERT INTO `nota` VALUES (1,1,1,1,8.50,1),(2,1,1,2,9.00,0),(3,1,1,3,8.00,2),(4,1,1,4,9.50,1),(5,1,2,1,7.50,2),(6,1,2,2,8.00,1),(7,1,2,3,7.00,3),(8,1,2,4,8.50,2),(9,1,3,1,9.00,0),(10,1,3,2,8.50,1),(11,1,3,3,9.00,0),(12,1,3,4,9.50,0),(13,2,1,1,6.50,3),(14,2,1,2,7.00,2),(15,2,1,3,6.00,4),(16,2,1,4,7.50,2),(17,2,2,1,5.50,5),(18,2,2,2,6.00,4),(19,2,2,3,5.00,6),(20,2,2,4,6.50,3),(21,2,3,1,7.00,2),(22,2,3,2,7.50,1),(23,2,3,3,6.50,3),(24,2,3,4,7.00,2),(25,3,1,1,4.00,8),(26,3,1,2,5.00,6),(27,3,1,3,3.50,10),(28,3,1,4,4.50,7),(29,3,2,1,3.00,9),(30,3,2,2,4.00,7),(31,3,2,3,2.50,12),(32,3,2,4,3.50,8),(33,3,3,1,5.00,5),(34,3,3,2,5.50,4),(35,3,3,3,4.50,6),(36,3,3,4,5.00,5),(37,4,1,1,9.50,0),(38,4,1,2,10.00,0),(39,4,1,3,9.00,1),(40,4,1,4,9.50,0),(41,4,2,1,9.00,1),(42,4,2,2,9.50,0),(43,4,2,3,10.00,0),(44,4,2,4,9.50,0),(45,4,3,1,9.50,0),(46,4,3,2,9.00,1),(47,4,3,3,9.50,0),(48,4,3,4,10.00,0),(49,5,7,1,7.00,2),(50,5,7,2,7.50,1),(51,5,7,3,8.00,1),(52,5,7,4,7.50,2),(53,5,8,1,6.50,3),(54,5,8,2,7.00,2),(55,5,8,3,6.00,4),(56,5,8,4,7.00,2),(57,6,7,1,8.00,1),(58,6,7,2,8.50,0),(59,6,7,3,9.00,0),(60,6,7,4,8.50,1),(61,6,8,1,7.50,2),(62,6,8,2,8.00,1),(63,6,8,3,7.00,3),(64,6,8,4,8.00,1),(65,7,7,1,6.00,7),(66,7,7,2,6.50,6),(67,7,7,3,5.50,8),(68,7,7,4,6.00,7),(69,7,8,1,5.50,6),(70,7,8,2,6.00,5),(71,7,8,3,5.00,8),(72,7,8,4,5.50,7),(73,8,7,1,8.50,1),(74,8,7,2,9.00,0),(75,8,7,3,8.00,2),(76,8,7,4,9.00,0),(77,8,8,1,9.00,0),(78,8,8,2,8.50,1),(79,8,8,3,9.50,0),(80,8,8,4,9.00,1);
/*!40000 ALTER TABLE `nota` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2026-04-13 18:20:36
