-- MySQL dump 10.13  Distrib 5.5.39, for Win32 (x86)
--
-- Host: localhost    Database: db_sisec
-- ------------------------------------------------------
-- Server version	5.5.39

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
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
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `s_usuario` (
  `usuario_id` int(10) NOT NULL AUTO_INCREMENT,
  `u_id_persona` int(10) DEFAULT NULL,
  `u_nivel` int(10) DEFAULT NULL,
  `u_login` varchar(20) DEFAULT NULL,
  `u_contrasenia` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`usuario_id`),
  KEY `fk_id_persona` (`u_id_persona`),
  CONSTRAINT `s_usuario_ibfk_1` FOREIGN KEY (`u_id_persona`) REFERENCES `t_persona` (`persona_codigo`) ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `s_usuario`
--

LOCK TABLES `s_usuario` WRITE;
/*!40000 ALTER TABLE `s_usuario` DISABLE KEYS */;
INSERT INTO `s_usuario` VALUES (1,16,100,'sisec','2'),(6,1,1,'sisec','3'),(7,19,1,'erwin','666'),(8,28,1,'MECHI','123'),(9,34,1,'Nadja','123'),(10,5,1,'jayala','1');
/*!40000 ALTER TABLE `s_usuario` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_persona`
--

DROP TABLE IF EXISTS `t_persona`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_persona` (
  `persona_codigo` int(11) NOT NULL AUTO_INCREMENT,
  `persona_primer_nombre` varchar(50) NOT NULL,
  `persona_segundo_nombre` varchar(50) DEFAULT NULL,
  `persona_primer_apellido` varchar(50) NOT NULL,
  `persona_segundo_apellido` varchar(50) DEFAULT NULL,
  `persona_ci` char(10) DEFAULT NULL,
  `titulo` char(100) DEFAULT NULL,
  `p_fecha_nacimiento` datetime DEFAULT NULL,
  PRIMARY KEY (`persona_codigo`)
) ENGINE=InnoDB AUTO_INCREMENT=40 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_persona`
--

LOCK TABLES `t_persona` WRITE;
/*!40000 ALTER TABLE `t_persona` DISABLE KEYS */;
INSERT INTO `t_persona` VALUES (1,'teresa',NULL,'Becerra','F.','457698lp','Lic','1970-03-24 00:00:00'),(2,'Jorge',NULL,'Miranda','Rios',NULL,NULL,NULL),(3,'Carlos','Rafael','Ledezma','Jordan',NULL,NULL,NULL),(4,'DOROTHY',NULL,'TORRICO ','ANGULO',NULL,NULL,'1970-12-01 22:00:24'),(5,'JUAN ',NULL,'AYALA ','FUENTES','123456',NULL,NULL),(6,'JUAN',NULL,' LAIME ','RICALDEZ','987612',NULL,NULL),(7,'MARIO','FERNANDO',' COSIO ','O.',NULL,NULL,NULL),(8,'MARIO ','ENRIQUE ','SEVERICH','BUSTAMENTE',NULL,'Ing.',NULL),(9,'JOSE',' NELSON ','ROJAS ','ANGULO',NULL,NULL,NULL),(10,'ROBERTO',NULL,' JIMENEZ ','FERRUFINO',NULL,NULL,NULL),(11,'WILSON',NULL,' PONCE ','MONTERO',NULL,NULL,NULL),(13,'raul',NULL,'sanchez',NULL,NULL,'ing.',NULL),(14,'Sabino ',NULL,'Arnez ','Camacho',NULL,NULL,NULL),(15,'Norman  ',NULL,'Juanes','Sanchez',NULL,'Ing.',NULL),(16,'sisec',NULL,'',NULL,'123456lp','ing.','2013-11-01 00:00:00'),(17,'JUAN','MANUEL','BARRIENTOS',NULL,NULL,'Ing.',NULL),(18,'ESTANISLAO',NULL,'ALIAGA','FLORES','471139 1H','Ing.',NULL),(19,'ERWIN','SERGEI','VON BORRIES','DELGADILLO','4829493 LP','Lic','1981-05-05 00:00:00'),(20,'JUAN','CARLOS','CORONADO',NULL,NULL,'Ing.',NULL),(21,'ARIEL',NULL,'ZEBALLOS',NULL,NULL,'Ing.',NULL),(22,'JUAN','PABLO','DIAZ',NULL,NULL,'Ing.',NULL),(23,'CARMELO',NULL,'VALDA',NULL,NULL,'Ing.',NULL),(24,'ORLANDO',NULL,'REYES',NULL,NULL,'Ing.',NULL),(25,'jose',NULL,'mariaca',NULL,NULL,NULL,NULL),(26,'pablo',NULL,'palacios',NULL,NULL,NULL,NULL),(27,'pablo',NULL,'badani',NULL,NULL,NULL,NULL),(28,'MERCEDES',NULL,'LOAYZA','MOLINA','147212','Lic',NULL),(29,'FERNANDO',NULL,'GIL',NULL,NULL,'Ing.',NULL),(30,'RODMY',NULL,'ALANEZ','MEDINA',NULL,NULL,NULL),(31,'MAURICIO',NULL,'ROJAS','QUIROZ',NULL,NULL,NULL),(32,'WALTER',NULL,'ZULETA',NULL,NULL,NULL,NULL),(33,'Monica',NULL,'Coria','Martinez',NULL,NULL,NULL),(34,'Nadja','Carmen','Peña','Chumacero',NULL,NULL,NULL),(35,'RONALD',NULL,'OVANDO',NULL,NULL,NULL,NULL),(36,'EDWIN',NULL,'MERCADO',NULL,NULL,NULL,NULL),(37,'TICONA',NULL,'W',NULL,NULL,NULL,NULL),(38,'OMAR',NULL,'FERREIRA',NULL,NULL,NULL,NULL),(39,'Ivan',NULL,'Pinto',NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `t_persona` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary table structure for view `v_persona`
--

DROP TABLE IF EXISTS `v_persona`;
/*!50001 DROP VIEW IF EXISTS `v_persona`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `v_persona` (
  `persona_codigo` tinyint NOT NULL,
  `nombres` tinyint NOT NULL,
  `ci` tinyint NOT NULL,
  `fecha_nacimiento` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `v_usuario`
--

DROP TABLE IF EXISTS `v_usuario`;
/*!50001 DROP VIEW IF EXISTS `v_usuario`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `v_usuario` (
  `usuario_id` tinyint NOT NULL,
  `u_nivel` tinyint NOT NULL,
  `u_login` tinyint NOT NULL,
  `nombres` tinyint NOT NULL,
  `ci` tinyint NOT NULL
) ENGINE=MyISAM */;
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
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `fn_login`(str_login VARCHAR(50),str_contrasenia VARCHAR(50)) RETURNS int(11)
BEGIN


DECLARE int_result INT;
DECLARE int_count INT;
DECLARE int_count_login INT;
DECLARE int_count_contras INT;


	/*

		select fn_login('soletud','1')

	*/

	SELECT usuario_id , count(*) INTO int_result , int_count
	FROM 	s_usuario  
	WHERE u_login = str_login AND u_contrasenia = str_contrasenia;

	IF int_count=0  THEN		

		SELECT count(*) INTO int_count
		FROM 	s_usuario  
		WHERE u_login = str_login  ;

		IF int_count>=1 THEN

			SELECT -1 INTO int_result ;

		ELSE

			SELECT count(*) INTO int_count
			FROM 	s_usuario  
			WHERE u_contrasenia = str_contrasenia;  	


			IF int_count>=1 THEN

				SELECT -2 INTO int_result ;

			ELSE

				SELECT -3 INTO int_result ;

			END IF;

		END IF;

	END IF;

	RETURN int_result ;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Final view structure for view `v_persona`
--

/*!50001 DROP TABLE IF EXISTS `v_persona`*/;
/*!50001 DROP VIEW IF EXISTS `v_persona`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `v_persona` AS select `p`.`persona_codigo` AS `persona_codigo`,trim(ucase(concat_ws(' ',`p`.`persona_primer_apellido`,trim(coalesce(`p`.`persona_segundo_apellido`,'')),trim(`p`.`persona_primer_nombre`),trim(coalesce(`p`.`persona_segundo_nombre`,''))))) AS `nombres`,coalesce(`p`.`persona_ci`,'') AS `ci`,coalesce(convert(date_format(`p`.`p_fecha_nacimiento`,'%d-%m-%Y') using utf8mb4),'') AS `fecha_nacimiento` from `t_persona` `p` where (`p`.`persona_codigo` <> 16) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `v_usuario`
--

/*!50001 DROP TABLE IF EXISTS `v_usuario`*/;
/*!50001 DROP VIEW IF EXISTS `v_usuario`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
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

-- Dump completed on 2024-06-14 18:38:19
