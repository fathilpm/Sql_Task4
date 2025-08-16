-- MySQL dump 10.13  Distrib 8.0.43, for Win64 (x86_64)
--
-- Host: localhost    Database: school
-- ------------------------------------------------------
-- Server version	8.0.43

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `courses`
--

DROP TABLE IF EXISTS `courses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `courses` (
  `course_name` varchar(50) NOT NULL,
  `teacher` varchar(100) DEFAULT NULL,
  `credits` int DEFAULT NULL,
  PRIMARY KEY (`course_name`),
  KEY `idx_teacher` (`teacher`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `courses`
--

LOCK TABLES `courses` WRITE;
/*!40000 ALTER TABLE `courses` DISABLE KEYS */;
INSERT INTO `courses` VALUES ('Computer Science','Mr. Arvind Kumar',4),('English','Mrs. Sunita Mehta',3),('History','Ms. Anjali Sharma',3),('Mathematics','Dr. Neha Kapoor',4),('Science','Mr. Rajesh Verma',4);
/*!40000 ALTER TABLE `courses` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `science_students`
--

DROP TABLE IF EXISTS `science_students`;
/*!50001 DROP VIEW IF EXISTS `science_students`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `science_students` AS SELECT 
 1 AS `student_id`,
 1 AS `full_name`,
 1 AS `gender`,
 1 AS `age`,
 1 AS `course`,
 1 AS `grade`,
 1 AS `email`,
 1 AS `phone`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `students`
--

DROP TABLE IF EXISTS `students`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `students` (
  `student_id` int NOT NULL,
  `full_name` varchar(100) DEFAULT NULL,
  `gender` varchar(10) DEFAULT NULL,
  `age` int DEFAULT NULL,
  `course` varchar(50) DEFAULT NULL,
  `grade` char(1) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`student_id`),
  KEY `idx_course` (`course`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `students`
--

LOCK TABLES `students` WRITE;
/*!40000 ALTER TABLE `students` DISABLE KEYS */;
INSERT INTO `students` VALUES (1,'Krishna Mehta','Male',16,'English','B','krishna.mehta@yahoo.com','+91-8177831854'),(2,'Aarav Patel','Male',18,'Science','C','aarav.patel@outlook.com','+91-8983485629'),(3,'Vivaan Khan','Male',17,'English','D','vivaan.khan@yahoo.com','+91-7164087355'),(4,'Vanya Khan','Female',15,'English','B','vanya.khan@outlook.com','+91-9503320644'),(5,'Sai Verma','Male',18,'Science','A','sai.verma@outlook.com','+91-9535536930'),(6,'Rohan Gupta','Male',18,'History','B','rohan.gupta@gmail.com','+91-8861856688'),(7,'Aadhya Khan','Female',17,'History','B','aadhya.khan@yahoo.com','+91-7437054326'),(8,'Myra Verma','Female',15,'English','A','myra.verma@gmail.com','+91-8830894777'),(9,'Vihaan Sharma','Female',15,'History','D','vihaan.sharma@gmail.com','+91-7945369740'),(10,'Krishna Patel','Female',18,'Science','A','krishna.patel@yahoo.com','+91-8871233560'),(11,'Ira Gupta','Female',18,'History','B','ira.gupta@outlook.com','+91-9496301553'),(12,'Pari Singh','Female',18,'English','B','pari.singh@outlook.com','+91-9806425226'),(13,'Krishna Gupta','Female',17,'Science','B','krishna.gupta@gmail.com','+91-9048240197'),(14,'Pari Verma','Female',16,'Science','D','pari.verma@yahoo.com','+91-7967485215'),(15,'Myra Singh','Male',18,'Computer Science','A','myra.singh@yahoo.com','+91-7983753505'),(16,'Ananya Mehta','Male',16,'Mathematics','B','ananya.mehta@outlook.com','+91-7045775795'),(17,'Vanya Singh','Female',17,'Mathematics','A','vanya.singh@yahoo.com','+91-8414287450'),(18,'Aadhya Khan','Female',16,'Mathematics','D','aadhya.khan@yahoo.com','+91-7690335753'),(19,'Sara Iyer','Male',17,'Computer Science','C','sara.iyer@yahoo.com','+91-7861927915'),(20,'Pari Gupta','Female',18,'History','C','pari.gupta@yahoo.com','+91-7943299172'),(21,'Vanya Reddy','Male',15,'History','B','vanya.reddy@yahoo.com','+91-8133622383'),(22,'Sai Nair','Male',18,'Computer Science','B','sai.nair@yahoo.com','+91-9385828012'),(23,'Vivaan Nair','Female',17,'English','A','vivaan.nair@gmail.com','+91-7553745318'),(24,'Pari Khan','Female',18,'Mathematics','B','pari.khan@outlook.com','+91-9496472514'),(25,'Arjun Sharma','Male',16,'Mathematics','B','arjun.sharma@gmail.com','+91-7324167896'),(26,'Aarav Sharma','Male',15,'Computer Science','C','aarav.sharma@gmail.com','+91-9211805837'),(27,'Aditya Reddy','Male',15,'History','A','aditya.reddy@outlook.com','+91-9684065963'),(28,'Arjun Reddy','Female',18,'English','C','arjun.reddy@gmail.com','+91-8831418129'),(29,'Myra Iyer','Female',17,'Science','A','myra.iyer@gmail.com','+91-8852673477'),(30,'Ishaan Gupta','Male',16,'Computer Science','B','ishaan.gupta@yahoo.com','+91-9220320266');
/*!40000 ALTER TABLE `students` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Final view structure for view `science_students`
--

/*!50001 DROP VIEW IF EXISTS `science_students`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = cp850 */;
/*!50001 SET character_set_results     = cp850 */;
/*!50001 SET collation_connection      = cp850_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `science_students` AS select `students`.`student_id` AS `student_id`,`students`.`full_name` AS `full_name`,`students`.`gender` AS `gender`,`students`.`age` AS `age`,`students`.`course` AS `course`,`students`.`grade` AS `grade`,`students`.`email` AS `email`,`students`.`phone` AS `phone` from `students` where (`students`.`course` = 'Science') */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-08-09 21:06:49
