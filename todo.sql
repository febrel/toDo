-- MySQL dump 10.13  Distrib 8.0.22, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: todo
-- ------------------------------------------------------
-- Server version	8.0.22

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
-- Table structure for table `todo`
--

DROP TABLE IF EXISTS `todo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `todo` (
  `id_todo` int NOT NULL AUTO_INCREMENT,
  `descripcion` varchar(200) NOT NULL,
  `complete` tinyint NOT NULL,
  `created_by` int NOT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id_todo`),
  KEY `fk_create_id_idx` (`created_by`),
  CONSTRAINT `fk_create_id` FOREIGN KEY (`created_by`) REFERENCES `user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `todo`
--

LOCK TABLES `todo` WRITE;
/*!40000 ALTER TABLE `todo` DISABLE KEYS */;
INSERT INTO `todo` VALUES (6,'Marrrrrr',0,9,'2020-11-28 00:54:38'),(7,'Correr 2',0,6,'2020-11-28 13:14:42'),(10,'Hacer tarea',1,4,'2020-11-28 14:36:55'),(12,'Ir a la playa',1,10,'2020-11-28 19:00:53');
/*!40000 ALTER TABLE `todo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user` (
  `id` int NOT NULL AUTO_INCREMENT,
  `username` varchar(50) NOT NULL,
  `password` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username_UNIQUE` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (4,'lafebre','pbkdf2:sha256:150000$7DzKYJdU$0753568fd6e12b4948d8323393c20baf30aff0aac263fab113078669c1b07cf6'),(5,'marianela','pbkdf2:sha256:150000$oBPGzSdT$341b42a0c978207243e0b41d735aeb35bbaebd40f954b01720453f40fd869667'),(6,'daniela','pbkdf2:sha256:150000$TPD8trQH$8ec6b71b2721a3ccdb9d2015e1a6fc9850226b84ed2cedac245d927b0c871a44'),(7,'lafebre555','pbkdf2:sha256:150000$lt6idfwP$a31278024a104f88fb69166398f5e0dc68c2afe2ccabb1a9c52ee817b6f68e53'),(8,'luis','pbkdf2:sha256:150000$XuhgBRXJ$a589959f9729f38a152d77bbcdb826aa7d081c06d9cc635483b9a6735eb209e8'),(9,'maria','pbkdf2:sha256:150000$RVvx2PpK$36bd4a0be93d405b86eb6a24d5f0a90b0670cae87e3f80d656af5d6a244d8d19'),(10,'daniel','pbkdf2:sha256:150000$O33ACUII$6b20b6a5d422433a792c7546c9e3129cea6a5d98f7eace699472229cc392dc55');
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-11-28 16:00:11
