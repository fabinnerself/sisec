-- MySQL dump 10.13  Distrib 8.0.37, for Linux (x86_64)
--
-- Host: localhost    Database: db_sisec
-- ------------------------------------------------------
-- Server version	8.0.37-0ubuntu0.20.04.3

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
-- Table structure for table `s_usuario`
--

DROP TABLE IF EXISTS `s_usuario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `s_usuario` (
  `usuario_id` int NOT NULL AUTO_INCREMENT,
  `u_id_persona` int DEFAULT NULL,
  `u_nivel` int DEFAULT NULL,
  `u_login` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci DEFAULT NULL,
  `u_contrasenia` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci DEFAULT NULL,
  `u_id_usuario` int DEFAULT NULL,
  `u_fecha_add` datetime DEFAULT NULL,
  `u_id_usuario_mod` int DEFAULT NULL,
  `u_fecha_mod` datetime DEFAULT NULL,
  PRIMARY KEY (`usuario_id`),
  KEY `fk_id_persona` (`u_id_persona`),
  CONSTRAINT `s_usuario_ibfk_1` FOREIGN KEY (`u_id_persona`) REFERENCES `t_persona` (`persona_codigo`) ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `s_usuario`
--

LOCK TABLES `s_usuario` WRITE;
/*!40000 ALTER TABLE `s_usuario` DISABLE KEYS */;
INSERT INTO `s_usuario` VALUES (1,16,100,'sisec','2',NULL,NULL,NULL,NULL),(6,1,1,'sisec','3',NULL,NULL,NULL,NULL),(7,19,1,'erwin','666',NULL,NULL,NULL,NULL),(8,28,1,'MECHI','123',NULL,NULL,NULL,NULL),(9,34,1,'Nadja','123',NULL,NULL,NULL,NULL),(16,103,1,'user1','1',NULL,NULL,NULL,NULL),(17,14,1,'user4','9',NULL,NULL,NULL,NULL),(18,107,1,'fmedina','1',NULL,NULL,NULL,NULL),(19,103,1,'user3','1',NULL,NULL,NULL,NULL),(20,104,1,'user10','1',18,NULL,NULL,NULL),(21,1,1,'log1','1',1,'2024-06-26 01:26:02',18,'2024-06-26 01:38:17');
/*!40000 ALTER TABLE `s_usuario` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_persona`
--

DROP TABLE IF EXISTS `t_persona`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_persona` (
  `persona_codigo` int NOT NULL AUTO_INCREMENT,
  `persona_primer_nombre` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci NOT NULL,
  `persona_segundo_nombre` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci DEFAULT NULL,
  `persona_primer_apellido` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci NOT NULL,
  `persona_segundo_apellido` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci DEFAULT NULL,
  `persona_ci` char(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci DEFAULT NULL,
  `titulo` char(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci DEFAULT NULL,
  `p_fecha_nacimiento` datetime DEFAULT NULL,
  `p_user_add` int DEFAULT NULL,
  `p_fecha_add` datetime DEFAULT NULL,
  `p_user_mod` int DEFAULT NULL,
  `p_fecha_mod` datetime DEFAULT NULL,
  PRIMARY KEY (`persona_codigo`)
) ENGINE=InnoDB AUTO_INCREMENT=109 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_persona`
--

LOCK TABLES `t_persona` WRITE;
/*!40000 ALTER TABLE `t_persona` DISABLE KEYS */;
INSERT INTO `t_persona` VALUES (1,'teresa',NULL,'Becerra','F.','457698lp','Lic','1970-03-24 00:00:00',NULL,NULL,NULL,NULL),(2,'Jorge',NULL,'Miranda','Rios',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(3,'Carlos','Rafael','Ledezma','Jordan',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(4,'DOROTHY',NULL,'TORRICO ','ANGULO',NULL,NULL,'1970-12-01 22:00:24',NULL,NULL,NULL,NULL),(5,'JUAN ','','AYALA ','FUENTES','123456','','2024-06-03 00:00:00',NULL,NULL,NULL,NULL),(6,'JUAN',NULL,' LAIME ','RICALDEZ','987612',NULL,NULL,NULL,NULL,NULL,NULL),(7,'MARIO','FERNANDO',' COSIO ','O.',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(8,'MARIO ','ENRIQUE ','SEVERICH','BUSTAMENTE',NULL,'Ing.',NULL,NULL,NULL,NULL,NULL),(9,'JOSE',' NELSON ','ROJAS ','ANGULO',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(10,'ROBERTO',NULL,' JIMENEZ ','FERRUFINO',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(11,'WILSON',NULL,' PONCE ','MONTERO',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(13,'raul',NULL,'sanchez',NULL,NULL,'ing.',NULL,NULL,NULL,NULL,NULL),(14,'Sabino ',NULL,'Arnez ','Camacho',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(15,'Norman  ',NULL,'Juanes','Sanchez',NULL,'Ing.',NULL,NULL,NULL,NULL,NULL),(16,'sisec',NULL,'',NULL,'123456lp','ing.','2013-11-01 00:00:00',NULL,NULL,NULL,NULL),(17,'JUAN','MANUEL','BARRIENTOS',NULL,NULL,'Ing.',NULL,NULL,NULL,NULL,NULL),(18,'ESTANISLAO',NULL,'ALIAGA','FLORES','471139 1H','Ing.',NULL,NULL,NULL,NULL,NULL),(19,'ERWIN','SERGEI','VON BORRIES','DELGADILLO','4829493 LP','Lic','1981-05-05 00:00:00',NULL,NULL,NULL,NULL),(20,'JUAN','CARLOS','CORONADO',NULL,NULL,'Ing.',NULL,NULL,NULL,NULL,NULL),(21,'ARIEL',NULL,'ZEBALLOS',NULL,NULL,'Ing.',NULL,NULL,NULL,NULL,NULL),(22,'JUAN','PABLO','DIAZ',NULL,NULL,'Ing.',NULL,NULL,NULL,NULL,NULL),(23,'CARMELO',NULL,'VALDA',NULL,NULL,'Ing.',NULL,NULL,NULL,NULL,NULL),(24,'ORLANDO',NULL,'REYES',NULL,NULL,'Ing.',NULL,NULL,NULL,NULL,NULL),(25,'jose',NULL,'mariaca',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(26,'pablo',NULL,'palacios',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(27,'pablo',NULL,'badani',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(28,'MERCEDES',NULL,'LOAYZA','MOLINA','147212','Lic',NULL,NULL,NULL,NULL,NULL),(29,'FERNANDO',NULL,'GIL',NULL,NULL,'Ing.',NULL,NULL,NULL,NULL,NULL),(30,'RODMY',NULL,'ALANEZ','MEDINA',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(31,'MAURICIO',NULL,'ROJAS','QUIROZ',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(32,'WALTER',NULL,'ZULETA',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(33,'Monica',NULL,'Coria','Martinez',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(34,'Nadja','Carmen','Peña','Chumacero',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(35,'RONALD',NULL,'OVANDO',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(36,'EDWIN',NULL,'MERCADO',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(37,'TICONA','','Waltico','','','','2022-06-01 00:00:00',NULL,NULL,NULL,NULL),(38,'OMAR','','FERREIRA','','','Lic','2024-06-01 00:00:00',NULL,NULL,NULL,NULL),(99,'iñigo','','walters','','','','2024-06-24 00:00:00',NULL,NULL,NULL,NULL),(100,'aa','','b','','','Ing.','2024-06-24 00:00:00',NULL,NULL,NULL,NULL),(101,'bb','','aa','','','','2024-06-07 00:00:00',NULL,NULL,NULL,NULL),(102,'aa','erty','b','gfg','451278','Ing.','2024-06-08 00:00:00',NULL,NULL,NULL,NULL),(103,' bb','','aa','','','','2024-01-03 00:00:00',NULL,NULL,NULL,NULL),(104,'cc','','aa','','','','2024-02-01 00:00:00',NULL,NULL,NULL,NULL),(105,'aa','','ff','','12','Ing.','2024-06-03 00:00:00',NULL,NULL,NULL,NULL),(106,'juan','','mendoza','','451278','Ing.','2024-06-01 00:00:00',NULL,NULL,NULL,NULL),(107,'favian','','medina','','3499808','Lic','1973-01-20 00:00:00',NULL,NULL,NULL,NULL),(108,'aragorn','','barbol','','123','','2024-06-03 00:00:00',18,'2024-06-26 01:46:13',18,'2024-06-26 02:04:03');
/*!40000 ALTER TABLE `t_persona` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` int NOT NULL AUTO_INCREMENT,
  `firstname` varchar(50) DEFAULT NULL,
  `lastname` varchar(50) DEFAULT NULL,
  `phone` varchar(200) DEFAULT NULL,
  `email` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (4,'first name2','last name2','(000)000-1111','name2@gmail.com'),(5,'primer name3','ultimo lname3','(000)000-2222','name3@gmail.com'),(7,'fname4','lname4','(000)000-0000','name4@gmail.com'),(8,'fname5','lname5','(000)000-0000','name5@gmail.com'),(9,'fname6','lname6','(000)000-0000','name6@gmail.com'),(10,'fname7','lname7','(000)000-0000','name7@gmail.com'),(11,'fname8','lname8','(000)000-0000','name8@gmail.com'),(12,'fname90','lname90','(000)000-0090','name9@gmail.com'),(13,'fname10','lname10','(000)000-0000','name10@gmail.com');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `v_persona`
--

DROP TABLE IF EXISTS `v_persona`;
/*!50001 DROP VIEW IF EXISTS `v_persona`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `v_persona` AS SELECT 
 1 AS `persona_codigo`,
 1 AS `nombres`,
 1 AS `ci`,
 1 AS `fecha_nacimiento`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `v_usuario`
--

DROP TABLE IF EXISTS `v_usuario`;
/*!50001 DROP VIEW IF EXISTS `v_usuario`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `v_usuario` AS SELECT 
 1 AS `usuario_id`,
 1 AS `u_nivel`,
 1 AS `u_login`,
 1 AS `nombres`,
 1 AS `ci`*/;
SET character_set_client = @saved_cs_client;

--
-- Dumping routines for database 'db_sisec'
--
/*!50003 DROP FUNCTION IF EXISTS `fn_login` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `fn_login`(
	`str_login` VARCHAR(50),
	`str_contrasenia` VARCHAR(50)
) RETURNS int
    READS SQL DATA
BEGIN
    DECLARE int_result INT;
    DECLARE int_count INT;

    /*

    select fn_login('soletud','1')

    */

    SELECT count(*) INTO  int_count
    FROM s_usuario
    WHERE u_login = str_login AND u_contrasenia = str_contrasenia;

    IF int_count = 0 THEN
        SELECT count(*) INTO int_count
        FROM s_usuario
        WHERE u_login = str_login;

        IF int_count >= 1 THEN
            SET int_result = -1;
        ELSE
            SELECT count(*) INTO int_count
            FROM s_usuario
            WHERE u_login = str_login and u_contrasenia = str_contrasenia;

            IF int_count >= 1 THEN
                SET int_result = -2;
            ELSE
                SET int_result = -3;
            END IF;
        END IF;
	else 
		SELECT usuario_id INTO  int_result
		FROM s_usuario
		WHERE u_login = str_login AND u_contrasenia = str_contrasenia;

    END IF;

    RETURN int_result;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Final view structure for view `v_persona`
--

/*!50001 DROP VIEW IF EXISTS `v_persona`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`favian`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `v_persona` AS select `p`.`persona_codigo` AS `persona_codigo`,trim(upper(concat_ws(' ',`p`.`persona_primer_apellido`,trim(coalesce(`p`.`persona_segundo_apellido`,'')),trim(`p`.`persona_primer_nombre`),trim(coalesce(`p`.`persona_segundo_nombre`,''))))) AS `nombres`,coalesce(`p`.`persona_ci`,'') AS `ci`,coalesce(date_format(`p`.`p_fecha_nacimiento`,'%d-%m-%Y'),'') AS `fecha_nacimiento` from `t_persona` `p` where (`p`.`persona_codigo` <> 16) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `v_usuario`
--

/*!50001 DROP VIEW IF EXISTS `v_usuario`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`favian`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `v_usuario` AS select `s_usuario`.`usuario_id` AS `usuario_id`,`s_usuario`.`u_nivel` AS `u_nivel`,`s_usuario`.`u_login` AS `u_login`,`v_persona`.`nombres` AS `nombres`,`v_persona`.`ci` AS `ci` from (`s_usuario` join `v_persona` on((`s_usuario`.`u_id_persona` = `v_persona`.`persona_codigo`))) */;
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

-- Dump completed on 2024-06-26  2:31:27
