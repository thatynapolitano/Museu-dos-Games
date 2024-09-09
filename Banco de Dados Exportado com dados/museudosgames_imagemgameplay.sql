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
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-07-11 20:12:14
