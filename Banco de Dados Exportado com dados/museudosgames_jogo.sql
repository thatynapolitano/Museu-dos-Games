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
-- Table structure for table `jogo`
--

DROP TABLE IF EXISTS `jogo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `jogo` (
  `idJogo` int NOT NULL,
  `nome_jogo` varchar(45) DEFAULT NULL,
  `imagem_capa` varchar(1000) DEFAULT NULL,
  `descricao` varchar(200) DEFAULT NULL,
  `data_lancamento` datetime DEFAULT NULL,
  `numero_jogadores` int DEFAULT NULL,
  `classificacao_etaria` varchar(1) DEFAULT NULL,
  PRIMARY KEY (`idJogo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jogo`
--

LOCK TABLES `jogo` WRITE;
/*!40000 ALTER TABLE `jogo` DISABLE KEYS */;
INSERT INTO `jogo` VALUES (1,'Tunic','https://assets.nintendo.com/image/upload/c_fill,w_1200/q_auto:best/f_auto/dpr_2.0/ncom/software/switch/70010000045589/acb37bc0c52cf0efc43615d0bd5d927034e95a9409fe4a63c88bda465e5bd4ca','A ação-aventura é protagonizada por uma pequena raposa em um vasto mundo que lembra jogos clássicos de Zelda.','2022-03-16 00:00:00',1,'E'),(2,'New Super Mario Bros U','https://upload.wikimedia.org/wikipedia/en/0/03/New_Super_Mario_Bros._U_box_art.png','Super Mario Bros. U é um clássico jogo de plataforma com rolagem lateral, onde os jogadores controlam Mario e Luigi em uma missão para resgatar a Princesa Peach do vilão Bowser no Reino dos Cogumelos.','2012-11-18 00:00:00',4,'E'),(3,'The Legend of Zelda','https://upload.wikimedia.org/wikipedia/en/3/36/Night_in_the_Woods.jpg','The Legend of Zelda é uma série de jogos eletrônicos da Nintendo criada em 1986 por Shigeru Miyamoto e Takashi Tezuka. É centrado em jogos eletrônicos de ação-aventura e alguns elementos de RPG.','1986-02-21 00:00:00',1,'E'),(4,'Night in the Woods','https://upload.wikimedia.org/wikipedia/en/3/36/Night_in_the_Woods.jpg','Night in the Woods é um jogo de aventura. Sua história segue uma jovem chamada Mae Borowski, que abandona a faculdade e retorna para sua cidade natal para encontrar mudanças inesperadas.','2017-02-21 00:00:00',1,'E'),(5,'Tetris Effect','https://upload.wikimedia.org/wikipedia/en/a/ae/Tetris_Effect_cover.jpg','Uma versão moderna do clássico jogo de quebra-cabeça.','2018-11-09 00:00:00',1,'E');
/*!40000 ALTER TABLE `jogo` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-07-11 20:12:14
