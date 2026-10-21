-- MySQL dump 10.13  Distrib 8.0.30, for Win64 (x86_64)
--
-- Host: localhost    Database: cmspringbootdb
-- ------------------------------------------------------
-- Server version	8.0.30

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
-- Table structure for table `c_branch`
--

DROP TABLE IF EXISTS `c_branch`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `c_branch` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `created_by` varchar(255) DEFAULT NULL,
  `created_datetime` datetime(6) DEFAULT NULL,
  `modified_by` varchar(255) DEFAULT NULL,
  `modified_datetime` datetime(6) DEFAULT NULL,
  `city` varchar(255) DEFAULT NULL,
  `contact` varchar(255) DEFAULT NULL,
  `country` varchar(255) DEFAULT NULL,
  `state` varchar(255) DEFAULT NULL,
  `street` varchar(255) DEFAULT NULL,
  `zipcode` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `c_branch`
--

LOCK TABLES `c_branch` WRITE;
/*!40000 ALTER TABLE `c_branch` DISABLE KEYS */;
INSERT INTO `c_branch` VALUES (1,'Admin@admin.com','2023-06-11 17:36:39.869000','Admin@admin.com','2023-06-11 17:36:39.869000','Pune','8888888888','India','Maharashtra','Bailey Junctions','49832'),(2,'Admin@admin.com','2023-06-11 17:37:53.118000','Admin@admin.com','2023-06-11 17:37:53.118000','Mumbai','9999999999','India','Maharashtra','A B C','44523');
/*!40000 ALTER TABLE `c_branch` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `c_branchstaff`
--

DROP TABLE IF EXISTS `c_branchstaff`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `c_branchstaff` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `created_by` varchar(255) DEFAULT NULL,
  `created_datetime` datetime(6) DEFAULT NULL,
  `modified_by` varchar(255) DEFAULT NULL,
  `modified_datetime` datetime(6) DEFAULT NULL,
  `barnch_id` bigint DEFAULT NULL,
  `user_id` bigint DEFAULT NULL,
  `branch` bigint DEFAULT NULL,
  `user` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKmhoum80o5sjntg06ax83aby2w` (`branch`),
  KEY `FKk5mtjaggts5knfgec85hq6rs1` (`user`),
  CONSTRAINT `FKk5mtjaggts5knfgec85hq6rs1` FOREIGN KEY (`user`) REFERENCES `c_user` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FKmhoum80o5sjntg06ax83aby2w` FOREIGN KEY (`branch`) REFERENCES `c_branch` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `c_branchstaff`
--

LOCK TABLES `c_branchstaff` WRITE;
/*!40000 ALTER TABLE `c_branchstaff` DISABLE KEYS */;
INSERT INTO `c_branchstaff` VALUES (1,NULL,NULL,NULL,NULL,1,2,1,2);
/*!40000 ALTER TABLE `c_branchstaff` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `c_cost`
--

DROP TABLE IF EXISTS `c_cost`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `c_cost` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `created_by` varchar(255) DEFAULT NULL,
  `created_datetime` datetime(6) DEFAULT NULL,
  `modified_by` varchar(255) DEFAULT NULL,
  `modified_datetime` datetime(6) DEFAULT NULL,
  `cost_1` bigint DEFAULT NULL,
  `cost_2` bigint DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `c_cost`
--

LOCK TABLES `c_cost` WRITE;
/*!40000 ALTER TABLE `c_cost` DISABLE KEYS */;
INSERT INTO `c_cost` VALUES (1,'Admin@admin.com','2023-06-11 17:34:45.001000','Admin@admin.com','2023-06-11 17:34:45.001000',2,5);
/*!40000 ALTER TABLE `c_cost` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `c_courier`
--

DROP TABLE IF EXISTS `c_courier`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `c_courier` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `created_by` varchar(255) DEFAULT NULL,
  `created_datetime` datetime(6) DEFAULT NULL,
  `modified_by` varchar(255) DEFAULT NULL,
  `modified_datetime` datetime(6) DEFAULT NULL,
  `branch_id` bigint DEFAULT NULL,
  `receiver_address` varchar(255) DEFAULT NULL,
  `receiver_name` varchar(255) DEFAULT NULL,
  `receiver_number` varchar(255) DEFAULT NULL,
  `sender_address` varchar(255) DEFAULT NULL,
  `sender_name` varchar(255) DEFAULT NULL,
  `sender_number` varchar(255) DEFAULT NULL,
  `staff_id` bigint DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `total_cost` varchar(255) DEFAULT NULL,
  `tracking_number` bigint DEFAULT NULL,
  `weight` varchar(255) DEFAULT NULL,
  `branch` bigint DEFAULT NULL,
  `staff` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKtj3jm902ux3gqssq0yvqr37p4` (`staff`),
  KEY `FK2ka4c0onmh178gk42h34jwq5u` (`branch`),
  CONSTRAINT `FK2ka4c0onmh178gk42h34jwq5u` FOREIGN KEY (`branch`) REFERENCES `c_branch` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FKtj3jm902ux3gqssq0yvqr37p4` FOREIGN KEY (`staff`) REFERENCES `c_user` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `c_courier`
--

LOCK TABLES `c_courier` WRITE;
/*!40000 ALTER TABLE `c_courier` DISABLE KEYS */;
INSERT INTO `c_courier` VALUES (1,'john@gmail.com','2023-06-11 17:41:23.794000','john@gmail.com','2023-06-11 17:41:23.794000',1,'pqr','Joe','8787878787','abc','John','8589688569',2,'Out for Delivery','100',10000,'50',1,2),(2,'john@gmail.com','2023-06-11 17:49:03.693000','john@gmail.com','2023-06-11 17:49:03.693000',2,'test','Root','8585859658','abc','John','8585859668',2,'Item Accepted','750',10001,'150',2,2),(3,'john@gmail.com','2023-06-11 17:53:03.184000','john@gmail.com','2023-06-11 17:53:03.184000',1,'test','Test User','8585858589','test','Testing','7587587587',2,'Ready to pick up','3000',10002,'600',1,2);
/*!40000 ALTER TABLE `c_courier` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `c_user`
--

DROP TABLE IF EXISTS `c_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `c_user` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `created_by` varchar(255) DEFAULT NULL,
  `created_datetime` datetime(6) DEFAULT NULL,
  `modified_by` varchar(255) DEFAULT NULL,
  `modified_datetime` datetime(6) DEFAULT NULL,
  `dob` varchar(255) DEFAULT NULL,
  `first_name` varchar(255) DEFAULT NULL,
  `gender` varchar(255) DEFAULT NULL,
  `last_name` varchar(255) DEFAULT NULL,
  `login` varchar(255) DEFAULT NULL,
  `mobile_no` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `role_id` bigint DEFAULT NULL,
  `role_name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `c_user`
--

LOCK TABLES `c_user` WRITE;
/*!40000 ALTER TABLE `c_user` DISABLE KEYS */;
INSERT INTO `c_user` VALUES (1,'root','2023-06-11 17:32:11.679000','root','2023-06-11 17:32:11.679000','12/05/2002','Admin','Male','Admin','Admin@admin.com','888888888','Admin@123',1,'ADMIN'),(2,'Admin@admin.com','2023-06-11 17:39:01.071000','Admin@admin.com','2023-06-11 17:39:01.071000','01/20/1989','Demo','Male','Staff','staffone@gmail.com','8585858585','Demo@123',3,'STAFF'),(3,'root','2023-06-11 17:40:16.780000','root','2023-06-11 17:40:16.780000','01/07/1993','John','Male','Doe','john@gmail.com','8998989898','John@123',2,'USER');
/*!40000 ALTER TABLE `c_user` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-06-11 17:58:12
