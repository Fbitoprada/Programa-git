-- MySQL dump 10.13  Distrib 8.0.42, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: gest_clinic
-- ------------------------------------------------------
-- Server version	5.5.5-10.4.32-MariaDB

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
-- Table structure for table `historias_clinicas`
--

DROP TABLE IF EXISTS `historias_clinicas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `historias_clinicas` (
  `ID_Historia` int(11) NOT NULL AUTO_INCREMENT,
  `Fecha_Apertura` date DEFAULT NULL,
  `Diagnostico` varchar(255) DEFAULT NULL,
  `paciente_id` int(11) DEFAULT NULL,
  `antecedentes` varchar(255) DEFAULT NULL,
  `fecha_registro` date DEFAULT NULL,
  `medico_id` bigint(20) DEFAULT NULL,
  `tratamient		o` varchar(255) DEFAULT NULL,
  `tratamiento` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ID_Historia`),
  KEY `Paciente_ID_Paciente` (`paciente_id`),
  KEY `FK2laq47gbs6c2a3808blij3ytg` (`medico_id`),
  CONSTRAINT `FK2laq47gbs6c2a3808blij3ytg` FOREIGN KEY (`medico_id`) REFERENCES `usuario` (`id`),
  CONSTRAINT `historias_clinicas_ibfk_1` FOREIGN KEY (`paciente_id`) REFERENCES `paciente` (`ID_Paciente`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `historias_clinicas`
--

LOCK TABLES `historias_clinicas` WRITE;
/*!40000 ALTER TABLE `historias_clinicas` DISABLE KEYS */;
INSERT INTO `historias_clinicas` VALUES (1,'2024-05-01','Gripe común',1,NULL,NULL,1,NULL,NULL),(2,'2024-05-02','Dolor abdominal',2,NULL,NULL,2,NULL,NULL),(3,'2024-05-03','Chequeo general',3,NULL,NULL,1,NULL,NULL),(4,'2024-05-04','Control pediátrico',4,NULL,NULL,2,NULL,NULL),(6,NULL,'FIEBRE',16,'NA','2025-10-05',1,NULL,'Acetaminofen'),(7,'2025-10-05','Escalofrios',4,'Parientes con escalofrios',NULL,1,NULL,'Pastillas calmantes'),(8,'2025-10-05','Dolor de cabeza',3,'Ninguno',NULL,1,NULL,'Dolex');
/*!40000 ALTER TABLE `historias_clinicas` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-10-07  0:00:32
