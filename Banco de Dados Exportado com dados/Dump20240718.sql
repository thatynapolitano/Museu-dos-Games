CREATE DATABASE  IF NOT EXISTS `museudosgames` /*!40100 DEFAULT CHARACTER SET utf8mb3 */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `museudosgames`;
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
-- Table structure for table `desenvolvedor`
--

DROP TABLE IF EXISTS `desenvolvedor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `desenvolvedor` (
  `idDesenvolvedor` int NOT NULL,
  `nome_desenvolvedor` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idDesenvolvedor`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `desenvolvedor`
--

LOCK TABLES `desenvolvedor` WRITE;
/*!40000 ALTER TABLE `desenvolvedor` DISABLE KEYS */;
INSERT INTO `desenvolvedor` VALUES (1,'Andrew Shouldice'),(2,'Isometricorp Games Limited'),(3,'TUNIC Team'),(4,'22nd Century Toys LLC'),(5,'Nintendo Entertainment Analysis & Development'),(6,'Nintendo Entertainment Planning & Development'),(7,'Infinite Fall'),(8,'Secret Lab'),(9,'Monstars'),(10,'Resonair');
/*!40000 ALTER TABLE `desenvolvedor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `franquia`
--

DROP TABLE IF EXISTS `franquia`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `franquia` (
  `idFranquia` int NOT NULL,
  `nome_franquia` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idFranquia`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `franquia`
--

LOCK TABLES `franquia` WRITE;
/*!40000 ALTER TABLE `franquia` DISABLE KEYS */;
INSERT INTO `franquia` VALUES (1,'Tunic'),(2,'Super Mario'),(3,'The Legend of Zelda'),(4,'Night in the Woods'),(5,'Tetris');
/*!40000 ALTER TABLE `franquia` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `genero`
--

DROP TABLE IF EXISTS `genero`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `genero` (
  `idGenero` int NOT NULL,
  `nome_genero` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idGenero`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `genero`
--

LOCK TABLES `genero` WRITE;
/*!40000 ALTER TABLE `genero` DISABLE KEYS */;
INSERT INTO `genero` VALUES (1,'Jogo eletrônico independente'),(2,'Jogo eletrônico de ação e aventura'),(3,'RPG eletrônico'),(4,'Jogo eletrônico de luta'),(5,'Jogo eletrônico de plataforma'),(6,'Jogo eletrônico de quebra cabeça'),(7,'Realidade virtual');
/*!40000 ALTER TABLE `genero` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `imagemgameplay`
--

DROP TABLE IF EXISTS `imagemgameplay`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `imagemgameplay` (
  `idImagemGameplay` int NOT NULL,
  `idJogo` int NOT NULL,
  `URL_imagem_gameplay` varchar(1000) DEFAULT NULL,
  PRIMARY KEY (`idImagemGameplay`),
  KEY `idJogo_idx` (`idJogo`),
  CONSTRAINT `idJogo` FOREIGN KEY (`idJogo`) REFERENCES `jogo` (`idJogo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `imagemgameplay`
--

LOCK TABLES `imagemgameplay` WRITE;
/*!40000 ALTER TABLE `imagemgameplay` DISABLE KEYS */;
INSERT INTO `imagemgameplay` VALUES (1,1,'https://assets.nintendo.com/image/upload/ar_16:9,b_auto:border,c_lpad/b_white/f_auto/q_auto/dpr_1.5/c_scale,w_700/ncom/software/switch/70010000045589/0f4446675696483a9837cdc730738ecd2f0a2fa4159bcead836e7ccabb02751b'),(2,1,'https://assets.nintendo.com/image/upload/ar_16:9,b_auto:border,c_lpad/b_white/f_auto/q_auto/dpr_1.5/c_scale,w_1200/ncom/software/switch/70010000045589/a2d268a6232c5f2ae234d6cc3b68aca6e7c2190d482dd082f507fb09c816361b'),(3,2,'https://www.nintendo.com/eu/media/images/08_content_images/games_6/nintendo_switch_7/nswitch_newsupermariobroudeluxe/ci_nswitch_nsmbud_0_princessneedshelp_02.jpg'),(4,2,'https://www.outerspace.com.br/wp-content/uploads/2018/08/newsupermariobrosu.jpg'),(5,2,'https://m.media-amazon.com/images/M/MV5BYzZmZjdlMmQtODY2Ny00MTJjLWJjM2EtZGQ4ZWI4NDNhOTVlXkEyXkFqcGdeQXRyYW5zY29kZS13b3JrZmxvdw@@._V1_.jpg'),(6,3,'https://veja.abril.com.br/wp-content/uploads/2023/05/The-Legend-of-Zelda-Tears-of-the-Kingdom-01.jpg.jpg?crop=1&resize=1212,909'),(7,3,'https://www.denofgeek.com/wp-content/uploads/2022/05/Leged-of-Zelda-Link.jpg'),(8,4,'https://cdn.arstechnica.net/wp-content/uploads/2017/03/night-1.jpg'),(9,4,'https://assetsio.gnwcdn.com/nig20.jpg?width=1600&height=900&fit=crop&quality=100&format=png&enable=upscale&auto=webp'),(10,4,'https://shared.akamai.steamstatic.com/store_item_assets/steam/apps/481510/ss_be58beee5186f4b06b828a90a126f47cca55ae0a.1920x1080.jpg?t=1706292417'),(11,5,'https://cdn.vox-cdn.com/thumbor/wFPt60G0dPKRXkG4qhQpAg0sW8E=/0x0:1474x829/1400x1050/filters:focal(737x415:738x416)/cdn.vox-cdn.com/uploads/chorus_asset/file/13450357/Tetris.Effect.10.29.Journey.Mode.Metamorphosis.png');
/*!40000 ALTER TABLE `imagemgameplay` ENABLE KEYS */;
UNLOCK TABLES;

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
INSERT INTO `jogo` VALUES (1,'Tunic','https://assets.nintendo.com/image/upload/c_fill,w_1200/q_auto:best/f_auto/dpr_2.0/ncom/software/switch/70010000045589/acb37bc0c52cf0efc43615d0bd5d927034e95a9409fe4a63c88bda465e5bd4ca','A ação-aventura é protagonizada por uma pequena raposa em um vasto mundo que lembra jogos clássicos de Zelda.','2022-03-16 00:00:00',1,'E'),(2,'New Super Mario Bros U','https://upload.wikimedia.org/wikipedia/en/0/03/New_Super_Mario_Bros._U_box_art.png','Super Mario Bros. U é um clássico jogo de plataforma com rolagem lateral, onde os jogadores controlam Mario e Luigi em uma missão para resgatar a Princesa Peach do vilão Bowser no Reino dos Cogumelos.','2012-11-18 00:00:00',4,'E'),(3,'The Legend of Zelda','https://upload.wikimedia.org/wikipedia/en/3/36/Night_in_the_Woods.jpg','The Legend of Zelda é uma série de jogos eletrônicos da Nintendo criada em 1986 por Shigeru Miyamoto e Takashi Tezuka. É centrado em jogos eletrônicos de ação-aventura e alguns elementos de RPG.','1986-02-21 00:00:00',1,'E'),(4,'Night in the Woods','https://upload.wikimedia.org/wikipedia/en/3/36/Night_in_the_Woods.jpg','Night in the Woods é um jogo de aventura. Sua história segue uma jovem chamada Mae Borowski, que abandona a faculdade e retorna para sua cidade natal para encontrar mudanças inesperadas.','2016-02-21 00:00:00',1,'E'),(5,'Tetris Effect','https://upload.wikimedia.org/wikipedia/en/a/ae/Tetris_Effect_cover.jpg','Uma versão moderna do clássico jogo de quebra-cabeça.','2016-11-09 00:00:00',1,'E');
/*!40000 ALTER TABLE `jogo` ENABLE KEYS */;
UNLOCK TABLES;

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

--
-- Table structure for table `jogofranquia`
--

DROP TABLE IF EXISTS `jogofranquia`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `jogofranquia` (
  `idJogo` int NOT NULL,
  `idFranquia` int NOT NULL,
  PRIMARY KEY (`idJogo`,`idFranquia`),
  KEY `fk_Jogo_has_Franquia_Franquia1_idx` (`idFranquia`),
  KEY `fk_Jogo_has_Franquia_Jogo1_idx` (`idJogo`),
  CONSTRAINT `fk_Jogo_has_Franquia_Franquia1` FOREIGN KEY (`idFranquia`) REFERENCES `franquia` (`idFranquia`),
  CONSTRAINT `fk_Jogo_has_Franquia_Jogo1` FOREIGN KEY (`idJogo`) REFERENCES `jogo` (`idJogo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jogofranquia`
--

LOCK TABLES `jogofranquia` WRITE;
/*!40000 ALTER TABLE `jogofranquia` DISABLE KEYS */;
INSERT INTO `jogofranquia` VALUES (1,1),(2,2),(3,3),(4,4),(5,5);
/*!40000 ALTER TABLE `jogofranquia` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jogogenero`
--

DROP TABLE IF EXISTS `jogogenero`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `jogogenero` (
  `idJogo` int NOT NULL,
  `idGenero` int NOT NULL,
  PRIMARY KEY (`idJogo`,`idGenero`),
  KEY `fk_GeneroJogo_Genero1_idx` (`idGenero`),
  CONSTRAINT `fk_GeneroJogo_Genero1` FOREIGN KEY (`idGenero`) REFERENCES `genero` (`idGenero`),
  CONSTRAINT `fk_GeneroJogo_Jogo1` FOREIGN KEY (`idJogo`) REFERENCES `jogo` (`idJogo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jogogenero`
--

LOCK TABLES `jogogenero` WRITE;
/*!40000 ALTER TABLE `jogogenero` DISABLE KEYS */;
INSERT INTO `jogogenero` VALUES (1,1),(1,2),(3,2),(4,2),(5,2),(1,3),(1,4),(2,5),(5,6),(5,7);
/*!40000 ALTER TABLE `jogogenero` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jogoplataforma`
--

DROP TABLE IF EXISTS `jogoplataforma`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `jogoplataforma` (
  `idJogo` int NOT NULL,
  `idPlataforma` int NOT NULL,
  PRIMARY KEY (`idJogo`,`idPlataforma`),
  KEY `fk_JogoPlataforma_Plataforma1_idx` (`idPlataforma`),
  CONSTRAINT `fk_JogoPlataforma_Jogo1` FOREIGN KEY (`idJogo`) REFERENCES `jogo` (`idJogo`),
  CONSTRAINT `fk_JogoPlataforma_Plataforma1` FOREIGN KEY (`idPlataforma`) REFERENCES `plataforma` (`idPlataforma`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jogoplataforma`
--

LOCK TABLES `jogoplataforma` WRITE;
/*!40000 ALTER TABLE `jogoplataforma` DISABLE KEYS */;
INSERT INTO `jogoplataforma` VALUES (1,1),(2,1),(3,1),(4,1),(5,1),(1,2),(5,2),(1,3),(5,3),(1,4),(4,4),(2,5),(3,5),(4,6),(4,7),(4,8);
/*!40000 ALTER TABLE `jogoplataforma` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jogopublicador`
--

DROP TABLE IF EXISTS `jogopublicador`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `jogopublicador` (
  `idJogo` int NOT NULL,
  `idPublicador` int NOT NULL,
  PRIMARY KEY (`idJogo`,`idPublicador`),
  KEY `fk_Jogo_has_Publicador_Publicador1_idx` (`idPublicador`),
  KEY `fk_Jogo_has_Publicador_Jogo1_idx` (`idJogo`),
  CONSTRAINT `fk_Jogo_has_Publicador_Jogo1` FOREIGN KEY (`idJogo`) REFERENCES `jogo` (`idJogo`),
  CONSTRAINT `fk_Jogo_has_Publicador_Publicador1` FOREIGN KEY (`idPublicador`) REFERENCES `publicador` (`idPublicador`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jogopublicador`
--

LOCK TABLES `jogopublicador` WRITE;
/*!40000 ALTER TABLE `jogopublicador` DISABLE KEYS */;
INSERT INTO `jogopublicador` VALUES (1,1),(2,2),(3,2),(4,3),(5,4);
/*!40000 ALTER TABLE `jogopublicador` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `plataforma`
--

DROP TABLE IF EXISTS `plataforma`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `plataforma` (
  `idPlataforma` int NOT NULL,
  `nome_plataforma` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idPlataforma`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `plataforma`
--

LOCK TABLES `plataforma` WRITE;
/*!40000 ALTER TABLE `plataforma` DISABLE KEYS */;
INSERT INTO `plataforma` VALUES (1,'Nintendo Switch'),(2,'PlayStation 5'),(3,'PlayStation 4'),(4,'Xbox'),(5,'Wii U'),(6,'Windows'),(7,'Mac'),(8,'Linux');
/*!40000 ALTER TABLE `plataforma` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `publicador`
--

DROP TABLE IF EXISTS `publicador`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `publicador` (
  `idPublicador` int NOT NULL,
  `nome_publicador` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idPublicador`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `publicador`
--

LOCK TABLES `publicador` WRITE;
/*!40000 ALTER TABLE `publicador` DISABLE KEYS */;
INSERT INTO `publicador` VALUES (1,'Tunic'),(2,'Nintendo'),(3,'Finji'),(4,'Enhance Games');
/*!40000 ALTER TABLE `publicador` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-07-18 23:54:14
