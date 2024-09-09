-- MySQL dump 10.13  Distrib 8.0.32, for Win64 (x86_64)
--
-- Host: localhost    Database: museudosgames
-- ------------------------------------------------------
-- Server version	8.4.0

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
-- Table structure for table `jogodesenvolvedor`
--

DROP TABLE IF EXISTS `jogodesenvolvedor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `jogodesenvolvedor` (
  `idDesenvolvedor` int NOT NULL,
  `idJogo` int NOT NULL,
  PRIMARY KEY (`idDesenvolvedor`,`idJogo`),
  KEY `fk_Desenvolvedor_has_Jogo_Jogo1_idx` (`idJogo`),
  KEY `fk_Desenvolvedor_has_Jogo_Desenvolvedor1_idx` (`idDesenvolvedor`),
  CONSTRAINT `fk_Desenvolvedor_has_Jogo_Desenvolvedor1` FOREIGN KEY (`idDesenvolvedor`) REFERENCES `desenvolvedor` (`idDesenvolvedor`),
  CONSTRAINT `fk_Desenvolvedor_has_Jogo_Jogo1` FOREIGN KEY (`idJogo`) REFERENCES `jogo` (`idJogo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jogodesenvolvedor`
--

LOCK TABLES `jogodesenvolvedor` WRITE;
/*!40000 ALTER TABLE `jogodesenvolvedor` DISABLE KEYS */;
INSERT INTO `jogodesenvolvedor` VALUES (1,1),(2,1),(3,1),(4,1),(5,2),(6,3),(7,4),(8,4),(9,5),(10,5);
/*!40000 ALTER TABLE `jogodesenvolvedor` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-07-11 20:12:13
