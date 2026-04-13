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
-- Table structure for table `atividade_extracurricular`
--

DROP TABLE IF EXISTS `atividade_extracurricular`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `atividade_extracurricular` (
  `id` int NOT NULL AUTO_INCREMENT,
  `id_matricula` int NOT NULL,
  `nome` varchar(100) NOT NULL,
  `tipo` enum('ESPORTE','ARTE','ACADEMICA','OUTRO') NOT NULL,
  `data_inicio` date NOT NULL,
  `data_fim` date DEFAULT NULL,
  `observacao` text,
  PRIMARY KEY (`id`),
  KEY `id_matricula` (`id_matricula`),
  CONSTRAINT `atividade_extracurricular_ibfk_1` FOREIGN KEY (`id_matricula`) REFERENCES `matricula` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `atividade_extracurricular`
--

LOCK TABLES `atividade_extracurricular` WRITE;
/*!40000 ALTER TABLE `atividade_extracurricular` DISABLE KEYS */;
INSERT INTO `atividade_extracurricular` VALUES (1,1,'Futsal','ESPORTE','2026-03-01',NULL,'Participa do time da escola'),(2,4,'Olimpíada de Matemática','ACADEMICA','2026-03-15','2026-05-15','Conquistou 1º lugar'),(3,4,'Coral','ARTE','2026-03-01',NULL,'Soprano'),(4,2,'Teatro','ARTE','2026-04-01',NULL,NULL),(5,6,'Vôlei','ESPORTE','2026-03-10',NULL,'Levantadora'),(6,8,'Clube de Leitura','ACADEMICA','2026-03-05',NULL,NULL),(7,5,'Xadrez','ACADEMICA','2026-04-15',NULL,'Iniciante');
/*!40000 ALTER TABLE `atividade_extracurricular` ENABLE KEYS */;
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
