-- MySQL dump 10.13  Distrib 8.0.29, for Win64 (x86_64)
--
-- Host: localhost    Database: hospital
-- ------------------------------------------------------
-- Server version	8.0.29

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
-- Table structure for table `doctor`
--

DROP TABLE IF EXISTS `doctor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `doctor` (
  `DID` bigint NOT NULL AUTO_INCREMENT,
  `DADDRESS` varchar(255) DEFAULT NULL,
  `DAVAILABLE` varchar(255) DEFAULT NULL,
  `DEMAIL` varchar(255) DEFAULT NULL,
  `DGENDER` varchar(255) DEFAULT NULL,
  `DNAME` varchar(255) DEFAULT NULL,
  `DPASSWORD` varchar(255) DEFAULT NULL,
  `DPHONE` bigint DEFAULT NULL,
  `DQUALIFICATION` varchar(255) DEFAULT NULL,
  `DSPECIALIZATION` varchar(255) DEFAULT NULL,
  `DSTATUS` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`DID`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `doctor`
--

LOCK TABLES `doctor` WRITE;
/*!40000 ALTER TABLE `doctor` DISABLE KEYS */;
INSERT INTO `doctor` VALUES (1,'ghuy','Y','gfddfghj','f','haii','jhg',8765,'mbbs','jbhvgcf','Y'),(2,'hyd','Y','sanju@','m','sanju','sanju12',76587,'mbbs','orthopedics','Y');
/*!40000 ALTER TABLE `doctor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `doctor_patient`
--

DROP TABLE IF EXISTS `doctor_patient`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `doctor_patient` (
  `Doctor_DID` bigint NOT NULL,
  `patientlist_PID` bigint NOT NULL,
  PRIMARY KEY (`Doctor_DID`,`patientlist_PID`),
  KEY `FK_doctor_patient_patientlist_PID` (`patientlist_PID`),
  CONSTRAINT `FK_doctor_patient_Doctor_DID` FOREIGN KEY (`Doctor_DID`) REFERENCES `doctor` (`DID`),
  CONSTRAINT `FK_doctor_patient_patientlist_PID` FOREIGN KEY (`patientlist_PID`) REFERENCES `patient` (`PID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `doctor_patient`
--

LOCK TABLES `doctor_patient` WRITE;
/*!40000 ALTER TABLE `doctor_patient` DISABLE KEYS */;
/*!40000 ALTER TABLE `doctor_patient` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `doctorattendance`
--

DROP TABLE IF EXISTS `doctorattendance`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `doctorattendance` (
  `SNO` bigint NOT NULL AUTO_INCREMENT,
  `ATTENDANCE` varchar(255) DEFAULT NULL,
  `DATE` varchar(255) DEFAULT NULL,
  `DOCTORID` bigint DEFAULT NULL,
  PRIMARY KEY (`SNO`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `doctorattendance`
--

LOCK TABLES `doctorattendance` WRITE;
/*!40000 ALTER TABLE `doctorattendance` DISABLE KEYS */;
INSERT INTO `doctorattendance` VALUES (1,'Y','06/23/2022',2),(2,'Y','06/23/2022',1);
/*!40000 ALTER TABLE `doctorattendance` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `medicine`
--

DROP TABLE IF EXISTS `medicine`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `medicine` (
  `MID` bigint NOT NULL AUTO_INCREMENT,
  `MNAME` varchar(255) DEFAULT NULL,
  `MPRICE` float DEFAULT NULL,
  `MQUANTITY` bigint DEFAULT NULL,
  PRIMARY KEY (`MID`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `medicine`
--

LOCK TABLES `medicine` WRITE;
/*!40000 ALTER TABLE `medicine` DISABLE KEYS */;
INSERT INTO `medicine` VALUES (1,'dolo',50,2);
/*!40000 ALTER TABLE `medicine` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `patient`
--

DROP TABLE IF EXISTS `patient`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `patient` (
  `PID` bigint NOT NULL,
  `PADDRESS` varchar(255) DEFAULT NULL,
  `PAGE` bigint DEFAULT NULL,
  `PCURRENTSTATUS` varchar(255) DEFAULT NULL,
  `PDISEASE` varchar(255) DEFAULT NULL,
  `PEMAIL` varchar(255) DEFAULT NULL,
  `PGENDER` varchar(255) DEFAULT NULL,
  `PNAME` varchar(255) DEFAULT NULL,
  `PPASSWORD` varchar(255) DEFAULT NULL,
  `PPHONE` bigint DEFAULT NULL,
  `PSTATUS` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`PID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `patient`
--

LOCK TABLES `patient` WRITE;
/*!40000 ALTER TABLE `patient` DISABLE KEYS */;
INSERT INTO `patient` VALUES (1,'nzd',21,'In Progress','accident','kum@12','f','kumari','kumari12',8765,'Y');
/*!40000 ALTER TABLE `patient` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `patienthistory`
--

DROP TABLE IF EXISTS `patienthistory`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `patienthistory` (
  `SNO` bigint NOT NULL AUTO_INCREMENT,
  `DATE` varchar(255) DEFAULT NULL,
  `MADICINESUGGESTED` varchar(255) DEFAULT NULL,
  `PATIENTID` bigint DEFAULT NULL,
  `REVIEWCONTENT` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`SNO`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `patienthistory`
--

LOCK TABLES `patienthistory` WRITE;
/*!40000 ALTER TABLE `patienthistory` DISABLE KEYS */;
/*!40000 ALTER TABLE `patienthistory` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `patientmapping`
--

DROP TABLE IF EXISTS `patientmapping`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `patientmapping` (
  `MAPPINGID` bigint NOT NULL AUTO_INCREMENT,
  `DATE` varchar(255) DEFAULT NULL,
  `DOCTORID` bigint DEFAULT NULL,
  `PATIENTID` bigint DEFAULT NULL,
  `ROOMID` bigint DEFAULT NULL,
  PRIMARY KEY (`MAPPINGID`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `patientmapping`
--

LOCK TABLES `patientmapping` WRITE;
/*!40000 ALTER TABLE `patientmapping` DISABLE KEYS */;
INSERT INTO `patientmapping` VALUES (1,'06/23/2022',1,2,1);
/*!40000 ALTER TABLE `patientmapping` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `room`
--

DROP TABLE IF EXISTS `room`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `room` (
  `RID` bigint NOT NULL AUTO_INCREMENT,
  `RAVAILABILITY` varchar(255) DEFAULT NULL,
  `RCOSTPERDAY` float DEFAULT NULL,
  `RFLOORNO` bigint DEFAULT NULL,
  `RTYPE` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`RID`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `room`
--

LOCK TABLES `room` WRITE;
/*!40000 ALTER TABLE `room` DISABLE KEYS */;
INSERT INTO `room` VALUES (1,'N',1000,5,'ac');
/*!40000 ALTER TABLE `room` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sequence`
--

DROP TABLE IF EXISTS `sequence`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sequence` (
  `SEQ_NAME` varchar(50) NOT NULL,
  `SEQ_COUNT` decimal(38,0) DEFAULT NULL,
  PRIMARY KEY (`SEQ_NAME`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sequence`
--

LOCK TABLES `sequence` WRITE;
/*!40000 ALTER TABLE `sequence` DISABLE KEYS */;
INSERT INTO `sequence` VALUES ('SEQ_GEN',50);
/*!40000 ALTER TABLE `sequence` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-06-23 14:32:44
