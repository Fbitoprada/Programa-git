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
-- Table structure for table `cita_medica`
--

DROP TABLE IF EXISTS `cita_medica`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cita_medica` (
  `id_cita` bigint(20) NOT NULL AUTO_INCREMENT,
  `Fecha_Cita` date DEFAULT NULL,
  `Motivo` varchar(255) DEFAULT NULL,
  `Paciente_ID_Paciente` int(11) DEFAULT NULL,
  `Medico_ID_Medico` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_cita`),
  KEY `Medico_ID_Medico` (`Medico_ID_Medico`),
  KEY `cita_medica_ibfk_1` (`Paciente_ID_Paciente`),
  CONSTRAINT `cita_medica_ibfk_1` FOREIGN KEY (`Paciente_ID_Paciente`) REFERENCES `paciente` (`ID_Paciente`) ON DELETE CASCADE,
  CONSTRAINT `cita_medica_ibfk_2` FOREIGN KEY (`Medico_ID_Medico`) REFERENCES `medico` (`ID_Medico`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cita_medica`
--

LOCK TABLES `cita_medica` WRITE;
/*!40000 ALTER TABLE `cita_medica` DISABLE KEYS */;
INSERT INTO `cita_medica` VALUES (1,'2024-05-01','Consulta por fiebre',1,1),(2,'2024-05-02','Dolor estomacal',2,1),(3,'2024-05-03','Chequeo rutinario',3,2),(4,'2024-05-04','Vacunación infantil',4,2),(5,'2025-09-26','Fiebre alta',16,1);
/*!40000 ALTER TABLE `cita_medica` ENABLE KEYS */;
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
