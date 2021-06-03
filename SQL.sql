-- MySQL dump 10.13  Distrib 8.0.25, for Win64 (x86_64)
--
-- Host: localhost    Database: studentgpa
-- ------------------------------------------------------
-- Server version	8.0.25

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
-- Table structure for table `course`
--

DROP TABLE IF EXISTS `course`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `course` (
  `id` bigint NOT NULL,
  `code` varchar(255) DEFAULT NULL,
  `semester_id` bigint NOT NULL,
  `subject_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FKlmyb73uymsfhqh374ndr3n4c0` (`semester_id`),
  KEY `FKm1expnaas0onmafqpktmjixnx` (`subject_id`),
  CONSTRAINT `FKlmyb73uymsfhqh374ndr3n4c0` FOREIGN KEY (`semester_id`) REFERENCES `semester` (`id`),
  CONSTRAINT `FKm1expnaas0onmafqpktmjixnx` FOREIGN KEY (`subject_id`) REFERENCES `subject` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `course`
--

LOCK TABLES `course` WRITE;
/*!40000 ALTER TABLE `course` DISABLE KEYS */;
INSERT INTO `course` VALUES (1,'N1',1,1),(2,'N2',1,2),(3,'N3',2,3),(4,'N4',2,4),(5,'N1',3,4),(6,'N1',1,5),(7,'N2',1,5),(8,'N1',1,6),(9,'N1',2,7),(10,'N1',2,8),(11,'N1',3,7),(12,'N1',3,6),(13,'N2',2,9),(14,'N3',1,10),(15,'N1',3,10);
/*!40000 ALTER TABLE `course` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hibernate_sequence`
--

DROP TABLE IF EXISTS `hibernate_sequence`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `hibernate_sequence` (
  `next_val` bigint DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hibernate_sequence`
--

LOCK TABLES `hibernate_sequence` WRITE;
/*!40000 ALTER TABLE `hibernate_sequence` DISABLE KEYS */;
INSERT INTO `hibernate_sequence` VALUES (74),(74),(74),(74),(74),(74),(74),(74),(74),(74),(74),(74);
/*!40000 ALTER TABLE `hibernate_sequence` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `major`
--

DROP TABLE IF EXISTS `major`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `major` (
  `id` bigint NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `major`
--

LOCK TABLES `major` WRITE;
/*!40000 ALTER TABLE `major` DISABLE KEYS */;
INSERT INTO `major` VALUES (1,'Công nghệ thông tin'),(2,'Hệ thống thông tin'),(3,'Công nghệ phần mềm');
/*!40000 ALTER TABLE `major` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `major_subject`
--

DROP TABLE IF EXISTS `major_subject`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `major_subject` (
  `subject_id` bigint NOT NULL,
  `major_id` bigint NOT NULL,
  KEY `FK5syrdojcrl3chkwe3a9x57iw9` (`major_id`),
  KEY `FK3yvsbbn2xmdtfl6tp51omshge` (`subject_id`),
  CONSTRAINT `FK3yvsbbn2xmdtfl6tp51omshge` FOREIGN KEY (`subject_id`) REFERENCES `subject` (`id`),
  CONSTRAINT `FK5syrdojcrl3chkwe3a9x57iw9` FOREIGN KEY (`major_id`) REFERENCES `major` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `major_subject`
--

LOCK TABLES `major_subject` WRITE;
/*!40000 ALTER TABLE `major_subject` DISABLE KEYS */;
INSERT INTO `major_subject` VALUES (1,1),(2,1),(3,1),(4,1),(5,3),(6,3),(7,3),(8,3),(9,3),(10,3),(10,1);
/*!40000 ALTER TABLE `major_subject` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `password_reset_token`
--

DROP TABLE IF EXISTS `password_reset_token`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `password_reset_token` (
  `id` bigint NOT NULL,
  `expiry_date` datetime DEFAULT NULL,
  `token` varchar(255) DEFAULT NULL,
  `user_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FK5lwtbncug84d4ero33v3cfxvl` (`user_id`),
  CONSTRAINT `FK5lwtbncug84d4ero33v3cfxvl` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `password_reset_token`
--

LOCK TABLES `password_reset_token` WRITE;
/*!40000 ALTER TABLE `password_reset_token` DISABLE KEYS */;
INSERT INTO `password_reset_token` VALUES (5,'2021-05-31 17:32:17','7289ccda-10cb-4491-8a9b-58b6371cb95b',2),(6,'2021-06-01 22:01:29','1543cfff-0ea2-43e7-9108-6b6414937f36',2),(7,'2021-06-02 18:45:53','06255a6a-4332-40ff-91f4-8eba46214a36',29),(8,'2021-06-03 17:14:36','856c6291-c60d-4846-a594-3e5e5abeba9d',2),(22,'2021-06-03 10:39:35','9796c4ce-18f6-4c76-8680-7f9fbec6f6b6',29),(52,'2021-06-02 00:40:17','fe610c95-15c9-4b39-b334-eb3ee51adf3c',48),(68,'2021-06-04 12:14:06','7d9bc2f9-fddf-4de7-a392-b18ec8d0a9e8',29);
/*!40000 ALTER TABLE `password_reset_token` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `role`
--

DROP TABLE IF EXISTS `role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `role` (
  `role_id` int NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`role_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `role`
--

LOCK TABLES `role` WRITE;
/*!40000 ALTER TABLE `role` DISABLE KEYS */;
INSERT INTO `role` VALUES (1,'ROLE_STUDENT');
/*!40000 ALTER TABLE `role` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `semester`
--

DROP TABLE IF EXISTS `semester`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `semester` (
  `id` bigint NOT NULL,
  `active` bit(1) NOT NULL,
  `name` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `semester`
--

LOCK TABLES `semester` WRITE;
/*!40000 ALTER TABLE `semester` DISABLE KEYS */;
INSERT INTO `semester` VALUES (1,_binary '\0','20201'),(2,_binary '','20202'),(3,_binary '\0','20203');
/*!40000 ALTER TABLE `semester` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `student`
--

DROP TABLE IF EXISTS `student`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `student` (
  `id` bigint NOT NULL,
  `code` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `major_id` bigint NOT NULL,
  `student_class_id` bigint NOT NULL,
  `user_id` bigint NOT NULL,
  `date_of_birth` varchar(255) DEFAULT NULL,
  `gender` varchar(255) DEFAULT NULL,
  `place_of_birth` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKcml1vvjs3bcqyxdcprjrjd2o0` (`major_id`),
  KEY `FKerf07pcq1qf4h6105lysj704j` (`student_class_id`),
  KEY `FKk5m148xqefonqw7bgnpm0snwj` (`user_id`),
  CONSTRAINT `FKcml1vvjs3bcqyxdcprjrjd2o0` FOREIGN KEY (`major_id`) REFERENCES `major` (`id`),
  CONSTRAINT `FKerf07pcq1qf4h6105lysj704j` FOREIGN KEY (`student_class_id`) REFERENCES `student_class` (`id`),
  CONSTRAINT `FKk5m148xqefonqw7bgnpm0snwj` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `student`
--

LOCK TABLES `student` WRITE;
/*!40000 ALTER TABLE `student` DISABLE KEYS */;
INSERT INTO `student` VALUES (1,'B17DCCN184','Hoàng Bảo Giang',1,1,2,'01-01-1999','Nam','Thái Bình'),(2,'B17DCCN123','Phạm Văn Đủ',3,3,29,'02-02-1999','Nam','Hà Nội');
/*!40000 ALTER TABLE `student` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `student_class`
--

DROP TABLE IF EXISTS `student_class`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `student_class` (
  `id` bigint NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `student_class`
--

LOCK TABLES `student_class` WRITE;
/*!40000 ALTER TABLE `student_class` DISABLE KEYS */;
INSERT INTO `student_class` VALUES (1,'D17CNPM2'),(2,'D17HTTT1'),(3,'D17KT1');
/*!40000 ALTER TABLE `student_class` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `student_register`
--

DROP TABLE IF EXISTS `student_register`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `student_register` (
  `id` bigint NOT NULL,
  `course_id` bigint NOT NULL,
  `student_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FKp6q35ojw2lgdwfa98dj8eqhb6` (`course_id`),
  KEY `FKeujue5kevmqqy2ix1naixewxq` (`student_id`),
  CONSTRAINT `FKeujue5kevmqqy2ix1naixewxq` FOREIGN KEY (`student_id`) REFERENCES `student` (`id`),
  CONSTRAINT `FKp6q35ojw2lgdwfa98dj8eqhb6` FOREIGN KEY (`course_id`) REFERENCES `course` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `student_register`
--

LOCK TABLES `student_register` WRITE;
/*!40000 ALTER TABLE `student_register` DISABLE KEYS */;
INSERT INTO `student_register` VALUES (1,1,1),(2,2,1),(3,3,1),(4,4,1),(5,5,1),(6,15,1),(7,6,2),(8,8,2),(9,9,2),(10,10,2),(11,11,2),(12,12,2),(13,13,2),(14,14,2),(15,15,2),(16,14,1);
/*!40000 ALTER TABLE `student_register` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `student_result`
--

DROP TABLE IF EXISTS `student_result`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `student_result` (
  `id` bigint NOT NULL,
  `average_mark` float NOT NULL,
  `mark1` float NOT NULL,
  `mark2` float NOT NULL,
  `mark3` float NOT NULL,
  `mark_to_char` varchar(255) DEFAULT NULL,
  `student_register_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FKnl2j0fsg86406pvt4oh3bp09a` (`student_register_id`),
  CONSTRAINT `FKnl2j0fsg86406pvt4oh3bp09a` FOREIGN KEY (`student_register_id`) REFERENCES `student_register` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `student_result`
--

LOCK TABLES `student_result` WRITE;
/*!40000 ALTER TABLE `student_result` DISABLE KEYS */;
INSERT INTO `student_result` VALUES (1,10,10,10,10,'A+',1),(2,9,9,9,9,'A+',2),(3,8,8,8,8,'B+',3),(4,6.5,6.5,6.5,6.5,'C+',4),(5,7,7,7,7,'B',5),(6,8.5,8.5,8.5,8.5,'A',6),(7,6,6,6,6,'C',7),(8,3,3,3,3,'F',9),(9,8,8,8,8,'B+',11),(10,4,4,4,4,'D',8),(11,10,10,10,10,'A+',10),(12,8,8,8,8,'B+',12),(13,9,9,9,9,'A+',13),(14,3,3,3,3,'F',14),(15,7,7,7,7,'B',15),(16,3,3,3,3,'F',16);
/*!40000 ALTER TABLE `student_result` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `subject`
--

DROP TABLE IF EXISTS `subject`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `subject` (
  `id` bigint NOT NULL,
  `code` varchar(255) DEFAULT NULL,
  `mark1percent` float NOT NULL,
  `mark2percent` float NOT NULL,
  `mark3percent` float NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `number_of_credits` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `subject`
--

LOCK TABLES `subject` WRITE;
/*!40000 ALTER TABLE `subject` DISABLE KEYS */;
INSERT INTO `subject` VALUES (1,'INT1',0.1,0.2,0.7,'Lập trình mạng',3),(2,'INT2',0.1,0.3,0.6,'Lập trình web',3),(3,'INT3',0.1,0.4,0.5,'Kỹ thuật số',3),(4,'INT4',0.1,0.2,0.7,'Mạng máy tính',3),(5,'INT1449',0.2,0.2,0.6,'Phát triển ứng dụng cho các thiết bị di động',2),(6,'INT1448',0.1,0.2,0.7,'Phát triển phần mềm hướng dịch vụ',3),(7,'INT1461',0.2,0.2,0.6,'Xây dựng các hệ thống nhúng',3),(8,'INT1427',0.1,0.2,0.7,'Kiến trúc và thiết kế phần mềm',4),(9,'INT1416',0.1,0.3,0.6,'Đảm bảo chất lượng phần mềm',3),(10,'BAS1',0.2,0.3,0.5,'Tư tưởng Hồ Chí Minh',3);
/*!40000 ALTER TABLE `subject` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user` (
  `id` bigint NOT NULL,
  `password` varchar(255) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  `email` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (2,'$2y$12$GnT861aYKO67hzNQ.hbzY.RZuTIBWyBpB0s0ovgShuFLLMjiRcEH6','B17DCCN184','hbgiang2019@gmail.com'),(29,'$2a$12$i8AYxMDqvclGau4oNoFFIOb42INBuAoKVxBIY2OMPGxA9o9fTA72G','B17DCCN123','hoanggiang.dvt2019@gmail.com'),(48,'$2a$12$i8AYxMDqvclGau4oNoFFIOkmTPwRTqKfU5Q3/c4u18JWbsQ2P0QaS','B17DCCN100','test@gmail.com'),(50,'$2y$12$GnT861aYKO67hzNQ.hbzY.RZuTIBWyBpB0s0ovgShuFLLMjiRcEH6','B17DCCN101','test1@gmail.com');
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_role`
--

DROP TABLE IF EXISTS `user_role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_role` (
  `user_role_id` bigint NOT NULL,
  `role_id` int NOT NULL,
  `user_id` bigint NOT NULL,
  PRIMARY KEY (`user_role_id`),
  KEY `FKa68196081fvovjhkek5m97n3y` (`role_id`),
  KEY `FK859n2jvi8ivhui0rl0esws6o` (`user_id`),
  CONSTRAINT `FK859n2jvi8ivhui0rl0esws6o` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`),
  CONSTRAINT `FKa68196081fvovjhkek5m97n3y` FOREIGN KEY (`role_id`) REFERENCES `role` (`role_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_role`
--

LOCK TABLES `user_role` WRITE;
/*!40000 ALTER TABLE `user_role` DISABLE KEYS */;
INSERT INTO `user_role` VALUES (3,1,2),(30,1,29),(49,1,48),(51,1,50);
/*!40000 ALTER TABLE `user_role` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-06-03 23:13:28
