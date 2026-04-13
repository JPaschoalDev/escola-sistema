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
-- Table structure for table `ocorrencia`
--

DROP TABLE IF EXISTS `ocorrencia`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ocorrencia` (
  `id` int NOT NULL AUTO_INCREMENT,
  `id_matricula` int NOT NULL,
  `id_professor` int DEFAULT NULL,
  `tipo` enum('ADVERTENCIA','SUSPENSAO','ELOGIO','COMUNICADO') NOT NULL,
  `descricao` text NOT NULL,
  `data_ocorrencia` date NOT NULL,
  `criado_em` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `id_matricula` (`id_matricula`),
  KEY `id_professor` (`id_professor`),
  CONSTRAINT `ocorrencia_ibfk_1` FOREIGN KEY (`id_matricula`) REFERENCES `matricula` (`id`),
  CONSTRAINT `ocorrencia_ibfk_2` FOREIGN KEY (`id_professor`) REFERENCES `professor` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ocorrencia`
--

LOCK TABLES `ocorrencia` WRITE;
/*!40000 ALTER TABLE `ocorrencia` DISABLE KEYS */;
INSERT INTO `ocorrencia` VALUES (1,1,2,'ELOGIO','Excelente participação na aula de leitura.','2026-03-10','2026-04-08 22:43:01'),(2,3,1,'ADVERTENCIA','Não entregou a tarefa de matemática pela 3ª vez.','2026-03-15','2026-04-08 22:43:01'),(3,3,4,'ADVERTENCIA','Conversa excessiva durante a aula de história.','2026-04-02','2026-04-08 22:43:01'),(4,4,3,'ELOGIO','Apresentou trabalho de ciências exemplar.','2026-04-10','2026-04-08 22:43:01'),(5,7,5,'ADVERTENCIA','Faltas recorrentes sem justificativa.','2026-04-20','2026-04-08 22:43:01'),(6,2,NULL,'COMUNICADO','Reunião agendada com responsáveis.','2026-05-05','2026-04-08 22:43:01'),(7,4,1,'ELOGIO','1º lugar na olimpíada interna de matemática.','2026-05-15','2026-04-08 22:43:01');
/*!40000 ALTER TABLE `ocorrencia` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2026-04-13 18:20:38
