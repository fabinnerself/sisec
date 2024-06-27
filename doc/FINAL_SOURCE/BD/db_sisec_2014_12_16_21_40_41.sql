-- MySQL dump 10.13  Distrib 5.5.8, for Win32 (x86)
--
-- Host: localhost    Database: db_sisec
-- ------------------------------------------------------
-- Server version	5.5.8

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
-- Table structure for table `p_aprobacion_componente`
--

DROP TABLE IF EXISTS `p_aprobacion_componente`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `p_aprobacion_componente` (
  `aprobacion_componente_id` int(10) NOT NULL AUTO_INCREMENT,
  `aprobacion_componente_descripcion` varchar(600) DEFAULT NULL,
  PRIMARY KEY (`aprobacion_componente_id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `p_aprobacion_componente`
--

LOCK TABLES `p_aprobacion_componente` WRITE;
/*!40000 ALTER TABLE `p_aprobacion_componente` DISABLE KEYS */;
INSERT INTO `p_aprobacion_componente` VALUES (1,'EI'),(2,'EI/TESA'),(3,'TESA'),(4,'Infraestructura'),(5,'Equipamiento'),(6,'Supervisión infraestr.'),(7,'Operación y mantenimiento'),(8,'Asistencia Técnica'),(9,'Desarrollo Comunitario'),(10,'Supervisión DESCOM/AT y otros');
/*!40000 ALTER TABLE `p_aprobacion_componente` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `p_aprobacion_resultado`
--

DROP TABLE IF EXISTS `p_aprobacion_resultado`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `p_aprobacion_resultado` (
  `aprobacion_resultado_id` int(11) NOT NULL AUTO_INCREMENT,
  `aprobacion_resultado_descripcion` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`aprobacion_resultado_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin2;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `p_aprobacion_resultado`
--

LOCK TABLES `p_aprobacion_resultado` WRITE;
/*!40000 ALTER TABLE `p_aprobacion_resultado` DISABLE KEYS */;
INSERT INTO `p_aprobacion_resultado` VALUES (1,'APROBADO'),(2,'REFORMULADO'),(3,'RECHAZO');
/*!40000 ALTER TABLE `p_aprobacion_resultado` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `p_ciclo_proyecto`
--

DROP TABLE IF EXISTS `p_ciclo_proyecto`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `p_ciclo_proyecto` (
  `ciclo_codigo` int(11) NOT NULL AUTO_INCREMENT,
  `ciclo_descripcion` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`ciclo_codigo`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin2;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `p_ciclo_proyecto`
--

LOCK TABLES `p_ciclo_proyecto` WRITE;
/*!40000 ALTER TABLE `p_ciclo_proyecto` DISABLE KEYS */;
INSERT INTO `p_ciclo_proyecto` VALUES (1,'REGISTRO'),(2,'EVALUACION'),(3,'APROBACION'),(4,'LICITACION-ADJUDICACION-CONTRA'),(5,'EJECUCION'),(6,'VISTA CAMPO'),(7,'CIERRE');
/*!40000 ALTER TABLE `p_ciclo_proyecto` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `p_documentos_verif_campo`
--

DROP TABLE IF EXISTS `p_documentos_verif_campo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `p_documentos_verif_campo` (
  `documentos_id` int(11) NOT NULL AUTO_INCREMENT,
  `documentos_descripcion` varchar(255) COLLATE utf8_spanish_ci DEFAULT NULL,
  PRIMARY KEY (`documentos_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `p_documentos_verif_campo`
--

LOCK TABLES `p_documentos_verif_campo` WRITE;
/*!40000 ALTER TABLE `p_documentos_verif_campo` DISABLE KEYS */;
INSERT INTO `p_documentos_verif_campo` VALUES (2,'Libro Comunal'),(3,'Especificaciones Técnicas'),(4,'Planos'),(5,'Personal'),(6,'Libro de Ordenes');
/*!40000 ALTER TABLE `p_documentos_verif_campo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `p_ejecucion_detalle`
--

DROP TABLE IF EXISTS `p_ejecucion_detalle`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `p_ejecucion_detalle` (
  `ejecucion_detalle_id` int(11) NOT NULL AUTO_INCREMENT,
  `ejecucion_detalle__descripcion` varchar(255) COLLATE utf8_spanish_ci DEFAULT NULL,
  `ejecucion_detalle__etapa` varchar(255) COLLATE utf8_spanish_ci DEFAULT NULL,
  `e_etiqueta` varchar(500) COLLATE utf8_spanish_ci DEFAULT NULL,
  `e_orden` int(3) DEFAULT NULL,
  PRIMARY KEY (`ejecucion_detalle_id`)
) ENGINE=InnoDB AUTO_INCREMENT=38 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `p_ejecucion_detalle`
--

LOCK TABLES `p_ejecucion_detalle` WRITE;
/*!40000 ALTER TABLE `p_ejecucion_detalle` DISABLE KEYS */;
INSERT INTO `p_ejecucion_detalle` VALUES (1,'Contrato de Construccion','Construccion','Numero de contrato:',1),(2,'Acta de Inicio Construccion','Construccion',NULL,2),(3,'Planillas de Pago del Contratista','Construccion','Nº Planillas: ',3),(4,'Orden de Cambio','Construccion','Nº Ordenes de Cambio:',4),(5,'Contrato Modificatorio','Construccion','Nº Contratos Mod:',5),(6,'Orden de Trabajo','Construccion','Nº Ordenes de Trabajo:',6),(7,'Ampliacion de Plazo','Construccion','Nº Ampliaciones Plazo:',7),(10,'Contrato de Supervision','Supervicion','Numero de contrato:',8),(11,'Acta de Inicio Supervision','Supervicion',NULL,9),(12,'Planillas de Pago de Supervision','Supervicion','Nº Planillas: ',10),(13,'Orden de Cambio Supervision','Supervicion','Nº Ordenes de Cambio:',11),(14,'Contrato Modificatorio Supervision','Supervicion','Nº Contratos Mod:',12),(15,'Actas de Recepcion Provisional','Supervicion',NULL,13),(16,'Actas de Recepcion Definitiva','Supervicion',NULL,14),(17,'Certificados de Calidad de materiales de construccion usados en Obra','Supervicion',NULL,15),(18,'Informes de aprobacion de ensayos de Laboratorios','Supervicion',NULL,16),(19,'Re Diseño del Proyecto (si corresponde)','Supervicion',NULL,17),(20,'Control de asistencia del supervisor en obra','Supervicion',NULL,18),(21,'Correspondecia emitida','Supervicion',NULL,19),(22,'Inicial','Informes Tecnicos',NULL,20),(23,'Especiales 1,2,…','Informes Tecnicos',NULL,NULL),(24,'Mensuales 1,2,…','Informes Tecnicos',NULL,NULL),(25,'Certificaciones 1,2,…','Informes Tecnicos',NULL,NULL),(26,'Cálculo y Dosificacion de Hormigones','Control Tecnico',NULL,NULL),(27,'Granulometrías de Agregados, P.U., P.E., Absorcion, etc.','Control Tecnico',NULL,NULL),(28,'Ensayos de Compresion','Control Tecnico',NULL,NULL),(29,'Acero Estructural Grado 60','Control Tecnico',NULL,NULL),(30,'Acero de Pretensado Grado 270','Control Tecnico',NULL,NULL),(31,'Otros','Control Tecnico',NULL,NULL),(32,'Inicial','Informes Ambientales',NULL,NULL),(33,'Especiales 1,2,…','Informes Ambientales',NULL,NULL),(34,'Mensuales 1,2,…','Informes Ambientales',NULL,NULL),(35,'Certificaciones 1,2,…','Informes Ambientales',NULL,NULL),(36,'Informe De Aprobación De Planilla Y Avance De Obras','Informes Ambientales',NULL,NULL),(37,'Informe de Seguimiento y Control Ambiental','Informes Ambientales',NULL,NULL);
/*!40000 ALTER TABLE `p_ejecucion_detalle` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `p_estado_etapa`
--

DROP TABLE IF EXISTS `p_estado_etapa`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `p_estado_etapa` (
  `estado_codigo` int(11) NOT NULL AUTO_INCREMENT,
  `estado_descripcion` varchar(100) DEFAULT NULL,
  `ee_descripcion_etapa` varchar(100) DEFAULT NULL,
  `ee_padre` int(11) DEFAULT NULL,
  `ee_tipo` int(2) DEFAULT NULL,
  PRIMARY KEY (`estado_codigo`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=latin2;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `p_estado_etapa`
--

LOCK TABLES `p_estado_etapa` WRITE;
/*!40000 ALTER TABLE `p_estado_etapa` DISABLE KEYS */;
INSERT INTO `p_estado_etapa` VALUES (1,'PRE-INVERSION',NULL,NULL,NULL),(2,'INVERSION',NULL,NULL,NULL),(3,NULL,'EI (SIMPLIFICADO)',1,NULL),(4,NULL,'APROBACION DE CDAP Y FIRMA DE CONVENIO',2,NULL),(5,NULL,'TESA',2,NULL),(6,NULL,'Idea de proyecto o carta solicitud justificando el proyecto',1,NULL),(7,NULL,'EI',2,NULL),(8,NULL,'Perfil',1,3),(9,NULL,'Dise?o Final',1,3);
/*!40000 ALTER TABLE `p_estado_etapa` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `p_evaluacion_docs_combo`
--

DROP TABLE IF EXISTS `p_evaluacion_docs_combo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `p_evaluacion_docs_combo` (
  `evaluacion_docs_id` int(11) NOT NULL AUTO_INCREMENT,
  `evaluacion_docs_seccion` varchar(255) DEFAULT NULL,
  `evaluacion_docs_descripcion` varchar(255) CHARACTER SET utf8 COLLATE utf8_spanish_ci DEFAULT NULL,
  `evaluacion_docs_orden` int(9) DEFAULT NULL,
  PRIMARY KEY (`evaluacion_docs_id`)
) ENGINE=InnoDB AUTO_INCREMENT=60 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `p_evaluacion_docs_combo`
--

LOCK TABLES `p_evaluacion_docs_combo` WRITE;
/*!40000 ALTER TABLE `p_evaluacion_docs_combo` DISABLE KEYS */;
INSERT INTO `p_evaluacion_docs_combo` VALUES (1,'SOLICITUD DE FINANCIAMIENTO Y CONTROL DE ELEGIBILIDAD','Solicitud de Financiamiento',1),(3,'SOLICITUD DE FINANCIAMIENTO Y CONTROL DE ELEGIBILIDAD','Memorándum de asignación al Profesional Técnico e informe técnico sobre la factibilidad del proyecto',4),(4,'SOLICITUD DE FINANCIAMIENTO Y CONTROL DE ELEGIBILIDAD','Certificados o Documentos  de propiedad de los terrenos',5),(6,'SOLICITUD DE FINANCIAMIENTO Y CONTROL DE ELEGIBILIDAD','Memoria del Diseño Final del proyecto',6),(7,'SOLICITUD DE FINANCIAMIENTO Y CONTROL DE ELEGIBILIDAD','4.1  Memoria descriptiva del proyecto',7),(8,'SOLICITUD DE FINANCIAMIENTO Y CONTROL DE ELEGIBILIDAD','4.2  Memoria de Cálculo',8),(9,'SOLICITUD DE FINANCIAMIENTO Y CONTROL DE ELEGIBILIDAD','4.3  Mapa y croquis de ubicación',9),(10,'SOLICITUD DE FINANCIAMIENTO Y CONTROL DE ELEGIBILIDAD','4.4  Planos topográficos, construcción y detalles',10),(11,'SOLICITUD DE FINANCIAMIENTO Y CONTROL DE ELEGIBILIDAD','4.5  Análisis de Precios Unitarios',11),(12,'SOLICITUD DE FINANCIAMIENTO Y CONTROL DE ELEGIBILIDAD','4.6  Especificaciones Técnicas',12),(13,'SOLICITUD DE FINANCIAMIENTO Y CONTROL DE ELEGIBILIDAD','4.7  Presupuesto General por componente',13),(14,'SOLICITUD DE FINANCIAMIENTO Y CONTROL DE ELEGIBILIDAD','4.8  Cronograma de ejecución',14),(15,'SOLICITUD DE FINANCIAMIENTO Y CONTROL DE ELEGIBILIDAD','4.9  Licencia Ambiental',15),(16,'SOLICITUD DE FINANCIAMIENTO Y CONTROL DE ELEGIBILIDAD','4.10  Los planos y documentos tecnicos cumplen al Ley 1449',16),(17,'SOLICITUD DE FINANCIAMIENTO Y CONTROL DE ELEGIBILIDAD','4.11  El proyecto considera el uso de aridos superior a 500 m3/mes',17),(18,'SOLICITUD DE FINANCIAMIENTO Y CONTROL DE ELEGIBILIDAD','4.12  El proyecto preve la aplicación de la Ley 3425 y 0091 Referido a la explotacion de aridos',18),(19,'SOLICITUD DE FINANCIAMIENTO Y CONTROL DE ELEGIBILIDAD','4.13 Evaluación Socioeconómica',19),(20,'SOLICITUD DE FINANCIAMIENTO Y CONTROL DE ELEGIBILIDAD','Informe de Evaluación Técnica',22),(21,'SOLICITUD DE FINANCIAMIENTO Y CONTROL DE ELEGIBILIDAD','Informe de Evaluación Socieconómica',23),(22,'SOLICITUD DE FINANCIAMIENTO Y CONTROL DE ELEGIBILIDAD','Informe de Evaluación Social',24),(23,'SOLICITUD DE FINANCIAMIENTO Y CONTROL DE ELEGIBILIDAD','Informe de Evaluación Ambiental',25),(24,'SOLICITUD DE FINANCIAMIENTO Y CONTROL DE ELEGIBILIDAD','Informe de Valoración Institucional',26),(25,'SOLICITUD DE FINANCIAMIENTO Y CONTROL DE ELEGIBILIDAD','Informe de Visita de Campo (con 5 fotografías)',27),(26,'SOLICITUD DE FINANCIAMIENTO Y CONTROL DE ELEGIBILIDAD','Dictamen Final de la Evaluación Integral (DIF)',28),(27,'SOLICITUD DE FINANCIAMIENTO Y CONTROL DE ELEGIBILIDAD','Marco Lógico',29),(28,'SOLICITUD DE FINANCIAMIENTO Y CONTROL DE ELEGIBILIDAD','Presupuesto Evaluado',30),(29,'SOLICITUD DE FINANCIAMIENTO Y CONTROL DE ELEGIBILIDAD','Cierre de Evaluación',31),(30,'REPORTES DEL SISTEMA DE ADMINISTRACION  DE PROYECTOS (SAP)','Presupuesto del proyecto resumen',32),(31,'REPORTES DEL SISTEMA DE ADMINISTRACION  DE PROYECTOS (SAP)','Presupuesto del proyecto a detalle',33),(32,'REPORTES DEL SISTEMA DE ADMINISTRACION  DE PROYECTOS (SAP)','Explosión de insumos',34),(33,'REPORTES DEL SISTEMA DE ADMINISTRACION  DE PROYECTOS (SAP)','Lista de precios unitarios',35),(34,'REPORTES DEL SISTEMA DE ADMINISTRACION  DE PROYECTOS (SAP)','Reporte de Presupuesto para la evaluacion económica por el SAP',36),(35,'REPORTES DEL SISTEMA DE ADMINISTRACION  DE PROYECTOS (SAP)','Informe de evaluación emitido por el SAP',37),(36,'REPORTES DEL SISTEMA DE ADMINISTRACION  DE PROYECTOS (SAP)','Matriz de cofinanciamiento',38),(37,'CONVENIO DE TRANSFERENCIA Y FINANCIAMIENTO','Convenio de transferencia de financiamiento (CTF)',39),(38,'CONVENIO DE TRANSFERENCIA Y FINANCIAMIENTO','22.1 Resolucion del Concejo Municipal de aprobacion del CTF',40),(39,'CONVENIO DE TRANSFERENCIA Y FINANCIAMIENTO','22.2 Convenio de Transferencia y Financiamiento (CTF)',41),(40,'CONVENIO DE TRANSFERENCIA Y FINANCIAMIENTO','22.3 Nombre del proyecto en CTF',42),(41,'CONVENIO DE TRANSFERENCIA Y FINANCIAMIENTO','22.4  Monto Fuente:',43),(42,'CONVENIO DE TRANSFERENCIA Y FINANCIAMIENTO','22.5  Monto Contraparte (cuando corresponda):',44),(43,'COMITÉ DEPARTAMENTAL TÉCNICO DE REVISIÓN DE PROYECTOS','Acta del Comité Técnico de Revisión de Proyectos (CTDRP)',45),(44,'COMITÉ DEPARTAMENTAL TÉCNICO DE REVISIÓN DE PROYECTOS','23.1  Número de CTDRP:',46),(45,'COMITÉ DEPARTAMENTAL TÉCNICO DE REVISIÓN DE PROYECTOS','23.2  Fecha:',47),(46,'COMITÉ DEPARTAMENTAL TÉCNICO DE REVISIÓN DE PROYECTOS','23.3  Monto Fuente:',48),(47,'COMITÉ DEPARTAMENTAL TÉCNICO DE REVISIÓN DE PROYECTOS','23.4  Monto Contraparte (cuando corresponda):',49),(48,'ACTA DEL COMITÉ DEPARTAMENTAL DE APROBACION DE PROYECTOS','Acta del Comité de Aprobación de Proyectos (CDAP)',50),(49,'ACTA DEL COMITÉ DEPARTAMENTAL DE APROBACION DE PROYECTOS','24.1  Número de CDAP:',51),(50,'ACTA DEL COMITÉ DEPARTAMENTAL DE APROBACION DE PROYECTOS','24.2  Fecha:',52),(51,'ACTA DEL COMITÉ DEPARTAMENTAL DE APROBACION DE PROYECTOS','24.3  Monto Fuente:',53),(52,'ACTA DEL COMITÉ DEPARTAMENTAL DE APROBACION DE PROYECTOS','24.4  Monto Contraparte (cuando corresponda):',54),(55,'SOLICITUD DE FINANCIAMIENTO Y CONTROL DE ELEGIBILIDAD','Compromiso de Garantizar la Operacion y Mantenimiento de la Obra',5),(56,NULL,'Ficha Técnica y Justificación',2),(57,NULL,'4.14 Indicadores Socioeconómicos y financieros',20),(58,NULL,'4.15 Otros aspectos relevantes',21),(59,NULL,'Certificación de inclusión del proyecto en el POA Municipal o documento relacionado',3);
/*!40000 ALTER TABLE `p_evaluacion_docs_combo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `p_gobierno_autonomo`
--

DROP TABLE IF EXISTS `p_gobierno_autonomo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `p_gobierno_autonomo` (
  `ga_codigo` varchar(6) CHARACTER SET utf32 COLLATE utf32_spanish_ci NOT NULL,
  `ga_descripcion` varchar(150) CHARACTER SET utf32 COLLATE utf32_spanish_ci DEFAULT NULL,
  `ga_sigla` varchar(5) CHARACTER SET utf32 COLLATE utf32_spanish_ci DEFAULT NULL,
  `ga_departamento` char(15) CHARACTER SET utf32 COLLATE utf32_spanish_ci DEFAULT NULL,
  `ga_codigo_departamento` char(2) CHARACTER SET utf32 COLLATE utf32_spanish_ci DEFAULT NULL,
  PRIMARY KEY (`ga_codigo`)
) ENGINE=InnoDB DEFAULT CHARSET=latin2;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `p_gobierno_autonomo`
--

LOCK TABLES `p_gobierno_autonomo` WRITE;
/*!40000 ALTER TABLE `p_gobierno_autonomo` DISABLE KEYS */;
INSERT INTO `p_gobierno_autonomo` VALUES ('0901','Gobierno Autónomo Departamental de Chuquisaca ','GAD-C','DEPARTAMENTO','0'),('0902','Gobierno Autónomo Departamental de La Paz ','GAD-L','DEPARTAMENTO','0'),('0903','Gobierno Autónomo Departamental de Cochabamba ','GAD-C','DEPARTAMENTO','0'),('0904','Gobierno Autónomo Departamental de Oruro ','GAD-O','DEPARTAMENTO','0'),('0905','Gobierno Autónomo Departamental de Potosí ','GAD-P','DEPARTAMENTO','0'),('0906','Gobierno Autónomo Departamental de Tarija ','GAD-T','DEPARTAMENTO','0'),('0907','Gobierno Autónomo Departamental de Santa Cruz ','GAD-S','DEPARTAMENTO','0'),('0908','Gobierno Autónomo Departamental del Beni ','GAD-B','DEPARTAMENTO','0'),('0909','Gobierno Autónomo Departamental de Pando ','GAD-P','DEPARTAMENTO','0'),('1101','Gobierno Autónomo Municipal de Sucre ','SUC','CHUQUISACA','1'),('1102','Gobierno Autónomo Municipal de Yotala ','YOT','CHUQUISACA','1'),('1103','Gobierno Autónomo Municipal de Poroma ','POR','CHUQUISACA','1'),('1104','Gobierno Autónomo Municipal de Villa Azurduy ','AZU','CHUQUISACA','1'),('1105','Gobierno Autónomo Municipal de Tarvita (Villa Orías) ','TAR','CHUQUISACA','1'),('1106','Gobierno Autónomo Municipal de Villa Zudañez (Tacopaya) ','ZUD','CHUQUISACA','1'),('1107','Gobierno Autónomo Municipal de Presto ','PRE','CHUQUISACA','1'),('1108','Gobierno Autónomo Municipal de Villa Mojocoya ','VMO','CHUQUISACA','1'),('1109','Gobierno Autónomo Municipal de Icla ','MUJ','CHUQUISACA','1'),('1110','Gobierno Autónomo Municipal de Padilla ','PAD','CHUQUISACA','1'),('1111','Gobierno Autónomo Municipal de Tomina ','VTM','CHUQUISACA','1'),('1112','Gobierno Autónomo Municipal de Sopachuy ','SOP','CHUQUISACA','1'),('1113','Gobierno Autónomo Municipal de Villa Alcalá ','ALC','CHUQUISACA','1'),('1114','Gobierno Autónomo Municipal de El Villar ','VIL','CHUQUISACA','1'),('1115','Gobierno Autónomo Municipal de Monteagudo ','VMT','CHUQUISACA','1'),('1116','Gobierno Autónomo Municipal de San Pablo de Huacareta ','PDM','CHUQUISACA','1'),('1117','Gobierno Autónomo Municipal de Tarabuco ','TARB','CHUQUISACA','1'),('1118','Gobierno Autónomo Municipal de Yamparáez ','YAM','CHUQUISACA','1'),('1119','Gobierno Autónomo Municipal de Camargo ','CAM','CHUQUISACA','1'),('1120','Gobierno Autónomo Municipal de San Lucas ','LUC','CHUQUISACA','1'),('1121','Gobierno Autónomo Municipal de Incahuasi ','INCA','CHUQUISACA','1'),('1122','Gobierno Autónomo Municipal de Villa Serrano ','SER','CHUQUISACA','1'),('1123','Gobierno Autónomo Municipal de Camataqui (Villa Abecia) ','ABE','CHUQUISACA','1'),('1124','Gobierno Autónomo Municipal de Culpina ','CUL','CHUQUISACA','1'),('1125','Gobierno Autónomo Municipal de Las Carreras ','CRR','CHUQUISACA','1'),('1126','Gobierno Autónomo Municipal de Villa Vaca Guzmán ','MUY','CHUQUISACA','1'),('1127','Gobierno Autónomo Municipal de Villa de Huacaya ','VHY','CHUQUISACA','1'),('1128','Gobierno Autónomo Municipal de Machareti ','MAC','CHUQUISACA','1'),('1129','Gobierno Autónomo Municipal de Villa Charcas ','VCH','CHUQUISACA','1'),('1201','Gobierno Autónomo Municipal de La Paz ','LPZ','LA PAZ','2'),('1202','Gobierno Autónomo Municipal de Palca ','PLC','LA PAZ','2'),('1203','Gobierno Autónomo Municipal de Mecapaca ','MEC','LA PAZ','2'),('1204','Gobierno Autónomo Municipal de Achocalla ','ACH','LA PAZ','2'),('1205','Gobierno Autónomo Municipal de El Alto de La Paz ','ELLA','LA PAZ','2'),('1206','Gobierno Autónomo Municipal de Viacha ','VIA','LA PAZ','2'),('1207','Gobierno Autónomo Municipal de Guaqui ','GUA','LA PAZ','2'),('1208','Gobierno Autónomo Municipal de Tiahuanacu ','TIA','LA PAZ','2'),('1209','Gobierno Autónomo Municipal de Desaguadero ','DES','LA PAZ','2'),('1210','Gobierno Autónomo Municipal de Caranavi ','CRV','LA PAZ','2'),('1211','Gobierno Autónomo Municipal de SicaSica (Villa Aroma) ','SIC','LA PAZ','2'),('1212','Gobierno Autónomo Municipal de Umala ','UMA','LA PAZ','2'),('1213','Gobierno Autónomo Municipal de AyoAyo ','AYO','LA PAZ','2'),('1214','Gobierno Autónomo Municipal de Calamarca ','CAL','LA PAZ','2'),('1215','Gobierno Autónomo Municipal de Patacamaya ','PAT','LA PAZ','2'),('1216','Gobierno Autónomo Municipal de Colquencha ','COL','LA PAZ','2'),('1217','Gobierno Autónomo Municipal de Collana ','COA','LA PAZ','2'),('1218','Gobierno Autónomo Municipal de Inquisivi ','INQ','LA PAZ','2'),('1219','Gobierno Autónomo Municipal de Quime ','QUI','LA PAZ','2'),('1220','Gobierno Autónomo Municipal de Cajuata ','CAJ','LA PAZ','2'),('1221','Gobierno Autónomo Municipal de Colquiri ','COQ','LA PAZ','2'),('1222','Gobierno Autónomo Municipal de Ichoca ','ICH','LA PAZ','2'),('1223','Gobierno Autónomo Municipal de Villa Libertad Licoma ','LIC','LA PAZ','2'),('1224','Gobierno Autónomo Municipal de Achacachi ','AHI','LA PAZ','2'),('1225','Gobierno Autónomo Municipal de Ancoraimes ','ANCO','LA PAZ','2'),('1226','Gobierno Autónomo Municipal de Sorata ','SOR','LA PAZ','2'),('1227','Gobierno Autónomo Municipal de Guanay ','GNY','LA PAZ','2'),('1228','Gobierno Autónomo Municipal de Tacacoma ','TAT','LA PAZ','2'),('1229','Gobierno Autónomo Municipal de Tipuani ','TIP','LA PAZ','2'),('1230','Gobierno Autónomo Municipal de Quiabaya ','QBY','LA PAZ','2'),('1231','Gobierno Autónomo Municipal de Combaya ','COM','LA PAZ','2'),('1232','Gobierno Autónomo Municipal de Copacabana ','COP','LA PAZ','2'),('1233','Gobierno Autónomo Municipal de San Pedro de Tiquina ','SPT','LA PAZ','2'),('1234','Gobierno Autónomo Municipal de Tito Yupanqui ','YUP','LA PAZ','2'),('1235','Gobierno Autónomo Municipal de Chuma ','CHU','LA PAZ','2'),('1236','Gobierno Autónomo Municipal de Ayata','AYA','LA PAZ','2'),('1237','Gobierno Autónomo Municipal de Aucapata','AUC','LA PAZ','2'),('1238','Gobierno Autónomo Municipal de Corocoro','COR','LA PAZ','2'),('1239','Gobierno Autónomo Municipal de Caquiaviri','CAQ','LA PAZ','2'),('1240','Gobierno Autónomo Municipal de Calacoto','CAC','LA PAZ','2'),('1241','Gobierno Autónomo Municipal de Comanche','CMC','LA PAZ','2'),('1242','Gobierno Autónomo Municipal de Charaña','CHA','LA PAZ','2'),('1243','Gobierno Autónomo Municipal de Waldo Ballivián','BAL','LA PAZ','2'),('1244','Gobierno Autónomo Municipal de Nazacara de Pacajes','NAZ','LA PAZ','2'),('1245','Gobierno Autónomo Municipal de Santiago de Callapa','SCA','LA PAZ','2'),('1246','Gobierno Autónomo Municipal de Puerto Acosta','ACO','LA PAZ','2'),('1247','Gobierno Autónomo Municipal de Mocomoco','MOC','LA PAZ','2'),('1248','Gobierno Autónomo Municipal de Carabuco','CCH','LA PAZ','2'),('1249','Gobierno Autónomo Municipal de Apolo','APO','LA PAZ','2'),('1250','Gobierno Autónomo Municipal de Pelechuco','PEL','LA PAZ','2'),('1251','Gobierno Autónomo Municipal de Luribay','LUR','LA PAZ','2'),('1252','Gobierno Autónomo Municipal de Sapahaqui','SAPA','LA PAZ','2'),('1253','Gobierno Autónomo Municipal de Yaco','YAC','LA PAZ','2'),('1254','Gobierno Autónomo Municipal de Malla','MAL','LA PAZ','2'),('1255','Gobierno Autónomo Municipal de Cairoma','CAI','LA PAZ','2'),('1256','Gobierno Autónomo Municipal de Chulumani (Villa de la Libertad) ','CHL','LA PAZ','2'),('1257','Gobierno Autónomo Municipal de Irupana (Villa de Lanza) ','IRU','LA PAZ','2'),('1258','Gobierno Autónomo Municipal de Yanacachi','YAN','LA PAZ','2'),('1259','Gobierno Autónomo Municipal de Palos Blancos','BLA','LA PAZ','2'),('1260','Gobierno Autónomo Municipal de La Asunta','ASU','LA PAZ','2'),('1261','Gobierno Autónomo Municipal de Pucarani','PUC','LA PAZ','2'),('1262','Gobierno Autónomo Municipal de Laja','LAJ','LA PAZ','2'),('1263','Gobierno Autónomo Municipal de Batallas','BAT','LA PAZ','2'),('1264','Gobierno Autónomo Municipal de Puerto Pérez','PER','LA PAZ','2'),('1265','Gobierno Autónomo Municipal de Coroico','COC','LA PAZ','2'),('1266','Gobierno Autónomo Municipal de Coripata','CRI','LA PAZ','2'),('1267','Gobierno Autónomo Municipal de Ixiamas','IXI','LA PAZ','2'),('1268','Gobierno Autónomo Municipal de San Buenaventura','SBV','LA PAZ','2'),('1269','Gobierno Autónomo Municipal de General Juan José Pérez (Charazani)','CPE','LA PAZ','2'),('1270','Gobierno Autónomo Municipal de Curva','CUR','LA PAZ','2'),('1271','Gobierno Autónomo Municipal de San Pedro de Curahuara','PEC','LA PAZ','2'),('1272','Gobierno Autónomo Municipal de Papel Pampa','PAP','LA PAZ','2'),('1273','Gobierno Autónomo Municipal de Chacarilla','CLL','LA PAZ','2'),('1274','Gobierno Autónomo Municipal de Santiago de Machaca','SMA','LA PAZ','2'),('1275','Gobierno Autónomo Municipal de Catacora','CAT','LA PAZ','2'),('1276','Gobierno Autónomo Municipal de Mapiri','MAP','LA PAZ','2'),('1277','Gobierno Autónomo Municipal de Teoponte','TEO','LA PAZ','2'),('1278','Gobierno Autónomo Municipal de San Andrés de Machaca','AMA','LA PAZ','2'),('1279','Gobierno Autónomo Municipal de Jesús de Machaca','JMK','LA PAZ','2'),('1280','Gobierno Autónomo Municipal de Taraco','TCO','LA PAZ','2'),('1281','Gobierno Autónomo Municipal de Huarina','HUAR','LA PAZ','2'),('1282','Gobierno Autónomo Municipal de Santiago de Huata','SAH','LA PAZ','2'),('1283','Gobierno Autónomo Municipal de Escoma','ESC','LA PAZ','2'),('1284','Gobierno Autónomo Municipal de Humanata','HUMA','LA PAZ','2'),('1285','Gobierno Autónomo Municipal de Alto Beni','ABN','LA PAZ','2'),('1286','Gobierno Autónomo Municipal de Huatajata','HUAT','LA PAZ','2'),('1287','Gobierno Autónomo Municipal de ChuaCocani','CHCO','LA PAZ','2'),('1301','Gobierno Autónomo Municipal de Cochabamba','CBB','COCHABAMBA','3'),('1302','Gobierno Autónomo Municipal de Quillacollo','QLL','COCHABAMBA','3'),('1303','Gobierno Autónomo Municipal de SipeSipe','SIP','COCHABAMBA','3'),('1304','Gobierno Autónomo Municipal de Tiquipaya','TIQ','COCHABAMBA','3'),('1305','Gobierno Autónomo Municipal de Vinto','VIN','COCHABAMBA','3'),('1306','Gobierno Autónomo Municipal de Colcapirhua','CCP','COCHABAMBA','3'),('1307','Gobierno Autónomo Municipal de Aiquile','AIQ','COCHABAMBA','3'),('1308','Gobierno Autónomo Municipal de Pasorapa','PAS','COCHABAMBA','3'),('1309','Gobierno Autónomo Municipal de Omereque','OME','COCHABAMBA','3'),('1310','Gobierno Autónomo Municipal de Independencia','IND','COCHABAMBA','3'),('1311','Gobierno Autónomo Municipal de Morochata','MOH','COCHABAMBA','3'),('1312','Gobierno Autónomo Municipal de Sacaba','SCB','COCHABAMBA','3'),('1313','Gobierno Autónomo Municipal de Colomi','CLM','COCHABAMBA','3'),('1314','Gobierno Autónomo Municipal de Villa Tunari','TUN','COCHABAMBA','3'),('1315','Gobierno Autónomo Municipal de Punata','PNT','COCHABAMBA','3'),('1316','Gobierno Autónomo Municipal de Villa Rivero','VRV','COCHABAMBA','3'),('1317','Gobierno Autónomo Municipal de San Benito (Villa José Quintín Mendoza)','MEN','COCHABAMBA','3'),('1318','Gobierno Autónomo Municipal de Tacachi','TAC','COCHABAMBA','3'),('1319','Gobierno Autónomo Municipal Villa Gualberto Villarroel ','VGV','COCHABAMBA','3'),('1320','Gobierno Autónomo Municipal de Tarata','TRT','COCHABAMBA','3'),('1321','Gobierno Autónomo Municipal de Anzaldo','ANZ','COCHABAMBA','3'),('1322','Gobierno Autónomo Municipal de Arbieto','ARB','COCHABAMBA','3'),('1323','Gobierno Autónomo Municipal de Sacabamba','SBB','COCHABAMBA','3'),('1324','Gobierno Autónomo Municipal de Cliza','CLI','COCHABAMBA','3'),('1325','Gobierno Autónomo Municipal de Toco','TOC','COCHABAMBA','3'),('1326','Gobierno Autónomo Municipal de Tolata','TLA','COCHABAMBA','3'),('1327','Gobierno Autónomo Municipal de Capinota','CAP','COCHABAMBA','3'),('1328','Gobierno Autónomo Municipal de Santivañez','SAN','COCHABAMBA','3'),('1329','Gobierno Autónomo Municipal de Sicaya','SCY','COCHABAMBA','3'),('1330','Gobierno Autónomo Municipal de Tapacari','TAP','COCHABAMBA','3'),('1331','Gobierno Autónomo Municipal de Totora','TOT','COCHABAMBA','3'),('1332','Gobierno Autónomo Municipal de Pojo','POJ','COCHABAMBA','3'),('1333','Gobierno Autónomo Municipal de Pocona','POC','COCHABAMBA','3'),('1334','Gobierno Autónomo Municipal de Chimoré','CHI','COCHABAMBA','3'),('1335','Gobierno Autónomo Municipal de Puerto Villarroel','PVI','COCHABAMBA','3'),('1336','Gobierno Autónomo Municipal de Arani','ARA','COCHABAMBA','3'),('1337','Gobierno Autónomo Municipal de Vacas','VAC','COCHABAMBA','3'),('1338','Gobierno Autónomo Municipal de Arque','ARQ','COCHABAMBA','3'),('1339','Gobierno Autónomo Municipal de Tacopaya','TPY','COCHABAMBA','3'),('1340','Gobierno Autónomo Municipal de Bolivar','BOL','COCHABAMBA','3'),('1341','Gobierno Autónomo Municipal de Tiraque','TRQ','COCHABAMBA','3'),('1342','Gobierno Autónomo Municipal de Mizque','MIZ','COCHABAMBA','3'),('1343','Gobierno Autónomo Municipal de Vila Vila','VIS','COCHABAMBA','3'),('1344','Gobierno Autónomo Municipal de Alalay','ALA','COCHABAMBA','3'),('1345','Gobierno Autónomo Municipal de Entre Rios','ERI','COCHABAMBA','3'),('1346','Gobierno Autónomo Municipal de Cocapata','CCT','COCHABAMBA','3'),('1347','Gobierno Autónomo Municipal de Shinahota','SHI','COCHABAMBA','3'),('1401','Gobierno Autónomo Municipal de Oruro','ORU','ORURO','4'),('1402','Gobierno Autónomo Municipal de Caracollo','CAR','ORURO','4'),('1403','Gobierno Autónomo Municipal de El Choro','CHO','ORURO','4'),('1404','Gobierno Autónomo Municipal de Challapata','CHT','ORURO','4'),('1405','Gobierno Autónomo Municipal de Santuario de Quillacas','STQ','ORURO','4'),('1406','Gobierno Autónomo Municipal de Huanuni','VHU','ORURO','4'),('1407','Gobierno Autónomo Municipal de Machacamarca','MAR','ORURO','4'),('1408','Gobierno Autónomo Municipal de Poopó (Villa Poopó) ','POO','ORURO','4'),('1409','Gobierno Autónomo Municipal de Pazña','PAZ','ORURO','4'),('1410','Gobierno Autónomo Municipal de Antequera','ANT','ORURO','4'),('1411','Gobierno Autónomo Municipal de Eucaliptus','EUC','ORURO','4'),('1412','Gobierno Autónomo Municipal de Santiago de Huari','SHU','ORURO','4'),('1413','Gobierno Autónomo Municipal de Totora','TTR','ORURO','4'),('1414','Gobierno Autónomo Municipal de Corque','CRQ','ORURO','4'),('1415','Gobierno Autónomo Municipal de Choquecota','CHE','ORURO','4'),('1416','Gobierno Autónomo Municipal de Curahuara de Carangas','CDC','ORURO','4'),('1417','Gobierno Autónomo Municipal de Turco','TUR','ORURO','4'),('1418','Gobierno Autónomo Municipal de Huachacalla','HCH','ORURO','4'),('1419','Gobierno Autónomo Municipal de Escara','ESA','ORURO','4'),('1420','Gobierno Autónomo Municipal de Cruz de Machacamarca','CMA','ORURO','4'),('1421','Gobierno Autónomo Municipal de Yunguyo de Litoral','YUG','ORURO','4'),('1422','Gobierno Autónomo Municipal de Esmeralda','ESM','ORURO','4'),('1423','Gobierno Autónomo Municipal de Toledo','TOL','ORURO','4'),('1424','Gobierno Autónomo Municipal de Andamarca (Santiago de Andamarca)','ADN','ORURO','4'),('1425','Gobierno Autónomo Municipal de Belén de Andamarca','BEL','ORURO','4'),('1426','Gobierno Autónomo Municipal de Salinas de G. Mendoza ','SAL','ORURO','4'),('1427','Gobierno Autónomo Municipal de Pampa Aullagas','PAM','ORURO','4'),('1428','Gobierno Autónomo Municipal de La Rivera','RIV','ORURO','4'),('1429','Gobierno Autónomo Municipal de Todos Santos','TOS','ORURO','4'),('1430','Gobierno Autónomo Municipal de Carangas','CGA','ORURO','4'),('1431','Gobierno Autónomo Municipal de Sabaya','SAP','ORURO','4'),('1432','Gobierno Autónomo Municipal de Coipasa','COI','ORURO','4'),('1433','Gobierno Autónomo Municipal de Chipaya','CHP','ORURO','4'),('1434','Gobierno Autónomo Municipal de Huayllamarca (Santiago de Huayllamarca)','SDH','ORURO','4'),('1435','Gobierno Autónomo Municipal de Soracachi','SRC','ORURO','4'),('1501','Gobierno Autónomo Municipal de Potosí','POT','POTOSI','5'),('1502','Gobierno Autónomo Municipal de Tinguipaya','TIN','POTOSI','5'),('1503','Gobierno Autónomo Municipal de Yocalla','YOC','POTOSI','5'),('1504','Gobierno Autónomo Municipal de Urmiri','URM','POTOSI','5'),('1505','Gobierno Autónomo Municipal de Uncía','UNC','POTOSI','5'),('1506','Gobierno Autónomo Municipal de Chayanta','CHY','POTOSI','5'),('1507','Gobierno Autónomo Municipal de Llallagua','LLA','POTOSI','5'),('1508','Gobierno Autónomo Municipal de Betanzos','BET','POTOSI','5'),('1509','Gobierno Autónomo Municipal de Chaqui','CHQ','POTOSI','5'),('1510','Gobierno Autónomo Municipal de Tacobamba','TCB','POTOSI','5'),('1511','Gobierno Autónomo Municipal de Colquechaca','CCQ','POTOSI','5'),('1512','Gobierno Autónomo Municipal de Ravelo','RAV','POTOSI','5'),('1513','Gobierno Autónomo Municipal de Pocoata','PCT','POTOSI','5'),('1514','Gobierno Autónomo Municipal de Ocurí','OCU','POTOSI','5'),('1515','Gobierno Autónomo Municipal de San Pedro de Buena Vista ','PED','POTOSI','5'),('1516','Gobierno Autónomo Municipal de Toro Toro','TTO','POTOSI','5'),('1517','Gobierno Autónomo Municipal de Cotagaita','COT','POTOSI','5'),('1518','Gobierno Autónomo Municipal de Vitichi','VIT','POTOSI','5'),('1519','Gobierno Autónomo Municipal de Tupiza','TUP','POTOSI','5'),('1520','Gobierno Autónomo Municipal de Atocha','ATO','POTOSI','5'),('1521','Gobierno Autónomo Municipal de Colcha\"K\" (Villa Martín) ','CCK','POTOSI','5'),('1522','Gobierno Autónomo Municipal de San Pedro de Quemes ','PEQ','POTOSI','5'),('1523','Gobierno Autónomo Municipal de San Pablo de Lípez','PAB','POTOSI','5'),('1524','Gobierno Autónomo Municipal de Mojinete','MOJ','POTOSI','5'),('1525','Gobierno Autónomo Municipal de San Antonio de Esmoruco ','SANT','POTOSI','5'),('1526','Gobierno Autónomo Municipal de Sacaca (Villa de Sacaca) ','SAC','POTOSI','5'),('1527','Gobierno Autónomo Municipal de Caripuyo','CRP','POTOSI','5'),('1528','Gobierno Autónomo Municipal de Puna (Villa Talavera) ','PUN','POTOSI','5'),('1529','Gobierno Autónomo Municipal de Caiza \"D\"','CAD','POTOSI','5'),('1530','Gobierno Autónomo Municipal de Uyuni','UYU','POTOSI','5'),('1531','Gobierno Autónomo Municipal de Tomave','TOM','POTOSI','5'),('1532','Gobierno Autónomo Municipal de Porco','PRC','POTOSI','5'),('1533','Gobierno Autónomo Municipal de Arampampa','ARP','POTOSI','5'),('1534','Gobierno Autónomo Municipal de Acasio','ACA','POTOSI','5'),('1535','Gobierno Autónomo Municipal de Llica','LLI','POTOSI','5'),('1536','Gobierno Autónomo Municipal de Tahua','TAH','POTOSI','5'),('1537','Gobierno Autónomo Municipal de Villazón','VLZ','POTOSI','5'),('1538','Gobierno Autónomo Municipal de San Agustín','AGU','POTOSI','5'),('1539','Gobierno Autónomo Municipal de Ckochas','CKO','POTOSI','5'),('1540','Gobierno Autónomo Municipal de Chuquihuta Ayllu Jucumani ','JUC','POTOSI','5'),('1601','Gobierno Autónomo Municipal de Tarija','TRJ','TARIJA','6'),('1602','Gobierno Autónomo Municipal de Padcaya','PCY','TARIJA','6'),('1603','Gobierno Autónomo Municipal de Bermejo','BER','TARIJA','6'),('1604','Gobierno Autónomo Municipal de Yacuiba','YCB','TARIJA','6'),('1605','Gobierno Autónomo Municipal de Caraparí','CRY','TARIJA','6'),('1606','Gobierno Autónomo Municipal de Villamontes','MON','TARIJA','6'),('1607','Gobierno Autónomo Municipal de Uriondo (Concepción)','ORI','TARIJA','6'),('1608','Gobierno Autónomo Municipal de Yunchara','YUN','TARIJA','6'),('1609','Gobierno Autónomo Municipal de San Lorenzo','SLR','TARIJA','6'),('1610','Gobierno Autónomo Municipal de El Puente','TMY','TARIJA','6'),('1611','Gobierno Autónomo Municipal de Entre Ríos','RIO','TARIJA','6'),('1701','Gobierno Autónomo Municipal de Santa Cruz de La Sierra','SCZ','Santa Cruz','7'),('1702','Gobierno Autónomo Municipal de Cotoca','CTC','Santa Cruz','7'),('1703','Gobierno Autónomo Municipal de Porongo (Ayacucho)','PRG','Santa Cruz','7'),('1704','Gobierno Autónomo Municipal de La Guardia','LGU','Santa Cruz','7'),('1705','Gobierno Autónomo Municipal de El Torno','TOR','Santa Cruz','7'),('1706','Gobierno Autónomo Municipal de Warnes','WAR','Santa Cruz','7'),('1707','Gobierno Autónomo Municipal de San Ignacio (San Ignacio de Velasco)','ING','Santa Cruz','7'),('1708','Gobierno Autónomo Municipal de San Miguel (San Miguel de Velasco)','MIG','Santa Cruz','7'),('1709','Gobierno Autónomo Municipal de San Rafael','RAF','Santa Cruz','7'),('1710','Gobierno Autónomo Municipal de Buena Vista','BUE','Santa Cruz','7'),('1711','Gobierno Autónomo Municipal de San Carlos','CRL','Santa Cruz','7'),('1712','Gobierno Autónomo Municipal de Yapacaní','YAP','Santa Cruz','7'),('1713','Gobierno Autónomo Municipal de San José','JOS','Santa Cruz','7'),('1714','Gobierno Autónomo Municipal de Pailón','PAI','Santa Cruz','7'),('1715','Gobierno Autónomo Municipal de Roboré','ROB','Santa Cruz','7'),('1716','Gobierno Autónomo Municipal de Portachuelo','PCH','Santa Cruz','7'),('1717','Gobierno Autónomo Municipal de Santa Rosa del Sara','SRS','Santa Cruz','7'),('1718','Gobierno Autónomo Municipal de Lagunillas','LAG','Santa Cruz','7'),('1719','Gobierno Autónomo Municipal de Charagua','CHR','Santa Cruz','7'),('1720','Gobierno Autónomo Municipal de Cabezas','CAB','Santa Cruz','7'),('1721','Gobierno Autónomo Municipal de Cuevo','CUE','Santa Cruz','7'),('1722','Gobierno Autónomo Municipal de Gutiérrez','GUT','Santa Cruz','7'),('1723','Gobierno Autónomo Municipal de Camiri','CMR','Santa Cruz','7'),('1724','Gobierno Autónomo Municipal de Boyuibe','BOY','Santa Cruz','7'),('1725','Gobierno Autónomo Municipal de Vallegrande','GRA','Santa Cruz','7'),('1726','Gobierno Autónomo Municipal de Trigal','TRG','Santa Cruz','7'),('1727','Gobierno Autónomo Municipal de Moro Moro','MOR','Santa Cruz','7'),('1728','Gobierno Autónomo Municipal de Postrer Valle','POS','Santa Cruz','7'),('1729','Gobierno Autónomo Municipal de Pucara','PCR','Santa Cruz','7'),('1730','Gobierno Autónomo Municipal de Samaipata','SAM','Santa Cruz','7'),('1731','Gobierno Autónomo Municipal de Pampa Grande','PAG','Santa Cruz','7'),('1732','Gobierno Autónomo Municipal de Mairana','MAY','Santa Cruz','7'),('1733','Gobierno Autónomo Municipal de Quirusillas','QRS','Santa Cruz','7'),('1734','Gobierno Autónomo Municipal de Montero','MTR','Santa Cruz','7'),('1735','Gobierno Autónomo Municipal de General Agustín Saavedra ','SAA','Santa Cruz','7'),('1736','Gobierno Autónomo Municipal de Mineros','MIN','Santa Cruz','7'),('1737','Gobierno Autónomo Municipal de Concepción','CON','Santa Cruz','7'),('1738','Gobierno Autónomo Municipal de San Javier','SJA','Santa Cruz','7'),('1739','Gobierno Autónomo Municipal de San Julián','JUL','Santa Cruz','7'),('1740','Gobierno Autónomo Municipal de San Matías','MAT','Santa Cruz','7'),('1741','Gobierno Autónomo Municipal de Comarapa','CMP','Santa Cruz','7'),('1742','Gobierno Autónomo Municipal de Saipina','SAI','Santa Cruz','7'),('1743','Gobierno Autónomo Municipal de Puerto Suárez','SUA','Santa Cruz','7'),('1744','Gobierno Autónomo Municipal de Puerto Quijarro','PQO','Santa Cruz','7'),('1745','Gobierno Autónomo Municipal de Ascención de Guarayos','ADG','Santa Cruz','7'),('1746','Gobierno Autónomo Municipal de Urubicha','URU','Santa Cruz','7'),('1747','Gobierno Autónomo Municipal de El Puente','PUE','Santa Cruz','7'),('1748','Gobierno Autónomo Municipal de Okinawa Uno','OKI','Santa Cruz','7'),('1749','Gobierno Autónomo Municipal de San Antonio de Lomerio','ANL','Santa Cruz','7'),('1750','Gobierno Autónomo Municipal de San Ramón','SRA','Santa Cruz','7'),('1751','Gobierno Autónomo Municipal de El Carmen Rivero Tórrez','CRT','Santa Cruz','7'),('1752','Gobierno Autónomo Municipal de San Juan','SJU','Santa Cruz','7'),('1753','Gobierno Autónomo Municipal de Fernández Alonso','FAL','Santa Cruz','7'),('1754','Gobierno Autónomo Municipal de San Pedro','PDR','Santa Cruz','7'),('1755','Gobierno Autónomo Municipal de Cuatro Cañadas','CCA','Santa Cruz','7'),('1756','Gobierno Autónomo Municipal de Colpa Bélgica','CBE','Santa Cruz','7'),('1801','Gobierno Autónomo Municipal de Trinidad','TRI','Beni','8'),('1802','Gobierno Autónomo Municipal de San Javier','JAV','Beni','8'),('1803','Gobierno Autónomo Municipal de Riberalta','RIB','Beni','8'),('1805','Gobierno Autónomo Municipal de Puerto Guayaramerín','PGU','Beni','8'),('1806','Gobierno Autónomo Municipal de Reyes','REY','Beni','8'),('1807','Gobierno Autónomo Municipal de Puerto Rurrenabaque ','RUR','Beni','8'),('1808','Gobierno Autónomo Municipal de San Borja','BOR','Beni','8'),('1809','Gobierno Autónomo Municipal de Santa Rosa','ROS','Beni','8'),('1810','Gobierno Autónomo Municipal de Santa Ana','ANA','Beni','8'),('1811','Gobierno Autónomo Municipal de San Ignacio','IGN','Beni','8'),('1812','Gobierno Autónomo Municipal de Loreto','LOR','Beni','8'),('1813','Gobierno Autónomo Municipal de San Andrés','SAD','Beni','8'),('1814','Gobierno Autónomo Municipal de San Joaquín','JOA','Beni','8'),('1815','Gobierno Autónomo Municipal de San Ramón','RAM','Beni','8'),('1816','Gobierno Autónomo Municipal de Puerto Síles','SIL','Beni','8'),('1817','Gobierno Autónomo Municipal de Magdalena','MAG','Beni','8'),('1818','Gobierno Autónomo Municipal de Baures','BAU','Beni','8'),('1819','Gobierno Autónomo Municipal de Huacaraje','HUA','Beni','8'),('1820','Gobierno Autónomo Municipal de Exaltación','EXA','Beni','8'),('1901','Gobierno Autónomo Municipal de Cobija','CBJ','Pando','9'),('1902','Gobierno Autónomo Municipal de Porvenir','PRV','Pando','9'),('1903','Gobierno Autónomo Municipal de Bolpebra','BOP','Pando','9'),('1904','Gobierno Autónomo Municipal de Bella Flor','FLO','Pando','9'),('1905','Gobierno Autónomo Municipal de Puerto Rico','PRI','Pando','9'),('1906','Gobierno Autónomo Municipal de San Pedro','SPE','Pando','9'),('1907','Gobierno Autónomo Municipal de Filadelfia','FIL','Pando','9'),('1908','Gobierno Autónomo Municipal de Puerto Gonzalo Moreno','PGM','Pando','9'),('1909','Gobierno Autónomo Municipal de San Lorenzo','SLO','Pando','9'),('1910','Gobierno Autónomo Municipal de Sena','SEN','Pando','9'),('1911','Gobierno Autónomo Municipal de Santa Rosa del Abuná','SRO','Pando','9'),('1912','Gobierno Autónomo Municipal de Ingavi (Humaita)','HUM','Pando','9'),('1913','Gobierno Autónomo Municipal de Nueva Esperanza','NES','Pando','9'),('1914','Gobierno Autónomo Municipal de Villa Nueva (Loma Alta)','LOM','Pando','9'),('1915','Gobierno Autónomo Municipal de Santos Mercado','MER','Pando','9');
/*!40000 ALTER TABLE `p_gobierno_autonomo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `p_gobierno_autonomo_rami`
--

DROP TABLE IF EXISTS `p_gobierno_autonomo_rami`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `p_gobierno_autonomo_rami` (
  `ga_codigo` varchar(10) NOT NULL,
  `ga_descripcion` varchar(150) CHARACTER SET utf32 COLLATE utf32_spanish_ci DEFAULT NULL,
  `ga_sigla` varchar(5) CHARACTER SET utf32 COLLATE utf32_spanish_ci DEFAULT NULL,
  `ga_departamento` char(15) CHARACTER SET utf32 COLLATE utf32_spanish_ci DEFAULT NULL,
  `ga_codigo_departamento` char(2) CHARACTER SET utf32 COLLATE utf32_spanish_ci DEFAULT NULL,
  `ga_codigo_provincia` char(6) DEFAULT NULL,
  `ga_tipo` smallint(3) DEFAULT NULL,
  PRIMARY KEY (`ga_codigo`)
) ENGINE=InnoDB DEFAULT CHARSET=latin2;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `p_gobierno_autonomo_rami`
--

LOCK TABLES `p_gobierno_autonomo_rami` WRITE;
/*!40000 ALTER TABLE `p_gobierno_autonomo_rami` DISABLE KEYS */;
INSERT INTO `p_gobierno_autonomo_rami` VALUES ('',NULL,NULL,'COCHABAMBA',NULL,NULL,NULL),('010101','SUCRE','','CHUQUISACA','01','0101',3),('010102','YOTALA','','CHUQUISACA','01','0101',3),('010103','POROMA','','CHUQUISACA','01','0101',3),('010201','AZURDUY','','CHUQUISACA','01','0102',3),('010202','TARVITA','','CHUQUISACA','01','0102',3),('010301','ZUDAÑEZ','','CHUQUISACA','01','0103',3),('010302','PRESTO','','CHUQUISACA','01','0103',3),('010303','MOJOCOYA','','CHUQUISACA','01','0103',3),('010304','ICLA','','CHUQUISACA','01','0103',3),('010401','PADILLA','','CHUQUISACA','01','0104',3),('010402','TOMINA','','CHUQUISACA','01','0104',3),('010403','SOPACHUY','','CHUQUISACA','01','0104',3),('010404','VILLA ALCALA','','CHUQUISACA','01','0104',3),('010405','EL VILLAR','','CHUQUISACA','01','0104',3),('010501','MONTEAGUDO','','CHUQUISACA','01','0105',3),('010502','HUACARETA (C. SAN PABLO DE HUACARET','','CHUQUISACA','01','0105',3),('010601','TARABUCO','','CHUQUISACA','01','0106',3),('010602','YAMPARAEZ','','CHUQUISACA','01','0106',3),('010701','CAMARGO','','CHUQUISACA','01','0107',3),('010702','SAN LUCAS','','CHUQUISACA','01','0107',3),('010703','INCAHUASI','','CHUQUISACA','01','0107',3),('010704','VILLA CHARCAS','','CHUQUISACA','01','0107',3),('010801','VILLA SERRANO','','CHUQUISACA','01','0108',3),('010901','CAMATAQUI (C. VILLA ABECIA)','','CHUQUISACA','01','0109',3),('010902','CULPINA','','CHUQUISACA','01','0109',3),('010903','LAS CARRERAS','','CHUQUISACA','01','0109',3),('011001','VILLA VACA GUZMAN (C. MUYUPAMPA)','','CHUQUISACA','01','0110',3),('011002','HUACAYA (C. VILLA DE HUACAYA)','','CHUQUISACA','01','0110',3),('011003','MACHARETI','','CHUQUISACA','01','0110',3),('020101','LA PAZ','','LA PAZ','02','0201',3),('020102','PALCA','','LA PAZ','02','0201',3),('020103','MECAPACA','','LA PAZ','02','0201',3),('020104','ACHOCALLA','','LA PAZ','02','0201',3),('020105','CIUDAD EL ALTO','','LA PAZ','02','0201',3),('020201','VIACHA','','LA PAZ','02','0202',3),('020202','GUAQUI','','LA PAZ','02','0202',3),('020203','TIAWANACU','','LA PAZ','02','0202',3),('020204','DESAGUADERO','','LA PAZ','02','0202',3),('020205','ANDRES DE MACHACA','','LA PAZ','02','0202',3),('020206','JESUS DE MACHACA','','LA PAZ','02','0202',3),('020207','TARACO','','LA PAZ','02','0202',3),('020301','CARANAVI','','LA PAZ','02','0203',3),('020302','ALTO BENI','','LA PAZ','02','0203',3),('020401','SICA SICA (C. VILLA AROMA)','','LA PAZ','02','0204',3),('020402','UMALA','','LA PAZ','02','0204',3),('020403','AYO AYO','','LA PAZ','02','0204',3),('020404','CALAMARCA','','LA PAZ','02','0204',3),('020405','PATACAMAYA','','LA PAZ','02','0204',3),('020406','COLQUENCHA','','LA PAZ','02','0204',3),('020407','COLLANA','','LA PAZ','02','0204',3),('020501','INQUISIVI','','LA PAZ','02','0205',3),('020502','QUIME','','LA PAZ','02','0205',3),('020503','CAJUATA','','LA PAZ','02','0205',3),('020504','COLQUIRI','','LA PAZ','02','0205',3),('020505','ICHOCA','','LA PAZ','02','0205',3),('020506','LICOMA PAMPA (C. LIB. LICOMA)','','LA PAZ','02','0205',3),('020601','ACHACACHI','','LA PAZ','02','0206',3),('020602','ANCORAIMES','','LA PAZ','02','0206',3),('020603','HUARINA','','LA PAZ','02','0206',3),('020604','SANTIAGO DE HUATA','','LA PAZ','02','0206',3),('020701','SORATA','','LA PAZ','02','0207',3),('020702','GUANAY','','LA PAZ','02','0207',3),('020703','TACACOMA','','LA PAZ','02','0207',3),('020704','TIPUANI','','LA PAZ','02','0207',3),('020705','QUIABAYA','','LA PAZ','02','0207',3),('020706','COMBAYA','','LA PAZ','02','0207',3),('020707','MAPIRI','','LA PAZ','02','0207',3),('020708','TEOPONTE','','LA PAZ','02','0207',3),('020709','APOLO',NULL,'LA PAZ','02','0207',3),('020801','COPACABANA','','LA PAZ','02','0208',3),('020802','SAN PEDRO DE TIQUINA','','LA PAZ','02','0208',3),('020803','TITO YUPANQUI (A. PARQUIPUJIO)','','LA PAZ','02','0208',3),('020901','CHUMA','','LA PAZ','02','0209',3),('020902','AYATA','','LA PAZ','02','0209',3),('020903','AUCAPATA','','LA PAZ','02','0209',3),('021001','CORO CORO','','LA PAZ','02','0210',3),('021002','CAQUIAVIRI','','LA PAZ','02','0210',3),('021003','CALACOTO','','LA PAZ','02','0210',3),('021004','COMANCHE','','LA PAZ','02','0210',3),('021005','CHARAÑA','','LA PAZ','02','0210',3),('021006','WALDO BALLIVIAN (C. TUMARAPI)','','LA PAZ','02','0210',3),('021007','MAZACARA DE PACAJES','','LA PAZ','02','0210',3),('021008','SANTIAGO DE CALLAPA (C. CALLAPA)','','LA PAZ','02','0210',3),('021101','PUERTO ACOSTA','','LA PAZ','02','0211',3),('021102','MOCOMOCO','','LA PAZ','02','0211',3),('021103','PUERTO CARABUCO','','LA PAZ','02','0211',3),('021104','ESCOMA','','LA PAZ','02','0211',3),('021105','HUMANATA','','LA PAZ','02','0211',3),('021201','APOLO','','LA PAZ','02','0212',3),('021202','PELECHUCO','','LA PAZ','02','0212',3),('021301','LURIBAY','','LA PAZ','02','0213',3),('021302','SAPAHAQUI','','LA PAZ','02','0213',3),('021303','YACO','','LA PAZ','02','0213',3),('021304','MALLA','','LA PAZ','02','0213',3),('021305','CAIROMA','','LA PAZ','02','0213',3),('021401','CHULUMANI (VILLA DE LA LIBERTAD)','','LA PAZ','02','0214',3),('021402','IRUPANA (VILLA DE LANZA)','','LA PAZ','02','0214',3),('021403','YANACACHI','','LA PAZ','02','0214',3),('021404','PALOS BLANCOS','','LA PAZ','02','0214',3),('021405','LA ASUNTA','','LA PAZ','02','0214',3),('021501','PUCARANI','','LA PAZ','02','0215',3),('021502','LAJA','','LA PAZ','02','0215',3),('021503','BATALLAS','','LA PAZ','02','0215',3),('021504','PUERTO PEREZ','','LA PAZ','02','0215',3),('021601','COROICO','','LA PAZ','02','0216',3),('021602','CORIPATA','','LA PAZ','02','0216',3),('021701','IXIAMAS','','LA PAZ','02','0217',3),('021702','SAN BUENA VENTURA','','LA PAZ','02','0217',3),('021801','GRAL. JUAN JOSE PEREZ (CHARAZANI)','','LA PAZ','02','0218',3),('021802','CURVA','','LA PAZ','02','0218',3),('021901','SAN PEDRO DE CURAHUARA','','LA PAZ','02','0219',3),('021902','PAPEL PAMPA','','LA PAZ','02','0219',3),('021903','CHACARILLA','','LA PAZ','02','0219',3),('022001','SANTIAGO DE MACHACA','','LA PAZ','02','0220',3),('022002','CATACORA','','LA PAZ','02','0220',3),('030101','COCHABAMBA','','COCHABAMBA','03','0301',3),('030201','QUILLACOLLO','','COCHABAMBA','03','0302',3),('030202','SIPE SIPE','','COCHABAMBA','03','0302',3),('030203','TIQUIPAYA','','COCHABAMBA','03','0302',3),('030204','VINTO','','COCHABAMBA','03','0302',3),('030205','COLCAPIRHUA','','COCHABAMBA','03','0302',3),('030301','AIQUILE','','COCHABAMBA','03','0303',3),('030302','PASORAPA','','COCHABAMBA','03','0303',3),('030303','OMEREQUE','','COCHABAMBA','03','0303',3),('030304','AYOPAYA (C. VILLA INDEPENDENCIA)',NULL,'COCHABAMBA','03','0303',3),('030305','COCA PATA',NULL,'COCHABAMBA','03','0303',3),('030306','MOROCHATA',NULL,'COCHABAMBA','03','0303',3),('030401','AYOPAYA (C. VILLA INDEPENDENCIA)','','COCHABAMBA','03','0304',3),('030402','MOROCHATA','','COCHABAMBA','03','0304',3),('030403','COCAPATA','','COCHABAMBA','03','0304',3),('030405','ANZALDO (C. VILLA ANZALDO)',NULL,'COCHABAMBA','03','0304',3),('030406','SACABAMBA',NULL,'COCHABAMBA','03','0304',3),('030501','SACABA','','COCHABAMBA','03','0305',3),('030502','COLOMI','','COCHABAMBA','03','0305',3),('030503','VILLA TUNARI','','COCHABAMBA','03','0305',3),('030601','PUNATA (C. VILLA PUNATA)','','COCHABAMBA','03','0306',3),('030602','VILLA RIVERO (C. VILLA RIVERO)','','COCHABAMBA','03','0306',3),('030603','SAN BENITO (C. V.J.Q. MENDOZA)','','COCHABAMBA','03','0306',3),('030604','TACACHI','','COCHABAMBA','03','0306',3),('030605','CUCHUMUELA (V. G. VILLARROEL)','','COCHABAMBA','03','0306',3),('030606','ARQUE (C. VILLA DE ARQUE)',NULL,'COCHABAMBA','03','0306',3),('030607','TACOPAYA',NULL,'COCHABAMBA','03','0306',3),('030701','TARATA','','COCHABAMBA','03','0307',3),('030702','ANZALDO (C. VILLA ANZALDO)','','COCHABAMBA','03','0307',3),('030703','ARBIETO','','COCHABAMBA','03','0307',3),('030704','SACABAMBA','','COCHABAMBA','03','0307',3),('030705','SICAYA',NULL,'COCHABAMBA','03','0307',3),('030801','CLIZA','','COCHABAMBA','03','0308',3),('030802','TOKO','','COCHABAMBA','03','0308',3),('030803','TOLATA','','COCHABAMBA','03','0308',3),('030901','CAPINOTA','','COCHABAMBA','03','0309',3),('030902','SANTIVA?EZ (C. VILLA SANTIVAÑEZ)','','COCHABAMBA','03','0309',3),('030903','SICAYA','','COCHABAMBA','03','0309',3),('031001','TAPACARI','','COCHABAMBA','03','0310',3),('031002','VILLA TUNARI',NULL,'COCHABAMBA','03','0310',3),('031101','TOTORA','','COCHABAMBA','03','0311',3),('031102','POJO','','COCHABAMBA','03','0311',3),('031103','POCONA','','COCHABAMBA','03','0311',3),('031104','CHIMORE','','COCHABAMBA','03','0311',3),('031105','PUERTO VILLAROEL','','COCHABAMBA','03','0311',3),('031106','ENTRE RIOS','','COCHABAMBA','03','0311',3),('031107','TAPACARI',NULL,'COCHABAMBA','03','0311',3),('031201','ARANI','','COCHABAMBA','03','0312',3),('031202','VACAS','','COCHABAMBA','03','0312',3),('031203','POJO',NULL,'COCHABAMBA','03','0312',3),('031301','ARQUE (C. VILLA DE ARQUE)','','COCHABAMBA','03','0313',3),('031302','TACOPAYA','','COCHABAMBA','03','0313',3),('031303','VILA VILA\r\n',NULL,'COCHABAMBA','03','0313',NULL),('031401','BOLIVAR','','COCHABAMBA','03','0314',3),('031501','TIRAQUE','','COCHABAMBA','03','0315',3),('031502','SHINAHOTA','','COCHABAMBA','03','0315',3),('031503','BOLÍVAR',NULL,'COCHABAMBA','03','0315',3),('031601','MIZQUE','','COCHABAMBA','03','0316',3),('031602','VILA VILA','','COCHABAMBA','03','0316',3),('031603','ALALAY','','COCHABAMBA','03','0316',3),('031604','TIRAQUE',NULL,'COCHABAMBA','03','0316',3),('031701','BOLIVAR',NULL,'COCHABAMBA','03','0317',3),('040101','ORURO','','ORURO','04','0401',3),('040102','CARACOLLO','','ORURO','04','0401',3),('040103','EL CHORO','','ORURO','04','0401',3),('040104','PARI - SORACACHI','','ORURO','04','0401',3),('040201','CHALLAPATA','','ORURO','04','0402',3),('040202','SANTUARIO DE QUILLACAS','','ORURO','04','0402',3),('040301','HUANUNI (C. VILLA HUANUNI)','','ORURO','04','0403',3),('040302','MACHACAMARCA','','ORURO','04','0403',3),('040401','POOPO (C. VILLA DE POOPO)','','ORURO','04','0404',3),('040402','PAZÑA','','ORURO','04','0404',3),('040403','ANTEQUERA','','ORURO','04','0404',3),('040501','EUCALIPTUS','','ORURO','04','0405',3),('040601','SANTIAGO DE HUARI','','ORURO','04','0406',3),('040701','TOTORA','','ORURO','04','0407',3),('040801','CORQUE','','ORURO','04','0408',3),('040802','CHOQUE COTA','','ORURO','04','0408',3),('040901','CURAHUARA DE CARANGAS SAJAMA','','ORURO','04','0409',3),('040902','TURCO','','ORURO','04','0409',3),('041001','HUACHACALLA','','ORURO','04','0410',3),('041002','ESCARA','','ORURO','04','0410',3),('041003','CRUZ DE MACHACAMARCA','','ORURO','04','0410',3),('041004','YUNGUYO DEL LITORAL','','ORURO','04','0410',3),('041005','ESMERALDA','','ORURO','04','0410',3),('041101','TOLEDO','','ORURO','04','0411',3),('041201','ANDAMARCA (C. SGO. DE ANDAMARCA)','','ORURO','04','0412',3),('041202','BELEN DE ANDAMARCA','','ORURO','04','0412',3),('041301','SALINAS DE GARCI MENDOZA','','ORURO','04','0413',3),('041302','PAMPA AULLAGAS','','ORURO','04','0413',3),('041401','LA RIVERA','','ORURO','04','0414',3),('041402','TODOS SANTOS','','ORURO','04','0414',3),('041403','CARANGAS','','ORURO','04','0414',3),('041501','SABAYA','','ORURO','04','0415',3),('041502','COIPASA','','ORURO','04','0415',3),('041503','CHIPAYA','','ORURO','04','0415',3),('041504','CARANGAS',NULL,'ORURO','04','0415',3),('041601','HUAYLLAMARCA (C. STGO. HUAYLLAMARCA','','ORURO','04','0416',3),('050101','POTOSI','','POTOSI','05','0501',3),('050102','TINGUIPAYA','','POTOSI','05','0501',3),('050103','YOCALLA','','POTOSI','05','0501',3),('050104','URMIRI','','POTOSI','05','0501',3),('050201','UNCIA','','POTOSI','05','0502',3),('050202','CHAYANTA','','POTOSI','05','0502',3),('050203','LLALLAGUA','','POTOSI','05','0502',3),('050204','CHUQUIHUTA','','POTOSI','05','0502',3),('050301','BETANZOS','','POTOSI','05','0503',3),('050302','CHAQUI','','POTOSI','05','0503',3),('050303','TACOBAMBA','','POTOSI','05','0503',3),('050401','COLQUECHACA','','POTOSI','05','0504',3),('050402','RAVELO (A. MORO MORO)','','POTOSI','05','0504',3),('050403','POCOATA','','POTOSI','05','0504',3),('050404','OCURI','','POTOSI','05','0504',3),('050501','SAN PEDRO (C. S.P. DE BUENA VISTA)','','POTOSI','05','0505',3),('050502','TORO TORO','','POTOSI','05','0505',3),('050601','COTAGAITA','','POTOSI','05','0506',3),('050602','VITICHI','','POTOSI','05','0506',3),('050701','TUPIZA','','POTOSI','05','0507',3),('050702','ATOCHA','','POTOSI','05','0507',3),('050801','COLCHA \"K\" (C. VILLA MARTIN)','','POTOSI','05','0508',3),('050802','SAN PEDRO DE QUEMES','','POTOSI','05','0508',3),('050901','SAN PABLO DE LIPEZ','','POTOSI','05','0509',3),('050902','MOJIN','','POTOSI','05','0509',3),('050903','SAN ANTONIO DE ESMORUCO','','POTOSI','05','0509',3),('051001','SACACA (C. VILLA SACACA)','','POTOSI','05','0510',3),('051002','CARIPUYO','','POTOSI','05','0510',3),('051003','MOJINETE',NULL,'POTOSI','05','0510',3),('051004','SAN ANTONIO DE ESMORUCO',NULL,'POTOSI','05','0510',3),('051101','PUNA (C. VILLA TALAVERA)','','POTOSI','05','0511',3),('051102','CAIZA \"D\"','','POTOSI','05','0511',3),('051103','CKOCHAS','','POTOSI','05','0511',3),('051201','UYUNI','','POTOSI','05','0512',3),('051202','TOMAVE','','POTOSI','05','0512',3),('051203','PORCO','','POTOSI','05','0512',3),('051301','ARAMPAMPA','','POTOSI','05','0513',3),('051302','ACASIO','','POTOSI','05','0513',3),('051401','LLICA','','POTOSI','05','0514',3),('051402','TAHUA','','POTOSI','05','0514',3),('051501','VILLAZON','','POTOSI','05','0515',3),('051601','SAN AGUSTIN','','POTOSI','05','0516',3),('060101','TARIJA','','TARIJA','06','0601',3),('060201','PADCAYA','','TARIJA','06','0602',3),('060202','BERMEJO','','TARIJA','06','0602',3),('060301','YACUIBA','','TARIJA','06','0603',3),('060302','CARAPARI','','TARIJA','06','0603',3),('060303','VILLA MONTES','','TARIJA','06','0603',3),('060401','URIONDO (CONCEPCION)','','TARIJA','06','0604',3),('060402','YUNCHARA','','TARIJA','06','0604',3),('060501','SAN LORENZO (C. VILLA S. LORENZO)','','TARIJA','06','0605',3),('060502','TOMAYAPO (EL PUENTE)','','TARIJA','06','0605',3),('060601','ENTRE RIOS','','TARIJA','06','0606',3),('070101','SANTA CRUZ DE LA SIERRA','','SANTA CRUZ','07','0701',3),('070102','COTOCA','','SANTA CRUZ','07','0701',3),('070103','AYACUCHO (C. PORONGO)','','SANTA CRUZ','07','0701',3),('070104','LA GUARDIA','','SANTA CRUZ','07','0701',3),('070105','EL TORNO','','SANTA CRUZ','07','0701',3),('070201','WARNES','','SANTA CRUZ','07','0702',3),('070202','OKINAWA UNO (2-1)','','SANTA CRUZ','07','0702',3),('070301','SAN IGNACIO (C. SAN IGNACIO DE VELA)','','SANTA CRUZ','07','0703',3),('070302','SAN MIGUEL (C. SAN MIGUEL DE VELASCO)','','SANTA CRUZ','07','0703',3),('070303','SAN RAFAEL','','SANTA CRUZ','07','0703',3),('070401','BUENA VISTA','','SANTA CRUZ','07','0704',3),('070402','SAN CARLOS','','SANTA CRUZ','07','0704',3),('070403','YAPACANI','','SANTA CRUZ','07','0704',3),('070404','SAN JUAN','','SANTA CRUZ','07','0704',3),('070501','SAN JOSE (C. SAN J. DE CHIQUITOS)','','SANTA CRUZ','07','0705',3),('070502','PAILON','','SANTA CRUZ','07','0705',3),('070503','ROBORE','','SANTA CRUZ','07','0705',3),('070601','PORTACHUELO','','SANTA CRUZ','07','0706',3),('070602','SANTA ROSA DEL SARA','','SANTA CRUZ','07','0706',3),('070603','COLPA BELGICA','','SANTA CRUZ','07','0706',3),('070701','LAGUNILLAS','','SANTA CRUZ','07','0707',3),('070702','CHARAGUA','','SANTA CRUZ','07','0707',3),('070703','CABEZAS','','SANTA CRUZ','07','0707',3),('070704','CUEVO','','SANTA CRUZ','07','0707',3),('070705','GUTIERREZ','','SANTA CRUZ','07','0707',3),('070706','CAMIRI','','SANTA CRUZ','07','0707',3),('070707','BOYUIBE','','SANTA CRUZ','07','0707',3),('070801','VALLE GRANDE','','SANTA CRUZ','07','0708',3),('070802','TRIGAL','','SANTA CRUZ','07','0708',3),('070803','MORO MORO','','SANTA CRUZ','07','0708',3),('070804','POSTRER VALLE','','SANTA CRUZ','07','0708',3),('070805','PUCARA','','SANTA CRUZ','07','0708',3),('070901','SAMAIPATA','','SANTA CRUZ','07','0709',3),('070902','PAMPA GRANDE','','SANTA CRUZ','07','0709',3),('070903','MAIRANA','','SANTA CRUZ','07','0709',3),('070904','QUIRUSILLAS','','SANTA CRUZ','07','0709',3),('071001','MONTERO','','SANTA CRUZ','07','0710',3),('071002','GRAL. A.SAAVEDRA','','SANTA CRUZ','07','0710',3),('071003','MINEROS','','SANTA CRUZ','07','0710',3),('071004','FERNANDEZ ALONSO','','SANTA CRUZ','07','0710',3),('071005','SAN PEDRO','','SANTA CRUZ','07','0710',3),('071101','CONCEPCION','','SANTA CRUZ','07','0711',3),('071102','SAN JAVIER','','SANTA CRUZ','07','0711',3),('071103','SAN JULIAN','','SANTA CRUZ','07','0711',3),('071104','SAN ANTONIO DEL LOMERIO (2-2)','','SANTA CRUZ','07','0711',3),('071105','SAN RAMON (2-3)','','SANTA CRUZ','07','0711',3),('071106','CUATRO CAÑADAS','','SANTA CRUZ','07','0711',3),('071201','SAN MATIAS','','SANTA CRUZ','07','0712',3),('071301','COMARAPA','','SANTA CRUZ','07','0713',3),('071302','SAIPINA','','SANTA CRUZ','07','0713',3),('071401','PUERTO SUAREZ','','SANTA CRUZ','07','0714',3),('071403','CARMEN RIVERO TORRES','','SANTA CRUZ','07','0714',3),('071501','ASCENCION DE GUARAYOS','','SANTA CRUZ','07','0715',3),('071502','URUBICHA','','SANTA CRUZ','07','0715',3),('071503','EL PUENTE','','SANTA CRUZ','07','0715',3),('080101','TRINIDAD','','BENI','08','0801',3),('080102','SAN JAVIER','','BENI','08','0801',3),('080201','RIBERALTA','','BENI','08','0802',3),('080203','GUAYARAMERIN','','BENI','08','0802',3),('080301','REYES','','BENI','08','0803',3),('080302','RURRENABAQUE','','BENI','08','0803',3),('080303','SAN BORJA','','BENI','08','0803',3),('080304','SANTA ROSA','','BENI','08','0803',3),('080401','SANTA ANA','','BENI','08','0804',3),('080402','EXALTACION','','BENI','08','0804',3),('080501','SAN IGNACIO','','BENI','08','0805',3),('080601','LORETO','','BENI','08','0806',3),('080602','SAN ANDRES','','BENI','08','0806',3),('080701','SAN JOAQUIN','','BENI','08','0807',3),('080702','SAN RAMON','','BENI','08','0807',3),('080703','PUERTO SILES','','BENI','08','0807',3),('080801','MAGDALENA','','BENI','08','0808',3),('080802','BAURES','','BENI','08','0808',3),('080803','HUACARAJE','','BENI','08','0808',3),('0901','Gobierno Autónomo Departamental de Chuquisaca ','GAD-C','DEPARTAMENTO','0',NULL,NULL),('090101','COBIJA','','PANDO','09','0901',3),('090102','CAMPO ANA (C. PORVENIR)','','PANDO','09','0901',3),('090103','MUKDEN (C. BOLPEBRA)','','PANDO','09','0901',3),('090104','COSTA RICA (C. BELLA FLOR)','','PANDO','09','0901',3),('0902','Gobierno Autónomo Departamental de La Paz ','GAD-L','DEPARTAMENTO','0',NULL,NULL),('090201','VICTORIA (C. PUERTO RICO)','','PANDO','09','0902',3),('090202','SAN PEDRO (MANURIPI)','','PANDO','09','0902',3),('090203','ARROYO GRANDE (C. FILADELFIA)','','PANDO','09','0902',3),('0903','Gobierno Autónomo Departamental de Cochabamba ','GAD-C','DEPARTAMENTO','0',NULL,NULL),('090301','AGUA DULCE (C. PTO. GONZALO MORENO)','','PANDO','09','0903',3),('090302','EXALTACION (C. SAN LORENZO)','','PANDO','09','0903',3),('090303','BOLIVAR (C. SENA)','','PANDO','09','0903',3),('0904','Gobierno Autónomo Departamental de Oruro ','GAD-O','DEPARTAMENTO','0',NULL,NULL),('090401','NACEBE (C. SANTA ROSA DEL ABUNA)','','PANDO','09','0904',3),('090402','INGAVI','','PANDO','09','0904',3),('0905','Gobierno Autónomo Departamental de Potosí ','GAD-P','DEPARTAMENTO','0',NULL,NULL),('090501','NUEVO MANOA (C. NUEVA ESPERANZA)','','PANDO','09','0905',3),('090502','VILLA NUEVA','','PANDO','09','0905',3),('090503','EUREKA (C. SANTOS MERCADO)','','PANDO','09','0905',3),('0906','Gobierno Autónomo Departamental de Tarija ','GAD-T','DEPARTAMENTO','0',NULL,NULL),('0907','Gobierno Autónomo Departamental de Santa Cruz ','GAD-S','DEPARTAMENTO','0',NULL,NULL),('0908','Gobierno Autónomo Departamental del Beni ','GAD-B','DEPARTAMENTO','0',NULL,NULL),('0909','Gobierno Autónomo Departamental de Pando ','GAD-P','DEPARTAMENTO','0',NULL,NULL),('1101','Gobierno Autónomo Municipal de Sucre ','SUC','CHUQUISACA','1',NULL,NULL),('1102','Gobierno Autónomo Municipal de Yotala ','YOT','CHUQUISACA','1',NULL,NULL),('1103','Gobierno Autónomo Municipal de Poroma ','POR','CHUQUISACA','1',NULL,NULL),('1104','Gobierno Autónomo Municipal de Villa Azurduy ','AZU','CHUQUISACA','1',NULL,NULL),('1105','Gobierno Autónomo Municipal de Tarvita (Villa Orías) ','TAR','CHUQUISACA','1',NULL,NULL),('1106','Gobierno Autónomo Municipal de Villa Zudañez (Tacopaya) ','ZUD','CHUQUISACA','1',NULL,NULL),('1107','Gobierno Autónomo Municipal de Presto ','PRE','CHUQUISACA','1',NULL,NULL),('1108','Gobierno Autónomo Municipal de Villa Mojocoya ','VMO','CHUQUISACA','1',NULL,NULL),('1109','Gobierno Autónomo Municipal de Icla ','MUJ','CHUQUISACA','1',NULL,NULL),('1110','Gobierno Autónomo Municipal de Padilla ','PAD','CHUQUISACA','1',NULL,NULL),('1111','Gobierno Autónomo Municipal de Tomina ','VTM','CHUQUISACA','1',NULL,NULL),('1112','Gobierno Autónomo Municipal de Sopachuy ','SOP','CHUQUISACA','1',NULL,NULL),('1113','Gobierno Autónomo Municipal de Villa Alcalá ','ALC','CHUQUISACA','1',NULL,NULL),('1114','Gobierno Autónomo Municipal de El Villar ','VIL','CHUQUISACA','1',NULL,NULL),('1115','Gobierno Autónomo Municipal de Monteagudo ','VMT','CHUQUISACA','1',NULL,NULL),('1116','Gobierno Autónomo Municipal de San Pablo de Huacareta ','PDM','CHUQUISACA','1',NULL,NULL),('1117','Gobierno Autónomo Municipal de Tarabuco ','TARB','CHUQUISACA','1',NULL,NULL),('1118','Gobierno Autónomo Municipal de Yamparáez ','YAM','CHUQUISACA','1',NULL,NULL),('1119','Gobierno Autónomo Municipal de Camargo ','CAM','CHUQUISACA','1',NULL,NULL),('1120','Gobierno Autónomo Municipal de San Lucas ','LUC','CHUQUISACA','1',NULL,NULL),('1121','Gobierno Autónomo Municipal de Incahuasi ','INCA','CHUQUISACA','1',NULL,NULL),('1122','Gobierno Autónomo Municipal de Villa Serrano ','SER','CHUQUISACA','1',NULL,NULL),('1123','Gobierno Autónomo Municipal de Camataqui (Villa Abecia) ','ABE','CHUQUISACA','1',NULL,NULL),('1124','Gobierno Autónomo Municipal de Culpina ','CUL','CHUQUISACA','1',NULL,NULL),('1125','Gobierno Autónomo Municipal de Las Carreras ','CRR','CHUQUISACA','1',NULL,NULL),('1126','Gobierno Autónomo Municipal de Villa Vaca Guzmán ','MUY','CHUQUISACA','1',NULL,NULL),('1127','Gobierno Autónomo Municipal de Villa de Huacaya ','VHY','CHUQUISACA','1',NULL,NULL),('1128','Gobierno Autónomo Municipal de Machareti ','MAC','CHUQUISACA','1',NULL,NULL),('1129','Gobierno Autónomo Municipal de Villa Charcas ','VCH','CHUQUISACA','1',NULL,NULL),('1201','Gobierno Autónomo Municipal de La Paz ','LPZ','LA PAZ','2',NULL,NULL),('1202','Gobierno Autónomo Municipal de Palca ','PLC','LA PAZ','2',NULL,NULL),('1203','Gobierno Autónomo Municipal de Mecapaca ','MEC','LA PAZ','2',NULL,NULL),('1204','Gobierno Autónomo Municipal de Achocalla ','ACH','LA PAZ','2',NULL,NULL),('1205','Gobierno Autónomo Municipal de El Alto de La Paz ','ELLA','LA PAZ','2',NULL,NULL),('1206','Gobierno Autónomo Municipal de Viacha ','VIA','LA PAZ','2',NULL,NULL),('1207','Gobierno Autónomo Municipal de Guaqui ','GUA','LA PAZ','2',NULL,NULL),('1208','Gobierno Autónomo Municipal de Tiahuanacu ','TIA','LA PAZ','2',NULL,NULL),('1209','Gobierno Autónomo Municipal de Desaguadero ','DES','LA PAZ','2',NULL,NULL),('1210','Gobierno Autónomo Municipal de Caranavi ','CRV','LA PAZ','2',NULL,NULL),('1211','Gobierno Autónomo Municipal de SicaSica (Villa Aroma) ','SIC','LA PAZ','2',NULL,NULL),('1212','Gobierno Autónomo Municipal de Umala ','UMA','LA PAZ','2',NULL,NULL),('1213','Gobierno Autónomo Municipal de AyoAyo ','AYO','LA PAZ','2',NULL,NULL),('1214','Gobierno Autónomo Municipal de Calamarca ','CAL','LA PAZ','2',NULL,NULL),('1215','Gobierno Autónomo Municipal de Patacamaya ','PAT','LA PAZ','2',NULL,NULL),('1216','Gobierno Autónomo Municipal de Colquencha ','COL','LA PAZ','2',NULL,NULL),('1217','Gobierno Autónomo Municipal de Collana ','COA','LA PAZ','2',NULL,NULL),('1218','Gobierno Autónomo Municipal de Inquisivi ','INQ','LA PAZ','2',NULL,NULL),('1219','Gobierno Autónomo Municipal de Quime ','QUI','LA PAZ','2',NULL,NULL),('1220','Gobierno Autónomo Municipal de Cajuata ','CAJ','LA PAZ','2',NULL,NULL),('1221','Gobierno Autónomo Municipal de Colquiri ','COQ','LA PAZ','2',NULL,NULL),('1222','Gobierno Autónomo Municipal de Ichoca ','ICH','LA PAZ','2',NULL,NULL),('1223','Gobierno Autónomo Municipal de Villa Libertad Licoma ','LIC','LA PAZ','2',NULL,NULL),('1224','Gobierno Autónomo Municipal de Achacachi ','AHI','LA PAZ','2',NULL,NULL),('1225','Gobierno Autónomo Municipal de Ancoraimes ','ANCO','LA PAZ','2',NULL,NULL),('1226','Gobierno Autónomo Municipal de Sorata ','SOR','LA PAZ','2',NULL,NULL),('1227','Gobierno Autónomo Municipal de Guanay ','GNY','LA PAZ','2',NULL,NULL),('1228','Gobierno Autónomo Municipal de Tacacoma ','TAT','LA PAZ','2',NULL,NULL),('1229','Gobierno Autónomo Municipal de Tipuani ','TIP','LA PAZ','2',NULL,NULL),('1230','Gobierno Autónomo Municipal de Quiabaya ','QBY','LA PAZ','2',NULL,NULL),('1231','Gobierno Autónomo Municipal de Combaya ','COM','LA PAZ','2',NULL,NULL),('1232','Gobierno Autónomo Municipal de Copacabana ','COP','LA PAZ','2',NULL,NULL),('1233','Gobierno Autónomo Municipal de San Pedro de Tiquina ','SPT','LA PAZ','2',NULL,NULL),('1234','Gobierno Autónomo Municipal de Tito Yupanqui ','YUP','LA PAZ','2',NULL,NULL),('1235','Gobierno Autónomo Municipal de Chuma ','CHU','LA PAZ','2',NULL,NULL),('1236','Gobierno Autónomo Municipal de Ayata','AYA','LA PAZ','2',NULL,NULL),('1237','Gobierno Autónomo Municipal de Aucapata','AUC','LA PAZ','2',NULL,NULL),('1238','Gobierno Autónomo Municipal de Corocoro','COR','LA PAZ','2',NULL,NULL),('1239','Gobierno Autónomo Municipal de Caquiaviri','CAQ','LA PAZ','2',NULL,NULL),('1240','Gobierno Autónomo Municipal de Calacoto','CAC','LA PAZ','2',NULL,NULL),('1241','Gobierno Autónomo Municipal de Comanche','CMC','LA PAZ','2',NULL,NULL),('1242','Gobierno Autónomo Municipal de Charaña','CHA','LA PAZ','2',NULL,NULL),('1243','Gobierno Autónomo Municipal de Waldo Ballivián','BAL','LA PAZ','2',NULL,NULL),('1244','Gobierno Autónomo Municipal de Nazacara de Pacajes','NAZ','LA PAZ','2',NULL,NULL),('1245','Gobierno Autónomo Municipal de Santiago de Callapa','SCA','LA PAZ','2',NULL,NULL),('1246','Gobierno Autónomo Municipal de Puerto Acosta','ACO','LA PAZ','2',NULL,NULL),('1247','Gobierno Autónomo Municipal de Mocomoco','MOC','LA PAZ','2',NULL,NULL),('1248','Gobierno Autónomo Municipal de Carabuco','CCH','LA PAZ','2',NULL,NULL),('1249','Gobierno Autónomo Municipal de Apolo','APO','LA PAZ','2',NULL,NULL),('1250','Gobierno Autónomo Municipal de Pelechuco','PEL','LA PAZ','2',NULL,NULL),('1251','Gobierno Autónomo Municipal de Luribay','LUR','LA PAZ','2',NULL,NULL),('1252','Gobierno Autónomo Municipal de Sapahaqui','SAPA','LA PAZ','2',NULL,NULL),('1253','Gobierno Autónomo Municipal de Yaco','YAC','LA PAZ','2',NULL,NULL),('1254','Gobierno Autónomo Municipal de Malla','MAL','LA PAZ','2',NULL,NULL),('1255','Gobierno Autónomo Municipal de Cairoma','CAI','LA PAZ','2',NULL,NULL),('1256','Gobierno Autónomo Municipal de Chulumani (Villa de la Libertad) ','CHL','LA PAZ','2',NULL,NULL),('1257','Gobierno Autónomo Municipal de Irupana (Villa de Lanza) ','IRU','LA PAZ','2',NULL,NULL),('1258','Gobierno Autónomo Municipal de Yanacachi','YAN','LA PAZ','2',NULL,NULL),('1259','Gobierno Autónomo Municipal de Palos Blancos','BLA','LA PAZ','2',NULL,NULL),('1260','Gobierno Autónomo Municipal de La Asunta','ASU','LA PAZ','2',NULL,NULL),('1261','Gobierno Autónomo Municipal de Pucarani','PUC','LA PAZ','2',NULL,NULL),('1262','Gobierno Autónomo Municipal de Laja','LAJ','LA PAZ','2',NULL,NULL),('1263','Gobierno Autónomo Municipal de Batallas','BAT','LA PAZ','2',NULL,NULL),('1264','Gobierno Autónomo Municipal de Puerto Pérez','PER','LA PAZ','2',NULL,NULL),('1265','Gobierno Autónomo Municipal de Coroico','COC','LA PAZ','2',NULL,NULL),('1266','Gobierno Autónomo Municipal de Coripata','CRI','LA PAZ','2',NULL,NULL),('1267','Gobierno Autónomo Municipal de Ixiamas','IXI','LA PAZ','2',NULL,NULL),('1268','Gobierno Autónomo Municipal de San Buenaventura','SBV','LA PAZ','2',NULL,NULL),('1269','Gobierno Autónomo Municipal de General Juan José Pérez (Charazani)','CPE','LA PAZ','2',NULL,NULL),('1270','Gobierno Autónomo Municipal de Curva','CUR','LA PAZ','2',NULL,NULL),('1271','Gobierno Autónomo Municipal de San Pedro de Curahuara','PEC','LA PAZ','2',NULL,NULL),('1272','Gobierno Autónomo Municipal de Papel Pampa','PAP','LA PAZ','2',NULL,NULL),('1273','Gobierno Autónomo Municipal de Chacarilla','CLL','LA PAZ','2',NULL,NULL),('1274','Gobierno Autónomo Municipal de Santiago de Machaca','SMA','LA PAZ','2',NULL,NULL),('1275','Gobierno Autónomo Municipal de Catacora','CAT','LA PAZ','2',NULL,NULL),('1276','Gobierno Autónomo Municipal de Mapiri','MAP','LA PAZ','2',NULL,NULL),('1277','Gobierno Autónomo Municipal de Teoponte','TEO','LA PAZ','2',NULL,NULL),('1278','Gobierno Autónomo Municipal de San Andrés de Machaca','AMA','LA PAZ','2',NULL,NULL),('1279','Gobierno Autónomo Municipal de Jesús de Machaca','JMK','LA PAZ','2',NULL,NULL),('1280','Gobierno Autónomo Municipal de Taraco','TCO','LA PAZ','2',NULL,NULL),('1281','Gobierno Autónomo Municipal de Huarina','HUAR','LA PAZ','2',NULL,NULL),('1282','Gobierno Autónomo Municipal de Santiago de Huata','SAH','LA PAZ','2',NULL,NULL),('1283','Gobierno Autónomo Municipal de Escoma','ESC','LA PAZ','2',NULL,NULL),('1284','Gobierno Autónomo Municipal de Humanata','HUMA','LA PAZ','2',NULL,NULL),('1285','Gobierno Autónomo Municipal de Alto Beni','ABN','LA PAZ','2',NULL,NULL),('1286','Gobierno Autónomo Municipal de Huatajata','HUAT','LA PAZ','2',NULL,NULL),('1287','Gobierno Autónomo Municipal de ChuaCocani','CHCO','LA PAZ','2',NULL,NULL),('1301','Gobierno Autónomo Municipal de Cochabamba','CBB','COCHABAMBA','3',NULL,NULL),('1302','Gobierno Autónomo Municipal de Quillacollo','QLL','COCHABAMBA','3',NULL,NULL),('1303','Gobierno Autónomo Municipal de SipeSipe','SIP','COCHABAMBA','3',NULL,NULL),('1304','Gobierno Autónomo Municipal de Tiquipaya','TIQ','COCHABAMBA','3',NULL,NULL),('1305','Gobierno Autónomo Municipal de Vinto','VIN','COCHABAMBA','3',NULL,NULL),('1306','Gobierno Autónomo Municipal de Colcapirhua','CCP','COCHABAMBA','3',NULL,NULL),('1307','Gobierno Autónomo Municipal de Aiquile','AIQ','COCHABAMBA','3',NULL,NULL),('1308','Gobierno Autónomo Municipal de Pasorapa','PAS','COCHABAMBA','3',NULL,NULL),('1309','Gobierno Autónomo Municipal de Omereque','OME','COCHABAMBA','3',NULL,NULL),('1310','Gobierno Autónomo Municipal de Independencia','IND','COCHABAMBA','3',NULL,NULL),('1311','Gobierno Autónomo Municipal de Morochata','MOH','COCHABAMBA','3',NULL,NULL),('1312','Gobierno Autónomo Municipal de Sacaba','SCB','COCHABAMBA','3',NULL,NULL),('1313','Gobierno Autónomo Municipal de Colomi','CLM','COCHABAMBA','3',NULL,NULL),('1314','Gobierno Autónomo Municipal de Villa Tunari','TUN','COCHABAMBA','3',NULL,NULL),('1315','Gobierno Autónomo Municipal de Punata','PNT','COCHABAMBA','3',NULL,NULL),('1316','Gobierno Autónomo Municipal de Villa Rivero','VRV','COCHABAMBA','3',NULL,NULL),('1317','Gobierno Autónomo Municipal de San Benito (Villa José Quintín Mendoza)','MEN','COCHABAMBA','3',NULL,NULL),('1318','Gobierno Autónomo Municipal de Tacachi','TAC','COCHABAMBA','3',NULL,NULL),('1319','Gobierno Autónomo Municipal Villa Gualberto Villarroel ','VGV','COCHABAMBA','3',NULL,NULL),('1320','Gobierno Autónomo Municipal de Tarata','TRT','COCHABAMBA','3',NULL,NULL),('1321','Gobierno Autónomo Municipal de Anzaldo','ANZ','COCHABAMBA','3',NULL,NULL),('1322','Gobierno Autónomo Municipal de Arbieto','ARB','COCHABAMBA','3',NULL,NULL),('1323','Gobierno Autónomo Municipal de Sacabamba','SBB','COCHABAMBA','3',NULL,NULL),('1324','Gobierno Autónomo Municipal de Cliza','CLI','COCHABAMBA','3',NULL,NULL),('1325','Gobierno Autónomo Municipal de Toco','TOC','COCHABAMBA','3',NULL,NULL),('1326','Gobierno Autónomo Municipal de Tolata','TLA','COCHABAMBA','3',NULL,NULL),('1327','Gobierno Autónomo Municipal de Capinota','CAP','COCHABAMBA','3',NULL,NULL),('1328','Gobierno Autónomo Municipal de Santivañez','SAN','COCHABAMBA','3',NULL,NULL),('1329','Gobierno Autónomo Municipal de Sicaya','SCY','COCHABAMBA','3',NULL,NULL),('1330','Gobierno Autónomo Municipal de Tapacari','TAP','COCHABAMBA','3',NULL,NULL),('1331','Gobierno Autónomo Municipal de Totora','TOT','COCHABAMBA','3',NULL,NULL),('1332','Gobierno Autónomo Municipal de Pojo','POJ','COCHABAMBA','3',NULL,NULL),('1333','Gobierno Autónomo Municipal de Pocona','POC','COCHABAMBA','3',NULL,NULL),('1334','Gobierno Autónomo Municipal de Chimoré','CHI','COCHABAMBA','3',NULL,NULL),('1335','Gobierno Autónomo Municipal de Puerto Villarroel','PVI','COCHABAMBA','3',NULL,NULL),('1336','Gobierno Autónomo Municipal de Arani','ARA','COCHABAMBA','3',NULL,NULL),('1337','Gobierno Autónomo Municipal de Vacas','VAC','COCHABAMBA','3',NULL,NULL),('1338','Gobierno Autónomo Municipal de Arque','ARQ','COCHABAMBA','3',NULL,NULL),('1339','Gobierno Autónomo Municipal de Tacopaya','TPY','COCHABAMBA','3',NULL,NULL),('1340','Gobierno Autónomo Municipal de Bolivar','BOL','COCHABAMBA','3',NULL,NULL),('1341','Gobierno Autónomo Municipal de Tiraque','TRQ','COCHABAMBA','3',NULL,NULL),('1342','Gobierno Autónomo Municipal de Mizque','MIZ','COCHABAMBA','3',NULL,NULL),('1343','Gobierno Autónomo Municipal de Vila Vila','VIS','COCHABAMBA','3',NULL,NULL),('1344','Gobierno Autónomo Municipal de Alalay','ALA','COCHABAMBA','3',NULL,NULL),('1345','Gobierno Autónomo Municipal de Entre Rios','ERI','COCHABAMBA','3',NULL,NULL),('1346','Gobierno Autónomo Municipal de Cocapata','CCT','COCHABAMBA','3',NULL,NULL),('1347','Gobierno Autónomo Municipal de Shinahota','SHI','COCHABAMBA','3',NULL,NULL),('1401','Gobierno Autónomo Municipal de Oruro','ORU','ORURO','4',NULL,NULL),('1402','Gobierno Autónomo Municipal de Caracollo','CAR','ORURO','4',NULL,NULL),('1403','Gobierno Autónomo Municipal de El Choro','CHO','ORURO','4',NULL,NULL),('1404','Gobierno Autónomo Municipal de Challapata','CHT','ORURO','4',NULL,NULL),('1405','Gobierno Autónomo Municipal de Santuario de Quillacas','STQ','ORURO','4',NULL,NULL),('1406','Gobierno Autónomo Municipal de Huanuni','VHU','ORURO','4',NULL,NULL),('1407','Gobierno Autónomo Municipal de Machacamarca','MAR','ORURO','4',NULL,NULL),('1408','Gobierno Autónomo Municipal de Poopó (Villa Poopó) ','POO','ORURO','4',NULL,NULL),('1409','Gobierno Autónomo Municipal de Pazña','PAZ','ORURO','4',NULL,NULL),('1410','Gobierno Autónomo Municipal de Antequera','ANT','ORURO','4',NULL,NULL),('1411','Gobierno Autónomo Municipal de Eucaliptus','EUC','ORURO','4',NULL,NULL),('1412','Gobierno Autónomo Municipal de Santiago de Huari','SHU','ORURO','4',NULL,NULL),('1413','Gobierno Autónomo Municipal de Totora','TTR','ORURO','4',NULL,NULL),('1414','Gobierno Autónomo Municipal de Corque','CRQ','ORURO','4',NULL,NULL),('1415','Gobierno Autónomo Municipal de Choquecota','CHE','ORURO','4',NULL,NULL),('1416','Gobierno Autónomo Municipal de Curahuara de Carangas','CDC','ORURO','4',NULL,NULL),('1417','Gobierno Autónomo Municipal de Turco','TUR','ORURO','4',NULL,NULL),('1418','Gobierno Autónomo Municipal de Huachacalla','HCH','ORURO','4',NULL,NULL),('1419','Gobierno Autónomo Municipal de Escara','ESA','ORURO','4',NULL,NULL),('1420','Gobierno Autónomo Municipal de Cruz de Machacamarca','CMA','ORURO','4',NULL,NULL),('1421','Gobierno Autónomo Municipal de Yunguyo de Litoral','YUG','ORURO','4',NULL,NULL),('1422','Gobierno Autónomo Municipal de Esmeralda','ESM','ORURO','4',NULL,NULL),('1423','Gobierno Autónomo Municipal de Toledo','TOL','ORURO','4',NULL,NULL),('1424','Gobierno Autónomo Municipal de Andamarca (Santiago de Andamarca)','ADN','ORURO','4',NULL,NULL),('1425','Gobierno Autónomo Municipal de Belén de Andamarca','BEL','ORURO','4',NULL,NULL),('1426','Gobierno Autónomo Municipal de Salinas de G. Mendoza ','SAL','ORURO','4',NULL,NULL),('1427','Gobierno Autónomo Municipal de Pampa Aullagas','PAM','ORURO','4',NULL,NULL),('1428','Gobierno Autónomo Municipal de La Rivera','RIV','ORURO','4',NULL,NULL),('1429','Gobierno Autónomo Municipal de Todos Santos','TOS','ORURO','4',NULL,NULL),('1430','Gobierno Autónomo Municipal de Carangas','CGA','ORURO','4',NULL,NULL),('1431','Gobierno Autónomo Municipal de Sabaya','SAP','ORURO','4',NULL,NULL),('1432','Gobierno Autónomo Municipal de Coipasa','COI','ORURO','4',NULL,NULL),('1433','Gobierno Autónomo Municipal de Chipaya','CHP','ORURO','4',NULL,NULL),('1434','Gobierno Autónomo Municipal de Huayllamarca (Santiago de Huayllamarca)','SDH','ORURO','4',NULL,NULL),('1435','Gobierno Autónomo Municipal de Soracachi','SRC','ORURO','4',NULL,NULL),('1501','Gobierno Autónomo Municipal de Potosí','POT','POTOSI','5',NULL,NULL),('1502','Gobierno Autónomo Municipal de Tinguipaya','TIN','POTOSI','5',NULL,NULL),('1503','Gobierno Autónomo Municipal de Yocalla','YOC','POTOSI','5',NULL,NULL),('1504','Gobierno Autónomo Municipal de Urmiri','URM','POTOSI','5',NULL,NULL),('1505','Gobierno Autónomo Municipal de Uncía','UNC','POTOSI','5',NULL,NULL),('1506','Gobierno Autónomo Municipal de Chayanta','CHY','POTOSI','5',NULL,NULL),('1507','Gobierno Autónomo Municipal de Llallagua','LLA','POTOSI','5',NULL,NULL),('1508','Gobierno Autónomo Municipal de Betanzos','BET','POTOSI','5',NULL,NULL),('1509','Gobierno Autónomo Municipal de Chaqui','CHQ','POTOSI','5',NULL,NULL),('1510','Gobierno Autónomo Municipal de Tacobamba','TCB','POTOSI','5',NULL,NULL),('1511','Gobierno Autónomo Municipal de Colquechaca','CCQ','POTOSI','5',NULL,NULL),('1512','Gobierno Autónomo Municipal de Ravelo','RAV','POTOSI','5',NULL,NULL),('1513','Gobierno Autónomo Municipal de Pocoata','PCT','POTOSI','5',NULL,NULL),('1514','Gobierno Autónomo Municipal de Ocurí','OCU','POTOSI','5',NULL,NULL),('1515','Gobierno Autónomo Municipal de San Pedro de Buena Vista ','PED','POTOSI','5',NULL,NULL),('1516','Gobierno Autónomo Municipal de Toro Toro','TTO','POTOSI','5',NULL,NULL),('1517','Gobierno Autónomo Municipal de Cotagaita','COT','POTOSI','5',NULL,NULL),('1518','Gobierno Autónomo Municipal de Vitichi','VIT','POTOSI','5',NULL,NULL),('1519','Gobierno Autónomo Municipal de Tupiza','TUP','POTOSI','5',NULL,NULL),('1520','Gobierno Autónomo Municipal de Atocha','ATO','POTOSI','5',NULL,NULL),('1521','Gobierno Autónomo Municipal de Colcha\"K\" (Villa Martín) ','CCK','POTOSI','5',NULL,NULL),('1522','Gobierno Autónomo Municipal de San Pedro de Quemes ','PEQ','POTOSI','5',NULL,NULL),('1523','Gobierno Autónomo Municipal de San Pablo de Lípez','PAB','POTOSI','5',NULL,NULL),('1524','Gobierno Autónomo Municipal de Mojinete','MOJ','POTOSI','5',NULL,NULL),('1525','Gobierno Autónomo Municipal de San Antonio de Esmoruco ','SANT','POTOSI','5',NULL,NULL),('1526','Gobierno Autónomo Municipal de Sacaca (Villa de Sacaca) ','SAC','POTOSI','5',NULL,NULL),('1527','Gobierno Autónomo Municipal de Caripuyo','CRP','POTOSI','5',NULL,NULL),('1528','Gobierno Autónomo Municipal de Puna (Villa Talavera) ','PUN','POTOSI','5',NULL,NULL),('1529','Gobierno Autónomo Municipal de Caiza \"D\"','CAD','POTOSI','5',NULL,NULL),('1530','Gobierno Autónomo Municipal de Uyuni','UYU','POTOSI','5',NULL,NULL),('1531','Gobierno Autónomo Municipal de Tomave','TOM','POTOSI','5',NULL,NULL),('1532','Gobierno Autónomo Municipal de Porco','PRC','POTOSI','5',NULL,NULL),('1533','Gobierno Autónomo Municipal de Arampampa','ARP','POTOSI','5',NULL,NULL),('1534','Gobierno Autónomo Municipal de Acasio','ACA','POTOSI','5',NULL,NULL),('1535','Gobierno Autónomo Municipal de Llica','LLI','POTOSI','5',NULL,NULL),('1536','Gobierno Autónomo Municipal de Tahua','TAH','POTOSI','5',NULL,NULL),('1537','Gobierno Autónomo Municipal de Villazón','VLZ','POTOSI','5',NULL,NULL),('1538','Gobierno Autónomo Municipal de San Agustín','AGU','POTOSI','5',NULL,NULL),('1539','Gobierno Autónomo Municipal de Ckochas','CKO','POTOSI','5',NULL,NULL),('1540','Gobierno Autónomo Municipal de Chuquihuta Ayllu Jucumani ','JUC','POTOSI','5',NULL,NULL),('1601','Gobierno Autónomo Municipal de Tarija','TRJ','TARIJA','6',NULL,NULL),('1602','Gobierno Autónomo Municipal de Padcaya','PCY','TARIJA','6',NULL,NULL),('1603','Gobierno Autónomo Municipal de Bermejo','BER','TARIJA','6',NULL,NULL),('1604','Gobierno Autónomo Municipal de Yacuiba','YCB','TARIJA','6',NULL,NULL),('1605','Gobierno Autónomo Municipal de Caraparí','CRY','TARIJA','6',NULL,NULL),('1606','Gobierno Autónomo Municipal de Villamontes','MON','TARIJA','6',NULL,NULL),('1607','Gobierno Autónomo Municipal de Uriondo (Concepción)','ORI','TARIJA','6',NULL,NULL),('1608','Gobierno Autónomo Municipal de Yunchara','YUN','TARIJA','6',NULL,NULL),('1609','Gobierno Autónomo Municipal de San Lorenzo','SLR','TARIJA','6',NULL,NULL),('1610','Gobierno Autónomo Municipal de El Puente','TMY','TARIJA','6',NULL,NULL),('1611','Gobierno Autónomo Municipal de Entre Ríos','RIO','TARIJA','6',NULL,NULL),('1701','Gobierno Autónomo Municipal de Santa Cruz de La Sierra','SCZ','Santa Cruz','7',NULL,NULL),('1702','Gobierno Autónomo Municipal de Cotoca','CTC','Santa Cruz','7',NULL,NULL),('1703','Gobierno Autónomo Municipal de Porongo (Ayacucho)','PRG','Santa Cruz','7',NULL,NULL),('1704','Gobierno Autónomo Municipal de La Guardia','LGU','Santa Cruz','7',NULL,NULL),('1705','Gobierno Autónomo Municipal de El Torno','TOR','Santa Cruz','7',NULL,NULL),('1706','Gobierno Autónomo Municipal de Warnes','WAR','Santa Cruz','7',NULL,NULL),('1707','Gobierno Autónomo Municipal de San Ignacio (San Ignacio de Velasco)','ING','Santa Cruz','7',NULL,NULL),('1708','Gobierno Autónomo Municipal de San Miguel (San Miguel de Velasco)','MIG','Santa Cruz','7',NULL,NULL),('1709','Gobierno Autónomo Municipal de San Rafael','RAF','Santa Cruz','7',NULL,NULL),('1710','Gobierno Autónomo Municipal de Buena Vista','BUE','Santa Cruz','7',NULL,NULL),('1711','Gobierno Autónomo Municipal de San Carlos','CRL','Santa Cruz','7',NULL,NULL),('1712','Gobierno Autónomo Municipal de Yapacaní','YAP','Santa Cruz','7',NULL,NULL),('1713','Gobierno Autónomo Municipal de San José','JOS','Santa Cruz','7',NULL,NULL),('1714','Gobierno Autónomo Municipal de Pailón','PAI','Santa Cruz','7',NULL,NULL),('1715','Gobierno Autónomo Municipal de Roboré','ROB','Santa Cruz','7',NULL,NULL),('1716','Gobierno Autónomo Municipal de Portachuelo','PCH','Santa Cruz','7',NULL,NULL),('1717','Gobierno Autónomo Municipal de Santa Rosa del Sara','SRS','Santa Cruz','7',NULL,NULL),('1718','Gobierno Autónomo Municipal de Lagunillas','LAG','Santa Cruz','7',NULL,NULL),('1719','Gobierno Autónomo Municipal de Charagua','CHR','Santa Cruz','7',NULL,NULL),('1720','Gobierno Autónomo Municipal de Cabezas','CAB','Santa Cruz','7',NULL,NULL),('1721','Gobierno Autónomo Municipal de Cuevo','CUE','Santa Cruz','7',NULL,NULL),('1722','Gobierno Autónomo Municipal de Gutiérrez','GUT','Santa Cruz','7',NULL,NULL),('1723','Gobierno Autónomo Municipal de Camiri','CMR','Santa Cruz','7',NULL,NULL),('1724','Gobierno Autónomo Municipal de Boyuibe','BOY','Santa Cruz','7',NULL,NULL),('1725','Gobierno Autónomo Municipal de Vallegrande','GRA','Santa Cruz','7',NULL,NULL),('1726','Gobierno Autónomo Municipal de Trigal','TRG','Santa Cruz','7',NULL,NULL),('1727','Gobierno Autónomo Municipal de Moro Moro','MOR','Santa Cruz','7',NULL,NULL),('1728','Gobierno Autónomo Municipal de Postrer Valle','POS','Santa Cruz','7',NULL,NULL),('1729','Gobierno Autónomo Municipal de Pucara','PCR','Santa Cruz','7',NULL,NULL),('1730','Gobierno Autónomo Municipal de Samaipata','SAM','Santa Cruz','7',NULL,NULL),('1731','Gobierno Autónomo Municipal de Pampa Grande','PAG','Santa Cruz','7',NULL,NULL),('1732','Gobierno Autónomo Municipal de Mairana','MAY','Santa Cruz','7',NULL,NULL),('1733','Gobierno Autónomo Municipal de Quirusillas','QRS','Santa Cruz','7',NULL,NULL),('1734','Gobierno Autónomo Municipal de Montero','MTR','Santa Cruz','7',NULL,NULL),('1735','Gobierno Autónomo Municipal de General Agustín Saavedra ','SAA','Santa Cruz','7',NULL,NULL),('1736','Gobierno Autónomo Municipal de Mineros','MIN','Santa Cruz','7',NULL,NULL),('1737','Gobierno Autónomo Municipal de Concepción','CON','Santa Cruz','7',NULL,NULL),('1738','Gobierno Autónomo Municipal de San Javier','SJA','Santa Cruz','7',NULL,NULL),('1739','Gobierno Autónomo Municipal de San Julián','JUL','Santa Cruz','7',NULL,NULL),('1740','Gobierno Autónomo Municipal de San Matías','MAT','Santa Cruz','7',NULL,NULL),('1741','Gobierno Autónomo Municipal de Comarapa','CMP','Santa Cruz','7',NULL,NULL),('1742','Gobierno Autónomo Municipal de Saipina','SAI','Santa Cruz','7',NULL,NULL),('1743','Gobierno Autónomo Municipal de Puerto Suárez','SUA','Santa Cruz','7',NULL,NULL),('1744','Gobierno Autónomo Municipal de Puerto Quijarro','PQO','Santa Cruz','7',NULL,NULL),('1745','Gobierno Autónomo Municipal de Ascención de Guarayos','ADG','Santa Cruz','7',NULL,NULL),('1746','Gobierno Autónomo Municipal de Urubicha','URU','Santa Cruz','7',NULL,NULL),('1747','Gobierno Autónomo Municipal de El Puente','PUE','Santa Cruz','7',NULL,NULL),('1748','Gobierno Autónomo Municipal de Okinawa Uno','OKI','Santa Cruz','7',NULL,NULL),('1749','Gobierno Autónomo Municipal de San Antonio de Lomerio','ANL','Santa Cruz','7',NULL,NULL),('1750','Gobierno Autónomo Municipal de San Ramón','SRA','Santa Cruz','7',NULL,NULL),('1751','Gobierno Autónomo Municipal de El Carmen Rivero Tórrez','CRT','Santa Cruz','7',NULL,NULL),('1752','Gobierno Autónomo Municipal de San Juan','SJU','Santa Cruz','7',NULL,NULL),('1753','Gobierno Autónomo Municipal de Fernández Alonso','FAL','Santa Cruz','7',NULL,NULL),('1754','Gobierno Autónomo Municipal de San Pedro','PDR','Santa Cruz','7',NULL,NULL),('1755','Gobierno Autónomo Municipal de Cuatro Cañadas','CCA','Santa Cruz','7',NULL,NULL),('1756','Gobierno Autónomo Municipal de Colpa Bélgica','CBE','Santa Cruz','7',NULL,NULL),('1801','Gobierno Autónomo Municipal de Trinidad','TRI','Beni','8',NULL,NULL),('1802','Gobierno Autónomo Municipal de San Javier','JAV','Beni','8',NULL,NULL),('1803','Gobierno Autónomo Municipal de Riberalta','RIB','Beni','8',NULL,NULL),('1805','Gobierno Autónomo Municipal de Puerto Guayaramerín','PGU','Beni','8',NULL,NULL),('1806','Gobierno Autónomo Municipal de Reyes','REY','Beni','8',NULL,NULL),('1807','Gobierno Autónomo Municipal de Puerto Rurrenabaque ','RUR','Beni','8',NULL,NULL),('1808','Gobierno Autónomo Municipal de San Borja','BOR','Beni','8',NULL,NULL),('1809','Gobierno Autónomo Municipal de Santa Rosa','ROS','Beni','8',NULL,NULL),('1810','Gobierno Autónomo Municipal de Santa Ana','ANA','Beni','8',NULL,NULL),('1811','Gobierno Autónomo Municipal de San Ignacio','IGN','Beni','8',NULL,NULL),('1812','Gobierno Autónomo Municipal de Loreto','LOR','Beni','8',NULL,NULL),('1813','Gobierno Autónomo Municipal de San Andrés','SAD','Beni','8',NULL,NULL),('1814','Gobierno Autónomo Municipal de San Joaquín','JOA','Beni','8',NULL,NULL),('1815','Gobierno Autónomo Municipal de San Ramón','RAM','Beni','8',NULL,NULL),('1816','Gobierno Autónomo Municipal de Puerto Síles','SIL','Beni','8',NULL,NULL),('1817','Gobierno Autónomo Municipal de Magdalena','MAG','Beni','8',NULL,NULL),('1818','Gobierno Autónomo Municipal de Baures','BAU','Beni','8',NULL,NULL),('1819','Gobierno Autónomo Municipal de Huacaraje','HUA','Beni','8',NULL,NULL),('1820','Gobierno Autónomo Municipal de Exaltación','EXA','Beni','8',NULL,NULL),('1901','Gobierno Autónomo Municipal de Cobija','CBJ','Pando','9',NULL,NULL),('1902','Gobierno Autónomo Municipal de Porvenir','PRV','Pando','9',NULL,NULL),('1903','Gobierno Autónomo Municipal de Bolpebra','BOP','Pando','9',NULL,NULL),('1904','Gobierno Autónomo Municipal de Bella Flor','FLO','Pando','9',NULL,NULL),('1905','Gobierno Autónomo Municipal de Puerto Rico','PRI','Pando','9',NULL,NULL),('1906','Gobierno Autónomo Municipal de San Pedro','SPE','Pando','9',NULL,NULL),('1907','Gobierno Autónomo Municipal de Filadelfia','FIL','Pando','9',NULL,NULL),('1908','Gobierno Autónomo Municipal de Puerto Gonzalo Moreno','PGM','Pando','9',NULL,NULL),('1909','Gobierno Autónomo Municipal de San Lorenzo','SLO','Pando','9',NULL,NULL),('1910','Gobierno Autónomo Municipal de Sena','SEN','Pando','9',NULL,NULL),('1911','Gobierno Autónomo Municipal de Santa Rosa del Abuná','SRO','Pando','9',NULL,NULL),('1912','Gobierno Autónomo Municipal de Ingavi (Humaita)','HUM','Pando','9',NULL,NULL),('1913','Gobierno Autónomo Municipal de Nueva Esperanza','NES','Pando','9',NULL,NULL),('1914','Gobierno Autónomo Municipal de Villa Nueva (Loma Alta)','LOM','Pando','9',NULL,NULL),('1915','Gobierno Autónomo Municipal de Santos Mercado','MER','Pando','9',NULL,NULL),('1990','FPS-Fondo Nacional de Inversión Productiva y Social ','FPS',NULL,'10',NULL,NULL);
/*!40000 ALTER TABLE `p_gobierno_autonomo_rami` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `p_indicador`
--

DROP TABLE IF EXISTS `p_indicador`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `p_indicador` (
  `id_indicador` int(11) NOT NULL AUTO_INCREMENT,
  `pind_descripcion` varchar(1500) DEFAULT NULL,
  `pind_tipo` varchar(30) DEFAULT NULL,
  `pind_entrada` varchar(15) DEFAULT NULL,
  `pind_tipo_valor` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id_indicador`)
) ENGINE=InnoDB AUTO_INCREMENT=140 DEFAULT CHARSET=latin2;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `p_indicador`
--

LOCK TABLES `p_indicador` WRITE;
/*!40000 ALTER TABLE `p_indicador` DISABLE KEYS */;
INSERT INTO `p_indicador` VALUES (1,'Proyectos de Pre inversión supervisados / validados en los tiempos establecidos (oportunidad)','INDICADORES DE RESULTADO','varia','numerico'),(2,'Proyectos cuentan con un documento TESA que cumple la normativa vigente del subsector (VIPFE)','INDICADORES DE RESULTADO','varia','numerico'),(3,'Proyectos en ejecución de acuerdo cumplimiento a la relación contractual','INDICADORES DE RESULTADO','varia','numerico'),(4,'Proyectos concluidos satisfactoriamente en la ejecución de la inversión del programa','INDICADORES DE RESULTADO','varia','numerico'),(5,'Proyecto en funcionamiento','INDICADORES DE RESULTADO','varia','numerico'),(6,'Municipios beneficiados reciben asistencia técnica en la fase de Pre inversión y Fiscalización','INDICADORES DE RESULTADO','varia','numerico'),(7,'Personal del Gobierno Autónomo Municipal capacitado en procesos de adquisiciones','INDICADORES DE RESULTADO','varia','numerico'),(8,'Comunidades beneficiadas son informadas acerca del estado de los procesos de adquisiciones y fiscalización (control social)','INDICADORES DE RESULTADO','varia','numerico'),(9,'Tiempo de duración del proceso de Licitación (No. Días)','INDICADORES DE RESULTADO','estatico','numerico'),(10,'Tiempo de duración del proceso de Contratación (No. Días)','INDICADORES DE RESULTADO','estatico','numerico'),(11,'Superficie con riego antes y después de la intervención (Ha)','INDICADORES DE EFECTO','varia','numerico'),(12,'Superficie por cultivo, cultivada antes de la intervención (ha) Ají','INDICADORES DE EFECTO','varia','numerico'),(13,'Superficie por cultivo, cultivada antes de la intervención (ha) Ajo','INDICADORES DE EFECTO','varia','numerico'),(14,'Superficie por cultivo, cultivada antes de la intervención (ha) Alfalfa','INDICADORES DE EFECTO','varia','numerico'),(15,'Superficie por cultivo, cultivada antes de la intervención (ha) Arroz','INDICADORES DE EFECTO','varia','numerico'),(16,'Superficie por cultivo, cultivada antes de la intervención (ha) Arveja','INDICADORES DE EFECTO','varia','numerico'),(17,'Superficie por cultivo, cultivada antes de la intervención (ha) Arveja verde','INDICADORES DE EFECTO','varia','numerico'),(18,'Superficie por cultivo, cultivada antes de la intervención (ha) Avena','INDICADORES DE EFECTO','varia','numerico'),(19,'Superficie por cultivo, cultivada antes de la intervención (ha) Café','INDICADORES DE EFECTO','varia','numerico'),(20,'Superficie por cultivo, cultivada antes de la intervención (ha) Ca?ahua','INDICADORES DE EFECTO','varia','numerico'),(21,'Superficie por cultivo, cultivada antes de la intervención (ha) Cebada','INDICADORES DE EFECTO','varia','numerico'),(22,'Superficie por cultivo, cultivada antes de la intervención (ha) Cebada forraje','INDICADORES DE EFECTO','varia','numerico'),(23,'Superficie por cultivo, cultivada antes de la intervención (ha) Cebada grano','INDICADORES DE EFECTO','varia','numerico'),(24,'Superficie por cultivo, cultivada antes de la intervención (ha) Cebolla','INDICADORES DE EFECTO','varia','numerico'),(25,'Superficie por cultivo, cultivada antes de la intervención (ha) Chirimoya','INDICADORES DE EFECTO','varia','numerico'),(26,'Superficie por cultivo, cultivada antes de la intervención (ha) Coca','INDICADORES DE EFECTO','varia','numerico'),(27,'Superficie por cultivo, cultivada antes de la intervención (ha) Durazno','INDICADORES DE EFECTO','varia','numerico'),(28,'Superficie por cultivo, cultivada antes de la intervención (ha) Frejol','INDICADORES DE EFECTO','varia','numerico'),(29,'Superficie por cultivo, cultivada antes de la intervención (ha) Frutilla','INDICADORES DE EFECTO','varia','numerico'),(30,'Superficie por cultivo, cultivada antes de la intervención (ha) Haba','INDICADORES DE EFECTO','varia','numerico'),(31,'Superficie por cultivo, cultivada antes de la intervención (ha) Haba seca','INDICADORES DE EFECTO','varia','numerico'),(32,'Superficie por cultivo, cultivada antes de la intervención (ha) Lechuga','INDICADORES DE EFECTO','varia','numerico'),(33,'Superficie por cultivo, cultivada antes de la intervención (ha) Maíz','INDICADORES DE EFECTO','varia','numerico'),(34,'Superficie por cultivo, cultivada antes de la intervención (ha) Maíz grano','INDICADORES DE EFECTO','varia','numerico'),(35,'Superficie por cultivo, cultivada antes de la intervención (ha) Maíz choclo','INDICADORES DE EFECTO','varia','numerico'),(36,'Superficie por cultivo, cultivada antes de la intervención (ha) Maní','INDICADORES DE EFECTO','varia','numerico'),(37,'Superficie por cultivo, cultivada antes de la intervención (ha) Oca','INDICADORES DE EFECTO','varia','numerico'),(38,'Superficie por cultivo, cultivada antes de la intervención (ha) Papa','INDICADORES DE EFECTO','varia','numerico'),(39,'Superficie por cultivo, cultivada antes de la intervención (ha) Papa intermedia','INDICADORES DE EFECTO','varia','numerico'),(40,'Superficie por cultivo, cultivada antes de la intervención (ha) Papa liza','INDICADORES DE EFECTO','varia','numerico'),(41,'Superficie por cultivo, cultivada antes de la intervención (ha) Papa precoz','INDICADORES DE EFECTO','varia','numerico'),(42,'Superficie por cultivo, cultivada antes de la intervención (ha) Plátano','INDICADORES DE EFECTO','varia','numerico'),(43,'Superficie por cultivo, cultivada antes de la intervención (ha) Pi?a','INDICADORES DE EFECTO','varia','numerico'),(44,'Superficie por cultivo, cultivada antes de la intervención (ha) Quinua','INDICADORES DE EFECTO','varia','numerico'),(45,'Superficie por cultivo, cultivada antes de la intervención (ha) Remolacha','INDICADORES DE EFECTO','varia','numerico'),(46,'Superficie por cultivo, cultivada antes de la intervención (ha) Tomate','INDICADORES DE EFECTO','varia','numerico'),(47,'Superficie por cultivo, cultivada antes de la intervención (ha) Trigo','INDICADORES DE EFECTO','varia','numerico'),(48,'Superficie por cultivo, cultivada antes de la intervención (ha) Yuca','INDICADORES DE EFECTO','varia','numerico'),(49,'Superficie por cultivo, cultivada antes de la intervención (ha) Zanahoria','INDICADORES DE EFECTO','varia','numerico'),(50,'Rendimiento de los cultivos (por tipo de cultivo según comunidad intervenida) antes de la intervención (Ton/Ha) Ají','INDICADORES DE EFECTO','varia','numerico'),(51,'Rendimiento de los cultivos (por tipo de cultivo según comunidad intervenida) antes de la intervención (Ton/Ha) Ajo','INDICADORES DE EFECTO','varia','numerico'),(52,'Rendimiento de los cultivos (por tipo de cultivo según comunidad intervenida) antes de la intervención (Ton/Ha) Alfalfa','INDICADORES DE EFECTO','varia','numerico'),(53,'Rendimiento de los cultivos (por tipo de cultivo según comunidad intervenida) antes de la intervención (Ton/Ha) Arroz','INDICADORES DE EFECTO','varia','numerico'),(54,'Rendimiento de los cultivos (por tipo de cultivo según comunidad intervenida) antes de la intervención (Ton/Ha) Arveja','INDICADORES DE EFECTO','varia','numerico'),(55,'Rendimiento de los cultivos (por tipo de cultivo según comunidad intervenida) antes de la intervención (Ton/Ha) Avena','INDICADORES DE EFECTO','varia','numerico'),(56,'Rendimiento de los cultivos (por tipo de cultivo según comunidad intervenida) antes de la intervención (Ton/Ha) Café','INDICADORES DE EFECTO','varia','numerico'),(57,'Rendimiento de los cultivos (por tipo de cultivo según comunidad intervenida) antes de la intervención (Ton/Ha) Ca?ahua','INDICADORES DE EFECTO','varia','numerico'),(58,'Rendimiento de los cultivos (por tipo de cultivo según comunidad intervenida) antes de la intervención (Ton/Ha) Cebada','INDICADORES DE EFECTO','varia','numerico'),(59,'Rendimiento de los cultivos (por tipo de cultivo según comunidad intervenida) antes de la intervención (Ton/Ha) Cebada forraje','INDICADORES DE EFECTO','varia','numerico'),(60,'Rendimiento de los cultivos (por tipo de cultivo según comunidad intervenida) antes de la intervención (Ton/Ha) Cebada grano','INDICADORES DE EFECTO','varia','numerico'),(61,'Rendimiento de los cultivos (por tipo de cultivo según comunidad intervenida) antes de la intervención (Ton/Ha) Cebolla','INDICADORES DE EFECTO','varia','numerico'),(62,'Rendimiento de los cultivos (por tipo de cultivo según comunidad intervenida) antes de la intervención (Ton/Ha) Chirimoya','INDICADORES DE EFECTO','varia','numerico'),(63,'Rendimiento de los cultivos (por tipo de cultivo según comunidad intervenida) antes de la intervención (Ton/Ha) Coca','INDICADORES DE EFECTO','varia','numerico'),(64,'Rendimiento de los cultivos (por tipo de cultivo según comunidad intervenida) antes de la intervención (Ton/Ha) Durazno','INDICADORES DE EFECTO','varia','numerico'),(65,'Rendimiento de los cultivos (por tipo de cultivo según comunidad intervenida) antes de la intervención (Ton/Ha) Frejol','INDICADORES DE EFECTO','varia','numerico'),(66,'Rendimiento de los cultivos (por tipo de cultivo según comunidad intervenida) antes de la intervención (Ton/Ha) Frutilla','INDICADORES DE EFECTO','varia','numerico'),(67,'Rendimiento de los cultivos (por tipo de cultivo según comunidad intervenida) antes de la intervención (Ton/Ha) Haba','INDICADORES DE EFECTO','varia','numerico'),(68,'Rendimiento de los cultivos (por tipo de cultivo según comunidad intervenida) antes de la intervención (Ton/Ha) Haba seca','INDICADORES DE EFECTO','varia','numerico'),(69,'Rendimiento de los cultivos (por tipo de cultivo según comunidad intervenida) antes de la intervención (Ton/Ha) Lechuga','INDICADORES DE EFECTO','varia','numerico'),(70,'Rendimiento de los cultivos (por tipo de cultivo según comunidad intervenida) antes de la intervención (Ton/Ha) Maíz','INDICADORES DE EFECTO','varia','numerico'),(71,'Rendimiento de los cultivos (por tipo de cultivo según comunidad intervenida) antes de la intervención (Ton/Ha) Maíz grano','INDICADORES DE EFECTO','varia','numerico'),(72,'Rendimiento de los cultivos (por tipo de cultivo según comunidad intervenida) antes de la intervención (Ton/Ha) Maíz choclo','INDICADORES DE EFECTO','varia','numerico'),(73,'Rendimiento de los cultivos (por tipo de cultivo según comunidad intervenida) antes de la intervención (Ton/Ha) Mani','INDICADORES DE EFECTO','varia','numerico'),(74,'Rendimiento de los cultivos (por tipo de cultivo según comunidad intervenida) antes de la intervención (Ton/Ha) Oca','INDICADORES DE EFECTO','varia','numerico'),(75,'Rendimiento de los cultivos (por tipo de cultivo según comunidad intervenida) antes de la intervención (Ton/Ha) Papa','INDICADORES DE EFECTO','varia','numerico'),(76,'Rendimiento de los cultivos (por tipo de cultivo según comunidad intervenida) antes de la intervención (Ton/Ha) Papa liza','INDICADORES DE EFECTO','varia','numerico'),(77,'Rendimiento de los cultivos (por tipo de cultivo según comunidad intervenida) antes de la intervención (Ton/Ha) Papa precoz','INDICADORES DE EFECTO','varia','numerico'),(78,'Rendimiento de los cultivos (por tipo de cultivo según comunidad intervenida) antes de la intervención (Ton/Ha) Pi?a','INDICADORES DE EFECTO','varia','numerico'),(79,'Rendimiento de los cultivos (por tipo de cultivo según comunidad intervenida) antes de la intervención (Ton/Ha) Plátano','INDICADORES DE EFECTO','varia','numerico'),(80,'Rendimiento de los cultivos (por tipo de cultivo según comunidad intervenida) antes de la intervención (Ton/Ha) Quinua','INDICADORES DE EFECTO','varia','numerico'),(81,'Rendimiento de los cultivos (por tipo de cultivo según comunidad intervenida) antes de la intervención (Ton/Ha) Remolacha','INDICADORES DE EFECTO','varia','numerico'),(82,'Rendimiento de los cultivos (por tipo de cultivo según comunidad intervenida) antes de la intervención (Ton/Ha) Tomate','INDICADORES DE EFECTO','varia','numerico'),(83,'Rendimiento de los cultivos (por tipo de cultivo según comunidad intervenida) antes de la intervención (Ton/Ha) Trigo','INDICADORES DE EFECTO','varia','numerico'),(84,'Rendimiento de los cultivos (por tipo de cultivo según comunidad intervenida) antes de la intervención (Ton/Ha) Yuca','INDICADORES DE EFECTO','varia','numerico'),(85,'Rendimiento de los cultivos (por tipo de cultivo según comunidad intervenida) antes de la intervención (Ton/Ha) Zanahoria','INDICADORES DE EFECTO','varia','numerico'),(86,'Costos de producción por cultivo, antes de la intervención (en Bs.) Ají','INDICADORES DE EFECTO','varia','numerico'),(87,'Costos de producción por cultivo, antes de la intervención (en Bs.) Ajo','INDICADORES DE EFECTO','varia','numerico'),(88,'Costos de producción por cultivo, antes de la intervención (en Bs.) Alfalfa','INDICADORES DE EFECTO','varia','numerico'),(89,'Costos de producción por cultivo, antes de la intervención (en Bs.) Arroz','INDICADORES DE EFECTO','varia','numerico'),(90,'Costos de producción por cultivo, antes de la intervención (en Bs.) Arveja','INDICADORES DE EFECTO','varia','numerico'),(91,'Costos de producción por cultivo, antes de la intervención (en Bs.) Avena','INDICADORES DE EFECTO','varia','numerico'),(92,'Costos de producción por cultivo, antes de la intervención (en Bs.) Café','INDICADORES DE EFECTO','varia','numerico'),(93,'Costos de producción por cultivo, antes de la intervención (en Bs.) Ca?ahua','INDICADORES DE EFECTO','varia','numerico'),(94,'Costos de producción por cultivo, antes de la intervención (en Bs.) Cebada','INDICADORES DE EFECTO','varia','numerico'),(95,'Costos de producción por cultivo, antes de la intervención (en Bs.) Cebada forraje','INDICADORES DE EFECTO','varia','numerico'),(96,'Costos de producción por cultivo, antes de la intervención (en Bs.) Cebada grano','INDICADORES DE EFECTO','varia','numerico'),(97,'Costos de producción por cultivo, antes de la intervención (en Bs.) Cebolla','INDICADORES DE EFECTO','varia','numerico'),(98,'Costos de producción por cultivo, antes de la intervención (en Bs.) Chirimoya','INDICADORES DE EFECTO','varia','numerico'),(99,'Costos de producción por cultivo, antes de la intervención (en Bs.) Coca','INDICADORES DE EFECTO','varia','numerico'),(100,'Costos de producción por cultivo, antes de la intervención (en Bs.) Durazno','INDICADORES DE EFECTO','varia','numerico'),(101,'Costos de producción por cultivo, antes de la intervención (en Bs.) Frejol','INDICADORES DE EFECTO','varia','numerico'),(102,'Costos de producción por cultivo, antes de la intervención (en Bs.) Frutilla','INDICADORES DE EFECTO','varia','numerico'),(103,'Costos de producción por cultivo, antes de la intervención (en Bs.) Haba','INDICADORES DE EFECTO','varia','numerico'),(104,'Costos de producción por cultivo, antes de la intervención (en Bs.) Haba seca','INDICADORES DE EFECTO','varia','numerico'),(105,'Costos de producción por cultivo, antes de la intervención (en Bs.) Lechuga','INDICADORES DE EFECTO','varia','numerico'),(106,'Costos de producción por cultivo, antes de la intervención (en Bs.) Maíz','INDICADORES DE EFECTO','varia','numerico'),(107,'Costos de producción por cultivo, antes de la intervención (en Bs.) Maíz grano','INDICADORES DE EFECTO','varia','numerico'),(108,'Costos de producción por cultivo, antes de la intervención (en Bs.) Maíz choclo','INDICADORES DE EFECTO','varia','numerico'),(109,'Costos de producción por cultivo, antes de la intervención (en Bs.) Maní','INDICADORES DE EFECTO','varia','numerico'),(110,'Costos de producción por cultivo, antes de la intervención (en Bs.) Oca','INDICADORES DE EFECTO','varia','numerico'),(111,'Costos de producción por cultivo, antes de la intervención (en Bs.) Papa','INDICADORES DE EFECTO','varia','numerico'),(112,'Costos de producción por cultivo, antes de la intervención (en Bs.) Papa liza','INDICADORES DE EFECTO','varia','numerico'),(113,'Costos de producción por cultivo, antes de la intervención (en Bs.) Papa precoz','INDICADORES DE EFECTO','varia','numerico'),(114,'Costos de producción por cultivo, antes de la intervención (en Bs.) Plátano','INDICADORES DE EFECTO','varia','numerico'),(115,'Costos de producción por cultivo, antes de la intervención (en Bs.) Pi?a','INDICADORES DE EFECTO','varia','numerico'),(116,'Costos de producción por cultivo, antes de la intervención (en Bs.) Quinua','INDICADORES DE EFECTO','varia','numerico'),(117,'Costos de producción por cultivo, antes de la intervención (en Bs.) Remolacha','INDICADORES DE EFECTO','varia','numerico'),(118,'Costos de producción por cultivo, antes de la intervención (en Bs.) Tomate','INDICADORES DE EFECTO','varia','numerico'),(119,'Costos de producción por cultivo, antes de la intervención (en Bs.) Trigo','INDICADORES DE EFECTO','varia','numerico'),(120,'Costos de producción por cultivo, antes de la intervención (en Bs.) Yuca','INDICADORES DE EFECTO','varia','numerico'),(121,'Costos de producción por cultivo, antes de la intervención (en Bs.) Zanahoria','INDICADORES DE EFECTO','varia','numerico'),(122,'Costo por hectárea incremental, por proyecto construido','INDICADORES DE EFECTO','varia','numerico'),(123,'Costo por familia beneficiada, por proyecto construido','INDICADORES DE EFECTO','varia','numerico'),(124,'Oferta de agua para riego antes y después de la intervención, por proyecto construido (m3/día)','INDICADORES DE EFECTO','varia','numerico'),(125,'Flujo vehicular antes y después de la intervención, por puente construido o camino mejorado (anual)','INDICADORES DE EFECTO','varia','numerico'),(126,'Transporte o uso principal vehicular que se da antes y después de la intervención, por puente construido o camino mejorado\n1=Social; 2= Económico; 3=Turístico; 4=Otro','INDICADORES DE EFECTO','estatico','cadena'),(127,'Costo por kilometro de camino mejorado','INDICADORES DE EFECTO','varia','numerico'),(128,'Mercados construidos del programa (Tc. 6.86) No.','INDICADORES DE EFECTO','estatico','cadena'),(129,'Mercados construidos del programa (Tc. 6.86) Costo (Bs.)','INDICADORES DE EFECTO','varia','numerico'),(130,'Costo por m2 de infraestructura de apoyo a la producción','INDICADORES DE EFECTO','varia','numerico'),(131,'Costo por metro lineal de puente vehicular peatonal construido','INDICADORES DE EFECTO','varia','numerico'),(132,'Número de proyectos de iniciativa municipal inscritos, respecto al total de proyectos de infraestructura pública','INDICADORES DE EFECTO','varia','numerico'),(133,'Número de proyectos de iniciativa municipal inscritos, respecto al total de proyectos de soberanía alimentaria','INDICADORES DE EFECTO','varia','numerico'),(134,'PIB agrícola municipal, departamental y nacional, antes y después de la intervención (a?o 2012, en miles de Bs. Corrientes)','INDICADORES DE EFECTO','varia','numerico'),(135,'VANP','INDICADORES DE EFECTO','varia','numerico'),(136,'VANS','INDICADORES DE EFECTO','varia','numerico'),(137,'TIRP','INDICADORES DE EFECTO','varia','numerico'),(138,'TIRS','INDICADORES DE EFECTO','varia','numerico'),(139,'RCB/S','INDICADORES DE EFECTO','varia','numerico');
/*!40000 ALTER TABLE `p_indicador` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `p_licitacion_adjudicacion_contratacion`
--

DROP TABLE IF EXISTS `p_licitacion_adjudicacion_contratacion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `p_licitacion_adjudicacion_contratacion` (
  `licitacion_adjudicacion_contratacion_id` int(10) NOT NULL AUTO_INCREMENT,
  `lac_descripcion` varchar(100) NOT NULL,
  PRIMARY KEY (`licitacion_adjudicacion_contratacion_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `p_licitacion_adjudicacion_contratacion`
--

LOCK TABLES `p_licitacion_adjudicacion_contratacion` WRITE;
/*!40000 ALTER TABLE `p_licitacion_adjudicacion_contratacion` DISABLE KEYS */;
INSERT INTO `p_licitacion_adjudicacion_contratacion` VALUES (1,'Infraestructura'),(2,'Operación y Mantenimiento'),(3,'Supervisión Infraestructura'),(4,'Asistencia Técnica'),(5,'TESA');
/*!40000 ALTER TABLE `p_licitacion_adjudicacion_contratacion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `p_licitacion_detalle`
--

DROP TABLE IF EXISTS `p_licitacion_detalle`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `p_licitacion_detalle` (
  `licitacion_detalle_id` int(11) NOT NULL AUTO_INCREMENT,
  `licitacion_detalle_descripcion` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`licitacion_detalle_id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=latin2;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `p_licitacion_detalle`
--

LOCK TABLES `p_licitacion_detalle` WRITE;
/*!40000 ALTER TABLE `p_licitacion_detalle` DISABLE KEYS */;
INSERT INTO `p_licitacion_detalle` VALUES (1,'modalidad'),(2,'cod_convocatoria'),(3,'cuce'),(4,'encargada_proceso'),(5,'fecha_registro'),(6,'boleta_seriedad'),(7,'fecha_apertura'),(8,'fecha_recomendacion'),(9,'fecha_no_objeción'),(10,'fecha_inicio_P10'),(11,'fecha_fin_P30'),(12,'codigo_contrato'),(13,'monto_contratado'),(14,'nombre_empresa'),(15,'buena_inversion'),(16,'cumplimiento_contrato'),(17,'plazo_ejecucion'),(18,'fecha_inicio_P30'),(19,'fecha_fin_C10');
/*!40000 ALTER TABLE `p_licitacion_detalle` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `p_lugar_ubicacion`
--

DROP TABLE IF EXISTS `p_lugar_ubicacion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `p_lugar_ubicacion` (
  `lugar_codigo` int(11) NOT NULL AUTO_INCREMENT,
  `lugar_descripcion` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`lugar_codigo`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin2;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `p_lugar_ubicacion`
--

LOCK TABLES `p_lugar_ubicacion` WRITE;
/*!40000 ALTER TABLE `p_lugar_ubicacion` DISABLE KEYS */;
INSERT INTO `p_lugar_ubicacion` VALUES (1,'URBANO'),(2,'RURAL');
/*!40000 ALTER TABLE `p_lugar_ubicacion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `p_maquinaria`
--

DROP TABLE IF EXISTS `p_maquinaria`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `p_maquinaria` (
  `maquinaria_id` int(11) NOT NULL AUTO_INCREMENT,
  `maquinaria_descripcion` varchar(255) COLLATE utf8_spanish_ci DEFAULT NULL,
  `maquinaria_capacidad` varchar(255) COLLATE utf8_spanish_ci DEFAULT NULL,
  PRIMARY KEY (`maquinaria_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `p_maquinaria`
--

LOCK TABLES `p_maquinaria` WRITE;
/*!40000 ALTER TABLE `p_maquinaria` DISABLE KEYS */;
INSERT INTO `p_maquinaria` VALUES (1,'Volqueta','5'),(2,'Hormigoneras','320'),(3,'Herramientas menores','varias'),(4,'Vehículo de apoyo',''),(5,'Bomba de agua 3HP',NULL),(6,'Compactadora Waker tipo saltarin',NULL);
/*!40000 ALTER TABLE `p_maquinaria` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `p_programa_convenio`
--

DROP TABLE IF EXISTS `p_programa_convenio`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `p_programa_convenio` (
  `convenio_codigo` int(11) NOT NULL AUTO_INCREMENT,
  `convenio_descripcion` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`convenio_codigo`),
  KEY `pk_convenio` (`convenio_codigo`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=89 DEFAULT CHARSET=latin2;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `p_programa_convenio`
--

LOCK TABLES `p_programa_convenio` WRITE;
/*!40000 ALTER TABLE `p_programa_convenio` DISABLE KEYS */;
INSERT INTO `p_programa_convenio` VALUES (1,'KfW - PLAN VIDA'),(4,'AIF-4377'),(5,'AIF-4378'),(6,'AIF-4379'),(7,'AIF-4382'),(8,'AIF-4440'),(9,'ALEM IV RESIDUA'),(10,'AP-ALC MO-INTEN'),(11,'APPC II'),(12,'APPC-KFW'),(13,'BARRILETE'),(14,'BID 1927/BL-BO'),(15,'BID 2252/BL-BO'),(16,'BID 2614/BL-BO'),(17,'BID PS-DIC'),(18,'BID/1075-10'),(19,'BRIGADAS/09'),(20,'CAF/CHACO EMER'),(21,'CANASTA/PASAAS'),(22,'CANASTA-CUENCAS'),(23,'CASAS INTERCULT'),(24,'CHAPARE 2'),(25,'COM ACCION'),(26,'CONST 2 POZOS'),(27,'CUENCA CHAPARE'),(28,'DON 8999 PNC'),(29,'EDIMO-2009'),(30,'EDIMO-2010'),(31,'ENLOSETADO'),(32,'ENLOSETADO 2'),(33,'EVAC AGUA TRINI'),(34,'FON CANASTA III'),(35,'FORTAL. DUF'),(36,'HOL/ELALTO/2008'),(37,'INST NORM 8999'),(38,'LOS TRONCOS/09'),(39,'MI AGUA'),(40,'MI AGUA 2'),(41,'MI AGUA 2 - F3'),(42,'MI AGUA 3'),(43,'MUSEO ORINOCA'),(44,'N/A'),(45,'OPEC 1332-P'),(46,'ORINOCA/CHN/09'),(47,'PAR/BM/2009'),(48,'PASAAS/ COOPLAN'),(49,'PASAAS/1140/08'),(50,'PASAAS/1142/08'),(51,'PASAAS/ASICASUR'),(52,'PASAAS/ELALTO/8'),(53,'PASAP'),(54,'PASS'),(55,'PDCR-DINAMARCA'),(56,'PDCR-SUIZA'),(57,'PDCR-SUIZA ADIC'),(58,'PLAN VIDA KFW'),(59,'PLAN VIVIENDAS'),(60,'PRO JUSTICIA'),(61,'PROG TIQUIPAYA'),(62,'PRONAREC'),(63,'PRRET 2012'),(64,'PUENTES CBBA'),(65,'PUENTES LPZ'),(66,'QUEBRADA/09'),(67,'RIO GRANDE'),(68,'RIO GRANDE 2'),(69,'RIO GRANDE 3'),(70,'RIO LA LLAVE'),(71,'SIN FUENTE'),(72,'TABLADITA/09'),(73,'TALLER ORTESIS'),(74,'TEC. CHALLAPATA'),(75,'TEC. ENTRE RÍOS'),(76,'TEC. G. MORENO'),(77,'TEC. MONTEAGUDO'),(78,'TEC. PATACAMAYA'),(79,'TEC. SAN MATÍAS'),(80,'TEC. SANTA ROSA'),(81,'TEC. UYUNI'),(82,'TEC. VILLAZON'),(83,'TGN/ 2008 REF'),(84,'TGN/EMER/2008'),(85,'TGN/EMER/CHQ'),(86,'TINGLADOS PANDO'),(87,'UAP/BID/1131/08'),(88,'VIV TRINIDAD');
/*!40000 ALTER TABLE `p_programa_convenio` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `p_sector`
--

DROP TABLE IF EXISTS `p_sector`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `p_sector` (
  `sector_codigo` int(11) NOT NULL AUTO_INCREMENT,
  `sector_cod` varchar(10) DEFAULT NULL,
  `sector_descripcion` varchar(900) DEFAULT NULL,
  PRIMARY KEY (`sector_codigo`),
  KEY `pk_sector` (`sector_cod`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=50 DEFAULT CHARSET=latin2;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `p_sector`
--

LOCK TABLES `p_sector` WRITE;
/*!40000 ALTER TABLE `p_sector` DISABLE KEYS */;
INSERT INTO `p_sector` VALUES (1,'3.10.','BOLIVIA PRODUCTIVA - TRANSPORTES'),(26,'01','EDUCACION'),(27,'05','SALUD'),(28,'06','SANEAMIENTO BASICO'),(29,'07','PROTECCION DEL MEDIO AMBIENTE'),(30,'13','PREVENCION'),(31,'16','RECURSOS HIDRICOS'),(32,'17','AGROPECUARIO'),(33,'1.01.','BOLIVIA DIGNA - PROTECCION SOCIAL'),(34,'1.02.','BOLIVIA DIGNA - SALUD'),(35,'1.03.','BOLIVIA DIGNA - EDUCACION'),(36,'1.04.','BOLIVIA DIGNA - SANEAMIENTO BASICO'),(37,'1.05.','BOLIVIA DIGNA - JUSTICIA'),(38,'1.07','BOLIVIA DIGNA - DEFENSA NACIONAL'),(39,'1.07.','BOLIVIA DIGNA - DEFENSA NACIONAL'),(40,'1.08.','BOLIVIA DIGNA - CULTURA'),(41,'3.03.','BOLIVIA PRODUCTIVA - ELECTRICIDAD'),(42,'3.04.','BOLIVIA PRODUCTIVA - RECURSOS AMBIENTALES'),(43,'3.05.','BOLIVIA PRODUCTIVA - DESARROLLO AGROPECUARIO'),(44,'3.06.','BOLIVIA PRODUCTIVA - TRANS. INDUS. MANUFAC Y ARTES'),(45,'3.07.','BOLIVIA PRODUCTIVA - TURISMO'),(46,'3.08','BOLIVIA PRODUCTIVA-VIVIENDA'),(48,'5.02.','MACROECONOMIA-PLANIFICACION'),(49,'04','DESARROLLO RURAL');
/*!40000 ALTER TABLE `p_sector` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `p_tipo_cierre`
--

DROP TABLE IF EXISTS `p_tipo_cierre`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `p_tipo_cierre` (
  `tipo_cierre_id` int(11) NOT NULL AUTO_INCREMENT,
  `tipo_cierre_descripcion` varchar(255) COLLATE utf8_spanish_ci DEFAULT NULL,
  PRIMARY KEY (`tipo_cierre_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `p_tipo_cierre`
--

LOCK TABLES `p_tipo_cierre` WRITE;
/*!40000 ALTER TABLE `p_tipo_cierre` DISABLE KEYS */;
INSERT INTO `p_tipo_cierre` VALUES (1,'Cierre Tecnico Legal'),(2,'Cierre Operativo'),(3,'Cierre Financiero Institucional');
/*!40000 ALTER TABLE `p_tipo_cierre` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `p_tipo_licitacion`
--

DROP TABLE IF EXISTS `p_tipo_licitacion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `p_tipo_licitacion` (
  `tipo_licitacion_id` int(11) NOT NULL AUTO_INCREMENT,
  `tipo_licitacion_descripcion` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`tipo_licitacion_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin2;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `p_tipo_licitacion`
--

LOCK TABLES `p_tipo_licitacion` WRITE;
/*!40000 ALTER TABLE `p_tipo_licitacion` DISABLE KEYS */;
INSERT INTO `p_tipo_licitacion` VALUES (1,'LICITACION-INVITACIÓN'),(2,'ADJUDICACION'),(3,'CONTRATACION');
/*!40000 ALTER TABLE `p_tipo_licitacion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `p_tipo_proyecto`
--

DROP TABLE IF EXISTS `p_tipo_proyecto`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `p_tipo_proyecto` (
  `tipo_proyecto_codigo` int(11) NOT NULL AUTO_INCREMENT,
  `tipo_proyecto_descripcion` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`tipo_proyecto_codigo`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `p_tipo_proyecto`
--

LOCK TABLES `p_tipo_proyecto` WRITE;
/*!40000 ALTER TABLE `p_tipo_proyecto` DISABLE KEYS */;
INSERT INTO `p_tipo_proyecto` VALUES (1,'PRE-INVERSION E INVERSION'),(2,'INVERSION');
/*!40000 ALTER TABLE `p_tipo_proyecto` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `p_ubicacion_geografica`
--

DROP TABLE IF EXISTS `p_ubicacion_geografica`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `p_ubicacion_geografica` (
  `ubicacion_codigo` varchar(10) CHARACTER SET utf32 COLLATE utf32_spanish_ci NOT NULL,
  `ubicacion_departamento` varchar(50) CHARACTER SET utf32 COLLATE utf32_spanish_ci DEFAULT NULL,
  `ubicacion_ciudad` varchar(50) CHARACTER SET utf32 COLLATE utf32_spanish_ci DEFAULT NULL,
  `ubicacion_provincia` varchar(50) CHARACTER SET utf32 COLLATE utf32_spanish_ci DEFAULT NULL,
  `ubicacion_municipio` varchar(50) CHARACTER SET utf32 COLLATE utf32_spanish_ci DEFAULT NULL,
  `ubicacion_comunidad` varchar(50) CHARACTER SET utf32 COLLATE utf32_spanish_ci DEFAULT NULL,
  `ubicacion_seccion` varchar(150) CHARACTER SET utf32 COLLATE utf32_spanish_ci DEFAULT NULL,
  `ubicacion_nivel` char(2) CHARACTER SET utf32 COLLATE utf32_spanish_ci DEFAULT NULL,
  `ubicacion_padre` varchar(7) CHARACTER SET utf32 COLLATE utf32_spanish_ci DEFAULT NULL,
  PRIMARY KEY (`ubicacion_codigo`)
) ENGINE=InnoDB DEFAULT CHARSET=latin2;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `p_ubicacion_geografica`
--

LOCK TABLES `p_ubicacion_geografica` WRITE;
/*!40000 ALTER TABLE `p_ubicacion_geografica` DISABLE KEYS */;
INSERT INTO `p_ubicacion_geografica` VALUES ('0101','CHUQUISACA','','OROPEZA','','','','2','1'),('0102','CHUQUISACA','','AZURDUY','','','','2','1'),('0103','CHUQUISACA','','ZUDAÑEZ','','','','2','1'),('0103041','CHUQUISACA','','ZUDAÑEZ','ICLA','CANTAR GALLO','','4','010304'),('0104','CHUQUISACA','','TOMINA','','','','2','1'),('0104011','CHUQUISACA','','TOMINA','PADILLA','TABACAL','','4','010401'),('0104031','CHUQUISACA','','TOMINA','SOPACHUY','PAMPAS DEL CARMEN','','4','010403'),('0105','CHUQUISACA','','HERNANDO SILES','','','','2','1'),('0106','CHUQUISACA','','YAMPARAEZ','','','','2','1'),('0106011','CHUQUISACA','','YAMPARAEZ','TARABUCO','HIGUERAS CHILCA','','4','010601'),('0106021','CHUQUISACA','','YAMPARAEZ','YAMPARÁEZ','CARAMA','','4','010602'),('0106022','CHUQUISACA','','YAMPARAEZ','YAMPARÁEZ','CONCEPCION','','4','010602'),('0106023','CHUQUISACA','','YAMPARAEZ','YAMPARÁEZ','PATA LLAJTA','','4','010602'),('0107','CHUQUISACA','','NOR CINTI','','','','2','1'),('0107024','CHUQUISACA','','NOR CINTI','SAN LUCAS','CANCHAS BLANCAS','','4','010702'),('0107031','CHUQUISACA','','NOR CINTI','INCAHUASI','CHILLAJARA','','4','010703'),('0108','CHUQUISACA','','BELISARIO BOETO','','','','2','1'),('0108011','CHUQUISACA','','BELISARIO BOETO','VILLA SERRANO','URRIOLAGOITIA','','4','010801'),('0108012','CHUQUISACA','','BELISARIO BOETO','VILLA SERRANO','ESCALERAS','','4','010801'),('0109','CHUQUISACA','','SUD CINTI','','','','2','1'),('0109021','CHUQUISACA','','SUD CINTI','CULPINA','SALVIANI','','4','010902'),('0110','CHUQUISACA','','LUIS CALVO','','','','2','1'),('0110011','CHUQUISACA','','LUIS CALVO','VILLA VACA GUZMAN(MUYUPAMPA)','IGUEMBE ','','4','011001'),('0110012','CHUQUISACA','','LUIS CALVO','VILLA VACA GUZMAN(MUYUPAMPA)','LA TAPERA','','4','011001'),('0110013','CHUQUISACA','','LUIS CALVO','VILLA VACA GUZMAN(MUYUPAMPA)','AGUAYRENDA','','4','011001'),('0110014','CHUQUISACA','','LUIS CALVO','VILLA VACA GUZMAN(MUYUPAMPA)','CUMANDAITY','','4','011001'),('0110015','CHUQUISACA','','LUIS CALVO','VILLA VACA GUZMAN(MUYUPAMPA)','ITY','','4','011001'),('0110021','CHUQUISACA','','LUIS CALVO','HUACAYA','HUACAYA','','4','011002'),('0110031','CHUQUISACA','','LUIS CALVO','MACHARETÍ','IPATY','','4','011003'),('0201','LA PAZ','','MURILLO','','','','2','2'),('0202','LA PAZ','','OMASUYOS','','','','2','2'),('0203','LA PAZ','','PACAJES','','','','2','2'),('0204','LA PAZ','','CAMACHO','','','','2','2'),('0205','LA PAZ','','MUÑECAS','','','','2','2'),('0206','LA PAZ','','LARECAJA','','','','2','2'),('0207','LA PAZ','','FRANZ TAMAYO','','','','2','2'),('0208','LA PAZ','','INGAVI','','','','2','2'),('0209','LA PAZ','','LOAYZA','','','','2','2'),('0210','LA PAZ','','INQUISIVI','','','','2','2'),('0211','LA PAZ','','SUR YUNGAS','','','','2','2'),('0212','LA PAZ','','LOS ANDES','','','','2','2'),('0213','LA PAZ','','AROMA','','','','2','2'),('0214','LA PAZ','','NOR YUNGAS','','','','2','2'),('0215','LA PAZ','','ABEL ITURRALDE','','','','2','2'),('0216','LA PAZ','','BAUTISTA SAAVEDRA','','','','2','2'),('0217','LA PAZ','','MANCO KAPAC','','','','2','2'),('0218','LA PAZ','','GUALBERTO VILLARROEL','','','','2','2'),('0219','LA PAZ','','GRAL.JOSE MANUEL PANDO','','','','2','2'),('0220','LA PAZ','','CARANAVI','','','','2','2'),('0301','COCHABAMBA','','CERCADO','','','','2','3'),('0302','COCHABAMBA','','CAMPERO','','','','2','3'),('0303','COCHABAMBA','','AYOPAYA','','','','2','3'),('0304','COCHABAMBA','','ESTEBAN ARCE','','','','2','3'),('0304011','COCHABAMBA','','AYOPAYA','INDEPENDENCIA','CARHUANI','','4','030401'),('0304012','COCHABAMBA','','AYOPAYA','INDEPENDENCIA','TAMIÑANI','','4','030401'),('0305','COCHABAMBA','','ARANI','','','','2','3'),('0306','COCHABAMBA','','ARQUE','','','','2','3'),('0307','COCHABAMBA','','CAPINOTA','','','','2','3'),('0307021','COCHABAMBA','','ESTEBAN ARCE','ANZALDO','QUEBRADA HONDA','','4','030702'),('0307022','COCHABAMBA','','ESTEBAN ARCE','ANZALDO','MOROCHATA','','4','030702'),('0308','COCHABAMBA','','GERMAN JORDAN','','','','2','3'),('0309','COCHABAMBA','','QUILLACOLLO','','','','2','3'),('0310','COCHABAMBA','','CHAPARE','','','','2','3'),('0311','COCHABAMBA','','TAPACARI','','','','2','3'),('0311011','COCHABAMBA','','CARRASCO','TOTORA','ANTA QHAWA','','4','031101'),('0311021','COCHABAMBA','','CARRASCO','POJO','DIANPAMPA','','4','031102'),('0311022','COCHABAMBA','','CARRASCO','POJO','KARAHUASI','','4','031102'),('0312','COCHABAMBA','','CARRASCO','','','','2','3'),('0313','COCHABAMBA','','MIZQUE','','','','2','3'),('0313011','COCHABAMBA','','ARQUE','ARQUE','QUINUA CHACRA','','4','031301'),('0313021','COCHABAMBA','','ARQUE','TACOPAYA','MELGAPAMPA','','4','031302'),('0313022','COCHABAMBA','','ARQUE','TACOPAYA','MICAYANI GRANDE (PONGO  RAMIREZ)','','4','031302'),('0313023','COCHABAMBA',NULL,'ARQUE','TACOPAYA','QASA PATA, MURUTA,QUINUA CHAJRA Y QUEWIÑA',NULL,'4','031302'),('0314','COCHABAMBA','','PUNATA','','','','2','3'),('0315','COCHABAMBA','','SIMON BOLÍVAR','','','','2','3'),('0316','COCHABAMBA','','TIRAQUE','','','','2','3'),('0316011','COCHABAMBA','','MIZQUE','MIZQUE','HUCHAMA ALTA','','4','031601'),('0316021','COCHABAMBA','','MIZQUE','VILA VILA','CHILIJCHI','','4','031602'),('0316031','COCHABAMBA','','MIZQUE','ALALAY','QOTURI (QUIRUSILLANI, SACHALOMA, PUTUNKU, MUYURINA','','4','031603'),('0401','ORURO','','CERCADO','','','','2','4'),('0402','ORURO','','EDUARDO AVAROA','','','','2','4'),('0403','ORURO','','CARANGAS','','','','2','4'),('0404','ORURO','','SAJAMA','','','','2','4'),('0405','ORURO','','LITORAL DE ATACAMA','','','','2','4'),('0406','ORURO','','POOPO','','','','2','4'),('0407','ORURO','','PANTALEON DALENCE','','','','2','4'),('0408','ORURO','','LADISLAO CABRERA','','','','2','4'),('0408011','ORURO','','CARANGAS','CORQUE','HUAYLLAPACHA','','4','040801'),('0409','ORURO','','ATAHUALLPA','','','','2','4'),('0409011','ORURO','','SAJAMA','CURAHUARA DE CARANGAS','TAYPI COLLANA MARCA MARCA','','4','040901'),('0410','ORURO','','SAUCARI','','','','2','4'),('0411','ORURO','','TOMAS BARRON','','','','2','4'),('0412','ORURO','','SUD CARANGAS','','','','2','4'),('0413','ORURO','','SAN PEDRO DE TOTORA','','','','2','4'),('0414','ORURO','','SEBASTIAN PAGADOR','','','','2','4'),('0415','ORURO','','MEJILLONES','','','','2','4'),('0416','ORURO','','NOR CARANGAS','','','','2','4'),('0501','POTOSI','','TOMAS FRIAS','','','','2','5'),('0502','POTOSI','','RAFAEL BUSTILLOS','','','','2','5'),('0503','POTOSI','','CORNELIO SAAVEDRA','','','','2','5'),('0504','POTOSI','','CHAYANTA','','','','2','5'),('0505','POTOSI','','CHARCAS','','','','2','5'),('0506','POTOSI','','NOR CHICHAS','','','','2','5'),('0506011','POTOSI','','NOR CHICHAS','COTAGAITA','MOCKO PATA','','4','050601'),('0507','POTOSI','','ALONSO DE IBAÑEZ','','','','2','5'),('0508','POTOSI','','SUR CHICHAS','','','','2','5'),('0509','POTOSI','','NOR LIPEZ','','','','2','5'),('0510','POTOSI','','SUR LIPEZ','','','','2','5'),('0511','POTOSI','','JOSE MARIA LINARES','','','','2','5'),('0511011','POTOSI','','JOSE MARIA LINARES','CAIZA \"D\"','LA FRAGUA','','4','051101'),('0512','POTOSI','','ANTONIO QUIJARRO','','','','2','5'),('0513','POTOSI','','GRAL.BERNARDINO BILBAO','','','','2','5'),('0514','POTOSI','','DANIEL CAMPOS','','','','2','5'),('0515','POTOSI','','MODESTO OMISTE','','','','2','5'),('0516','POTOSI','','ENRIQUE BALDIVIESO','','','','2','5'),('0601','TARIJA','','CERCADO','','','','2','6'),('0602','TARIJA','','ARCE','','','','2','6'),('0603','TARIJA','','GRAN CHACO','','','','2','6'),('0604','TARIJA','','AVILES','','','','2','6'),('0605','TARIJA','','MENDEZ','','','','2','6'),('0606','TARIJA','','BURNET O\'OCONNOR','','','','2','6'),('0701','SANTA CRUZ','','ANDRES IBAÑEZ','','','','2','7'),('0702','SANTA CRUZ','','WARNES','','','','2','7'),('0703','SANTA CRUZ','','VELASCO','','','','2','7'),('0704','SANTA CRUZ','','ICHILO','','','','2','7'),('0704031','SANTA CRUZ','','ICHILO','YAPACANÍ','LOS POZOS','','4','070403'),('0704032','SANTA CRUZ','','ICHILO','YAPACANÍ','EL CONDOR','','4','070403'),('0704033','SANTA CRUZ','','ICHILO','YAPACANÍ','PUERTO CHORE','','4','070403'),('0704034','SANTA CRUZ','','ICHILO','YAPACANÍ','15 DE AGOSTO','','4','070403'),('0705','SANTA CRUZ','','CHIQUITOS','','','','2','7'),('0706','SANTA CRUZ','','SARA','','','','2','7'),('0707','SANTA CRUZ','','CORDILLERA','','','','2','7'),('0707051','SANTA CRUZ','','CORDILLERA','GUTIÉRREZ','KAPIRENDA','','4','070705'),('0707052','SANTA CRUZ','','CORDILLERA','GUTIÉRREZ','KURUGUAKUA','','4','070705'),('0707053','SANTA CRUZ','','CORDILLERA','LAGUNILLAS','ALTO PARAPETI','','4','070705'),('0708','SANTA CRUZ','','VALLEGRANDE','','','','2','7'),('0708031','SANTA CRUZ','','VALLEGRANDE','MORO MORO','ABRA DEL ASTILLERO','','4','070803'),('0709','SANTA CRUZ','','FLORIDA','','','','2','7'),('0710','SANTA CRUZ','','OBISPO SANTIESTEVAN','','','','2','7'),('0711','SANTA CRUZ','','ÑUFLO DE CHAVEZ','','','','2','7'),('0711021','SANTA CRUZ','','ÑUFLO DE CHAVEZ','SAN JAVIER','MONTE CRISTO','','4','071102'),('0711022','SANTA CRUZ','','ÑUFLO DE CHAVEZ','SAN JAVIER','SAN FRANCISCO LAS ABRAS','','4','071102'),('0712','SANTA CRUZ','','ANGEL SANDOVAL','','','','2','7'),('0713','SANTA CRUZ','','MANUEL MARIA CABALLERO','','','','2','7'),('0714','SANTA CRUZ','','GERMAN BUSCH','','','','2','7'),('0715','SANTA CRUZ','','GUARAYOS','','','','2','7'),('0715011','SANTA CRUZ','','GUARAYOS','ASCENCIÓN DE GUARAYOS','SANTA MARIA','','4','071501'),('0715012','SANTA CRUZ','','GUARAYOS','ASCENCIÓN DE GUARAYOS','CERRO CHICO','','4','071501'),('0715013','SANTA CRUZ','','GUARAYOS','ASCENCIÓN DE GUARAYOS','CERRO GRANDE','','4','071501'),('0715014','SANTA CRUZ','','GUARAYOS','ASCENCIÓN DE GUARAYOS','NUEVA JERUSALEN','','4','071501'),('0801','BENI','','CERCADO','','','','2','8'),('0802','BENI','','VACA DIEZ','','','','2','8'),('0803','BENI','','GRAL.JOSE BALLIVIAN','','','','2','8'),('0804','BENI','','YACUMA','','','','2','8'),('0805','BENI','','MOXOS','','','','2','8'),('0806','BENI','','MARBAN','','','','2','8'),('0807','BENI','','MAMORE','','','','2','8'),('0808','BENI','','ITENEZ','','','','2','8'),('0901','PANDO','','NICOLAS SUAREZ','','','','2','9'),('0902','PANDO','','MANURIPI','','','','2','9'),('0903','PANDO','','MADRE DE DIOS','','','','2','9'),('0904','PANDO','','ABUNA','','','','2','9'),('0905','PANDO','','FEDERICO ROMAN','','','','2','9'),('1','CHUQUISACA','','','','','','1','0'),('10100','CHUQUISACA','','OROPEZA','','','SECCION CAPITAL','5','101'),('10101','CHUQUISACA','','OROPEZA','','','PRIMERA SECCION MUNICIPAL','5','101'),('10102','CHUQUISACA','','OROPEZA','','','SEGUNDA SECCION MUNICIPAL','5','101'),('1011','CHUQUISACA','','OROPEZA','POROMA','','','3','101'),('1012','CHUQUISACA','','OROPEZA','SUCRE','','','3','101'),('1013','CHUQUISACA','','OROPEZA','YOTALA','','','3','101'),('10201','CHUQUISACA','','AZURDUY','','','PRIMERA SECCION MUNICIPAL','5','102'),('10202','CHUQUISACA','','AZURDUY','','','SEGUNDA SECCION MUNICIPAL','5','102'),('1021','CHUQUISACA','','AZURDUY','TARVITA','','','3','102'),('1022','CHUQUISACA','','AZURDUY','VILLA AZURDUY','','','3','102'),('10301','CHUQUISACA','','ZUDAÑEZ','','','PRIMERA SECCION MUNICIPAL','5','103'),('10302','CHUQUISACA','','ZUDAÑEZ','','','SEGUNDA SECCION MUNICIPAL','5','103'),('10303','CHUQUISACA','','ZUDAÑEZ','','','TERCERA SECCION MUNICIPAL','5','103'),('10304','CHUQUISACA','','ZUDAÑEZ','','','CUARTA SECCION MUNICIPAL','5','103'),('1031','CHUQUISACA','','ZUDAÑEZ','ICLA','','','3','103'),('1032','CHUQUISACA','','ZUDAÑEZ','PRESTO','','','3','103'),('1033','CHUQUISACA','','ZUDAÑEZ','VILLA MOJOCOYA','','','3','103'),('1034','CHUQUISACA','','ZUDAÑEZ','VILLA ZUDÁÑEZ','','','3','103'),('10341','CHUQUISACA','','ZUDAÑEZ','VILLA ZUDÁÑEZ','HUACA HUASI','','4','1034'),('10342','CHUQUISACA','','ZUDAÑEZ','VILLA ZUDÁÑEZ','MAYU TORCOCO','','4','1034'),('10343','CHUQUISACA','','ZUDAÑEZ','VILLA ZUDÁÑEZ','CAPILLA LLAVE','','4','1034'),('10401','CHUQUISACA','','TOMINA','','','PRIMERA SECCION MUNICIPAL','5','104'),('10402','CHUQUISACA','','TOMINA','','','SEGUNDA SECCION MUNICIPAL','5','104'),('10403','CHUQUISACA','','TOMINA','','','TERCERA SECCION MUNICIPAL','5','104'),('10404','CHUQUISACA','','TOMINA','','','CUARTA SECCION MUNICIPAL','5','104'),('10405','CHUQUISACA','','TOMINA','','','QUINTA SECCION MUNICIPAL','5','104'),('1041','CHUQUISACA','','TOMINA','EL VILLAR','','','3','104'),('1042','CHUQUISACA','','TOMINA','PADILLA','','','3','104'),('1043','CHUQUISACA','','TOMINA','SOPACHUY','','','3','104'),('1044','CHUQUISACA','','TOMINA','TOMINA','','','3','104'),('1045','CHUQUISACA','','TOMINA','VILLA ALCALÁ','','','3','104'),('10501','CHUQUISACA','','HERNANDO SILES','','','PRIMERA SECCION MUNICIPAL','5','105'),('10502','CHUQUISACA','','HERNANDO SILES','','','SEGUNDA SECCION MUNICIPAL','5','105'),('1051','CHUQUISACA','','HERNANDO SILES','MONTEAGUDO','','','3','105'),('1052','CHUQUISACA','','HERNANDO SILES','SAN PABLO DE HUACARETA','','','3','105'),('10601','CHUQUISACA','','YAMPARAEZ','','','PRIMERA SECCION MUNICIPAL','5','106'),('10602','CHUQUISACA','','YAMPARAEZ','','','SEGUNDA SECCION MUNICIPAL','5','106'),('1061','CHUQUISACA','','YAMPARAEZ','TARABUCO','','','3','106'),('1062','CHUQUISACA','','YAMPARAEZ','YAMPARÁEZ','','','3','106'),('10701','CHUQUISACA','','NOR CINTI','','','PRIMERA SECCION MUNICIPAL','5','107'),('10702','CHUQUISACA','','NOR CINTI','','','SEGUNDA SECCION MUNICIPAL','5','107'),('10703','CHUQUISACA','','NOR CINTI','','','TERCERA SECCION MUNICIPAL','5','107'),('1071','CHUQUISACA','','NOR CINTI','CAMARGO','','','3','107'),('1072','CHUQUISACA','','NOR CINTI','INCAHUASI','','','3','107'),('1073','CHUQUISACA','','NOR CINTI','SAN LUCAS','','','3','107'),('1074','CHUQUISACA','','NOR CINTI','VILLA CHARCAS (NUEVO)','','','3','107'),('10801','CHUQUISACA','','BELISARIO BOETO','','','PRIMERA SECCION MUNICIPAL','5','108'),('1081','CHUQUISACA','','BELISARIO BOETO','VILLA SERRANO','','','3','108'),('10901','CHUQUISACA','','SUD CINTI','','','PRIMERA SECCION MUNICIPAL','5','109'),('10902','CHUQUISACA','','SUD CINTI','','','SEGUNDA SECCION MUNICIPAL','5','109'),('10903','CHUQUISACA','','SUD CINTI','','','TERCERA SECCION MUNICIPAL','5','109'),('1091','CHUQUISACA','','SUD CINTI','CAMATAQUI','','','3','109'),('1092','CHUQUISACA','','SUD CINTI','CULPINA','','','3','109'),('1093','CHUQUISACA','','SUD CINTI','LAS CARRERAS','','','3','109'),('11001','CHUQUISACA','','LUIS CALVO','','','PRIMERA SECCION MUNICIPAL','5','110'),('11002','CHUQUISACA','','LUIS CALVO','','','SEGUNDA SECCION MUNICIPAL','5','110'),('11003','CHUQUISACA','','LUIS CALVO','','','TERCERA SECCION MUNICIPAL','5','110'),('1101','CHUQUISACA','','LUIS CALVO','HUACAYA','','','3','110'),('1102','CHUQUISACA','','LUIS CALVO','MACHARETÍ','','','3','110'),('1103','CHUQUISACA','','LUIS CALVO','VILLA VACA GUZMAN(MUYUPAMPA)','','','3','110'),('2','LA PAZ','','','','','','1','0'),('20100','LA PAZ','','MURILLO','','','SECCION CAPITAL','5','201'),('20101','LA PAZ','','MURILLO','','','PRIMERA SECCION MUNICIPAL','5','201'),('20102','LA PAZ','','MURILLO','','','SEGUNDA SECCION MUNICIPAL','5','201'),('20103','LA PAZ','','MURILLO','','','TERCERA SECCION MUNICIPAL','5','201'),('20104','LA PAZ','','MURILLO','','','CUARTA SECCION MUNICIPAL','5','201'),('2011','LA PAZ','','MURILLO','ACHOCALLA (2)','','','3','201'),('2012','LA PAZ','','MURILLO','EL ALTO','','','3','201'),('2013','LA PAZ','','MURILLO','LA PAZ','','','3','201'),('2014','LA PAZ','','MURILLO','MECAPACA (1)','','','3','201'),('2015','LA PAZ','','MURILLO','PALCA (1)','','','3','201'),('20201','LA PAZ','','OMASUYOS','','','PRIMERA SECCION MUNICIPAL','5','202'),('20202','LA PAZ','','OMASUYOS','','','SEGUNDA SECCION MUNICIPAL','5','202'),('2021','LA PAZ','','OMASUYOS','ACHACACHI','','','3','202'),('2022','LA PAZ','','OMASUYOS','ANCORAIMES','','','3','202'),('2023','LA PAZ','','OMASUYOS','HUARINA (NUEVO)','','','3','202'),('2024','LA PAZ','','OMASUYOS','SANTIAGO DE HUATA (NUEVO)','','','3','202'),('20301','LA PAZ','','PACAJES','','','PRIMERA SECCION MUNICIPAL','5','203'),('20302','LA PAZ','','PACAJES','','','SEGUNDA SECCION MUNICIPAL','5','203'),('20303','LA PAZ','','PACAJES','','','TERCERA SECCION MUNICIPAL','5','203'),('20304','LA PAZ','','PACAJES','','','CUARTA SECCION MUNICIPAL','5','203'),('20305','LA PAZ','','PACAJES','','','QUINTA SECCION MUNICIPAL','5','203'),('20306','LA PAZ','','PACAJES','','','SEXTA SECCION MUNICIPAL','5','203'),('20307','LA PAZ','','PACAJES','','','SEPTIMA SECCION MUNICIPAL','5','203'),('20308','LA PAZ','','PACAJES','','','OCTAVA SECCION MUNICIPAL','5','203'),('2031','LA PAZ','','PACAJES','CALACOTO','','','3','203'),('2032','LA PAZ','','PACAJES','CAQUIAVIRI','','','3','203'),('2033','LA PAZ','','PACAJES','CHARAÑA','','','3','203'),('2034','LA PAZ','','PACAJES','COMANCHE','','','3','203'),('2035','LA PAZ','','PACAJES','CORO CORO','','','3','203'),('2036','LA PAZ','','PACAJES','NAZACARA DE PACAJES','','','3','203'),('2037','LA PAZ','','PACAJES','SANTIAGO DE CALLAPA','','','3','203'),('2038','LA PAZ','','PACAJES','WALDO BALLIVIÁN','','','3','203'),('20401','LA PAZ','','CAMACHO','','','PRIMERA SECCION MUNICIPAL','5','204'),('20402','LA PAZ','','CAMACHO','','','SEGUNDA SECCION MUNICIPAL','5','204'),('20403','LA PAZ','','CAMACHO','','','TERCERA SECCION MUNICIPAL','5','204'),('2041','LA PAZ','','CAMACHO','ESCOMA (NUEVO)','','','3','204'),('2042','LA PAZ','','CAMACHO','HUMANATA (NUEVO)','','','3','204'),('2043','LA PAZ','','CAMACHO','MOCOMOCO','','','3','204'),('2044','LA PAZ','','CAMACHO','PUERTO ACOSTA','','','3','204'),('2045','LA PAZ','','CAMACHO','PUERTO CARABUCO','','','3','204'),('20501','LA PAZ','','MUÑECAS','','','PRIMERA SECCION MUNICIPAL','5','205'),('20502','LA PAZ','','MUÑECAS','','','SEGUNDA SECCION MUNICIPAL','5','205'),('20503','LA PAZ','','MUÑECAS','','','TERCERA SECCION MUNICIPAL','5','205'),('2051','LA PAZ','','MUÑECAS','AUCAPATA','','','3','205'),('2052','LA PAZ','','MUÑECAS','AYATA','','','3','205'),('2053','LA PAZ','','MUÑECAS','CHUMA','','','3','205'),('20601','LA PAZ','','LARECAJA','','','PRIMERA SECCION MUNICIPAL','5','206'),('20602','LA PAZ','','LARECAJA','','','SEGUNDA SECCION MUNICIPAL','5','206'),('20603','LA PAZ','','LARECAJA','','','TERCERA SECCION MUNICIPAL','5','206'),('20604','LA PAZ','','LARECAJA','','','CUARTA SECCION MUNICIPAL','5','206'),('20605','LA PAZ','','LARECAJA','','','QUINTA SECCION MUNICIPAL','5','206'),('20606','LA PAZ','','LARECAJA','','','SEXTA SECCION MUNICIPAL','5','206'),('2061','LA PAZ','','LARECAJA','COMBAYA','','','3','206'),('2062','LA PAZ','','LARECAJA','GUANAY','','','3','206'),('2063','LA PAZ','','LARECAJA','MAPIRI','','','3','206'),('2064','LA PAZ','','LARECAJA','QUIABAYA','','','3','206'),('2065','LA PAZ','','LARECAJA','SORATA','','','3','206'),('2066','LA PAZ','','LARECAJA','TACACOMA','','','3','206'),('2067','LA PAZ','','LARECAJA','TEOPONTE','','','3','206'),('2068','LA PAZ','','LARECAJA','TIPUANI','','','3','206'),('20701','LA PAZ','','FRANZ TAMAYO','','','PRIMERA SECCION MUNICIPAL','5','207'),('20702','LA PAZ','','FRANZ TAMAYO','','','SEGUNDA SECCION MUNICIPAL','5','207'),('2071','LA PAZ','','FRANZ TAMAYO','APOLO','','','3','207'),('2072','LA PAZ','','FRANZ TAMAYO','PELECHUCO','','','3','207'),('20801','LA PAZ','','INGAVI','','','PRIMERA SECCION MUNICIPAL','5','208'),('20802','LA PAZ','','INGAVI','','','SEGUNDA SECCION MUNICIPAL','5','208'),('20803','LA PAZ','','INGAVI','','','TERCERA SECCION MUNICIPAL','5','208'),('20804','LA PAZ','','INGAVI','','','CUARTA SECCION MUNICIPAL','5','208'),('2081','LA PAZ','','INGAVI','ANDRÉS DE MACHACA','','','3','208'),('2082','LA PAZ','','INGAVI','DESAGUADERO','','','3','208'),('2083','LA PAZ','','INGAVI','GUAQUI','','','3','208'),('2084','LA PAZ','','INGAVI','JESÚS DE MACHACA','','','3','208'),('2085','LA PAZ','','INGAVI','TARACO','','','3','208'),('2086','LA PAZ','','INGAVI','TIAHUANACU','','','3','208'),('2087','LA PAZ','','INGAVI','VIACHA','','','3','208'),('20901','LA PAZ','','LOAYZA','','','PRIMERA SECCION MUNICIPAL','5','209'),('20902','LA PAZ','','LOAYZA','','','SEGUNDA SECCION MUNICIPAL','5','209'),('20903','LA PAZ','','LOAYZA','','','TERCERA SECCION MUNICIPAL','5','209'),('20904','LA PAZ','','LOAYZA','','','CUARTA SECCION MUNICIPAL','5','209'),('20905','LA PAZ','','LOAYZA','','','QUINTA SECCION MUNICIPAL','5','209'),('2091','LA PAZ','','LOAYZA','CAIROMA','','','3','209'),('2092','LA PAZ','','LOAYZA','LURIBAY','','','3','209'),('2093','LA PAZ','','LOAYZA','MALLA','','','3','209'),('2094','LA PAZ','','LOAYZA','SAPAHAQUI','','','3','209'),('2095','LA PAZ','','LOAYZA','YACO','','','3','209'),('21001','LA PAZ','','INQUISIVI','','','PRIMERA SECCION MUNICIPAL','5','210'),('21002','LA PAZ','','INQUISIVI','','','SEGUNDA SECCION MUNICIPAL','5','210'),('21003','LA PAZ','','INQUISIVI','','','TERCERA SECCION MUNICIPAL','5','210'),('21004','LA PAZ','','INQUISIVI','','','CUARTA SECCION MUNICIPAL','5','210'),('21005','LA PAZ','','INQUISIVI','','','QUINTA SECCION MUNICIPAL','5','210'),('21006','LA PAZ','','INQUISIVI','','','SEXTA SECCION MUNICIPAL','5','210'),('2101','LA PAZ','','INQUISIVI','CAJUATA','','','3','210'),('2102','LA PAZ','','INQUISIVI','COLQUIRI','','','3','210'),('2103','LA PAZ','','INQUISIVI','ICHOCA','','','3','210'),('2104','LA PAZ','','INQUISIVI','INQUISIVI','','','3','210'),('2105','LA PAZ','','INQUISIVI','LICOMA PAMPA','','','3','210'),('2106','LA PAZ','','INQUISIVI','QUIME','','','3','210'),('21101','LA PAZ','','SUR YUNGAS','','','PRIMERA SECCION MUNICIPAL','5','211'),('21102','LA PAZ','','SUR YUNGAS','','','SEGUNDA SECCION MUNICIPAL','5','211'),('21103','LA PAZ','','SUR YUNGAS','','','TERCERA SECCION MUNICIPAL','5','211'),('21104','LA PAZ','','SUR YUNGAS','','','CUARTA SECCION MUNICIPAL','5','211'),('21105','LA PAZ','','SUR YUNGAS','','','QUINTA SECCION MUNICIPAL','5','211'),('2111','LA PAZ','','SUR YUNGAS','CHULUMANI','','','3','211'),('2112','LA PAZ','','SUR YUNGAS','IRUPANA','','','3','211'),('2113','LA PAZ','','SUR YUNGAS','LA ASUNTA','','','3','211'),('2114','LA PAZ','','SUR YUNGAS','PALOS BLANCOS','','','3','211'),('2115','LA PAZ','','SUR YUNGAS','YANACACHI','','','3','211'),('21201','LA PAZ','','LOS ANDES','','','PRIMERA SECCION MUNICIPAL','5',''),('21202','LA PAZ','','LOS ANDES','','','SEGUNDA SECCION MUNICIPAL','5',''),('21203','LA PAZ','','LOS ANDES','','','TERCERA SECCION MUNICIPAL','5',''),('21204','LA PAZ','','LOS ANDES','','','CUARTA SECCION MUNICIPAL','5',''),('2121','LA PAZ','','LOS ANDES','BATALLAS','','','3','212'),('2122','LA PAZ','','LOS ANDES','LAJA','','','3','212'),('2123','LA PAZ','','LOS ANDES','PUCARANI','','','3','212'),('2124','LA PAZ','','LOS ANDES','PUERTO PÉREZ','','','3','212'),('21301','LA PAZ','','AROMA','','','PRIMERA SECCION MUNICIPAL','5','213'),('21302','LA PAZ','','AROMA','','','SEGUNDA SECCION MUNICIPAL','5','213'),('21303','LA PAZ','','AROMA','','','TERCERA SECCION MUNICIPAL','5','213'),('21304','LA PAZ','','AROMA','','','CUARTA SECCION MUNICIPAL','5','213'),('21305','LA PAZ','','AROMA','','','QUINTA SECCION MUNICIPAL','5','213'),('21306','LA PAZ','','AROMA','','','SEXTA SECCION MUNICIPAL','5','213'),('21307','LA PAZ','','AROMA','','','SEPTIMA SECCION MUNICIPAL','5','213'),('2131','LA PAZ','','AROMA','AYO AYO','','','3','213'),('2132','LA PAZ','','AROMA','CALAMARCA','','','3','213'),('2133','LA PAZ','','AROMA','COLLANA','','','3','213'),('2134','LA PAZ','','AROMA','COLQUENCHA','','','3','213'),('2135','LA PAZ','','AROMA','PATACAMAYA','','','3','213'),('2136','LA PAZ','','AROMA','SICA SICA','','','3','213'),('2137','LA PAZ','','AROMA','UMALA','','','3','213'),('21401','LA PAZ','','NOR YUNGAS','','','PRIMERA SECCION MUNICIPAL','5','214'),('21402','LA PAZ','','NOR YUNGAS','','','SEGUNDA SECCION MUNICIPAL','5','214'),('2141','LA PAZ','','NOR YUNGAS','CORIPATA','','','3','214'),('2142','LA PAZ','','NOR YUNGAS','COROICO','','','3','214'),('21501','LA PAZ','','ABEL ITURRALDE','','','PRIMERA SECCION MUNICIPAL','5','215'),('21502','LA PAZ','','ABEL ITURRALDE','','','SEGUNDA SECCION MUNICIPAL','5','215'),('2151','LA PAZ','','ABEL ITURRALDE','IXIAMAS','','','3','215'),('2152','LA PAZ','','ABEL ITURRALDE','SAN BUENA VENTURA','','','3','215'),('21601','LA PAZ','','BAUTISTA SAAVEDRA','','','PRIMERA SECCION MUNICIPAL','5','216'),('21602','LA PAZ','','BAUTISTA SAAVEDRA','','','SEGUNDA SECCION MUNICIPAL','5','216'),('2161','LA PAZ','','BAUTISTA SAAVEDRA','CURVA','','','3','216'),('2162','LA PAZ','','BAUTISTA SAAVEDRA','GRAL. JUAN JOSÉ PEREZ (CHARAZA33I)','','','3','216'),('21701','LA PAZ','','MANCO KAPAC','','','PRIMERA SECCION MUNICIPAL','5','217'),('21702','LA PAZ','','MANCO KAPAC','','','SEGUNDA SECCION MUNICIPAL','5','217'),('21703','LA PAZ','','MANCO KAPAC','','','TERCERA SECCION MUNICIPAL','5','217'),('2171','LA PAZ','','MANCO KAPAC','COPACABANA','','','3','217'),('2172','LA PAZ','','MANCO KAPAC','SAN PEDRO DE TIQUINA','','','3','217'),('2173','LA PAZ','','MANCO KAPAC','TITO YUPANQUI','','','3','217'),('21801','LA PAZ','','GUALBERTO VILLARROEL','','','PRIMERA SECCION MUNICIPAL','5','218'),('21802','LA PAZ','','GUALBERTO VILLARROEL','','','SEGUNDA SECCION MUNICIPAL','5','218'),('21803','LA PAZ','','GUALBERTO VILLARROEL','','','TERCERA SECCION MUNICIPAL','5','218'),('2181','LA PAZ','','GUALBERTO VILLARROEL','CHACARILLA','','','3','218'),('2182','LA PAZ','','GUALBERTO VILLARROEL','PAPEL PAMPA','','','3','218'),('2183','LA PAZ','','GUALBERTO VILLARROEL','SAN PEDRO DE CURAHUARA','','','3','218'),('21901','LA PAZ','','GRAL.JOSE MANUEL PANDO','','','PRIMERA SECCION MUNICIPAL','5','219'),('21902','LA PAZ','','GRAL.JOSE MANUEL PANDO','','','SEGUNDA SECCION MUNICIPAL','5','219'),('2191','LA PAZ','','GRAL.JOSE MANUEL PANDO','CATACORA','','','3','219'),('2192','LA PAZ','','GRAL.JOSE MANUEL PANDO','SANTIAGO DE MACHACA','','','3','219'),('22001','LA PAZ','','CARANAVI','','','PRIMERA SECCION MUNICIPAL','5','220'),('2201','LA PAZ','','CARANAVI','ALTO BENI (NUEVO)','','','3','220'),('2202','LA PAZ','','CARANAVI','CARANAVI','','','3','220'),('3','COCHABAMBA','','','','','','1','0'),('30100','COCHABAMBA','','CERCADO','','','SECCION CAPITAL','5','301'),('3011','COCHABAMBA','','CERCADO','COCHABAMBA','','','3','301'),('30201','COCHABAMBA','','CAMPERO','','','PRIMERA SECCION MUNICIPAL','5','302'),('30202','COCHABAMBA','','CAMPERO','','','SEGUNDA SECCION MUNICIPAL','5','302'),('30203','COCHABAMBA','','CAMPERO','','','TERCERA SECCION MUNICIPAL','5','302'),('3021','COCHABAMBA','','CAMPERO','AIQUILE','','','3','302'),('3022','COCHABAMBA','','CAMPERO','OMEREQUE','','','3','302'),('3023','COCHABAMBA','','CAMPERO','PASORAPA','','','3','302'),('30301','COCHABAMBA','','AYOPAYA','','','PRIMERA SECCION MUNICIPAL','5','303'),('30302','COCHABAMBA','','AYOPAYA','','','SEGUNDA SECCION MUNICIPAL','5','303'),('3031','COCHABAMBA','','AYOPAYA','INDEPENDENCIA','','','3','303'),('30401','COCHABAMBA','','ESTEBAN ARCE','','','PRIMERA SECCION MUNICIPAL','5','304'),('30402','COCHABAMBA','','ESTEBAN ARCE','','','SEGUNDA SECCION MUNICIPAL','5','304'),('30403','COCHABAMBA','','ESTEBAN ARCE','','','TERCERA SECCION MUNICIPAL','5','304'),('30404','COCHABAMBA','','ESTEBAN ARCE','','','CUARTA SECCION MUNICIPAL','5','304'),('3041','COCHABAMBA','','ESTEBAN ARCE','ANZALDO','','','3','304'),('30501','COCHABAMBA','','ARANI','','','PRIMERA SECCION MUNICIPAL','5','305'),('30502','COCHABAMBA','','ARANI','','','SEGUNDA SECCION MUNICIPAL','5','305'),('3051','COCHABAMBA','','ARANI','ARANI','','','3','305'),('3052','COCHABAMBA','','ARANI','VACAS','','','3','305'),('30601','COCHABAMBA','','ARQUE','TACOPAYA','','PRIMERA SECCION MUNICIPAL','5','3062'),('30602','COCHABAMBA','','ARQUE','','QUINUA CHACRA','SEGUNDA SECCION MUNICIPAL','5','306'),('3061','COCHABAMBA','','ARQUE','ARQUE','','','3','306'),('3062','COCHABAMBA','','ARQUE','TACOPAYA','','','3','306'),('30701','COCHABAMBA','','CAPINOTA','','','PRIMERA SECCION MUNICIPAL','5','307'),('30702','COCHABAMBA','','CAPINOTA','','','SEGUNDA SECCION MUNICIPAL','5','307'),('30703','COCHABAMBA','','CAPINOTA','','','TERCERA SECCION MUNICIPAL','5','307'),('3071','COCHABAMBA','','CAPINOTA','CAPINOTA','','','3','307'),('3072','COCHABAMBA','','CAPINOTA','SANTIVAÑEZ','','','3','307'),('3073','COCHABAMBA','','CAPINOTA','SICAYA','','','3','307'),('30801','COCHABAMBA','','GERMAN JORDAN','','','PRIMERA SECCION MUNICIPAL','5','308'),('30802','COCHABAMBA','','GERMAN JORDAN','','','SEGUNDA SECCION MUNICIPAL','5','308'),('30803','COCHABAMBA','','GERMAN JORDAN','','','TERCERA SECCION MUNICIPAL','5','308'),('3081','COCHABAMBA','','GERMAN JORDAN','TOCO','','','3','308'),('3082','COCHABAMBA','','GERMAN JORDAN','TOLATA','','','3','308'),('3083','COCHABAMBA','','GERMAN JORDAN','CLIZA','','','3','308'),('30901','COCHABAMBA','','QUILLACOLLO','','','PRIMERA SECCION MUNICIPAL','5','309'),('30902','COCHABAMBA','','QUILLACOLLO','','','SEGUNDA SECCION MUNICIPAL','5','309'),('30903','COCHABAMBA','','QUILLACOLLO','','','TERCERA SECCION MUNICIPAL','5','309'),('30904','COCHABAMBA','','QUILLACOLLO','','','CUARTA SECCION MUNICIPAL','5','309'),('30905','COCHABAMBA','','QUILLACOLLO','','','QUINTA SECCION MUNICIPAL','5','309'),('3091','COCHABAMBA','','QUILLACOLLO','COLCAPIRHUA','','','3','309'),('3092','COCHABAMBA','','QUILLACOLLO','QUILLACOLLO','','','3','309'),('3093','COCHABAMBA','','QUILLACOLLO','SIPE SIPE','','','3','309'),('3094','COCHABAMBA','','QUILLACOLLO','TIQUIPAYA','','','3','309'),('3095','COCHABAMBA','','QUILLACOLLO','VINTO','','','3','309'),('31001','COCHABAMBA','','CHAPARE','','','PRIMERA SECCION MUNICIPAL','5','310'),('31002','COCHABAMBA','','CHAPARE','','','SEGUNDA SECCION MUNICIPAL','5','310'),('31003','COCHABAMBA','','CHAPARE','','','TERCERA SECCION MUNICIPAL','5','310'),('3101','COCHABAMBA','','CHAPARE','COLOMI','','','3','310'),('3102','COCHABAMBA','','CHAPARE','SACABA','','','3','310'),('3103','COCHABAMBA','','CHAPARE','VILLA TUNARI','','','3','310'),('31101','COCHABAMBA','','TAPACARI','','','PRIMERA SECCION MUNICIPAL','5','311'),('3111','COCHABAMBA','','TAPACARI','TAPACARÍ','','','3','311'),('31201','COCHABAMBA','','CARRASCO','','','PRIMERA SECCION MUNICIPAL','5','312'),('31202','COCHABAMBA','','CARRASCO','','','SEGUNDA SECCION MUNICIPAL','5','312'),('31203','COCHABAMBA','','CARRASCO','','','TERCERA SECCION MUNICIPAL','5','312'),('31204','COCHABAMBA','','CARRASCO','','','CUARTA SECCION MUNICIPAL','5','312'),('31205','COCHABAMBA','','CARRASCO','','','QUINTA SECCION MUNICIPAL','5','312'),('3121','COCHABAMBA','','CARRASCO','CHIMORÉ','','','3','312'),('3122','COCHABAMBA','','CARRASCO','ENTRE RÍOS (BULO BULO)','','','3','312'),('3123','COCHABAMBA','','CARRASCO','POCONA','','','3','312'),('3124','COCHABAMBA','','CARRASCO','POJO','','','3','312'),('3125','COCHABAMBA','','CARRASCO','PUERTO VILLARROEL','','','3','312'),('3126','COCHABAMBA','','CARRASCO','TOTORA','','','3','312'),('31301','COCHABAMBA','','MIZQUE','','','PRIMERA SECCION MUNICIPAL','5','313'),('31302','COCHABAMBA','','MIZQUE','','','SEGUNDA SECCION MUNICIPAL','5','313'),('31303','COCHABAMBA','','MIZQUE','','','TERCERA SECCION MUNICIPAL','5','313'),('3131','COCHABAMBA','','MIZQUE','ALALAY','','','3','313'),('3132','COCHABAMBA','','MIZQUE','MIZQUE','','','3','313'),('3133','COCHABAMBA','','MIZQUE','VILA VILA','','','3','313'),('31401','COCHABAMBA','','PUNATA','','','PRIMERA SECCION MUNICIPAL','5','314'),('31402','COCHABAMBA','','PUNATA','','','SEGUNDA SECCION MUNICIPAL','5','314'),('31403','COCHABAMBA','','PUNATA','','','TERCERA SECCION MUNICIPAL','5','314'),('31404','COCHABAMBA','','PUNATA','','','CUARTA SECCION MUNICIPAL','5','314'),('31405','COCHABAMBA','','PUNATA','','','QUINTA SECCION MUNICIPAL','5','314'),('3141','COCHABAMBA','','PUNATA','CUCHUMUELA','','','3','314'),('3142','COCHABAMBA','','PUNATA','PUNATA','','','3','314'),('3143','COCHABAMBA','','PUNATA','SAN BENITO','','','3','314'),('3144','COCHABAMBA','','PUNATA','TACACHI','','','3','314'),('3145','COCHABAMBA','','PUNATA','VILLA RIVERO','','','3','314'),('31501','COCHABAMBA','','BOLIVAR','','','PRIMERA SECCION MUNICIPAL','5','315'),('3151','COCHABAMBA','','BOLIVAR','BOLÍVAR','','','3','315'),('31601','COCHABAMBA','','TIRAQUE','','','PRIMERA SECCION MUNICIPAL','5','316'),('3161','COCHABAMBA','','TIRAQUE','SHINAHOTA (NUEVO)','','','3','316'),('3162','COCHABAMBA','','TIRAQUE','TIRAQUE','','','3','316'),('4','ORURO','','','','','','1','0'),('40100','ORURO','','CERCADO','','','SECCION CAPITAL','5','401'),('40101','ORURO','','CERCADO','','','PRIMERA SECCION MUNICIPAL','5','401'),('40102','ORURO','','CERCADO','','','SEGUNDA SECCION MUNICIPAL','5','401'),('4011','ORURO','','CERCADO','CARACOLLO','','','3','401'),('4012','ORURO','','CERCADO','EL CHORO','','','3','401'),('4013','ORURO','','CERCADO','ORURO','','','3','401'),('4014','ORURO','','CERCADO','SORACACHI','','','3','401'),('40201','ORURO','','EDUARDO AVAROA','','','PRIMERA SECCION MUNICIPAL','5','402'),('40202','ORURO','','EDUARDO AVAROA','','','SEGUNDA SECCION MUNICIPAL','5','402'),('4021','ORURO','','EDUARDO AVAROA','CHALLAPATA','','','3','402'),('4022','ORURO','','EDUARDO AVAROA','SANTUARIO DE QUILLACAS','','','3','402'),('40301','ORURO','','CARANGAS','','','PRIMERA SECCION MUNICIPAL','5','403'),('40302','ORURO','','CARANGAS','','','SEGUNDA SECCION MUNICIPAL','5','403'),('4031','ORURO','','CARANGAS','CHOQUECOTA','','','3','403'),('4032','ORURO','','CARANGAS','CORQUE','','','3','403'),('40401','ORURO','','SAJAMA','','','PRIMERA SECCION MUNICIPAL','5','404'),('40402','ORURO','','SAJAMA','','','SEGUNDA SECCION MUNICIPAL','5','404'),('4041','ORURO','','SAJAMA','CURAHUARA DE CARANGAS','','','3','404'),('4042','ORURO','','SAJAMA','TURCO','','','3','404'),('40501','ORURO','','LITORAL DE ATACAMA','','','PRIMERA SECCION MUNICIPAL','5','405'),('40502','ORURO','','LITORAL DE ATACAMA','','','SEGUNDA SECCION MUNICIPAL','5','405'),('40503','ORURO','','LITORAL DE ATACAMA','','','TERCERA SECCION MUNICIPAL','5','405'),('40504','ORURO','','LITORAL DE ATACAMA','','','CUARTA SECCION MUNICIPAL','5','405'),('40505','ORURO','','LITORAL DE ATACAMA','','','QUINTA SECCION MUNICIPAL','5','405'),('4051','ORURO','','LITORAL DE ATACAMA','CRUZ DE MACHACAMARCA','','','3','405'),('4052','ORURO','','LITORAL DE ATACAMA','ESCARA','','','3','405'),('4053','ORURO','','LITORAL DE ATACAMA','ESMERALDA','','','3','405'),('4054','ORURO','','LITORAL DE ATACAMA','HUACHACALLA','','','3','405'),('4055','ORURO','','LITORAL DE ATACAMA','YUNGUYO DEL LITORAL','','','3','405'),('40601','ORURO','','POOPO','','','PRIMERA SECCION MUNICIPAL','5','406'),('40602','ORURO','','POOPO','','','SEGUNDA SECCION MUNICIPAL','5','406'),('40603','ORURO','','POOPO','','','TERCERA SECCION MUNICIPAL','5','406'),('4061','ORURO','','POOPO','ANTEQUERA','','','3','406'),('4062','ORURO','','POOPO','PAZÑA','','','3','406'),('4063','ORURO','','POOPO','VILLA POOPÓ','','','3','406'),('40701','ORURO','','PANTALEON DALENCE','','','PRIMERA SECCION MUNICIPAL','5','407'),('40702','ORURO','','PANTALEON DALENCE','','','SEGUNDA SECCION MUNICIPAL','5','407'),('4071','ORURO','','PANTALEON DALENCE','VILLA HUANUNI','','','3','407'),('4072','ORURO','','PANTALEON DALENCE','MACHACAMARCA','','','3','407'),('40801','ORURO','','LADISLAO CABRERA','','','PRIMERA SECCION MUNICIPAL','5','408'),('40802','ORURO','','LADISLAO CABRERA','','','SEGUNDA SECCION MUNICIPAL','5','408'),('4081','ORURO','','LADISLAO CABRERA','PAMPA AULLAGAS','','','3','408'),('4082','ORURO','','LADISLAO CABRERA','SALINAS DE GARCI MENDOZA','','','3','408'),('40901','ORURO','','ATAHUALLPA','','','PRIMERA SECCION MUNICIPAL','5','409'),('40902','ORURO','','ATAHUALLPA','','','SEGUNDA SECCION MUNICIPAL','5','409'),('40903','ORURO','','ATAHUALLPA','','','TERCERA SECCION MUNICIPAL','5','409'),('4091','ORURO','','ATAHUALLPA','CHIPAYA','','','3','409'),('4092','ORURO','','ATAHUALLPA','COIPASA','','','3','409'),('4093','ORURO','','ATAHUALLPA','SABAYA','','','3','409'),('41001','ORURO','','SAUCARI','','','PRIMERA SECCION MUNICIPAL','5','410'),('4101','ORURO','','SAUCARI','TOLEDO','','','3','410'),('41101','ORURO','','TOMAS BARRON','','','PRIMERA SECCION MUNICIPAL','5','411'),('4111','ORURO','','TOMAS BARRON','EUCALIPTUS','','','3','411'),('41201','ORURO','','SUD CARANGAS','','','PRIMERA SECCION MUNICIPAL','5','412'),('41202','ORURO','','SUD CARANGAS','','','SEGUNDA SECCION MUNICIPAL','5','412'),('4121','ORURO','','SUD CARANGAS','ANDAMARCA','','','3','412'),('4122','ORURO','','SUD CARANGAS','BELÉN DE ANDAMARCA','','','3','412'),('41301','ORURO','','SAN PEDRO DE TOTORA','','','PRIMERA SECCION MUNICIPAL','5','413'),('4131','ORURO','','SAN PEDRO DE TOTORA','TOTORA','','','3','413'),('41401','ORURO','','SEBASTIAN PAGADOR','','','PRIMERA SECCION MUNICIPAL','5','414'),('4141','ORURO','','SEBASTIAN PAGADOR','SANTIAGO DE HUARI','','','3','414'),('41501','ORURO','','MEJILLONES','','','PRIMERA SECCION MUNICIPAL','5','415'),('41502','ORURO','','MEJILLONES','','','SEGUNDA SECCION MUNICIPAL','5','415'),('41503','ORURO','','MEJILLONES','','','TERCERA SECCION MUNICIPAL','5','415'),('4151','ORURO','','PUERTO DE MEJILLONES','CARANGAS','','','3','415'),('4152','ORURO','','PUERTO DE MEJILLONES','LA RIVERA','','','3','415'),('4153','ORURO','','PUERTO DE MEJILLONES','TODOS SANTOS','','','3','415'),('41601','ORURO','','NOR CARANGAS','','','PRIMERA SECCION MUNICIPAL','5','416'),('4161','ORURO','','NOR CARANGAS','SANTIAGO DE HUAYLLAMARCA','','','3','416'),('5','POTOSI','','','','','','1','0'),('50100','POTOSI','','TOMAS FRIAS','','','SECCION CAPITAL','5','501'),('50101','POTOSI','','TOMAS FRIAS','','','PRIMERA SECCION MUNICIPAL','5','501'),('50102','POTOSI','','TOMAS FRIAS','','','SEGUNDA SECCION MUNICIPAL','5','501'),('50103','POTOSI','','TOMAS FRIAS','','','TERCERA SECCION MUNICIPAL','5','501'),('5011','POTOSI','','TOMAS FRIAS','BELÉN DE URMIRI','','','3','501'),('5012','POTOSI','','TOMAS FRIAS','POTOSÍ','','','3','501'),('5013','POTOSI','','TOMAS FRIAS','TINGUIPAYA (4)','','','3','501'),('5014','POTOSI','','TOMAS FRIAS','VILLA DE YOCALLA (4)','','','3','501'),('50201','POTOSI','','RAFAEL BUSTILLOS','','','PRIMERA SECCION MUNICIPAL','5','502'),('50202','POTOSI','','RAFAEL BUSTILLOS','','','SEGUNDA SECCION MUNICIPAL','5','502'),('50203','POTOSI','','RAFAEL BUSTILLOS','','','TERCERA SECCION MUNICIPAL','5','502'),('5021','POTOSI','','RAFAEL BUSTILLOS','CHAYANTA','','','3','502'),('5022','POTOSI','','RAFAEL BUSTILLOS','LLALLAGUA','','','3','502'),('5023','POTOSI','','RAFAEL BUSTILLOS','UNCÍA','','','3','502'),('50301','POTOSI','','CORNELIO SAAVEDRA','','','PRIMERA SECCION MUNICIPAL','5','503'),('50302','POTOSI','','CORNELIO SAAVEDRA','','','SEGUNDA SECCION MUNICIPAL','5','503'),('50303','POTOSI','','CORNELIO SAAVEDRA','','','TERCERA SECCION MUNICIPAL','5','503'),('5031','POTOSI','','CORNELIO SAAVEDRA','BETANZOS','','','3','503'),('5032','POTOSI','','CORNELIO SAAVEDRA','CHAQUÍ','','','3','503'),('5033','POTOSI','','CORNELIO SAAVEDRA','TACOBAMBA','','','3','503'),('50401','POTOSI','','CHAYANTA','','','PRIMERA SECCION MUNICIPAL','5','504'),('50402','POTOSI','','CHAYANTA','','','SEGUNDA SECCION MUNICIPAL','5','504'),('50403','POTOSI','','CHAYANTA','','','TERCERA SECCION MUNICIPAL','5','504'),('50404','POTOSI','','CHAYANTA','','','CUARTA SECCION MUNICIPAL','5','504'),('5041','POTOSI','','CHAYANTA','COLQUECHACA','','','3','504'),('5042','POTOSI','','CHAYANTA','OCURÍ','','','3','504'),('5043','POTOSI','','CHAYANTA','POCOATA','','','3','504'),('5044','POTOSI','','CHAYANTA','RAVELO','','','3','504'),('50501','POTOSI','','CHARCAS','','','PRIMERA SECCION MUNICIPAL','5','505'),('50503','POTOSI','','CHARCAS','','','TERCERA SECCION MUNICIPAL','5','505'),('5051','POTOSI','','CHARCAS','SAN PEDRO DE BUENA VISTA','','','3','505'),('50511','POTOSI','','CHARCAS','SAN PEDRO DE BUENA VISTA','QUINAMARA','','4','5051'),('5052','POTOSI','','CHARCAS','TORO TORO','','','3','505'),('50601','POTOSI','','NOR CHICHAS','','','PRIMERA SECCION MUNICIPAL','5','506'),('50602','POTOSI','','NOR CHICHAS','','','SEGUNDA SECCION MUNICIPAL','5','506'),('5061','POTOSI','','NOR CHICHAS','COTAGAITA','','','3','506'),('50701','POTOSI','','ALONSO DE IBAÑEZ','','','PRIMERA SECCION MUNICIPAL','5','507'),('50704','POTOSI','','ALONSO DE IBAÑEZ','','','CUARTA SECCION MUNICIPAL','5','507'),('5071','POTOSI','','ALONSO DE IBAÑEZ','CARIPUYO','','','3','507'),('5072','POTOSI','','ALONSO DE IBAÑEZ','SACACA','','','3','507'),('50801','POTOSI','','SUR CHICHAS','','','PRIMERA SECCION MUNICIPAL','5','508'),('50802','POTOSI','','SUR CHICHAS','','','SEGUNDA SECCION MUNICIPAL','5','508'),('5081','POTOSI','','SUR CHICHAS','ATOCHA','','','3','508'),('5082','POTOSI','','SUR CHICHAS','TUPIZA','','','3','508'),('50901','POTOSI','','NOR LIPEZ','','','PRIMERA SECCION MUNICIPAL','5','509'),('50902','POTOSI','','NOR LIPEZ','','','SEGUNDA SECCION MUNICIPAL','5','509'),('5091','POTOSI','','NOR LIPEZ','COLCHA \"K\"','','','3','509'),('5092','POTOSI','','NOR LIPEZ','SAN PEDRO DE QUEMES','','','3','509'),('51001','POTOSI','','SUR LIPEZ','','','PRIMERA SECCION MUNICIPAL','5','510'),('51002','POTOSI','','SUR LIPEZ','','','SEGUNDA SECCION MUNICIPAL','5','510'),('51003','POTOSI','','SUR LIPEZ','','','TERCERA SECCION MUNICIPAL','5','510'),('5101','POTOSI','','SUR LIPEZ','MOJINETE','','','3','510'),('5102','POTOSI','','SUR LIPEZ','SAN ANTONIO DE ESMORUCO','','','3','510'),('5103','POTOSI','','SUR LIPEZ','SAN PABLO DE LIPEZ','','','3','510'),('51101','POTOSI','','JOSE MARIA LINARES','','','PRIMERA SECCION MUNICIPAL','5','511'),('51102','POTOSI','','JOSE MARIA LINARES','','','SEGUNDA SECCION MUNICIPAL','5','511'),('5112','POTOSI','','JOSE MARIA LINARES','PUNA','','','3','511'),('5113','POTOSI','','JOSE MARIA LINARES','CKOCHAS (NUEVO)','','','3','511'),('51201','POTOSI','','ANTONIO QUIJARRO','','','PRIMERA SECCION MUNICIPAL','5','512'),('51202','POTOSI','','ANTONIO QUIJARRO','','','SEGUNDA SECCION MUNICIPAL','5','512'),('51203','POTOSI','','ANTONIO QUIJARRO','','','TERCERA SECCION MUNICIPAL','5','512'),('5121','POTOSI','','ANTONIO QUIJARRO','PORCO','','','3','512'),('5122','POTOSI','','ANTONIO QUIJARRO','TOMAVE','','','3','512'),('5123','POTOSI','','ANTONIO QUIJARRO','UYUNI','','','3','512'),('51301','POTOSI','','GRAL.BERNARDINO BILBAO','','','PRIMERA SECCION MUNICIPAL','5','513'),('51302','POTOSI','','GRAL.BERNARDINO BILBAO','','','SEGUNDA SECCION MUNICIPAL','5','513'),('5131','POTOSI','','GRAL.BERNARDINO BILBAO','ACASIO','','','3','513'),('5132','POTOSI','','GRAL.BERNARDINO BILBAO','ARAMPAMPA','','','3','513'),('51401','POTOSI','','DANIEL CAMPOS','','','PRIMERA SECCION MUNICIPAL','5','514'),('51402','POTOSI','','DANIEL CAMPOS','','','SEGUNDA SECCION MUNICIPAL','5','514'),('5141','POTOSI','','DANIEL CAMPOS','LLICA','','','3','514'),('5142','POTOSI','','DANIEL CAMPOS','TAHUA','','','3','514'),('51501','POTOSI','','MODESTO OMISTE','','','PRIMERA SECCION MUNICIPAL','5','515'),('5151','POTOSI','','MODESTO OMISTE','VILLAZÓN','','','3','515'),('51601','POTOSI','','ENRIQUE BALDIVIESO','','','PRIMERA SECCION MUNICIPAL','5','516'),('5161','POTOSI','','ENRIQUE BALDIVIESO','SAN AGUSTÍN','','','3','516'),('6','TARIJA','','','','','','1','0'),('6011','TARIJA','','CERCADO','TARIJA','','','3','601'),('6021','TARIJA','','ANICETO ARCE','BERMEJO','','','3','602'),('6022','TARIJA','','ANICETO ARCE','PADCAYA','','','3','602'),('6031','TARIJA','','GRAN CHACO','YACUIBA','','','3','603'),('6032','TARIJA','','GRAN CHACO','CARAPARÍ','','','3','603'),('6033','TARIJA','','GRAN CHACO','VILLAMONTES','','','3','603'),('6041','TARIJA','','AVILES','YUNCHARÁ','','','3','604'),('6042','TARIJA','','AVILES','URIONDO','','','3','604'),('6051','TARIJA','','MENDEZ','EL PUENTE','','','3','605'),('6052','TARIJA','','MENDEZ','SAN LORENZO','','','3','605'),('6061','TARIJA','','BURNET O\'OCONNOR','ENTRE RÍOS','','','3','606'),('7','SANTA CRUZ','','','','','','1','0'),('7011','SANTA CRUZ','','ANDRES IBAÑEZ','AYACUCHO - PORONGO','','','3','701'),('7012','SANTA CRUZ','','ANDRES IBAÑEZ','SANTA CRUZ DE LA SIERRA','','','3','701'),('7013','SANTA CRUZ','','ANDRES IBAÑEZ','COTOCA','','','3','701'),('7014','SANTA CRUZ','','ANDRES IBAÑEZ','EL TORNO','','','3','701'),('7015','SANTA CRUZ','','ANDRES IBAÑEZ','LA GUARDIA','','','3','701'),('7021','SANTA CRUZ','','WARNES','OKINAWA','','','3','702'),('7022','SANTA CRUZ','','WARNES','WARNES','','','3','702'),('7031','SANTA CRUZ','','VELASCO','SAN IGNACIO','','','3','703'),('7032','SANTA CRUZ','','VELASCO','SAN MIGUEL','','','3','703'),('7033','SANTA CRUZ','','VELASCO','SAN RAFAEL','','','3','703'),('7041','SANTA CRUZ','','ICHILO','BUENA VISTA','','','3','704'),('7042','SANTA CRUZ','','ICHILO','SAN CARLOS','','','3','704'),('7043','SANTA CRUZ','','ICHILO','SAN JUAN','','','3','704'),('7044','SANTA CRUZ','','ICHILO','YAPACANÍ','','','3','704'),('7051','SANTA CRUZ','','CHIQUITOS','PAILÓN','','','3','705'),('7052','SANTA CRUZ','','CHIQUITOS','ROBORÉ','','','3','705'),('7053','SANTA CRUZ','','CHIQUITOS','SAN JOSÉ','','','3','705'),('7061','SANTA CRUZ','','SARA','COLPA BÉLGICA','','','3','706'),('7062','SANTA CRUZ','','SARA','PORTACHUELO','','','3','706'),('7063','SANTA CRUZ','','SARA','SANTA ROSA DEL SARA','','','3','706'),('7071','SANTA CRUZ','','CORDILLERA','BOYUIBE','','','3','707'),('7072','SANTA CRUZ','','CORDILLERA','CABEZAS','','','3','707'),('7073','SANTA CRUZ','','CORDILLERA','CAMIRI','','','3','707'),('7074','SANTA CRUZ','','CORDILLERA','CHARAGUA','','','3','707'),('7075','SANTA CRUZ','','CORDILLERA','CUEVO','','','3','707'),('7076','SANTA CRUZ','','CORDILLERA','GUTIÉRREZ','','','3','707'),('7077','SANTA CRUZ','','CORDILLERA','LAGUNILLAS','','','3','707'),('7081','SANTA CRUZ','','VALLEGRANDE','MORO MORO','','','3','708'),('7082','SANTA CRUZ','','VALLEGRANDE','POSTRER VALLE','','','3','708'),('7083','SANTA CRUZ','','VALLEGRANDE','PUCARA','','','3','708'),('7084','SANTA CRUZ','','VALLEGRANDE','TRIGAL','','','3','708'),('7085','SANTA CRUZ','','VALLEGRANDE','VALLE GRANDE','','','3','708'),('7091','SANTA CRUZ','','FLORIDA','MAIRANA','','','3','709'),('7092','SANTA CRUZ','','FLORIDA','PAMPA GRANDE','','','3','709'),('7093','SANTA CRUZ','','FLORIDA','QUIRUSILLAS','','','3','709'),('7094','SANTA CRUZ','','FLORIDA','SAMAIPATA','','','3','709'),('7101','SANTA CRUZ','','OBISPO SANTIESTEVAN','GRAL. SAAVEDRA','','','3','710'),('7102','SANTA CRUZ','','OBISPO SANTIESTEVAN','MINEROS','','','3','710'),('7103','SANTA CRUZ','','OBISPO SANTIESTEVAN','MONTERO','','','3','710'),('7104','SANTA CRUZ','','OBISPO SANTIESTEVAN','PUERTO FERNÁNDEZ ALONSO','','','3','710'),('7105','SANTA CRUZ','','OBISPO SANTIESTEVAN','SAN PEDRO','','','3','710'),('7111','SANTA CRUZ','','ÑUFLO DE CHAVEZ','CONCEPCIÓN','','','3','711'),('7112','SANTA CRUZ','','ÑUFLO DE CHAVEZ','CUATRO CAÑADAS','','','3','711'),('7113','SANTA CRUZ','','ÑUFLO DE CHAVEZ','SAN ANTONIO DEL LOMERÍO','','','3','711'),('7114','SANTA CRUZ','','ÑUFLO DE CHAVEZ','SAN JAVIER','','','3','711'),('7115','SANTA CRUZ','','ÑUFLO DE CHAVEZ','SAN JULIÁN','','','3','711'),('7116','SANTA CRUZ','','ÑUFLO DE CHAVEZ','SAN RAMÓN','','','3','711'),('7121','SANTA CRUZ','','ANGEL SANDOVAL','SAN MATÍAS','','','3','712'),('7131','SANTA CRUZ','','MANUEL MARIA','SAIPINA','','','3','713'),('7132','SANTA CRUZ','','MANUEL MARIA','COMARAPA','','','3','713'),('7141','SANTA CRUZ','','GERMAN BUSCH','CARMEN RIVERO TORRES','','','3','714'),('7142','SANTA CRUZ','','GERMAN BUSCH','PUERTO QUIJARRO','','','3','714'),('7143','SANTA CRUZ','','GERMAN BUSCH','PUERTO SUÁREZ','','','3','714'),('7151','SANTA CRUZ','','GUARAYOS','ASCENCIÓN DE GUARAYOS','','','3','715'),('7152','SANTA CRUZ','','GUARAYOS','EL PUENTE','','','3','715'),('7153','SANTA CRUZ','','GUARAYOS','URUBICHÁ','','','3','715'),('8','BENI','','','','','','1','0'),('8011','BENI','','CERCADO','SAN JAVIER','','','3','801'),('8012','BENI','','CERCADO','TRINIDAD','','','3','801'),('8021','BENI','','VACA DIEZ','GUAYARAMERÍN','','','3','802'),('8022','BENI','','VACA DIEZ','RIBERALTA','','','3','802'),('8031','BENI','','JOSÉ BALLIVIÁN','REYES','','','3','803'),('8032','BENI','','JOSÉ BALLIVIÁN','RURRENABAQUE','','','3','803'),('8033','BENI','','JOSÉ BALLIVIÁN','SAN BORJA','','','3','803'),('8034','BENI','','JOSÉ BALLIVIÁN','SANTA ROSA','','','3','803'),('8041','BENI','','YACUMA','EXALTACIÓN','','','3','804'),('8042','BENI','','YACUMA','SANTA ANA','','','3','804'),('8051','BENI','','MOXOS','SAN IGNACIO','','','3','805'),('8061','BENI','','MARBAN','LORETO','','','3','806'),('8062','BENI','','MARBAN','SAN ANDRÉS','','','3','806'),('8071','BENI','','MAMORE','PUERTO SILES','','','3','807'),('8072','BENI','','MAMORE','SAN JOAQUÍN','','','3','807'),('8073','BENI','','MAMORE','SAN RAMÓN','','','3','807'),('8081','BENI','','ITENEZ','BAURES','','','3','808'),('8082','BENI','','ITENEZ','HUACARAJE','','','3','808'),('8083','BENI','','ITENEZ','MAGDALENA','','','3','808'),('9','PANDO','','','','','','1','0'),('90100','PANDO','','NICOLAS SUAREZ','COBIJA','','SECCION CAPITAL','5','9013'),('90101','PANDO','','NICOLAS SUAREZ','BOLPEBRA','','PRIMERA SECCION MUNICIPAL','5','9012'),('9011','PANDO','','NICOLAS SUAREZ','BELLA FLOR','','','3','901'),('9012','PANDO','','NICOLAS SUAREZ','BOLPEBRA','','','3','901'),('9013','PANDO','','NICOLAS SUAREZ','COBIJA','','','3','901'),('9014','PANDO','','NICOLAS SUAREZ','PORVENIR','','','3','901'),('90201','PANDO','','MANURIPI','FILADELFIA','','PRIMERA SECCION MUNICIPAL','5','9021'),('90202','PANDO','','MANURIPI','SAN PEDRO','','SEGUNDA SECCION MUNICIPAL','5','9023'),('9021','PANDO','','MANURIPI','FILADELFIA','','','3','902'),('9022','PANDO','','MANURIPI','PUERTO RICO','','','3','902'),('9023','PANDO','','MANURIPI','SAN PEDRO','','','3','902'),('90301','PANDO','','MADRE DE DIOS','SAN LORENZO (BLANCA FLOR)','','PRIMERA SECCION MUNICIPAL','5','9031'),('90302','PANDO','','MADRE DE DIOS','SENA','','SEGUNDA SECCION MUNICIPAL','5','9032'),('9031','PANDO','','MADRE DE DIOS','BLANCA FLOR','','','3','903'),('9032','PANDO','','MADRE DE DIOS','EL SENA','','','3','903'),('9033','PANDO','','MADRE DE DIOS','PUERTO GONZALO MORENO','','','3','903'),('9041','PANDO','','ABUNA','SANTA ROSA DEL ABUNÁ','','','3','904'),('9042','PANDO','','ABUNA','HUMAITA','','','3','904'),('90501','PANDO','','FEDERICO ROMAN','SANTOS MERCADO','','PRIMERA SECCION MUNICIPAL','5','9052'),('9051','PANDO','','FEDERICO ROMAN','NUEVA ESPERANZA','','','3','905'),('9052','PANDO','','FEDERICO ROMAN','SANTOS MERCADO (RESERVA)','','','3','905'),('9053','PANDO','','FEDERICO ROMAN','VILLA NUEVA (LOMA ALTA)','','','3','905');
/*!40000 ALTER TABLE `p_ubicacion_geografica` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `p_ubicacion_geografica_rami`
--

DROP TABLE IF EXISTS `p_ubicacion_geografica_rami`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `p_ubicacion_geografica_rami` (
  `ubicacion_codigo` varchar(10) CHARACTER SET utf32 COLLATE utf32_spanish_ci NOT NULL,
  `ubicacion_departamento` varchar(50) CHARACTER SET utf32 COLLATE utf32_spanish_ci DEFAULT NULL,
  `ubicacion_ciudad` varchar(50) CHARACTER SET utf32 COLLATE utf32_spanish_ci DEFAULT NULL,
  `ubicacion_provincia` varchar(50) CHARACTER SET utf32 COLLATE utf32_spanish_ci DEFAULT NULL,
  `ubicacion_municipio` varchar(50) CHARACTER SET utf32 COLLATE utf32_spanish_ci DEFAULT NULL,
  `ubicacion_comunidad` varchar(50) CHARACTER SET utf32 COLLATE utf32_spanish_ci DEFAULT NULL,
  `ubicacion_seccion` varchar(150) CHARACTER SET utf32 COLLATE utf32_spanish_ci DEFAULT NULL,
  `ubicacion_nivel` char(2) CHARACTER SET utf32 COLLATE utf32_spanish_ci DEFAULT NULL,
  `ubicacion_padre` varchar(7) CHARACTER SET utf32 COLLATE utf32_spanish_ci DEFAULT NULL,
  `ubicacion_departamento_id` varchar(10) DEFAULT NULL,
  `ubicacion_provincia_id` varchar(10) DEFAULT NULL,
  `ubicacion_municipio_id` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`ubicacion_codigo`)
) ENGINE=InnoDB DEFAULT CHARSET=latin2;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `p_ubicacion_geografica_rami`
--

LOCK TABLES `p_ubicacion_geografica_rami` WRITE;
/*!40000 ALTER TABLE `p_ubicacion_geografica_rami` DISABLE KEYS */;
INSERT INTO `p_ubicacion_geografica_rami` VALUES ('010101','CHUQUISACA',NULL,'OROPEZA','SUCRE',NULL,NULL,NULL,NULL,'01','01','01'),('010102','CHUQUISACA',NULL,'OROPEZA','YOTALA',NULL,NULL,NULL,NULL,'01','01','02'),('010103','CHUQUISACA',NULL,'OROPEZA','POROMA',NULL,NULL,NULL,NULL,'01','01','03'),('010201','CHUQUISACA',NULL,'AZURDUY','AZURDUY',NULL,NULL,NULL,NULL,'01','02','01'),('010202','CHUQUISACA',NULL,'AZURDUY','TARVITA',NULL,NULL,NULL,NULL,'01','02','02'),('010301','CHUQUISACA',NULL,'ZUDA?EZ','ZUDA?EZ',NULL,NULL,NULL,NULL,'01','03','01'),('010302','CHUQUISACA',NULL,'ZUDA?EZ','PRESTO',NULL,NULL,NULL,NULL,'01','03','02'),('010303','CHUQUISACA',NULL,'ZUDA?EZ','MOJOCOYA',NULL,NULL,NULL,NULL,'01','03','03'),('010304','CHUQUISACA',NULL,'ZUDA?EZ','ICLA',NULL,NULL,NULL,NULL,'01','03','04'),('010401','CHUQUISACA',NULL,'TOMINA','PADILLA',NULL,NULL,NULL,NULL,'01','04','01'),('010402','CHUQUISACA',NULL,'TOMINA','TOMINA',NULL,NULL,NULL,NULL,'01','04','02'),('010403','CHUQUISACA',NULL,'TOMINA','SOPACHUY',NULL,NULL,NULL,NULL,'01','04','03'),('010404','CHUQUISACA',NULL,'TOMINA','VILLA ALCALA',NULL,NULL,NULL,NULL,'01','04','04'),('010405','CHUQUISACA',NULL,'TOMINA','EL VILLAR',NULL,NULL,NULL,NULL,'01','04','05'),('010501','CHUQUISACA',NULL,'HERNANDO SILES','MONTEAGUDO',NULL,NULL,NULL,NULL,'01','05','01'),('010502','CHUQUISACA',NULL,'HERNANDO SILES','HUACARETA (C. SAN PABLO DE HUACARET',NULL,NULL,NULL,NULL,'01','05','02'),('010601','CHUQUISACA',NULL,'YAMPARAEZ','TARABUCO',NULL,NULL,NULL,NULL,'01','06','01'),('010602','CHUQUISACA',NULL,'YAMPARAEZ','YAMPARAEZ',NULL,NULL,NULL,NULL,'01','06','02'),('010701','CHUQUISACA',NULL,'NOR CINTI','CAMARGO',NULL,NULL,NULL,NULL,'01','07','01'),('010702','CHUQUISACA',NULL,'NOR CINTI','SAN LUCAS',NULL,NULL,NULL,NULL,'01','07','02'),('010703','CHUQUISACA',NULL,'NOR CINTI','INCAHUASI',NULL,NULL,NULL,NULL,'01','07','03'),('010704','CHUQUISACA',NULL,'NOR CINTI','VILLA CHARCAS',NULL,NULL,NULL,NULL,'01','07','04'),('010801','CHUQUISACA',NULL,'BELISARIO BOETO','VILLA SERRANO',NULL,NULL,NULL,NULL,'01','08','01'),('010901','CHUQUISACA',NULL,'SUD CINTI','CAMATAQUI (C. VILLA ABECIA)',NULL,NULL,NULL,NULL,'01','09','01'),('010902','CHUQUISACA',NULL,'SUD CINTI','CULPINA',NULL,NULL,NULL,NULL,'01','09','02'),('010903','CHUQUISACA',NULL,'SUD CINTI','LAS CARRERAS',NULL,NULL,NULL,NULL,'01','09','03'),('011001','CHUQUISACA',NULL,'LUIS CALVO','VILLA VACA GUZMAN (C. MUYUPAMPA)',NULL,NULL,NULL,NULL,'01','10','01'),('011002','CHUQUISACA',NULL,'LUIS CALVO','HUACAYA (C. VILLA DE HUACAYA)',NULL,NULL,NULL,NULL,'01','10','02'),('011003','CHUQUISACA',NULL,'LUIS CALVO','MACHARETI',NULL,NULL,NULL,NULL,'01','10','03'),('020101','LA PAZ',NULL,'MURILLO','LA PAZ',NULL,NULL,NULL,NULL,'02','01','01'),('020102','LA PAZ',NULL,'MURILLO','PALCA',NULL,NULL,NULL,NULL,'02','01','02'),('020103','LA PAZ',NULL,'MURILLO','MECAPACA',NULL,NULL,NULL,NULL,'02','01','03'),('020104','LA PAZ',NULL,'MURILLO','ACHOCALLA',NULL,NULL,NULL,NULL,'02','01','04'),('020105','LA PAZ',NULL,'MURILLO','CIUDAD EL ALTO',NULL,NULL,NULL,NULL,'02','01','05'),('020201','LA PAZ',NULL,'INGAVI','VIACHA',NULL,NULL,NULL,NULL,'02','02','01'),('020202','LA PAZ',NULL,'INGAVI','GUAQUI',NULL,NULL,NULL,NULL,'02','02','02'),('020203','LA PAZ',NULL,'INGAVI','TIAWANACU',NULL,NULL,NULL,NULL,'02','02','03'),('020204','LA PAZ',NULL,'INGAVI','DESAGUADERO',NULL,NULL,NULL,NULL,'02','02','04'),('020205','LA PAZ',NULL,'INGAVI','ANDRES DE MACHACA',NULL,NULL,NULL,NULL,'02','02','05'),('020206','LA PAZ',NULL,'INGAVI','JESUS DE MACHACA',NULL,NULL,NULL,NULL,'02','02','06'),('020207','LA PAZ',NULL,'INGAVI','TARACO',NULL,NULL,NULL,NULL,'02','02','07'),('020301','LA PAZ',NULL,'CARANAVI','CARANAVI',NULL,NULL,NULL,NULL,'02','03','01'),('020302','LA PAZ',NULL,'CARANAVI','ALTO BENI',NULL,NULL,NULL,NULL,'02','03','02'),('020401','LA PAZ',NULL,'AROMA','SICA SICA (C. VILLA AROMA)',NULL,NULL,NULL,NULL,'02','04','01'),('020402','LA PAZ',NULL,'AROMA','UMALA',NULL,NULL,NULL,NULL,'02','04','02'),('020403','LA PAZ',NULL,'AROMA','AYO AYO',NULL,NULL,NULL,NULL,'02','04','03'),('020404','LA PAZ',NULL,'AROMA','CALAMARCA',NULL,NULL,NULL,NULL,'02','04','04'),('020405','LA PAZ',NULL,'AROMA','PATACAMAYA',NULL,NULL,NULL,NULL,'02','04','05'),('020406','LA PAZ',NULL,'AROMA','COLQUENCHA',NULL,NULL,NULL,NULL,'02','04','06'),('020407','LA PAZ',NULL,'AROMA','COLLANA',NULL,NULL,NULL,NULL,'02','04','07'),('020501','LA PAZ',NULL,'INQUISIVI','INQUISIVI',NULL,NULL,NULL,NULL,'02','05','01'),('020502','LA PAZ',NULL,'INQUISIVI','QUIME',NULL,NULL,NULL,NULL,'02','05','02'),('020503','LA PAZ',NULL,'INQUISIVI','CAJUATA',NULL,NULL,NULL,NULL,'02','05','03'),('020504','LA PAZ',NULL,'INQUISIVI','COLQUIRI',NULL,NULL,NULL,NULL,'02','05','04'),('020505','LA PAZ',NULL,'INQUISIVI','ICHOCA',NULL,NULL,NULL,NULL,'02','05','05'),('020506','LA PAZ',NULL,'INQUISIVI','LICOMA PAMPA (C. LIB. LICOMA)',NULL,NULL,NULL,NULL,'02','05','06'),('020601','LA PAZ',NULL,'OMASUYOS','ACHACACHI',NULL,NULL,NULL,NULL,'02','06','01'),('020602','LA PAZ',NULL,'OMASUYOS','ANCORAIMES',NULL,NULL,NULL,NULL,'02','06','02'),('020603','LA PAZ',NULL,'OMASUYOS','HUARINA',NULL,NULL,NULL,NULL,'02','06','03'),('020604','LA PAZ',NULL,'OMASUYOS','SANTIAGO DE HUATA',NULL,NULL,NULL,NULL,'02','06','04'),('020701','LA PAZ',NULL,'LARECAJA','SORATA',NULL,NULL,NULL,NULL,'02','07','01'),('020702','LA PAZ',NULL,'LARECAJA','GUANAY',NULL,NULL,NULL,NULL,'02','07','02'),('020703','LA PAZ',NULL,'LARECAJA','TACACOMA',NULL,NULL,NULL,NULL,'02','07','03'),('020704','LA PAZ',NULL,'LARECAJA','TIPUANI',NULL,NULL,NULL,NULL,'02','07','04'),('020705','LA PAZ',NULL,'LARECAJA','QUIABAYA',NULL,NULL,NULL,NULL,'02','07','05'),('020706','LA PAZ',NULL,'LARECAJA','COMBAYA',NULL,NULL,NULL,NULL,'02','07','06'),('020707','LA PAZ',NULL,'LARECAJA','MAPIRI',NULL,NULL,NULL,NULL,'02','07','07'),('020708','LA PAZ',NULL,'LARECAJA','TEOPONTE',NULL,NULL,NULL,NULL,'02','07','08'),('020801','LA PAZ',NULL,'MANCO KAPAC','COPACABANA',NULL,NULL,NULL,NULL,'02','08','01'),('020802','LA PAZ',NULL,'MANCO KAPAC','SAN PEDRO DE TIQUINA',NULL,NULL,NULL,NULL,'02','08','02'),('020803','LA PAZ',NULL,'MANCO KAPAC','TITO YUPANQUI (A. PARQUIPUJIO)',NULL,NULL,NULL,NULL,'02','08','03'),('020901','LA PAZ',NULL,'MU?ECAS','CHUMA',NULL,NULL,NULL,NULL,'02','09','01'),('020902','LA PAZ',NULL,'MU?ECAS','AYATA',NULL,NULL,NULL,NULL,'02','09','02'),('020903','LA PAZ',NULL,'MU?ECAS','AUCAPATA',NULL,NULL,NULL,NULL,'02','09','03'),('021001','LA PAZ',NULL,'PACAJES','CORO CORO',NULL,NULL,NULL,NULL,'02','10','01'),('021002','LA PAZ',NULL,'PACAJES','CAQUIAVIRI',NULL,NULL,NULL,NULL,'02','10','02'),('021003','LA PAZ',NULL,'PACAJES','CALACOTO',NULL,NULL,NULL,NULL,'02','10','03'),('021004','LA PAZ',NULL,'PACAJES','COMANCHE',NULL,NULL,NULL,NULL,'02','10','04'),('021005','LA PAZ',NULL,'PACAJES','CHARA?A',NULL,NULL,NULL,NULL,'02','10','05'),('021006','LA PAZ',NULL,'PACAJES','WALDO BALLIVIAN (C. TUMARAPI)',NULL,NULL,NULL,NULL,'02','10','06'),('021007','LA PAZ',NULL,'PACAJES','MAZACARA DE PACAJES',NULL,NULL,NULL,NULL,'02','10','07'),('021008','LA PAZ',NULL,'PACAJES','SANTIAGO DE CALLAPA (C. CALLAPA)',NULL,NULL,NULL,NULL,'02','10','08'),('021101','LA PAZ',NULL,'CAMACHO','PUERTO ACOSTA',NULL,NULL,NULL,NULL,'02','11','01'),('021102','LA PAZ',NULL,'CAMACHO','MOCOMOCO',NULL,NULL,NULL,NULL,'02','11','02'),('021103','LA PAZ',NULL,'CAMACHO','PUERTO CARABUCO',NULL,NULL,NULL,NULL,'02','11','03'),('021104','LA PAZ',NULL,'CAMACHO','ESCOMA',NULL,NULL,NULL,NULL,'02','11','04'),('021105','LA PAZ',NULL,'CAMACHO','HUMANATA',NULL,NULL,NULL,NULL,'02','11','05'),('021201','LA PAZ',NULL,'FRANZ TAMAYO','APOLO',NULL,NULL,NULL,NULL,'02','12','01'),('021202','LA PAZ',NULL,'FRANZ TAMAYO','PELECHUCO',NULL,NULL,NULL,NULL,'02','12','02'),('021301','LA PAZ',NULL,'LOAYZA','LURIBAY',NULL,NULL,NULL,NULL,'02','13','01'),('021302','LA PAZ',NULL,'LOAYZA','SAPAHAQUI',NULL,NULL,NULL,NULL,'02','13','02'),('021303','LA PAZ',NULL,'LOAYZA','YACO',NULL,NULL,NULL,NULL,'02','13','03'),('021304','LA PAZ',NULL,'LOAYZA','MALLA',NULL,NULL,NULL,NULL,'02','13','04'),('021305','LA PAZ',NULL,'LOAYZA','CAIROMA',NULL,NULL,NULL,NULL,'02','13','05'),('021401','LA PAZ',NULL,'SUD YUNGAS','CHULUMANI (VILLA DE LA LIBERTAD)',NULL,NULL,NULL,NULL,'02','14','01'),('021402','LA PAZ',NULL,'SUD YUNGAS','IRUPANA (VILLA DE LANZA)',NULL,NULL,NULL,NULL,'02','14','02'),('021403','LA PAZ',NULL,'SUD YUNGAS','YANACACHI',NULL,NULL,NULL,NULL,'02','14','03'),('021404','LA PAZ',NULL,'SUD YUNGAS','PALOS BLANCOS',NULL,NULL,NULL,NULL,'02','14','04'),('021405','LA PAZ',NULL,'SUD YUNGAS','LA ASUNTA',NULL,NULL,NULL,NULL,'02','14','05'),('021501','LA PAZ',NULL,'LOS ANDES','PUCARANI',NULL,NULL,NULL,NULL,'02','15','01'),('021502','LA PAZ',NULL,'LOS ANDES','LAJA',NULL,NULL,NULL,NULL,'02','15','02'),('021503','LA PAZ',NULL,'LOS ANDES','BATALLAS',NULL,NULL,NULL,NULL,'02','15','03'),('021504','LA PAZ',NULL,'LOS ANDES','PUERTO PEREZ',NULL,NULL,NULL,NULL,'02','15','04'),('021601','LA PAZ',NULL,'NOR YUNGAS','COROICO',NULL,NULL,NULL,NULL,'02','16','01'),('021602','LA PAZ',NULL,'NOR YUNGAS','CORIPATA',NULL,NULL,NULL,NULL,'02','16','02'),('021701','LA PAZ',NULL,'ABEL ITURRALDE','IXIAMAS',NULL,NULL,NULL,NULL,'02','17','01'),('021702','LA PAZ',NULL,'ABEL ITURRALDE','SAN BUENA VENTURA',NULL,NULL,NULL,NULL,'02','17','02'),('021801','LA PAZ',NULL,'BAUTISTA SAAVEDRA','GRAL. JUAN JOSE PEREZ (CHARAZANI)',NULL,NULL,NULL,NULL,'02','18','01'),('021802','LA PAZ',NULL,'BAUTISTA SAAVEDRA','CURVA',NULL,NULL,NULL,NULL,'02','18','02'),('021901','LA PAZ',NULL,'GUALBERTO VILLARROEL','SAN PEDRO DE CURAHUARA',NULL,NULL,NULL,NULL,'02','19','01'),('021902','LA PAZ',NULL,'GUALBERTO VILLARROEL','PAPEL PAMPA',NULL,NULL,NULL,NULL,'02','19','02'),('021903','LA PAZ',NULL,'GUALBERTO VILLARROEL','CHACARILLA',NULL,NULL,NULL,NULL,'02','19','03'),('022001','LA PAZ',NULL,'G. J.M. PANDO','SANTIAGO DE MACHACA',NULL,NULL,NULL,NULL,'02','20','01'),('022002','LA PAZ',NULL,'G. J.M. PANDO','CATACORA',NULL,NULL,NULL,NULL,'02','20','02'),('030101','COCHABAMBA',NULL,'CERCADO','COCHABAMBA',NULL,NULL,NULL,NULL,'03','01','01'),('030201','COCHABAMBA',NULL,'QUILLACOLLO','QUILLACOLLO',NULL,NULL,NULL,NULL,'03','02','01'),('030202','COCHABAMBA',NULL,'QUILLACOLLO','SIPE SIPE',NULL,NULL,NULL,NULL,'03','02','02'),('030203','COCHABAMBA',NULL,'QUILLACOLLO','TIQUIPAYA',NULL,NULL,NULL,NULL,'03','02','03'),('030204','COCHABAMBA',NULL,'QUILLACOLLO','VINTO',NULL,NULL,NULL,NULL,'03','02','04'),('030205','COCHABAMBA',NULL,'QUILLACOLLO','COLCAPIRHUA',NULL,NULL,NULL,NULL,'03','02','05'),('030301','COCHABAMBA',NULL,'CAMPERO','AIQUILE',NULL,NULL,NULL,NULL,'03','03','01'),('030302','COCHABAMBA',NULL,'CAMPERO','PASORAPA',NULL,NULL,NULL,NULL,'03','03','02'),('030303','COCHABAMBA',NULL,'CAMPERO','OMEREQUE',NULL,NULL,NULL,NULL,'03','03','03'),('030401','COCHABAMBA',NULL,'AYOPAYA','AYOPAYA (C. VILLA INDEPENDENCIA)',NULL,NULL,NULL,NULL,'03','04','01'),('030402','COCHABAMBA',NULL,'AYOPAYA','MOROCHATA',NULL,NULL,NULL,NULL,'03','04','02'),('030403','COCHABAMBA',NULL,'AYOPAYA','COCAPATA',NULL,NULL,NULL,NULL,'03','04','03'),('030501','COCHABAMBA',NULL,'CHAPARE','SACABA',NULL,NULL,NULL,NULL,'03','05','01'),('030502','COCHABAMBA',NULL,'CHAPARE','COLOMI',NULL,NULL,NULL,NULL,'03','05','02'),('030503','COCHABAMBA',NULL,'CHAPARE','VILLA TUNARI',NULL,NULL,NULL,NULL,'03','05','03'),('030601','COCHABAMBA',NULL,'PUNATA','PUNATA (C. VILLA PUNATA)',NULL,NULL,NULL,NULL,'03','06','01'),('030602','COCHABAMBA',NULL,'PUNATA','VILLA RIVERO (C. VILLA RIVERO)',NULL,NULL,NULL,NULL,'03','06','02'),('030603','COCHABAMBA',NULL,'PUNATA','SAN BENITO (C. V.J.Q. MENDOZA)',NULL,NULL,NULL,NULL,'03','06','03'),('030604','COCHABAMBA',NULL,'PUNATA','TACACHI',NULL,NULL,NULL,NULL,'03','06','04'),('030605','COCHABAMBA',NULL,'PUNATA','CUCHUMUELA (V. G. VILLARROEL)',NULL,NULL,NULL,NULL,'03','06','05'),('030701','COCHABAMBA',NULL,'ESTEBAN ARCE','TARATA',NULL,NULL,NULL,NULL,'03','07','01'),('030702','COCHABAMBA',NULL,'ESTEBAN ARCE','ANZALDO (C. VILLA ANZALDO)',NULL,NULL,NULL,NULL,'03','07','02'),('030703','COCHABAMBA',NULL,'ESTEBAN ARCE','ARBIETO',NULL,NULL,NULL,NULL,'03','07','03'),('030704','COCHABAMBA',NULL,'ESTEBAN ARCE','SACABAMBA',NULL,NULL,NULL,NULL,'03','07','04'),('030801','COCHABAMBA',NULL,'GERMAN JORDAN','CLIZA',NULL,NULL,NULL,NULL,'03','08','01'),('030802','COCHABAMBA',NULL,'GERMAN JORDAN','TOKO',NULL,NULL,NULL,NULL,'03','08','02'),('030803','COCHABAMBA',NULL,'GERMAN JORDAN','TOLATA',NULL,NULL,NULL,NULL,'03','08','03'),('030901','COCHABAMBA',NULL,'CAPINOTA','CAPINOTA',NULL,NULL,NULL,NULL,'03','09','01'),('030902','COCHABAMBA',NULL,'CAPINOTA','SANTIVA?EZ (C. VILLA SANTIVA?EZ)',NULL,NULL,NULL,NULL,'03','09','02'),('030903','COCHABAMBA',NULL,'CAPINOTA','SICAYA',NULL,NULL,NULL,NULL,'03','09','03'),('031001','COCHABAMBA',NULL,'TAPACARI','TAPACARI',NULL,NULL,NULL,NULL,'03','10','01'),('031101','COCHABAMBA',NULL,'CARRASCO','TOTORA',NULL,NULL,NULL,NULL,'03','11','01'),('031102','COCHABAMBA',NULL,'CARRASCO','POJO',NULL,NULL,NULL,NULL,'03','11','02'),('031103','COCHABAMBA',NULL,'CARRASCO','POCONA',NULL,NULL,NULL,NULL,'03','11','03'),('031104','COCHABAMBA',NULL,'CARRASCO','CHIMORE',NULL,NULL,NULL,NULL,'03','11','04'),('031105','COCHABAMBA',NULL,'CARRASCO','PUERTO VILLAROEL',NULL,NULL,NULL,NULL,'03','11','05'),('031106','COCHABAMBA',NULL,'CARRASCO','ENTRE RIOS',NULL,NULL,NULL,NULL,'03','11','06'),('031201','COCHABAMBA',NULL,'ARANI','ARANI',NULL,NULL,NULL,NULL,'03','12','01'),('031202','COCHABAMBA',NULL,'ARANI','VACAS',NULL,NULL,NULL,NULL,'03','12','02'),('031301','COCHABAMBA',NULL,'ARQUE','ARQUE (C. VILLA DE ARQUE)',NULL,NULL,NULL,NULL,'03','13','01'),('031302','COCHABAMBA',NULL,'ARQUE','TACOPAYA',NULL,NULL,NULL,NULL,'03','13','02'),('031401','COCHABAMBA',NULL,'SIMON BOLIVAR','BOLIVAR',NULL,NULL,NULL,NULL,'03','14','01'),('031501','COCHABAMBA',NULL,'TIRAQUE','TIRAQUE',NULL,NULL,NULL,NULL,'03','15','01'),('031502','COCHABAMBA',NULL,'TIRAQUE','SHINAHOTA',NULL,NULL,NULL,NULL,'03','15','02'),('031601','COCHABAMBA',NULL,'MIZQUE','MIZQUE',NULL,NULL,NULL,NULL,'03','16','01'),('031602','COCHABAMBA',NULL,'MIZQUE','VILA VILA',NULL,NULL,NULL,NULL,'03','16','02'),('031603','COCHABAMBA',NULL,'MIZQUE','ALALAY',NULL,NULL,NULL,NULL,'03','16','03'),('031604','COCHABAMBA','','TIRAQUE','TIRAQUE','','','3','316',NULL,NULL,NULL),('040101','ORURO',NULL,'CERCADO','ORURO',NULL,NULL,NULL,NULL,'04','01','01'),('040102','ORURO',NULL,'CERCADO','CARACOLLO',NULL,NULL,NULL,NULL,'04','01','02'),('040103','ORURO',NULL,'CERCADO','EL CHORO',NULL,NULL,NULL,NULL,'04','01','03'),('040104','ORURO',NULL,'CERCADO','PARI - SORACACHI',NULL,NULL,NULL,NULL,'04','01','04'),('040201','ORURO',NULL,'EDUARDO ABAROA','CHALLAPATA',NULL,NULL,NULL,NULL,'04','02','01'),('040202','ORURO',NULL,'EDUARDO ABAROA','SANTUARIO DE QUILLACAS',NULL,NULL,NULL,NULL,'04','02','02'),('040301','ORURO',NULL,'PANTALEON DALENCE','HUANUNI (C. VILLA HUANUNI)',NULL,NULL,NULL,NULL,'04','03','01'),('040302','ORURO',NULL,'PANTALEON DALENCE','MACHACAMARCA',NULL,NULL,NULL,NULL,'04','03','02'),('040401','ORURO',NULL,'POOPO','POOPO (C. VILLA DE POOPO)',NULL,NULL,NULL,NULL,'04','04','01'),('040402','ORURO',NULL,'POOPO','PAZ?A',NULL,NULL,NULL,NULL,'04','04','02'),('040403','ORURO',NULL,'POOPO','ANTEQUERA',NULL,NULL,NULL,NULL,'04','04','03'),('040501','ORURO',NULL,'TOMAS BARRON','EUCALIPTUS',NULL,NULL,NULL,NULL,'04','05','01'),('040601','ORURO',NULL,'SEBASTIAN PAGADOR','SANTIAGO DE HUARI',NULL,NULL,NULL,NULL,'04','06','01'),('040701','ORURO',NULL,'SAN PEDRO DE TOTORA','TOTORA',NULL,NULL,NULL,NULL,'04','07','01'),('040801','ORURO',NULL,'CARANGAS','CORQUE',NULL,NULL,NULL,NULL,'04','08','01'),('040802','ORURO',NULL,'CARANGAS','CHOQUE COTA',NULL,NULL,NULL,NULL,'04','08','02'),('040901','ORURO',NULL,'SAJAMA','CURAHUARA DE CARANGAS SAJAMA',NULL,NULL,NULL,NULL,'04','09','01'),('040902','ORURO',NULL,'SAJAMA','TURCO',NULL,NULL,NULL,NULL,'04','09','02'),('041001','ORURO',NULL,'LITORAL','HUACHACALLA',NULL,NULL,NULL,NULL,'04','10','01'),('041002','ORURO',NULL,'LITORAL','ESCARA',NULL,NULL,NULL,NULL,'04','10','02'),('041003','ORURO',NULL,'LITORAL','CRUZ DE MACHACAMARCA',NULL,NULL,NULL,NULL,'04','10','03'),('041004','ORURO',NULL,'LITORAL','YUNGUYO DEL LITORAL',NULL,NULL,NULL,NULL,'04','10','04'),('041005','ORURO',NULL,'LITORAL','ESMERALDA',NULL,NULL,NULL,NULL,'04','10','05'),('041101','ORURO',NULL,'SAUCARI','TOLEDO',NULL,NULL,NULL,NULL,'04','11','01'),('041201','ORURO',NULL,'SUD CARANGAS','ANDAMARCA (C. SGO. DE ANDAMARCA)',NULL,NULL,NULL,NULL,'04','12','01'),('041202','ORURO',NULL,'SUD CARANGAS','BELEN DE ANDAMARCA',NULL,NULL,NULL,NULL,'04','12','02'),('041301','ORURO',NULL,'LADISLAO CABRERA','SALINAS DE GARCI MENDOZA',NULL,NULL,NULL,NULL,'04','13','01'),('041302','ORURO',NULL,'LADISLAO CABRERA','PAMPA AULLAGAS',NULL,NULL,NULL,NULL,'04','13','02'),('041401','ORURO',NULL,'PUERTO MEJILLONES','LA RIVERA',NULL,NULL,NULL,NULL,'04','14','01'),('041402','ORURO',NULL,'PUERTO MEJILLONES','TODOS SANTOS',NULL,NULL,NULL,NULL,'04','14','02'),('041403','ORURO',NULL,'PUERTO MEJILLONES','CARANGAS',NULL,NULL,NULL,NULL,'04','14','03'),('041501','ORURO',NULL,'ATAHUALLPA','SABAYA',NULL,NULL,NULL,NULL,'04','15','01'),('041502','ORURO',NULL,'ATAHUALLPA','COIPASA',NULL,NULL,NULL,NULL,'04','15','02'),('041503','ORURO',NULL,'ATAHUALLPA','CHIPAYA',NULL,NULL,NULL,NULL,'04','15','03'),('041601','ORURO',NULL,'NOR CARANGAS','HUAYLLAMARCA (C. STGO. HUAYLLAMARCA',NULL,NULL,NULL,NULL,'04','16','01'),('050101','POTOSI',NULL,'TOMAS FRIAS','POTOSI',NULL,NULL,NULL,NULL,'05','01','01'),('050102','POTOSI',NULL,'TOMAS FRIAS','TINGUIPAYA (ING. GABRIEL VERA)',NULL,NULL,NULL,NULL,'05','01','02'),('050103','POTOSI',NULL,'TOMAS FRIAS','YOCALLA',NULL,NULL,NULL,NULL,'05','01','03'),('050104','POTOSI',NULL,'TOMAS FRIAS','URMIRI',NULL,NULL,NULL,NULL,'05','01','04'),('050201','POTOSI',NULL,'RAFAEL BUSTILLOS','UNCIA',NULL,NULL,NULL,NULL,'05','02','01'),('050202','POTOSI',NULL,'RAFAEL BUSTILLOS','CHAYANTA',NULL,NULL,NULL,NULL,'05','02','02'),('050203','POTOSI',NULL,'RAFAEL BUSTILLOS','LLALLAGUA',NULL,NULL,NULL,NULL,'05','02','03'),('050204','POTOSI',NULL,'RAFAEL BUSTILLOS','CHUQUIHUTA',NULL,NULL,NULL,NULL,'05','02','04'),('050301','POTOSI',NULL,'CORNELIO SAAVEDRA','BETANZOS',NULL,NULL,NULL,NULL,'05','03','01'),('050302','POTOSI',NULL,'CORNELIO SAAVEDRA','CHAQUI',NULL,NULL,NULL,NULL,'05','03','02'),('050303','POTOSI',NULL,'CORNELIO SAAVEDRA','TACOBAMBA',NULL,NULL,NULL,NULL,'05','03','03'),('050401','POTOSI',NULL,'CHAYANTA','COLQUECHACA',NULL,NULL,NULL,NULL,'05','04','01'),('050402','POTOSI',NULL,'CHAYANTA','RAVELO (A. MORO MORO)',NULL,NULL,NULL,NULL,'05','04','02'),('050403','POTOSI',NULL,'CHAYANTA','POCOATA',NULL,NULL,NULL,NULL,'05','04','03'),('050404','POTOSI',NULL,'CHAYANTA','OCURI',NULL,NULL,NULL,NULL,'05','04','04'),('050501','POTOSI',NULL,'CHARCAS','SAN PEDRO (C. S.P. DE BUENA VISTA)',NULL,NULL,NULL,NULL,'05','05','01'),('050502','POTOSI',NULL,'CHARCAS','TORO TORO',NULL,NULL,NULL,NULL,'05','05','02'),('050601','POTOSI',NULL,'NOR CHICHAS','COTAGAITA',NULL,NULL,NULL,NULL,'05','06','01'),('050602','POTOSI',NULL,'NOR CHICHAS','VITICHI',NULL,NULL,NULL,NULL,'05','06','02'),('050701','POTOSI',NULL,'SUR CHICHAS','TUPIZA',NULL,NULL,NULL,NULL,'05','07','01'),('050702','POTOSI',NULL,'SUR CHICHAS','ATOCHA',NULL,NULL,NULL,NULL,'05','07','02'),('050801','POTOSI',NULL,'NOR LIPEZ','COLCHA \"K\" (C. VILLA MARTIN)',NULL,NULL,NULL,NULL,'05','08','01'),('050802','POTOSI',NULL,'NOR LIPEZ','SAN PEDRO DE QUEMES',NULL,NULL,NULL,NULL,'05','08','02'),('050901','POTOSI',NULL,'SUR LIPEZ','SAN PABLO DE LIPEZ',NULL,NULL,NULL,NULL,'05','09','01'),('050902','POTOSI',NULL,'SUR LIPEZ','MOJINETE',NULL,NULL,NULL,NULL,'05','09','02'),('050903','POTOSI',NULL,'SUR LIPEZ','SAN ANTONIO DE ESMORUCO',NULL,NULL,NULL,NULL,'05','09','03'),('051001','POTOSI',NULL,'ALONSO IBANEZ','SACACA (C. VILLA SACACA)',NULL,NULL,NULL,NULL,'05','10','01'),('051002','POTOSI',NULL,'ALONSO IBANEZ','CARIPUYO',NULL,NULL,NULL,NULL,'05','10','02'),('051101','POTOSI',NULL,'JOSE MARIA LINARES','PUNA (C. VILLA TALAVERA)',NULL,NULL,NULL,NULL,'05','11','01'),('051102','POTOSI',NULL,'JOSE MARIA LINARES','CAIZA \"D\"',NULL,NULL,NULL,NULL,'05','11','02'),('051103','POTOSI',NULL,'JOSE MARIA LINARES','CKOCHAS',NULL,NULL,NULL,NULL,'05','11','03'),('051201','POTOSI',NULL,'ANTONIO QUIJARRO','UYUNI',NULL,NULL,NULL,NULL,'05','12','01'),('051202','POTOSI',NULL,'ANTONIO QUIJARRO','TOMAVE',NULL,NULL,NULL,NULL,'05','12','02'),('051203','POTOSI',NULL,'ANTONIO QUIJARRO','PORCO',NULL,NULL,NULL,NULL,'05','12','03'),('051301','POTOSI',NULL,'GRL. B. BILBAO','ARAMPAMPA',NULL,NULL,NULL,NULL,'05','13','01'),('051302','POTOSI',NULL,'GRL. B. BILBAO','ACASIO',NULL,NULL,NULL,NULL,'05','13','02'),('051401','POTOSI',NULL,'DANIEL CAMPOS','LLICA',NULL,NULL,NULL,NULL,'05','14','01'),('051402','POTOSI',NULL,'DANIEL CAMPOS','TAHUA',NULL,NULL,NULL,NULL,'05','14','02'),('051501','POTOSI',NULL,'MODESTO OMISTE','VILLAZON',NULL,NULL,NULL,NULL,'05','15','01'),('051601','POTOSI',NULL,'ENRIQUE BALDIVIEZO','SAN AGUSTIN',NULL,NULL,NULL,NULL,'05','16','01'),('060101','TARIJA',NULL,'CERCADO','TARIJA',NULL,NULL,NULL,NULL,'06','01','01'),('060201','TARIJA',NULL,'ARCE','PADCAYA',NULL,NULL,NULL,NULL,'06','02','01'),('060202','TARIJA',NULL,'ARCE','BERMEJO',NULL,NULL,NULL,NULL,'06','02','02'),('060301','TARIJA',NULL,'GRAN CHACO','YACUIBA',NULL,NULL,NULL,NULL,'06','03','01'),('060302','TARIJA',NULL,'GRAN CHACO','CARAPARI',NULL,NULL,NULL,NULL,'06','03','02'),('060303','TARIJA',NULL,'GRAN CHACO','VILLA MONTES',NULL,NULL,NULL,NULL,'06','03','03'),('060401','TARIJA',NULL,'AVILEZ','URIONDO (CONCEPCION)',NULL,NULL,NULL,NULL,'06','04','01'),('060402','TARIJA',NULL,'AVILEZ','YUNCHARA',NULL,NULL,NULL,NULL,'06','04','02'),('060501','TARIJA',NULL,'MENDEZ','SAN LORENZO (C. VILLA S. LORENZO)',NULL,NULL,NULL,NULL,'06','05','01'),('060502','TARIJA',NULL,'MENDEZ','TOMAYAPO (EL PUENTE)',NULL,NULL,NULL,NULL,'06','05','02'),('060601','TARIJA',NULL,'BURNET O\'CONNOR','ENTRE RIOS',NULL,NULL,NULL,NULL,'06','06','01'),('070101','SANTA CRUZ',NULL,'ANDRES IBA?EZ','SANTA CRUZ DE LA SIERRA',NULL,NULL,NULL,NULL,'07','01','01'),('070102','SANTA CRUZ',NULL,'ANDRES IBA?EZ','COTOCA',NULL,NULL,NULL,NULL,'07','01','02'),('070103','SANTA CRUZ',NULL,'ANDRES IBA?EZ','AYACUCHO (C. PORONGO)',NULL,NULL,NULL,NULL,'07','01','03'),('070104','SANTA CRUZ',NULL,'ANDRES IBA?EZ','LA GUARDIA',NULL,NULL,NULL,NULL,'07','01','04'),('070105','SANTA CRUZ',NULL,'ANDRES IBA?EZ','EL TORNO',NULL,NULL,NULL,NULL,'07','01','05'),('070201','SANTA CRUZ',NULL,'WARNES','WARNES',NULL,NULL,NULL,NULL,'07','02','01'),('070202','SANTA CRUZ',NULL,'WARNES','OKINAWA UNO (2-1)',NULL,NULL,NULL,NULL,'07','02','02'),('070301','SANTA CRUZ',NULL,'VELASCO','SAN IGNACIO (C. SAN IGNACIO DE VELA',NULL,NULL,NULL,NULL,'07','03','01'),('070302','SANTA CRUZ',NULL,'VELASCO','SAN MIGUEL (C. SAN MIGUEL DE VELASC',NULL,NULL,NULL,NULL,'07','03','02'),('070303','SANTA CRUZ',NULL,'VELASCO','SAN RAFAEL',NULL,NULL,NULL,NULL,'07','03','03'),('070401','SANTA CRUZ',NULL,'ICHILO','BUENA VISTA',NULL,NULL,NULL,NULL,'07','04','01'),('070402','SANTA CRUZ',NULL,'ICHILO','SAN CARLOS',NULL,NULL,NULL,NULL,'07','04','02'),('070403','SANTA CRUZ',NULL,'ICHILO','YAPACANI',NULL,NULL,NULL,NULL,'07','04','03'),('070404','SANTA CRUZ',NULL,'ICHILO','SAN JUAN',NULL,NULL,NULL,NULL,'07','04','04'),('070501','SANTA CRUZ',NULL,'CHIQUITOS','SAN JOSE (C. SAN J. DE CHIQUITOS)',NULL,NULL,NULL,NULL,'07','05','01'),('070502','SANTA CRUZ',NULL,'CHIQUITOS','PAILON',NULL,NULL,NULL,NULL,'07','05','02'),('070503','SANTA CRUZ',NULL,'CHIQUITOS','ROBORE',NULL,NULL,NULL,NULL,'07','05','03'),('070601','SANTA CRUZ',NULL,'SARAH','PORTACHUELO',NULL,NULL,NULL,NULL,'07','06','01'),('070602','SANTA CRUZ',NULL,'SARAH','SANTA ROSA DEL SARA',NULL,NULL,NULL,NULL,'07','06','02'),('070603','SANTA CRUZ',NULL,'SARAH','COLPA BELGICA',NULL,NULL,NULL,NULL,'07','06','03'),('070701','SANTA CRUZ',NULL,'CORDILLERA','LAGUNILLAS',NULL,NULL,NULL,NULL,'07','07','01'),('070702','SANTA CRUZ',NULL,'CORDILLERA','CHARAGUA',NULL,NULL,NULL,NULL,'07','07','02'),('070703','SANTA CRUZ',NULL,'CORDILLERA','CABEZAS',NULL,NULL,NULL,NULL,'07','07','03'),('070704','SANTA CRUZ',NULL,'CORDILLERA','CUEVO',NULL,NULL,NULL,NULL,'07','07','04'),('070705','SANTA CRUZ',NULL,'CORDILLERA','GUTIERREZ',NULL,NULL,NULL,NULL,'07','07','05'),('070706','SANTA CRUZ',NULL,'CORDILLERA','CAMIRI',NULL,NULL,NULL,NULL,'07','07','06'),('070707','SANTA CRUZ',NULL,'CORDILLERA','BOYUIBE',NULL,NULL,NULL,NULL,'07','07','07'),('070801','SANTA CRUZ',NULL,'VALLEGRANDE','VALLE GRANDE',NULL,NULL,NULL,NULL,'07','08','01'),('070802','SANTA CRUZ',NULL,'VALLEGRANDE','TRIGAL',NULL,NULL,NULL,NULL,'07','08','02'),('070803','SANTA CRUZ',NULL,'VALLEGRANDE','MORO MORO',NULL,NULL,NULL,NULL,'07','08','03'),('070804','SANTA CRUZ',NULL,'VALLEGRANDE','POSTRER VALLE',NULL,NULL,NULL,NULL,'07','08','04'),('070805','SANTA CRUZ',NULL,'VALLEGRANDE','PUCARA',NULL,NULL,NULL,NULL,'07','08','05'),('070901','SANTA CRUZ',NULL,'FLORIDA','SAMAIPATA',NULL,NULL,NULL,NULL,'07','09','01'),('070902','SANTA CRUZ',NULL,'FLORIDA','PAMPA GRANDE',NULL,NULL,NULL,NULL,'07','09','02'),('070903','SANTA CRUZ',NULL,'FLORIDA','MAIRANA',NULL,NULL,NULL,NULL,'07','09','03'),('070904','SANTA CRUZ',NULL,'FLORIDA','QUIRUSILLAS',NULL,NULL,NULL,NULL,'07','09','04'),('071001','SANTA CRUZ',NULL,'OBISPO SANTIESTEBAN','MONTERO',NULL,NULL,NULL,NULL,'07','10','01'),('071002','SANTA CRUZ',NULL,'OBISPO SANTIESTEBAN','GRAL. A.SAAVEDRA',NULL,NULL,NULL,NULL,'07','10','02'),('071003','SANTA CRUZ',NULL,'OBISPO SANTIESTEBAN','MINEROS',NULL,NULL,NULL,NULL,'07','10','03'),('071004','SANTA CRUZ',NULL,'OBISPO SANTIESTEBAN','FERNANDEZ ALONSO',NULL,NULL,NULL,NULL,'07','10','04'),('071005','SANTA CRUZ',NULL,'OBISPO SANTIESTEBAN','SAN PEDRO',NULL,NULL,NULL,NULL,'07','10','05'),('071101','SANTA CRUZ',NULL,'?UFLO DE CHAVEZ','CONCEPCION',NULL,NULL,NULL,NULL,'07','11','01'),('071102','SANTA CRUZ',NULL,'?UFLO DE CHAVEZ','SAN JAVIER',NULL,NULL,NULL,NULL,'07','11','02'),('071103','SANTA CRUZ',NULL,'?UFLO DE CHAVEZ','SAN JULIAN',NULL,NULL,NULL,NULL,'07','11','03'),('071104','SANTA CRUZ',NULL,'?UFLO DE CHAVEZ','SAN ANTONIO DEL LOMERIO (2-2)',NULL,NULL,NULL,NULL,'07','11','04'),('071105','SANTA CRUZ',NULL,'?UFLO DE CHAVEZ','SAN RAMON (2-3)',NULL,NULL,NULL,NULL,'07','11','05'),('071106','SANTA CRUZ',NULL,'?UFLO DE CHAVEZ','CUATRO CA?ADAS',NULL,NULL,NULL,NULL,'07','11','06'),('071201','SANTA CRUZ',NULL,'ANGEL SANDOVAL','SAN MATIAS',NULL,NULL,NULL,NULL,'07','12','01'),('071301','SANTA CRUZ',NULL,'MANUEL MARIA CABALLERO','COMARAPA',NULL,NULL,NULL,NULL,'07','13','01'),('071302','SANTA CRUZ',NULL,'MANUEL MARIA CABALLERO','SAIPINA',NULL,NULL,NULL,NULL,'07','13','02'),('071401','SANTA CRUZ',NULL,'GERMAN BUSCH','PUERTO SUAREZ',NULL,NULL,NULL,NULL,'07','14','01'),('071403','SANTA CRUZ',NULL,'GERMAN BUSCH','CARMEN RIVERO TORRES',NULL,NULL,NULL,NULL,'07','14','03'),('071501','SANTA CRUZ',NULL,'GUARAYOS','ASCENCION DE GUARAYOS',NULL,NULL,NULL,NULL,'07','15','01'),('071502','SANTA CRUZ',NULL,'GUARAYOS','URUBICHA',NULL,NULL,NULL,NULL,'07','15','02'),('071503','SANTA CRUZ',NULL,'GUARAYOS','EL PUENTE',NULL,NULL,NULL,NULL,'07','15','03'),('080101','BENI',NULL,'CERCADO','TRINIDAD',NULL,NULL,NULL,NULL,'08','01','01'),('080102','BENI',NULL,'CERCADO','SAN JAVIER',NULL,NULL,NULL,NULL,'08','01','02'),('080201','BENI',NULL,'VACA DIEZ','RIBERALTA',NULL,NULL,NULL,NULL,'08','02','01'),('080203','BENI',NULL,'VACA DIEZ','GUAYARAMERIN',NULL,NULL,NULL,NULL,'08','02','03'),('080301','BENI',NULL,'JOSE BALLIVIAN','REYES',NULL,NULL,NULL,NULL,'08','03','01'),('080302','BENI',NULL,'JOSE BALLIVIAN','RURRENABAQUE',NULL,NULL,NULL,NULL,'08','03','02'),('080303','BENI',NULL,'JOSE BALLIVIAN','SAN BORJA',NULL,NULL,NULL,NULL,'08','03','03'),('080304','BENI',NULL,'JOSE BALLIVIAN','SANTA ROSA',NULL,NULL,NULL,NULL,'08','03','04'),('080401','BENI',NULL,'YACUMA','SANTA ANA',NULL,NULL,NULL,NULL,'08','04','01'),('080402','BENI',NULL,'YACUMA','EXALTACION',NULL,NULL,NULL,NULL,'08','04','02'),('080501','BENI',NULL,'MOXOS','SAN IGNACIO',NULL,NULL,NULL,NULL,'08','05','01'),('080601','BENI',NULL,'MARBAN','LORETO',NULL,NULL,NULL,NULL,'08','06','01'),('080602','BENI',NULL,'MARBAN','SAN ANDRES',NULL,NULL,NULL,NULL,'08','06','02'),('080701','BENI',NULL,'MAMORE','SAN JOAQUIN',NULL,NULL,NULL,NULL,'08','07','01'),('080702','BENI',NULL,'MAMORE','SAN RAMON',NULL,NULL,NULL,NULL,'08','07','02'),('080703','BENI',NULL,'MAMORE','PUERTO SILES',NULL,NULL,NULL,NULL,'08','07','03'),('080801','BENI',NULL,'ITENEZ','MAGDALENA',NULL,NULL,NULL,NULL,'08','08','01'),('080802','BENI',NULL,'ITENEZ','BAURES',NULL,NULL,NULL,NULL,'08','08','02'),('080803','BENI',NULL,'ITENEZ','HUACARAJE',NULL,NULL,NULL,NULL,'08','08','03'),('090101','PANDO',NULL,'NICOLAS SUAREZ','COBIJA',NULL,NULL,NULL,NULL,'09','01','01'),('090102','PANDO',NULL,'NICOLAS SUAREZ','CAMPO ANA (C. PORVENIR)',NULL,NULL,NULL,NULL,'09','01','02'),('090103','PANDO',NULL,'NICOLAS SUAREZ','MUKDEN (C. BOLPEBRA)',NULL,NULL,NULL,NULL,'09','01','03'),('090104','PANDO',NULL,'NICOLAS SUAREZ','COSTA RICA (C. BELLA FLOR)',NULL,NULL,NULL,NULL,'09','01','04'),('090201','PANDO',NULL,'MANURIPI','VICTORIA (C. PUERTO RICO)',NULL,NULL,NULL,NULL,'09','02','01'),('090202','PANDO',NULL,'MANURIPI','SAN PEDRO (MANURIPI)',NULL,NULL,NULL,NULL,'09','02','02'),('090203','PANDO',NULL,'MANURIPI','ARROYO GRANDE (C. FILADELFIA)',NULL,NULL,NULL,NULL,'09','02','03'),('090301','PANDO',NULL,'MADRE DE DIOS','AGUA DULCE (C. PTO. GONZALO MORENO)',NULL,NULL,NULL,NULL,'09','03','01'),('090302','PANDO',NULL,'MADRE DE DIOS','EXALTACION (C. SAN LORENZO)',NULL,NULL,NULL,NULL,'09','03','02'),('090303','PANDO',NULL,'MADRE DE DIOS','BOLIVAR (C. SENA)',NULL,NULL,NULL,NULL,'09','03','03'),('090401','PANDO',NULL,'ABUNA','NACEBE (C. SANTA ROSA DEL ABUNA)',NULL,NULL,NULL,NULL,'09','04','01'),('090402','PANDO',NULL,'ABUNA','INGAVI',NULL,NULL,NULL,NULL,'09','04','02'),('090501','PANDO',NULL,'GRAL. F. ROMAN','NUEVO MANOA (C. NUEVA ESPERANZA)',NULL,NULL,NULL,NULL,'09','05','01'),('090502','PANDO',NULL,'GRAL. F. ROMAN','VILLA NUEVA',NULL,NULL,NULL,NULL,'09','05','02'),('090503','PANDO',NULL,'GRAL. F. ROMAN','EUREKA (C. SANTOS MERCADO)',NULL,NULL,NULL,NULL,'09','05','03'),('1','CHUQUISACA','','','','','','1','0',NULL,NULL,NULL),('101','CHUQUISACA','','OROPEZA','','','','2','1',NULL,NULL,NULL),('10100','CHUQUISACA','','OROPEZA','','','SECCION CAPITAL','5','101',NULL,NULL,NULL),('10101','CHUQUISACA','','OROPEZA','','','PRIMERA SECCION MUNICIPAL','5','101',NULL,NULL,NULL),('10102','CHUQUISACA','','OROPEZA','','','SEGUNDA SECCION MUNICIPAL','5','101',NULL,NULL,NULL),('1011','CHUQUISACA','','OROPEZA','POROMA','','','3','101',NULL,NULL,NULL),('1012','CHUQUISACA','','OROPEZA','SUCRE','','','3','101',NULL,NULL,NULL),('1013','CHUQUISACA','','OROPEZA','YOTALA','','','3','101',NULL,NULL,NULL),('102','CHUQUISACA','','AZURDUY','','','','2','1',NULL,NULL,NULL),('10201','CHUQUISACA','','AZURDUY','','','PRIMERA SECCION MUNICIPAL','5','102',NULL,NULL,NULL),('10202','CHUQUISACA','','AZURDUY','','','SEGUNDA SECCION MUNICIPAL','5','102',NULL,NULL,NULL),('1021','CHUQUISACA','','AZURDUY','TARVITA','','','3','102',NULL,NULL,NULL),('1022','CHUQUISACA','','AZURDUY','VILLA AZURDUY','','','3','102',NULL,NULL,NULL),('103','CHUQUISACA','','ZUDAÑEZ','','','','2','1',NULL,NULL,NULL),('10301','CHUQUISACA','','ZUDAÑEZ','','','PRIMERA SECCION MUNICIPAL','5','103',NULL,NULL,NULL),('10302','CHUQUISACA','','ZUDAÑEZ','','','SEGUNDA SECCION MUNICIPAL','5','103',NULL,NULL,NULL),('10303','CHUQUISACA','','ZUDAÑEZ','','','TERCERA SECCION MUNICIPAL','5','103',NULL,NULL,NULL),('10304','CHUQUISACA','','ZUDAÑEZ','','','CUARTA SECCION MUNICIPAL','5','103',NULL,NULL,NULL),('1031','CHUQUISACA','','ZUDAÑEZ','ICLA','','','3','103',NULL,NULL,NULL),('10311','CHUQUISACA','','ZUDAÑEZ','ICLA','CANTAR GALLO','','4','1031',NULL,NULL,NULL),('1032','CHUQUISACA','','ZUDAÑEZ','PRESTO','','','3','103',NULL,NULL,NULL),('1033','CHUQUISACA','','ZUDAÑEZ','VILLA MOJOCOYA','','','3','103',NULL,NULL,NULL),('1034','CHUQUISACA','','ZUDAÑEZ','VILLA ZUDÁÑEZ','','','3','103',NULL,NULL,NULL),('10341','CHUQUISACA','','ZUDAÑEZ','VILLA ZUDÁÑEZ','HUACA HUASI','','4','1034',NULL,NULL,NULL),('10342','CHUQUISACA','','ZUDAÑEZ','VILLA ZUDÁÑEZ','MAYU TORCOCO','','4','1034',NULL,NULL,NULL),('10343','CHUQUISACA','','ZUDAÑEZ','VILLA ZUDÁÑEZ','CAPILLA LLAVE','','4','1034',NULL,NULL,NULL),('104','CHUQUISACA','','TOMINA','','','','2','1',NULL,NULL,NULL),('10401','CHUQUISACA','','TOMINA','','','PRIMERA SECCION MUNICIPAL','5','104',NULL,NULL,NULL),('10402','CHUQUISACA','','TOMINA','','','SEGUNDA SECCION MUNICIPAL','5','104',NULL,NULL,NULL),('10403','CHUQUISACA','','TOMINA','','','TERCERA SECCION MUNICIPAL','5','104',NULL,NULL,NULL),('10404','CHUQUISACA','','TOMINA','','','CUARTA SECCION MUNICIPAL','5','104',NULL,NULL,NULL),('10405','CHUQUISACA','','TOMINA','','','QUINTA SECCION MUNICIPAL','5','104',NULL,NULL,NULL),('1041','CHUQUISACA','','TOMINA','EL VILLAR','','','3','104',NULL,NULL,NULL),('1042','CHUQUISACA','','TOMINA','PADILLA','','','3','104',NULL,NULL,NULL),('10421','CHUQUISACA','','TOMINA','PADILLA','TABACAL','','4','1042',NULL,NULL,NULL),('1043','CHUQUISACA','','TOMINA','SOPACHUY','','','3','104',NULL,NULL,NULL),('10431','CHUQUISACA','','TOMINA','SOPACHUY','PAMPAS DEL CARMEN','','4','1043',NULL,NULL,NULL),('1044','CHUQUISACA','','TOMINA','TOMINA','','','3','104',NULL,NULL,NULL),('1045','CHUQUISACA','','TOMINA','VILLA ALCALÁ','','','3','104',NULL,NULL,NULL),('105','CHUQUISACA','','HERNANDO SILES','','','','2','1',NULL,NULL,NULL),('10501','CHUQUISACA','','HERNANDO SILES','','','PRIMERA SECCION MUNICIPAL','5','105',NULL,NULL,NULL),('10502','CHUQUISACA','','HERNANDO SILES','','','SEGUNDA SECCION MUNICIPAL','5','105',NULL,NULL,NULL),('1051','CHUQUISACA','','HERNANDO SILES','MONTEAGUDO','','','3','105',NULL,NULL,NULL),('1052','CHUQUISACA','','HERNANDO SILES','SAN PABLO DE HUACARETA','','','3','105',NULL,NULL,NULL),('106','CHUQUISACA','','YAMPARAEZ','','','','2','1',NULL,NULL,NULL),('10601','CHUQUISACA','','YAMPARAEZ','','','PRIMERA SECCION MUNICIPAL','5','106',NULL,NULL,NULL),('10602','CHUQUISACA','','YAMPARAEZ','','','SEGUNDA SECCION MUNICIPAL','5','106',NULL,NULL,NULL),('1061','CHUQUISACA','','YAMPARAEZ','TARABUCO','','','3','106',NULL,NULL,NULL),('10611','CHUQUISACA','','YAMPARAEZ','TARABUCO','HIGUERAS CHILCA','','4','1061',NULL,NULL,NULL),('1062','CHUQUISACA','','YAMPARAEZ','YAMPARÁEZ','','','3','106',NULL,NULL,NULL),('10621','CHUQUISACA','','YAMPARAEZ','YAMPARÁEZ','CARAMA','','4','1062',NULL,NULL,NULL),('10622','CHUQUISACA','','YAMPARAEZ','YAMPARÁEZ','CONCEPCION','','4','1062',NULL,NULL,NULL),('10623','CHUQUISACA','','YAMPARAEZ','YAMPARÁEZ','PATA LLAJTA','','4','1062',NULL,NULL,NULL),('107','CHUQUISACA','','NOR CINTI','','','','2','1',NULL,NULL,NULL),('10701','CHUQUISACA','','NOR CINTI','','','PRIMERA SECCION MUNICIPAL','5','107',NULL,NULL,NULL),('10702','CHUQUISACA','','NOR CINTI','','','SEGUNDA SECCION MUNICIPAL','5','107',NULL,NULL,NULL),('10703','CHUQUISACA','','NOR CINTI','','','TERCERA SECCION MUNICIPAL','5','107',NULL,NULL,NULL),('1071','CHUQUISACA','','NOR CINTI','CAMARGO','','','3','107',NULL,NULL,NULL),('1072','CHUQUISACA','','NOR CINTI','INCAHUASI','','','3','107',NULL,NULL,NULL),('10721','CHUQUISACA','','NOR CINTI','INCAHUASI','CHILLAJARA','','4','1072',NULL,NULL,NULL),('1073','CHUQUISACA','','NOR CINTI','SAN LUCAS','','','3','107',NULL,NULL,NULL),('10731','CHUQUISACA','','NOR CINTI','SAN LUCAS','CANCHAS BLANCAS','','4','1073',NULL,NULL,NULL),('1074','CHUQUISACA','','NOR CINTI','VILLA CHARCAS (NUEVO)','','','3','107',NULL,NULL,NULL),('108','CHUQUISACA','','BELISARIO BOETO','','','','2','1',NULL,NULL,NULL),('10801','CHUQUISACA','','BELISARIO BOETO','','','PRIMERA SECCION MUNICIPAL','5','108',NULL,NULL,NULL),('1081','CHUQUISACA','','BELISARIO BOETO','VILLA SERRANO','','','3','108',NULL,NULL,NULL),('10811','CHUQUISACA','','BELISARIO BOETO','VILLA SERRANO','URRIOLAGOITIA','','4','1081',NULL,NULL,NULL),('10812','CHUQUISACA','','BELISARIO BOETO','VILLA SERRANO','ESCALERAS','','4','1081',NULL,NULL,NULL),('109','CHUQUISACA','','SUD CINTI','','','','2','1',NULL,NULL,NULL),('10901','CHUQUISACA','','SUD CINTI','','','PRIMERA SECCION MUNICIPAL','5','109',NULL,NULL,NULL),('10902','CHUQUISACA','','SUD CINTI','','','SEGUNDA SECCION MUNICIPAL','5','109',NULL,NULL,NULL),('10903','CHUQUISACA','','SUD CINTI','','','TERCERA SECCION MUNICIPAL','5','109',NULL,NULL,NULL),('1091','CHUQUISACA','','SUD CINTI','CAMATAQUI','','','3','109',NULL,NULL,NULL),('1092','CHUQUISACA','','SUD CINTI','CULPINA','','','3','109',NULL,NULL,NULL),('10921','CHUQUISACA','','SUD CINTI','CULPINA','SALVIANI','','4','1092',NULL,NULL,NULL),('1093','CHUQUISACA','','SUD CINTI','LAS CARRERAS','','','3','109',NULL,NULL,NULL),('110','CHUQUISACA','','LUIS CALVO','','','','2','1',NULL,NULL,NULL),('11001','CHUQUISACA','','LUIS CALVO','','','PRIMERA SECCION MUNICIPAL','5','110',NULL,NULL,NULL),('11002','CHUQUISACA','','LUIS CALVO','','','SEGUNDA SECCION MUNICIPAL','5','110',NULL,NULL,NULL),('11003','CHUQUISACA','','LUIS CALVO','','','TERCERA SECCION MUNICIPAL','5','110',NULL,NULL,NULL),('1101','CHUQUISACA','','LUIS CALVO','HUACAYA','','','3','110',NULL,NULL,NULL),('11011','CHUQUISACA','','LUIS CALVO','HUACAYA','HUACAYA','','4','1101',NULL,NULL,NULL),('1102','CHUQUISACA','','LUIS CALVO','MACHARETÍ','','','3','110',NULL,NULL,NULL),('11021','CHUQUISACA','','LUIS CALVO','MACHARETÍ','IPATY','','4','1102',NULL,NULL,NULL),('1103','CHUQUISACA','','LUIS CALVO','VILLA VACA GUZMAN(MUYUPAMPA)','','','3','110',NULL,NULL,NULL),('11031','CHUQUISACA','','LUIS CALVO','VILLA VACA GUZMAN(MUYUPAMPA)','IGUEMBE ','','4','1103',NULL,NULL,NULL),('11032','CHUQUISACA','','LUIS CALVO','VILLA VACA GUZMAN(MUYUPAMPA)','LA TAPERA','','4','1103',NULL,NULL,NULL),('11033','CHUQUISACA','','LUIS CALVO','VILLA VACA GUZMAN(MUYUPAMPA)','AGUAYRENDA','','4','1103',NULL,NULL,NULL),('11034','CHUQUISACA','','LUIS CALVO','VILLA VACA GUZMAN(MUYUPAMPA)','CUMANDAITY','','4','1103',NULL,NULL,NULL),('11035','CHUQUISACA','','LUIS CALVO','VILLA VACA GUZMAN(MUYUPAMPA)','ITY','','4','1103',NULL,NULL,NULL),('2','LA PAZ','','','','','','1','0',NULL,NULL,NULL),('201','LA PAZ','','MURILLO','','','','2','2',NULL,NULL,NULL),('20100','LA PAZ','','MURILLO','','','SECCION CAPITAL','5','201',NULL,NULL,NULL),('20101','LA PAZ','','MURILLO','','','PRIMERA SECCION MUNICIPAL','5','201',NULL,NULL,NULL),('20102','LA PAZ','','MURILLO','','','SEGUNDA SECCION MUNICIPAL','5','201',NULL,NULL,NULL),('20103','LA PAZ','','MURILLO','','','TERCERA SECCION MUNICIPAL','5','201',NULL,NULL,NULL),('20104','LA PAZ','','MURILLO','','','CUARTA SECCION MUNICIPAL','5','201',NULL,NULL,NULL),('2011','LA PAZ','','MURILLO','ACHOCALLA (2)','','','3','201',NULL,NULL,NULL),('2012','LA PAZ','','MURILLO','EL ALTO','','','3','201',NULL,NULL,NULL),('2013','LA PAZ','','MURILLO','LA PAZ','','','3','201',NULL,NULL,NULL),('2014','LA PAZ','','MURILLO','MECAPACA (1)','','','3','201',NULL,NULL,NULL),('2015','LA PAZ','','MURILLO','PALCA (1)','','','3','201',NULL,NULL,NULL),('202','LA PAZ','','OMASUYOS','','','','2','2',NULL,NULL,NULL),('20201','LA PAZ','','OMASUYOS','','','PRIMERA SECCION MUNICIPAL','5','202',NULL,NULL,NULL),('20202','LA PAZ','','OMASUYOS','','','SEGUNDA SECCION MUNICIPAL','5','202',NULL,NULL,NULL),('2021','LA PAZ','','OMASUYOS','ACHACACHI','','','3','202',NULL,NULL,NULL),('2022','LA PAZ','','OMASUYOS','ANCORAIMES','','','3','202',NULL,NULL,NULL),('2023','LA PAZ','','OMASUYOS','HUARINA (NUEVO)','','','3','202',NULL,NULL,NULL),('2024','LA PAZ','','OMASUYOS','SANTIAGO DE HUATA (NUEVO)','','','3','202',NULL,NULL,NULL),('203','LA PAZ','','PACAJES','','','','2','2',NULL,NULL,NULL),('20301','LA PAZ','','PACAJES','','','PRIMERA SECCION MUNICIPAL','5','203',NULL,NULL,NULL),('20302','LA PAZ','','PACAJES','','','SEGUNDA SECCION MUNICIPAL','5','203',NULL,NULL,NULL),('20303','LA PAZ','','PACAJES','','','TERCERA SECCION MUNICIPAL','5','203',NULL,NULL,NULL),('20304','LA PAZ','','PACAJES','','','CUARTA SECCION MUNICIPAL','5','203',NULL,NULL,NULL),('20305','LA PAZ','','PACAJES','','','QUINTA SECCION MUNICIPAL','5','203',NULL,NULL,NULL),('20306','LA PAZ','','PACAJES','','','SEXTA SECCION MUNICIPAL','5','203',NULL,NULL,NULL),('20307','LA PAZ','','PACAJES','','','SEPTIMA SECCION MUNICIPAL','5','203',NULL,NULL,NULL),('20308','LA PAZ','','PACAJES','','','OCTAVA SECCION MUNICIPAL','5','203',NULL,NULL,NULL),('2031','LA PAZ','','PACAJES','CALACOTO','','','3','203',NULL,NULL,NULL),('2032','LA PAZ','','PACAJES','CAQUIAVIRI','','','3','203',NULL,NULL,NULL),('2033','LA PAZ','','PACAJES','CHARAÑA','','','3','203',NULL,NULL,NULL),('2034','LA PAZ','','PACAJES','COMANCHE','','','3','203',NULL,NULL,NULL),('2035','LA PAZ','','PACAJES','CORO CORO','','','3','203',NULL,NULL,NULL),('2036','LA PAZ','','PACAJES','NAZACARA DE PACAJES','','','3','203',NULL,NULL,NULL),('2037','LA PAZ','','PACAJES','SANTIAGO DE CALLAPA','','','3','203',NULL,NULL,NULL),('2038','LA PAZ','','PACAJES','WALDO BALLIVIÁN','','','3','203',NULL,NULL,NULL),('204','LA PAZ','','CAMACHO','','','','2','2',NULL,NULL,NULL),('20401','LA PAZ','','CAMACHO','','','PRIMERA SECCION MUNICIPAL','5','204',NULL,NULL,NULL),('20402','LA PAZ','','CAMACHO','','','SEGUNDA SECCION MUNICIPAL','5','204',NULL,NULL,NULL),('20403','LA PAZ','','CAMACHO','','','TERCERA SECCION MUNICIPAL','5','204',NULL,NULL,NULL),('2041','LA PAZ','','CAMACHO','ESCOMA (NUEVO)','','','3','204',NULL,NULL,NULL),('2042','LA PAZ','','CAMACHO','HUMANATA (NUEVO)','','','3','204',NULL,NULL,NULL),('2043','LA PAZ','','CAMACHO','MOCOMOCO','','','3','204',NULL,NULL,NULL),('2044','LA PAZ','','CAMACHO','PUERTO ACOSTA','','','3','204',NULL,NULL,NULL),('2045','LA PAZ','','CAMACHO','PUERTO CARABUCO','','','3','204',NULL,NULL,NULL),('205','LA PAZ','','MUÑECAS','','','','2','2',NULL,NULL,NULL),('20501','LA PAZ','','MUÑECAS','','','PRIMERA SECCION MUNICIPAL','5','205',NULL,NULL,NULL),('20502','LA PAZ','','MUÑECAS','','','SEGUNDA SECCION MUNICIPAL','5','205',NULL,NULL,NULL),('20503','LA PAZ','','MUÑECAS','','','TERCERA SECCION MUNICIPAL','5','205',NULL,NULL,NULL),('2051','LA PAZ','','MUÑECAS','AUCAPATA','','','3','205',NULL,NULL,NULL),('2052','LA PAZ','','MUÑECAS','AYATA','','','3','205',NULL,NULL,NULL),('2053','LA PAZ','','MUÑECAS','CHUMA','','','3','205',NULL,NULL,NULL),('206','LA PAZ','','LARECAJA','','','','2','2',NULL,NULL,NULL),('20601','LA PAZ','','LARECAJA','','','PRIMERA SECCION MUNICIPAL','5','206',NULL,NULL,NULL),('20602','LA PAZ','','LARECAJA','','','SEGUNDA SECCION MUNICIPAL','5','206',NULL,NULL,NULL),('20603','LA PAZ','','LARECAJA','','','TERCERA SECCION MUNICIPAL','5','206',NULL,NULL,NULL),('20604','LA PAZ','','LARECAJA','','','CUARTA SECCION MUNICIPAL','5','206',NULL,NULL,NULL),('20605','LA PAZ','','LARECAJA','','','QUINTA SECCION MUNICIPAL','5','206',NULL,NULL,NULL),('20606','LA PAZ','','LARECAJA','','','SEXTA SECCION MUNICIPAL','5','206',NULL,NULL,NULL),('2061','LA PAZ','','LARECAJA','COMBAYA','','','3','206',NULL,NULL,NULL),('2062','LA PAZ','','LARECAJA','GUANAY','','','3','206',NULL,NULL,NULL),('2063','LA PAZ','','LARECAJA','MAPIRI','','','3','206',NULL,NULL,NULL),('2064','LA PAZ','','LARECAJA','QUIABAYA','','','3','206',NULL,NULL,NULL),('2065','LA PAZ','','LARECAJA','SORATA','','','3','206',NULL,NULL,NULL),('2066','LA PAZ','','LARECAJA','TACACOMA','','','3','206',NULL,NULL,NULL),('2067','LA PAZ','','LARECAJA','TEOPONTE','','','3','206',NULL,NULL,NULL),('2068','LA PAZ','','LARECAJA','TIPUANI','','','3','206',NULL,NULL,NULL),('207','LA PAZ','','FRANZ TAMAYO','','','','2','2',NULL,NULL,NULL),('20701','LA PAZ','','FRANZ TAMAYO','','','PRIMERA SECCION MUNICIPAL','5','207',NULL,NULL,NULL),('20702','LA PAZ','','FRANZ TAMAYO','','','SEGUNDA SECCION MUNICIPAL','5','207',NULL,NULL,NULL),('2071','LA PAZ','','FRANZ TAMAYO','APOLO','','','3','207',NULL,NULL,NULL),('2072','LA PAZ','','FRANZ TAMAYO','PELECHUCO','','','3','207',NULL,NULL,NULL),('208','LA PAZ','','INGAVI','','','','2','2',NULL,NULL,NULL),('20801','LA PAZ','','INGAVI','','','PRIMERA SECCION MUNICIPAL','5','208',NULL,NULL,NULL),('20802','LA PAZ','','INGAVI','','','SEGUNDA SECCION MUNICIPAL','5','208',NULL,NULL,NULL),('20803','LA PAZ','','INGAVI','','','TERCERA SECCION MUNICIPAL','5','208',NULL,NULL,NULL),('20804','LA PAZ','','INGAVI','','','CUARTA SECCION MUNICIPAL','5','208',NULL,NULL,NULL),('2081','LA PAZ','','INGAVI','ANDRÉS DE MACHACA','','','3','208',NULL,NULL,NULL),('2082','LA PAZ','','INGAVI','DESAGUADERO','','','3','208',NULL,NULL,NULL),('2083','LA PAZ','','INGAVI','GUAQUI','','','3','208',NULL,NULL,NULL),('2084','LA PAZ','','INGAVI','JESÚS DE MACHACA','','','3','208',NULL,NULL,NULL),('2085','LA PAZ','','INGAVI','TARACO','','','3','208',NULL,NULL,NULL),('2086','LA PAZ','','INGAVI','TIAHUANACU','','','3','208',NULL,NULL,NULL),('2087','LA PAZ','','INGAVI','VIACHA','','','3','208',NULL,NULL,NULL),('209','LA PAZ','','LOAYZA','','','','2','2',NULL,NULL,NULL),('20901','LA PAZ','','LOAYZA','','','PRIMERA SECCION MUNICIPAL','5','209',NULL,NULL,NULL),('20902','LA PAZ','','LOAYZA','','','SEGUNDA SECCION MUNICIPAL','5','209',NULL,NULL,NULL),('20903','LA PAZ','','LOAYZA','','','TERCERA SECCION MUNICIPAL','5','209',NULL,NULL,NULL),('20904','LA PAZ','','LOAYZA','','','CUARTA SECCION MUNICIPAL','5','209',NULL,NULL,NULL),('20905','LA PAZ','','LOAYZA','','','QUINTA SECCION MUNICIPAL','5','209',NULL,NULL,NULL),('2091','LA PAZ','','LOAYZA','CAIROMA','','','3','209',NULL,NULL,NULL),('2092','LA PAZ','','LOAYZA','LURIBAY','','','3','209',NULL,NULL,NULL),('2093','LA PAZ','','LOAYZA','MALLA','','','3','209',NULL,NULL,NULL),('2094','LA PAZ','','LOAYZA','SAPAHAQUI','','','3','209',NULL,NULL,NULL),('2095','LA PAZ','','LOAYZA','YACO','','','3','209',NULL,NULL,NULL),('210','LA PAZ','','INQUISIVI','','','','2','2',NULL,NULL,NULL),('21001','LA PAZ','','INQUISIVI','','','PRIMERA SECCION MUNICIPAL','5','210',NULL,NULL,NULL),('21002','LA PAZ','','INQUISIVI','','','SEGUNDA SECCION MUNICIPAL','5','210',NULL,NULL,NULL),('21003','LA PAZ','','INQUISIVI','','','TERCERA SECCION MUNICIPAL','5','210',NULL,NULL,NULL),('21004','LA PAZ','','INQUISIVI','','','CUARTA SECCION MUNICIPAL','5','210',NULL,NULL,NULL),('21005','LA PAZ','','INQUISIVI','','','QUINTA SECCION MUNICIPAL','5','210',NULL,NULL,NULL),('21006','LA PAZ','','INQUISIVI','','','SEXTA SECCION MUNICIPAL','5','210',NULL,NULL,NULL),('2101','LA PAZ','','INQUISIVI','CAJUATA','','','3','210',NULL,NULL,NULL),('2102','LA PAZ','','INQUISIVI','COLQUIRI','','','3','210',NULL,NULL,NULL),('2103','LA PAZ','','INQUISIVI','ICHOCA','','','3','210',NULL,NULL,NULL),('2104','LA PAZ','','INQUISIVI','INQUISIVI','','','3','210',NULL,NULL,NULL),('2105','LA PAZ','','INQUISIVI','LICOMA PAMPA','','','3','210',NULL,NULL,NULL),('2106','LA PAZ','','INQUISIVI','QUIME','','','3','210',NULL,NULL,NULL),('211','LA PAZ','','SUR YUNGAS','','','','2','2',NULL,NULL,NULL),('21101','LA PAZ','','SUR YUNGAS','','','PRIMERA SECCION MUNICIPAL','5','211',NULL,NULL,NULL),('21102','LA PAZ','','SUR YUNGAS','','','SEGUNDA SECCION MUNICIPAL','5','211',NULL,NULL,NULL),('21103','LA PAZ','','SUR YUNGAS','','','TERCERA SECCION MUNICIPAL','5','211',NULL,NULL,NULL),('21104','LA PAZ','','SUR YUNGAS','','','CUARTA SECCION MUNICIPAL','5','211',NULL,NULL,NULL),('21105','LA PAZ','','SUR YUNGAS','','','QUINTA SECCION MUNICIPAL','5','211',NULL,NULL,NULL),('2111','LA PAZ','','SUR YUNGAS','CHULUMANI','','','3','211',NULL,NULL,NULL),('2112','LA PAZ','','SUR YUNGAS','IRUPANA','','','3','211',NULL,NULL,NULL),('2113','LA PAZ','','SUR YUNGAS','LA ASUNTA','','','3','211',NULL,NULL,NULL),('2114','LA PAZ','','SUR YUNGAS','PALOS BLANCOS','','','3','211',NULL,NULL,NULL),('2115','LA PAZ','','SUR YUNGAS','YANACACHI','','','3','211',NULL,NULL,NULL),('212','LA PAZ','','LOS ANDES','','','','2','2',NULL,NULL,NULL),('21201','LA PAZ','','LOS ANDES','','','PRIMERA SECCION MUNICIPAL','5','',NULL,NULL,NULL),('21202','LA PAZ','','LOS ANDES','','','SEGUNDA SECCION MUNICIPAL','5','',NULL,NULL,NULL),('21203','LA PAZ','','LOS ANDES','','','TERCERA SECCION MUNICIPAL','5','',NULL,NULL,NULL),('21204','LA PAZ','','LOS ANDES','','','CUARTA SECCION MUNICIPAL','5','',NULL,NULL,NULL),('2121','LA PAZ','','LOS ANDES','BATALLAS','','','3','212',NULL,NULL,NULL),('2122','LA PAZ','','LOS ANDES','LAJA','','','3','212',NULL,NULL,NULL),('2123','LA PAZ','','LOS ANDES','PUCARANI','','','3','212',NULL,NULL,NULL),('2124','LA PAZ','','LOS ANDES','PUERTO PÉREZ','','','3','212',NULL,NULL,NULL),('213','LA PAZ','','AROMA','','','','2','2',NULL,NULL,NULL),('21301','LA PAZ','','AROMA','','','PRIMERA SECCION MUNICIPAL','5','213',NULL,NULL,NULL),('21302','LA PAZ','','AROMA','','','SEGUNDA SECCION MUNICIPAL','5','213',NULL,NULL,NULL),('21303','LA PAZ','','AROMA','','','TERCERA SECCION MUNICIPAL','5','213',NULL,NULL,NULL),('21304','LA PAZ','','AROMA','','','CUARTA SECCION MUNICIPAL','5','213',NULL,NULL,NULL),('21305','LA PAZ','','AROMA','','','QUINTA SECCION MUNICIPAL','5','213',NULL,NULL,NULL),('21306','LA PAZ','','AROMA','','','SEXTA SECCION MUNICIPAL','5','213',NULL,NULL,NULL),('21307','LA PAZ','','AROMA','','','SEPTIMA SECCION MUNICIPAL','5','213',NULL,NULL,NULL),('2131','LA PAZ','','AROMA','AYO AYO','','','3','213',NULL,NULL,NULL),('2132','LA PAZ','','AROMA','CALAMARCA','','','3','213',NULL,NULL,NULL),('2133','LA PAZ','','AROMA','COLLANA','','','3','213',NULL,NULL,NULL),('2134','LA PAZ','','AROMA','COLQUENCHA','','','3','213',NULL,NULL,NULL),('2135','LA PAZ','','AROMA','PATACAMAYA','','','3','213',NULL,NULL,NULL),('2136','LA PAZ','','AROMA','SICA SICA','','','3','213',NULL,NULL,NULL),('2137','LA PAZ','','AROMA','UMALA','','','3','213',NULL,NULL,NULL),('214','LA PAZ','','NOR YUNGAS','','','','2','2',NULL,NULL,NULL),('21401','LA PAZ','','NOR YUNGAS','','','PRIMERA SECCION MUNICIPAL','5','214',NULL,NULL,NULL),('21402','LA PAZ','','NOR YUNGAS','','','SEGUNDA SECCION MUNICIPAL','5','214',NULL,NULL,NULL),('2141','LA PAZ','','NOR YUNGAS','CORIPATA','','','3','214',NULL,NULL,NULL),('2142','LA PAZ','','NOR YUNGAS','COROICO','','','3','214',NULL,NULL,NULL),('215','LA PAZ','','ABEL ITURRALDE','','','','2','2',NULL,NULL,NULL),('21501','LA PAZ','','ABEL ITURRALDE','','','PRIMERA SECCION MUNICIPAL','5','215',NULL,NULL,NULL),('21502','LA PAZ','','ABEL ITURRALDE','','','SEGUNDA SECCION MUNICIPAL','5','215',NULL,NULL,NULL),('2151','LA PAZ','','ABEL ITURRALDE','IXIAMAS','','','3','215',NULL,NULL,NULL),('2152','LA PAZ','','ABEL ITURRALDE','SAN BUENA VENTURA','','','3','215',NULL,NULL,NULL),('216','LA PAZ','','BAUTISTA SAAVEDRA','','','','2','2',NULL,NULL,NULL),('21601','LA PAZ','','BAUTISTA SAAVEDRA','','','PRIMERA SECCION MUNICIPAL','5','216',NULL,NULL,NULL),('21602','LA PAZ','','BAUTISTA SAAVEDRA','','','SEGUNDA SECCION MUNICIPAL','5','216',NULL,NULL,NULL),('2161','LA PAZ','','BAUTISTA SAAVEDRA','CURVA','','','3','216',NULL,NULL,NULL),('2162','LA PAZ','','BAUTISTA SAAVEDRA','GRAL. JUAN JOSÉ PEREZ (CHARAZA33I)','','','3','216',NULL,NULL,NULL),('217','LA PAZ','','MANCO KAPAC','','','','2','2',NULL,NULL,NULL),('21701','LA PAZ','','MANCO KAPAC','','','PRIMERA SECCION MUNICIPAL','5','217',NULL,NULL,NULL),('21702','LA PAZ','','MANCO KAPAC','','','SEGUNDA SECCION MUNICIPAL','5','217',NULL,NULL,NULL),('21703','LA PAZ','','MANCO KAPAC','','','TERCERA SECCION MUNICIPAL','5','217',NULL,NULL,NULL),('2171','LA PAZ','','MANCO KAPAC','COPACABANA','','','3','217',NULL,NULL,NULL),('2172','LA PAZ','','MANCO KAPAC','SAN PEDRO DE TIQUINA','','','3','217',NULL,NULL,NULL),('2173','LA PAZ','','MANCO KAPAC','TITO YUPANQUI','','','3','217',NULL,NULL,NULL),('218','LA PAZ','','GUALBERTO VILLARROEL','','','','2','2',NULL,NULL,NULL),('21801','LA PAZ','','GUALBERTO VILLARROEL','','','PRIMERA SECCION MUNICIPAL','5','218',NULL,NULL,NULL),('21802','LA PAZ','','GUALBERTO VILLARROEL','','','SEGUNDA SECCION MUNICIPAL','5','218',NULL,NULL,NULL),('21803','LA PAZ','','GUALBERTO VILLARROEL','','','TERCERA SECCION MUNICIPAL','5','218',NULL,NULL,NULL),('2181','LA PAZ','','GUALBERTO VILLARROEL','CHACARILLA','','','3','218',NULL,NULL,NULL),('2182','LA PAZ','','GUALBERTO VILLARROEL','PAPEL PAMPA','','','3','218',NULL,NULL,NULL),('2183','LA PAZ','','GUALBERTO VILLARROEL','SAN PEDRO DE CURAHUARA','','','3','218',NULL,NULL,NULL),('219','LA PAZ','','GRAL.JOSE MANUEL PANDO','','','','2','2',NULL,NULL,NULL),('21901','LA PAZ','','GRAL.JOSE MANUEL PANDO','','','PRIMERA SECCION MUNICIPAL','5','219',NULL,NULL,NULL),('21902','LA PAZ','','GRAL.JOSE MANUEL PANDO','','','SEGUNDA SECCION MUNICIPAL','5','219',NULL,NULL,NULL),('2191','LA PAZ','','GRAL.JOSE MANUEL PANDO','CATACORA','','','3','219',NULL,NULL,NULL),('2192','LA PAZ','','GRAL.JOSE MANUEL PANDO','SANTIAGO DE MACHACA','','','3','219',NULL,NULL,NULL),('220','LA PAZ','','CARANAVI','','','','2','2',NULL,NULL,NULL),('22001','LA PAZ','','CARANAVI','','','PRIMERA SECCION MUNICIPAL','5','220',NULL,NULL,NULL),('2201','LA PAZ','','CARANAVI','ALTO BENI (NUEVO)','','','3','220',NULL,NULL,NULL),('2202','LA PAZ','','CARANAVI','CARANAVI','','','3','220',NULL,NULL,NULL),('3','COCHABAMBA','','','','','','1','0',NULL,NULL,NULL),('301','COCHABAMBA','','CERCADO','','','','2','3',NULL,NULL,NULL),('30100','COCHABAMBA','','CERCADO','','','SECCION CAPITAL','5','301',NULL,NULL,NULL),('3011','COCHABAMBA','','CERCADO','COCHABAMBA','','','3','301',NULL,NULL,NULL),('302','COCHABAMBA','','CAMPERO','','','','2','3',NULL,NULL,NULL),('30201','COCHABAMBA','','CAMPERO','','','PRIMERA SECCION MUNICIPAL','5','302',NULL,NULL,NULL),('30202','COCHABAMBA','','CAMPERO','','','SEGUNDA SECCION MUNICIPAL','5','302',NULL,NULL,NULL),('30203','COCHABAMBA','','CAMPERO','','','TERCERA SECCION MUNICIPAL','5','302',NULL,NULL,NULL),('3021','COCHABAMBA','','CAMPERO','AIQUILE','','','3','302',NULL,NULL,NULL),('3022','COCHABAMBA','','CAMPERO','OMEREQUE','','','3','302',NULL,NULL,NULL),('3023','COCHABAMBA','','CAMPERO','PASORAPA','','','3','302',NULL,NULL,NULL),('303','COCHABAMBA','','AYOPAYA','','','','2','3',NULL,NULL,NULL),('30301','COCHABAMBA','','AYOPAYA','','','PRIMERA SECCION MUNICIPAL','5','303',NULL,NULL,NULL),('30302','COCHABAMBA','','AYOPAYA','','','SEGUNDA SECCION MUNICIPAL','5','303',NULL,NULL,NULL),('3031','COCHABAMBA','','AYOPAYA','INDEPENDENCIA','','','3','303',NULL,NULL,NULL),('30311','COCHABAMBA','','AYOPAYA','INDEPENDENCIA','CARHUANI','','4','3031',NULL,NULL,NULL),('30312','COCHABAMBA','','AYOPAYA','INDEPENDENCIA','TAMIÑANI','','4','3031',NULL,NULL,NULL),('304','COCHABAMBA','','ESTEBAN ARCE','','','','2','3',NULL,NULL,NULL),('30401','COCHABAMBA','','ESTEBAN ARCE','','','PRIMERA SECCION MUNICIPAL','5','304',NULL,NULL,NULL),('30402','COCHABAMBA','','ESTEBAN ARCE','','','SEGUNDA SECCION MUNICIPAL','5','304',NULL,NULL,NULL),('30403','COCHABAMBA','','ESTEBAN ARCE','','','TERCERA SECCION MUNICIPAL','5','304',NULL,NULL,NULL),('30404','COCHABAMBA','','ESTEBAN ARCE','','','CUARTA SECCION MUNICIPAL','5','304',NULL,NULL,NULL),('3041','COCHABAMBA','','ESTEBAN ARCE','ANZALDO','','','3','304',NULL,NULL,NULL),('30411','COCHABAMBA','','ESTEBAN ARCE','ANZALDO','QUEBRADA HONDA','','4','3041',NULL,NULL,NULL),('30412','COCHABAMBA','','ESTEBAN ARCE','ANZALDO','MOROCHATA','','4','3041',NULL,NULL,NULL),('305','COCHABAMBA','','ARANI','','','','2','3',NULL,NULL,NULL),('30501','COCHABAMBA','','ARANI','','','PRIMERA SECCION MUNICIPAL','5','305',NULL,NULL,NULL),('30502','COCHABAMBA','','ARANI','','','SEGUNDA SECCION MUNICIPAL','5','305',NULL,NULL,NULL),('3051','COCHABAMBA','','ARANI','ARANI','','','3','305',NULL,NULL,NULL),('3052','COCHABAMBA','','ARANI','VACAS','','','3','305',NULL,NULL,NULL),('306','COCHABAMBA','','ARQUE','','','','2','3',NULL,NULL,NULL),('30601','COCHABAMBA','','ARQUE','TACOPAYA','','PRIMERA SECCION MUNICIPAL','5','3062',NULL,NULL,NULL),('30602','COCHABAMBA','','ARQUE','','QUINUA CHACRA','SEGUNDA SECCION MUNICIPAL','5','306',NULL,NULL,NULL),('3061','COCHABAMBA','','ARQUE','ARQUE','','','3','306',NULL,NULL,NULL),('30611','COCHABAMBA','','ARQUE','ARQUE','QUINUA CHACRA','','4','3061',NULL,NULL,NULL),('3062','COCHABAMBA','','ARQUE','TACOPAYA','','','3','306',NULL,NULL,NULL),('30621','COCHABAMBA','','ARQUE','TACOPAYA','MELGAPAMPA','','4','3062',NULL,NULL,NULL),('30622','COCHABAMBA','','ARQUE','TACOPAYA','MICAYANI GRANDE (PONGO  RAMIREZ)','','4','3062',NULL,NULL,NULL),('30623','COCHABAMBA',NULL,'ARQUE','TACOPAYA','QASA PATA, MURUTA,QUINUA CHAJRA Y QUEWIÑA',NULL,'4','3062',NULL,NULL,NULL),('307','COCHABAMBA','','CAPINOTA','','','','2','3',NULL,NULL,NULL),('30701','COCHABAMBA','','CAPINOTA','','','PRIMERA SECCION MUNICIPAL','5','307',NULL,NULL,NULL),('30702','COCHABAMBA','','CAPINOTA','','','SEGUNDA SECCION MUNICIPAL','5','307',NULL,NULL,NULL),('30703','COCHABAMBA','','CAPINOTA','','','TERCERA SECCION MUNICIPAL','5','307',NULL,NULL,NULL),('3071','COCHABAMBA','','CAPINOTA','CAPINOTA','','','3','307',NULL,NULL,NULL),('3072','COCHABAMBA','','CAPINOTA','SANTIVAÑEZ','','','3','307',NULL,NULL,NULL),('3073','COCHABAMBA','','CAPINOTA','SICAYA','','','3','307',NULL,NULL,NULL),('308','COCHABAMBA','','GERMAN JORDAN','','','','2','3',NULL,NULL,NULL),('30801','COCHABAMBA','','GERMAN JORDAN','','','PRIMERA SECCION MUNICIPAL','5','308',NULL,NULL,NULL),('30802','COCHABAMBA','','GERMAN JORDAN','','','SEGUNDA SECCION MUNICIPAL','5','308',NULL,NULL,NULL),('30803','COCHABAMBA','','GERMAN JORDAN','','','TERCERA SECCION MUNICIPAL','5','308',NULL,NULL,NULL),('3081','COCHABAMBA','','GERMAN JORDAN','TOCO','','','3','308',NULL,NULL,NULL),('3082','COCHABAMBA','','GERMAN JORDAN','TOLATA','','','3','308',NULL,NULL,NULL),('3083','COCHABAMBA','','GERMAN JORDAN','CLIZA','','','3','308',NULL,NULL,NULL),('309','COCHABAMBA','','QUILLACOLLO','','','','2','3',NULL,NULL,NULL),('30901','COCHABAMBA','','QUILLACOLLO','','','PRIMERA SECCION MUNICIPAL','5','309',NULL,NULL,NULL),('30902','COCHABAMBA','','QUILLACOLLO','','','SEGUNDA SECCION MUNICIPAL','5','309',NULL,NULL,NULL),('30903','COCHABAMBA','','QUILLACOLLO','','','TERCERA SECCION MUNICIPAL','5','309',NULL,NULL,NULL),('30904','COCHABAMBA','','QUILLACOLLO','','','CUARTA SECCION MUNICIPAL','5','309',NULL,NULL,NULL),('30905','COCHABAMBA','','QUILLACOLLO','','','QUINTA SECCION MUNICIPAL','5','309',NULL,NULL,NULL),('3091','COCHABAMBA','','QUILLACOLLO','COLCAPIRHUA','','','3','309',NULL,NULL,NULL),('3092','COCHABAMBA','','QUILLACOLLO','QUILLACOLLO','','','3','309',NULL,NULL,NULL),('3093','COCHABAMBA','','QUILLACOLLO','SIPE SIPE','','','3','309',NULL,NULL,NULL),('3094','COCHABAMBA','','QUILLACOLLO','TIQUIPAYA','','','3','309',NULL,NULL,NULL),('3095','COCHABAMBA','','QUILLACOLLO','VINTO','','','3','309',NULL,NULL,NULL),('310','COCHABAMBA','','CHAPARE','','','','2','3',NULL,NULL,NULL),('31001','COCHABAMBA','','CHAPARE','','','PRIMERA SECCION MUNICIPAL','5','310',NULL,NULL,NULL),('31002','COCHABAMBA','','CHAPARE','','','SEGUNDA SECCION MUNICIPAL','5','310',NULL,NULL,NULL),('31003','COCHABAMBA','','CHAPARE','','','TERCERA SECCION MUNICIPAL','5','310',NULL,NULL,NULL),('3101','COCHABAMBA','','CHAPARE','COLOMI','','','3','310',NULL,NULL,NULL),('3102','COCHABAMBA','','CHAPARE','SACABA','','','3','310',NULL,NULL,NULL),('3103','COCHABAMBA','','CHAPARE','VILLA TUNARI','','','3','310',NULL,NULL,NULL),('311','COCHABAMBA','','TAPACARI','','','','2','3',NULL,NULL,NULL),('31101','COCHABAMBA','','TAPACARI','','','PRIMERA SECCION MUNICIPAL','5','311',NULL,NULL,NULL),('3111','COCHABAMBA','','TAPACARI','TAPACARÍ','','','3','311',NULL,NULL,NULL),('312','COCHABAMBA','','CARRASCO','','','','2','3',NULL,NULL,NULL),('31201','COCHABAMBA','','CARRASCO','','','PRIMERA SECCION MUNICIPAL','5','312',NULL,NULL,NULL),('31202','COCHABAMBA','','CARRASCO','','','SEGUNDA SECCION MUNICIPAL','5','312',NULL,NULL,NULL),('31203','COCHABAMBA','','CARRASCO','','','TERCERA SECCION MUNICIPAL','5','312',NULL,NULL,NULL),('31204','COCHABAMBA','','CARRASCO','','','CUARTA SECCION MUNICIPAL','5','312',NULL,NULL,NULL),('31205','COCHABAMBA','','CARRASCO','','','QUINTA SECCION MUNICIPAL','5','312',NULL,NULL,NULL),('3121','COCHABAMBA','','CARRASCO','CHIMORÉ','','','3','312',NULL,NULL,NULL),('3122','COCHABAMBA','','CARRASCO','ENTRE RÍOS (BULO BULO)','','','3','312',NULL,NULL,NULL),('3123','COCHABAMBA','','CARRASCO','POCONA','','','3','312',NULL,NULL,NULL),('3124','COCHABAMBA','','CARRASCO','POJO','','','3','312',NULL,NULL,NULL),('31241','COCHABAMBA','','CARRASCO','POJO','DIANPAMPA','','4','3124',NULL,NULL,NULL),('31242','COCHABAMBA','','CARRASCO','POJO','KARAHUASI','','4','3124',NULL,NULL,NULL),('3125','COCHABAMBA','','CARRASCO','PUERTO VILLARROEL','','','3','312',NULL,NULL,NULL),('3126','COCHABAMBA','','CARRASCO','TOTORA','','','3','312',NULL,NULL,NULL),('31261','COCHABAMBA','','CARRASCO','TOTORA','ANTA QHAWA','','4','3126',NULL,NULL,NULL),('313','COCHABAMBA','','MIZQUE','','','','2','3',NULL,NULL,NULL),('31301','COCHABAMBA','','MIZQUE','','','PRIMERA SECCION MUNICIPAL','5','313',NULL,NULL,NULL),('31302','COCHABAMBA','','MIZQUE','','','SEGUNDA SECCION MUNICIPAL','5','313',NULL,NULL,NULL),('31303','COCHABAMBA','','MIZQUE','','','TERCERA SECCION MUNICIPAL','5','313',NULL,NULL,NULL),('3131','COCHABAMBA','','MIZQUE','ALALAY','','','3','313',NULL,NULL,NULL),('31311','COCHABAMBA','','MIZQUE','ALALAY','QOTURI (QUIRUSILLANI, SACHALOMA, PUTUNKU, MUYURINA','','4','3131',NULL,NULL,NULL),('3132','COCHABAMBA','','MIZQUE','MIZQUE','','','3','313',NULL,NULL,NULL),('31321','COCHABAMBA','','MIZQUE','MIZQUE','HUCHAMA ALTA','','4','3132',NULL,NULL,NULL),('3133','COCHABAMBA','','MIZQUE','VILA VILA','','','3','313',NULL,NULL,NULL),('31331','COCHABAMBA','','MIZQUE','VILA VILA','CHILIJCHI','','4','3133',NULL,NULL,NULL),('314','COCHABAMBA','','PUNATA','','','','2','3',NULL,NULL,NULL),('31401','COCHABAMBA','','PUNATA','','','PRIMERA SECCION MUNICIPAL','5','314',NULL,NULL,NULL),('31402','COCHABAMBA','','PUNATA','','','SEGUNDA SECCION MUNICIPAL','5','314',NULL,NULL,NULL),('31403','COCHABAMBA','','PUNATA','','','TERCERA SECCION MUNICIPAL','5','314',NULL,NULL,NULL),('31404','COCHABAMBA','','PUNATA','','','CUARTA SECCION MUNICIPAL','5','314',NULL,NULL,NULL),('31405','COCHABAMBA','','PUNATA','','','QUINTA SECCION MUNICIPAL','5','314',NULL,NULL,NULL),('3141','COCHABAMBA','','PUNATA','CUCHUMUELA','','','3','314',NULL,NULL,NULL),('3142','COCHABAMBA','','PUNATA','PUNATA','','','3','314',NULL,NULL,NULL),('3143','COCHABAMBA','','PUNATA','SAN BENITO','','','3','314',NULL,NULL,NULL),('3144','COCHABAMBA','','PUNATA','TACACHI','','','3','314',NULL,NULL,NULL),('3145','COCHABAMBA','','PUNATA','VILLA RIVERO','','','3','314',NULL,NULL,NULL),('315','COCHABAMBA','','BOLIVAR','','','','2','3',NULL,NULL,NULL),('31501','COCHABAMBA','','BOLIVAR','','','PRIMERA SECCION MUNICIPAL','5','315',NULL,NULL,NULL),('3151','COCHABAMBA','','BOLIVAR','BOLÍVAR','','','3','315',NULL,NULL,NULL),('316','COCHABAMBA','','TIRAQUE','','','','2','3',NULL,NULL,NULL),('31601','COCHABAMBA','','TIRAQUE','','','PRIMERA SECCION MUNICIPAL','5','316',NULL,NULL,NULL),('3161','COCHABAMBA','','TIRAQUE','SHINAHOTA (NUEVO)','','','3','316',NULL,NULL,NULL),('4','ORURO','','','','','','1','0',NULL,NULL,NULL),('401','ORURO','','CERCADO','','','','2','4',NULL,NULL,NULL),('40100','ORURO','','CERCADO','','','SECCION CAPITAL','5','401',NULL,NULL,NULL),('40101','ORURO','','CERCADO','','','PRIMERA SECCION MUNICIPAL','5','401',NULL,NULL,NULL),('40102','ORURO','','CERCADO','','','SEGUNDA SECCION MUNICIPAL','5','401',NULL,NULL,NULL),('4011','ORURO','','CERCADO','CARACOLLO','','','3','401',NULL,NULL,NULL),('4012','ORURO','','CERCADO','EL CHORO','','','3','401',NULL,NULL,NULL),('4013','ORURO','','CERCADO','ORURO','','','3','401',NULL,NULL,NULL),('4014','ORURO','','CERCADO','SORACACHI','','','3','401',NULL,NULL,NULL),('402','ORURO','','EDUARDO AVAROA','','','','2','4',NULL,NULL,NULL),('40201','ORURO','','EDUARDO AVAROA','','','PRIMERA SECCION MUNICIPAL','5','402',NULL,NULL,NULL),('40202','ORURO','','EDUARDO AVAROA','','','SEGUNDA SECCION MUNICIPAL','5','402',NULL,NULL,NULL),('4021','ORURO','','EDUARDO AVAROA','CHALLAPATA','','','3','402',NULL,NULL,NULL),('4022','ORURO','','EDUARDO AVAROA','SANTUARIO DE QUILLACAS','','','3','402',NULL,NULL,NULL),('403','ORURO','','CARANGAS','','','','2','4',NULL,NULL,NULL),('40301','ORURO','','CARANGAS','','','PRIMERA SECCION MUNICIPAL','5','403',NULL,NULL,NULL),('40302','ORURO','','CARANGAS','','','SEGUNDA SECCION MUNICIPAL','5','403',NULL,NULL,NULL),('4031','ORURO','','CARANGAS','CHOQUECOTA','','','3','403',NULL,NULL,NULL),('4032','ORURO','','CARANGAS','CORQUE','','','3','403',NULL,NULL,NULL),('40321','ORURO','','CARANGAS','CORQUE','HUAYLLAPACHA','','4','4032',NULL,NULL,NULL),('404','ORURO','','SAJAMA','','','','2','4',NULL,NULL,NULL),('40401','ORURO','','SAJAMA','','','PRIMERA SECCION MUNICIPAL','5','404',NULL,NULL,NULL),('40402','ORURO','','SAJAMA','','','SEGUNDA SECCION MUNICIPAL','5','404',NULL,NULL,NULL),('4041','ORURO','','SAJAMA','CURAHUARA DE CARANGAS','','','3','404',NULL,NULL,NULL),('40411','ORURO','','SAJAMA','CURAHUARA DE CARANGAS','TAYPI COLLANA MARCA MARCA','','4','4041',NULL,NULL,NULL),('4042','ORURO','','SAJAMA','TURCO','','','3','404',NULL,NULL,NULL),('405','ORURO','','LITORAL DE ATACAMA','','','','2','4',NULL,NULL,NULL),('40501','ORURO','','LITORAL DE ATACAMA','','','PRIMERA SECCION MUNICIPAL','5','405',NULL,NULL,NULL),('40502','ORURO','','LITORAL DE ATACAMA','','','SEGUNDA SECCION MUNICIPAL','5','405',NULL,NULL,NULL),('40503','ORURO','','LITORAL DE ATACAMA','','','TERCERA SECCION MUNICIPAL','5','405',NULL,NULL,NULL),('40504','ORURO','','LITORAL DE ATACAMA','','','CUARTA SECCION MUNICIPAL','5','405',NULL,NULL,NULL),('40505','ORURO','','LITORAL DE ATACAMA','','','QUINTA SECCION MUNICIPAL','5','405',NULL,NULL,NULL),('4051','ORURO','','LITORAL DE ATACAMA','CRUZ DE MACHACAMARCA','','','3','405',NULL,NULL,NULL),('4052','ORURO','','LITORAL DE ATACAMA','ESCARA','','','3','405',NULL,NULL,NULL),('4053','ORURO','','LITORAL DE ATACAMA','ESMERALDA','','','3','405',NULL,NULL,NULL),('4054','ORURO','','LITORAL DE ATACAMA','HUACHACALLA','','','3','405',NULL,NULL,NULL),('4055','ORURO','','LITORAL DE ATACAMA','YUNGUYO DEL LITORAL','','','3','405',NULL,NULL,NULL),('406','ORURO','','POOPO','','','','2','4',NULL,NULL,NULL),('40601','ORURO','','POOPO','','','PRIMERA SECCION MUNICIPAL','5','406',NULL,NULL,NULL),('40602','ORURO','','POOPO','','','SEGUNDA SECCION MUNICIPAL','5','406',NULL,NULL,NULL),('40603','ORURO','','POOPO','','','TERCERA SECCION MUNICIPAL','5','406',NULL,NULL,NULL),('4061','ORURO','','POOPO','ANTEQUERA','','','3','406',NULL,NULL,NULL),('4062','ORURO','','POOPO','PAZÑA','','','3','406',NULL,NULL,NULL),('4063','ORURO','','POOPO','VILLA POOPÓ','','','3','406',NULL,NULL,NULL),('407','ORURO','','PANTALEON DALENCE','','','','2','4',NULL,NULL,NULL),('40701','ORURO','','PANTALEON DALENCE','','','PRIMERA SECCION MUNICIPAL','5','407',NULL,NULL,NULL),('40702','ORURO','','PANTALEON DALENCE','','','SEGUNDA SECCION MUNICIPAL','5','407',NULL,NULL,NULL),('4071','ORURO','','PANTALEON DALENCE','VILLA HUANUNI','','','3','407',NULL,NULL,NULL),('4072','ORURO','','PANTALEON DALENCE','MACHACAMARCA','','','3','407',NULL,NULL,NULL),('408','ORURO','','LADISLAO CABRERA','','','','2','4',NULL,NULL,NULL),('40801','ORURO','','LADISLAO CABRERA','','','PRIMERA SECCION MUNICIPAL','5','408',NULL,NULL,NULL),('40802','ORURO','','LADISLAO CABRERA','','','SEGUNDA SECCION MUNICIPAL','5','408',NULL,NULL,NULL),('4081','ORURO','','LADISLAO CABRERA','PAMPA AULLAGAS','','','3','408',NULL,NULL,NULL),('4082','ORURO','','LADISLAO CABRERA','SALINAS DE GARCI MENDOZA','','','3','408',NULL,NULL,NULL),('409','ORURO','','ATAHUALLPA','','','','2','4',NULL,NULL,NULL),('40901','ORURO','','ATAHUALLPA','','','PRIMERA SECCION MUNICIPAL','5','409',NULL,NULL,NULL),('40902','ORURO','','ATAHUALLPA','','','SEGUNDA SECCION MUNICIPAL','5','409',NULL,NULL,NULL),('40903','ORURO','','ATAHUALLPA','','','TERCERA SECCION MUNICIPAL','5','409',NULL,NULL,NULL),('4091','ORURO','','ATAHUALLPA','CHIPAYA','','','3','409',NULL,NULL,NULL),('4092','ORURO','','ATAHUALLPA','COIPASA','','','3','409',NULL,NULL,NULL),('4093','ORURO','','ATAHUALLPA','SABAYA','','','3','409',NULL,NULL,NULL),('410','ORURO','','SAUCARI','','','','2','4',NULL,NULL,NULL),('41001','ORURO','','SAUCARI','','','PRIMERA SECCION MUNICIPAL','5','410',NULL,NULL,NULL),('4101','ORURO','','SAUCARI','TOLEDO','','','3','410',NULL,NULL,NULL),('411','ORURO','','TOMAS BARRON','','','','2','4',NULL,NULL,NULL),('41101','ORURO','','TOMAS BARRON','','','PRIMERA SECCION MUNICIPAL','5','411',NULL,NULL,NULL),('4111','ORURO','','TOMAS BARRON','EUCALIPTUS','','','3','411',NULL,NULL,NULL),('412','ORURO','','SUD CARANGAS','','','','2','4',NULL,NULL,NULL),('41201','ORURO','','SUD CARANGAS','','','PRIMERA SECCION MUNICIPAL','5','412',NULL,NULL,NULL),('41202','ORURO','','SUD CARANGAS','','','SEGUNDA SECCION MUNICIPAL','5','412',NULL,NULL,NULL),('4121','ORURO','','SUD CARANGAS','ANDAMARCA','','','3','412',NULL,NULL,NULL),('4122','ORURO','','SUD CARANGAS','BELÉN DE ANDAMARCA','','','3','412',NULL,NULL,NULL),('413','ORURO','','SAN PEDRO DE TOTORA','','','','2','4',NULL,NULL,NULL),('41301','ORURO','','SAN PEDRO DE TOTORA','','','PRIMERA SECCION MUNICIPAL','5','413',NULL,NULL,NULL),('4131','ORURO','','SAN PEDRO DE TOTORA','TOTORA','','','3','413',NULL,NULL,NULL),('414','ORURO','','SEBASTIAN PAGADOR','','','','2','4',NULL,NULL,NULL),('41401','ORURO','','SEBASTIAN PAGADOR','','','PRIMERA SECCION MUNICIPAL','5','414',NULL,NULL,NULL),('4141','ORURO','','SEBASTIAN PAGADOR','SANTIAGO DE HUARI','','','3','414',NULL,NULL,NULL),('415','ORURO','','MEJILLONES','','','','2','4',NULL,NULL,NULL),('41501','ORURO','','MEJILLONES','','','PRIMERA SECCION MUNICIPAL','5','415',NULL,NULL,NULL),('41502','ORURO','','MEJILLONES','','','SEGUNDA SECCION MUNICIPAL','5','415',NULL,NULL,NULL),('41503','ORURO','','MEJILLONES','','','TERCERA SECCION MUNICIPAL','5','415',NULL,NULL,NULL),('4151','ORURO','','PUERTO DE MEJILLONES','CARANGAS','','','3','415',NULL,NULL,NULL),('4152','ORURO','','PUERTO DE MEJILLONES','LA RIVERA','','','3','415',NULL,NULL,NULL),('4153','ORURO','','PUERTO DE MEJILLONES','TODOS SANTOS','','','3','415',NULL,NULL,NULL),('416','ORURO','','NOR CARANGAS','','','','2','4',NULL,NULL,NULL),('41601','ORURO','','NOR CARANGAS','','','PRIMERA SECCION MUNICIPAL','5','416',NULL,NULL,NULL),('4161','ORURO','','NOR CARANGAS','SANTIAGO DE HUAYLLAMARCA','','','3','416',NULL,NULL,NULL),('5','POTOSI','','','','','','1','0',NULL,NULL,NULL),('501','POTOSI','','TOMAS FRIAS','','','','2','5',NULL,NULL,NULL),('50100','POTOSI','','TOMAS FRIAS','','','SECCION CAPITAL','5','501',NULL,NULL,NULL),('50101','POTOSI','','TOMAS FRIAS','','','PRIMERA SECCION MUNICIPAL','5','501',NULL,NULL,NULL),('50102','POTOSI','','TOMAS FRIAS','','','SEGUNDA SECCION MUNICIPAL','5','501',NULL,NULL,NULL),('50103','POTOSI','','TOMAS FRIAS','','','TERCERA SECCION MUNICIPAL','5','501',NULL,NULL,NULL),('5011','POTOSI','','TOMAS FRIAS','BELÉN DE URMIRI','','','3','501',NULL,NULL,NULL),('5012','POTOSI','','TOMAS FRIAS','POTOSÍ','','','3','501',NULL,NULL,NULL),('5013','POTOSI','','TOMAS FRIAS','TINGUIPAYA (4)','','','3','501',NULL,NULL,NULL),('5014','POTOSI','','TOMAS FRIAS','VILLA DE YOCALLA (4)','','','3','501',NULL,NULL,NULL),('502','POTOSI','','RAFAEL BUSTILLOS','','','','2','5',NULL,NULL,NULL),('50201','POTOSI','','RAFAEL BUSTILLOS','','','PRIMERA SECCION MUNICIPAL','5','502',NULL,NULL,NULL),('50202','POTOSI','','RAFAEL BUSTILLOS','','','SEGUNDA SECCION MUNICIPAL','5','502',NULL,NULL,NULL),('50203','POTOSI','','RAFAEL BUSTILLOS','','','TERCERA SECCION MUNICIPAL','5','502',NULL,NULL,NULL),('5021','POTOSI','','RAFAEL BUSTILLOS','CHAYANTA','','','3','502',NULL,NULL,NULL),('5022','POTOSI','','RAFAEL BUSTILLOS','LLALLAGUA','','','3','502',NULL,NULL,NULL),('5023','POTOSI','','RAFAEL BUSTILLOS','UNCÍA','','','3','502',NULL,NULL,NULL),('503','POTOSI','','CORNELIO SAAVEDRA','','','','2','5',NULL,NULL,NULL),('50301','POTOSI','','CORNELIO SAAVEDRA','','','PRIMERA SECCION MUNICIPAL','5','503',NULL,NULL,NULL),('50302','POTOSI','','CORNELIO SAAVEDRA','','','SEGUNDA SECCION MUNICIPAL','5','503',NULL,NULL,NULL),('50303','POTOSI','','CORNELIO SAAVEDRA','','','TERCERA SECCION MUNICIPAL','5','503',NULL,NULL,NULL),('5031','POTOSI','','CORNELIO SAAVEDRA','BETANZOS','','','3','503',NULL,NULL,NULL),('5032','POTOSI','','CORNELIO SAAVEDRA','CHAQUÍ','','','3','503',NULL,NULL,NULL),('5033','POTOSI','','CORNELIO SAAVEDRA','TACOBAMBA','','','3','503',NULL,NULL,NULL),('504','POTOSI','','CHAYANTA','','','','2','5',NULL,NULL,NULL),('50401','POTOSI','','CHAYANTA','','','PRIMERA SECCION MUNICIPAL','5','504',NULL,NULL,NULL),('50402','POTOSI','','CHAYANTA','','','SEGUNDA SECCION MUNICIPAL','5','504',NULL,NULL,NULL),('50403','POTOSI','','CHAYANTA','','','TERCERA SECCION MUNICIPAL','5','504',NULL,NULL,NULL),('50404','POTOSI','','CHAYANTA','','','CUARTA SECCION MUNICIPAL','5','504',NULL,NULL,NULL),('5041','POTOSI','','CHAYANTA','COLQUECHACA','','','3','504',NULL,NULL,NULL),('5042','POTOSI','','CHAYANTA','OCURÍ','','','3','504',NULL,NULL,NULL),('5043','POTOSI','','CHAYANTA','POCOATA','','','3','504',NULL,NULL,NULL),('5044','POTOSI','','CHAYANTA','RAVELO','','','3','504',NULL,NULL,NULL),('505','POTOSI','','CHARCAS','','','','2','5',NULL,NULL,NULL),('50501','POTOSI','','CHARCAS','','','PRIMERA SECCION MUNICIPAL','5','505',NULL,NULL,NULL),('50503','POTOSI','','CHARCAS','','','TERCERA SECCION MUNICIPAL','5','505',NULL,NULL,NULL),('5051','POTOSI','','CHARCAS','SAN PEDRO DE BUENA VISTA','','','3','505',NULL,NULL,NULL),('50511','POTOSI','','CHARCAS','SAN PEDRO DE BUENA VISTA','QUINAMARA','','4','5051',NULL,NULL,NULL),('5052','POTOSI','','CHARCAS','TORO TORO','','','3','505',NULL,NULL,NULL),('506','POTOSI','','NOR CHICHAS','','','','2','5',NULL,NULL,NULL),('50601','POTOSI','','NOR CHICHAS','','','PRIMERA SECCION MUNICIPAL','5','506',NULL,NULL,NULL),('50602','POTOSI','','NOR CHICHAS','','','SEGUNDA SECCION MUNICIPAL','5','506',NULL,NULL,NULL),('5061','POTOSI','','NOR CHICHAS','COTAGAITA','','','3','506',NULL,NULL,NULL),('50611','POTOSI','','NOR CHICHAS','COTAGAITA','MOCKO PATA','','4','5061',NULL,NULL,NULL),('507','POTOSI','','ALONSO DE IBAÑEZ','','','','2','5',NULL,NULL,NULL),('50701','POTOSI','','ALONSO DE IBAÑEZ','','','PRIMERA SECCION MUNICIPAL','5','507',NULL,NULL,NULL),('50704','POTOSI','','ALONSO DE IBAÑEZ','','','CUARTA SECCION MUNICIPAL','5','507',NULL,NULL,NULL),('5071','POTOSI','','ALONSO DE IBAÑEZ','CARIPUYO','','','3','507',NULL,NULL,NULL),('5072','POTOSI','','ALONSO DE IBAÑEZ','SACACA','','','3','507',NULL,NULL,NULL),('508','POTOSI','','SUR CHICHAS','','','','2','5',NULL,NULL,NULL),('50801','POTOSI','','SUR CHICHAS','','','PRIMERA SECCION MUNICIPAL','5','508',NULL,NULL,NULL),('50802','POTOSI','','SUR CHICHAS','','','SEGUNDA SECCION MUNICIPAL','5','508',NULL,NULL,NULL),('5081','POTOSI','','SUR CHICHAS','ATOCHA','','','3','508',NULL,NULL,NULL),('5082','POTOSI','','SUR CHICHAS','TUPIZA','','','3','508',NULL,NULL,NULL),('509','POTOSI','','NOR LIPEZ','','','','2','5',NULL,NULL,NULL),('50901','POTOSI','','NOR LIPEZ','','','PRIMERA SECCION MUNICIPAL','5','509',NULL,NULL,NULL),('50902','POTOSI','','NOR LIPEZ','','','SEGUNDA SECCION MUNICIPAL','5','509',NULL,NULL,NULL),('5091','POTOSI','','NOR LIPEZ','COLCHA \"K\"','','','3','509',NULL,NULL,NULL),('5092','POTOSI','','NOR LIPEZ','SAN PEDRO DE QUEMES','','','3','509',NULL,NULL,NULL),('510','POTOSI','','SUR LIPEZ','','','','2','5',NULL,NULL,NULL),('51001','POTOSI','','SUR LIPEZ','','','PRIMERA SECCION MUNICIPAL','5','510',NULL,NULL,NULL),('51002','POTOSI','','SUR LIPEZ','','','SEGUNDA SECCION MUNICIPAL','5','510',NULL,NULL,NULL),('51003','POTOSI','','SUR LIPEZ','','','TERCERA SECCION MUNICIPAL','5','510',NULL,NULL,NULL),('5101','POTOSI','','SUR LIPEZ','MOJINETE','','','3','510',NULL,NULL,NULL),('5102','POTOSI','','SUR LIPEZ','SAN ANTONIO DE ESMORUCO','','','3','510',NULL,NULL,NULL),('5103','POTOSI','','SUR LIPEZ','SAN PABLO DE LIPEZ','','','3','510',NULL,NULL,NULL),('511','POTOSI','','JOSE MARIA LINARES','','','','2','5',NULL,NULL,NULL),('51101','POTOSI','','JOSE MARIA LINARES','','','PRIMERA SECCION MUNICIPAL','5','511',NULL,NULL,NULL),('51102','POTOSI','','JOSE MARIA LINARES','','','SEGUNDA SECCION MUNICIPAL','5','511',NULL,NULL,NULL),('5112','POTOSI','','JOSE MARIA LINARES','PUNA','','','3','511',NULL,NULL,NULL),('51121','POTOSI','','JOSE MARIA LINARES','CAIZA \"D\"','LA FRAGUA','','4','5112',NULL,NULL,NULL),('5113','POTOSI','','JOSE MARIA LINARES','CKOCHAS (NUEVO)','','','3','511',NULL,NULL,NULL),('512','POTOSI','','ANTONIO QUIJARRO','','','','2','5',NULL,NULL,NULL),('51201','POTOSI','','ANTONIO QUIJARRO','','','PRIMERA SECCION MUNICIPAL','5','512',NULL,NULL,NULL),('51202','POTOSI','','ANTONIO QUIJARRO','','','SEGUNDA SECCION MUNICIPAL','5','512',NULL,NULL,NULL),('51203','POTOSI','','ANTONIO QUIJARRO','','','TERCERA SECCION MUNICIPAL','5','512',NULL,NULL,NULL),('5121','POTOSI','','ANTONIO QUIJARRO','PORCO','','','3','512',NULL,NULL,NULL),('5122','POTOSI','','ANTONIO QUIJARRO','TOMAVE','','','3','512',NULL,NULL,NULL),('5123','POTOSI','','ANTONIO QUIJARRO','UYUNI','','','3','512',NULL,NULL,NULL),('513','POTOSI','','GRAL.BERNARDINO BILBAO','','','','2','5',NULL,NULL,NULL),('51301','POTOSI','','GRAL.BERNARDINO BILBAO','','','PRIMERA SECCION MUNICIPAL','5','513',NULL,NULL,NULL),('51302','POTOSI','','GRAL.BERNARDINO BILBAO','','','SEGUNDA SECCION MUNICIPAL','5','513',NULL,NULL,NULL),('5131','POTOSI','','GRAL.BERNARDINO BILBAO','ACASIO','','','3','513',NULL,NULL,NULL),('5132','POTOSI','','GRAL.BERNARDINO BILBAO','ARAMPAMPA','','','3','513',NULL,NULL,NULL),('514','POTOSI','','DANIEL CAMPOS','','','','2','5',NULL,NULL,NULL),('51401','POTOSI','','DANIEL CAMPOS','','','PRIMERA SECCION MUNICIPAL','5','514',NULL,NULL,NULL),('51402','POTOSI','','DANIEL CAMPOS','','','SEGUNDA SECCION MUNICIPAL','5','514',NULL,NULL,NULL),('5141','POTOSI','','DANIEL CAMPOS','LLICA','','','3','514',NULL,NULL,NULL),('5142','POTOSI','','DANIEL CAMPOS','TAHUA','','','3','514',NULL,NULL,NULL),('515','POTOSI','','MODESTO OMISTE','','','','2','5',NULL,NULL,NULL),('51501','POTOSI','','MODESTO OMISTE','','','PRIMERA SECCION MUNICIPAL','5','515',NULL,NULL,NULL),('5151','POTOSI','','MODESTO OMISTE','VILLAZÓN','','','3','515',NULL,NULL,NULL),('516','POTOSI','','ENRIQUE BALDIVIESO','','','','2','5',NULL,NULL,NULL),('51601','POTOSI','','ENRIQUE BALDIVIESO','','','PRIMERA SECCION MUNICIPAL','5','516',NULL,NULL,NULL),('5161','POTOSI','','ENRIQUE BALDIVIESO','SAN AGUSTÍN','','','3','516',NULL,NULL,NULL),('6','TARIJA','','','','','','1','0',NULL,NULL,NULL),('601','TARIJA','','CERCADO','','','','2','6',NULL,NULL,NULL),('6011','TARIJA','','CERCADO','TARIJA','','','3','601',NULL,NULL,NULL),('602','TARIJA','','ARCE','','','','2','6',NULL,NULL,NULL),('6021','TARIJA','','ANICETO ARCE','BERMEJO','','','3','602',NULL,NULL,NULL),('6022','TARIJA','','ANICETO ARCE','PADCAYA','','','3','602',NULL,NULL,NULL),('603','TARIJA','','GRAN CHACO','','','','2','6',NULL,NULL,NULL),('6031','TARIJA','','GRAN CHACO','YACUIBA','','','3','603',NULL,NULL,NULL),('6032','TARIJA','','GRAN CHACO','CARAPARÍ','','','3','603',NULL,NULL,NULL),('6033','TARIJA','','GRAN CHACO','VILLAMONTES','','','3','603',NULL,NULL,NULL),('604','TARIJA','','AVILES','','','','2','6',NULL,NULL,NULL),('6041','TARIJA','','AVILES','YUNCHARÁ','','','3','604',NULL,NULL,NULL),('6042','TARIJA','','AVILES','URIONDO','','','3','604',NULL,NULL,NULL),('605','TARIJA','','MENDEZ','','','','2','6',NULL,NULL,NULL),('6051','TARIJA','','MENDEZ','EL PUENTE','','','3','605',NULL,NULL,NULL),('6052','TARIJA','','MENDEZ','SAN LORENZO','','','3','605',NULL,NULL,NULL),('606','TARIJA','','BURNET O\'OCONNOR','','','','2','6',NULL,NULL,NULL),('6061','TARIJA','','BURNET O\'OCONNOR','ENTRE RÍOS','','','3','606',NULL,NULL,NULL),('7','SANTA CRUZ','','','','','','1','0',NULL,NULL,NULL),('701','SANTA CRUZ','','ANDRES IBAÑEZ','','','','2','7',NULL,NULL,NULL),('7011','SANTA CRUZ','','ANDRES IBAÑEZ','AYACUCHO - PORONGO','','','3','701',NULL,NULL,NULL),('7012','SANTA CRUZ','','ANDRES IBAÑEZ','SANTA CRUZ DE LA SIERRA','','','3','701',NULL,NULL,NULL),('7013','SANTA CRUZ','','ANDRES IBAÑEZ','COTOCA','','','3','701',NULL,NULL,NULL),('7014','SANTA CRUZ','','ANDRES IBAÑEZ','EL TORNO','','','3','701',NULL,NULL,NULL),('7015','SANTA CRUZ','','ANDRES IBAÑEZ','LA GUARDIA','','','3','701',NULL,NULL,NULL),('702','SANTA CRUZ','','WARNES','','','','2','7',NULL,NULL,NULL),('7021','SANTA CRUZ','','WARNES','OKINAWA','','','3','702',NULL,NULL,NULL),('7022','SANTA CRUZ','','WARNES','WARNES','','','3','702',NULL,NULL,NULL),('703','SANTA CRUZ','','VELASCO','','','','2','7',NULL,NULL,NULL),('7031','SANTA CRUZ','','VELASCO','SAN IGNACIO','','','3','703',NULL,NULL,NULL),('7032','SANTA CRUZ','','VELASCO','SAN MIGUEL','','','3','703',NULL,NULL,NULL),('7033','SANTA CRUZ','','VELASCO','SAN RAFAEL','','','3','703',NULL,NULL,NULL),('704','SANTA CRUZ','','ICHILO','','','','2','7',NULL,NULL,NULL),('7041','SANTA CRUZ','','ICHILO','BUENA VISTA','','','3','704',NULL,NULL,NULL),('7042','SANTA CRUZ','','ICHILO','SAN CARLOS','','','3','704',NULL,NULL,NULL),('7043','SANTA CRUZ','','ICHILO','SAN JUAN','','','3','704',NULL,NULL,NULL),('7044','SANTA CRUZ','','ICHILO','YAPACANÍ','','','3','704',NULL,NULL,NULL),('70441','SANTA CRUZ','','ICHILO','YAPACANÍ','LOS POZOS','','4','7044',NULL,NULL,NULL),('70442','SANTA CRUZ','','ICHILO','YAPACANÍ','EL CONDOR','','4','7044',NULL,NULL,NULL),('70443','SANTA CRUZ','','ICHILO','YAPACANÍ','PUERTO CHORE','','4','7044',NULL,NULL,NULL),('70444','SANTA CRUZ','','ICHILO','YAPACANÍ','15 DE AGOSTO','','4','7044',NULL,NULL,NULL),('705','SANTA CRUZ','','CHIQUITOS','','','','2','7',NULL,NULL,NULL),('7051','SANTA CRUZ','','CHIQUITOS','PAILÓN','','','3','705',NULL,NULL,NULL),('7052','SANTA CRUZ','','CHIQUITOS','ROBORÉ','','','3','705',NULL,NULL,NULL),('7053','SANTA CRUZ','','CHIQUITOS','SAN JOSÉ','','','3','705',NULL,NULL,NULL),('706','SANTA CRUZ','','SARA','','','','2','7',NULL,NULL,NULL),('7061','SANTA CRUZ','','SARA','COLPA BÉLGICA','','','3','706',NULL,NULL,NULL),('7062','SANTA CRUZ','','SARA','PORTACHUELO','','','3','706',NULL,NULL,NULL),('7063','SANTA CRUZ','','SARA','SANTA ROSA DEL SARA','','','3','706',NULL,NULL,NULL),('707','SANTA CRUZ','','CORDILLERA','','','','2','7',NULL,NULL,NULL),('7071','SANTA CRUZ','','CORDILLERA','BOYUIBE','','','3','707',NULL,NULL,NULL),('7072','SANTA CRUZ','','CORDILLERA','CABEZAS','','','3','707',NULL,NULL,NULL),('7073','SANTA CRUZ','','CORDILLERA','CAMIRI','','','3','707',NULL,NULL,NULL),('7074','SANTA CRUZ','','CORDILLERA','CHARAGUA','','','3','707',NULL,NULL,NULL),('7075','SANTA CRUZ','','CORDILLERA','CUEVO','','','3','707',NULL,NULL,NULL),('7076','SANTA CRUZ','','CORDILLERA','GUTIÉRREZ','','','3','707',NULL,NULL,NULL),('70761','SANTA CRUZ','','CORDILLERA','GUTIÉRREZ','KAPIRENDA','','4','7076',NULL,NULL,NULL),('70762','SANTA CRUZ','','CORDILLERA','GUTIÉRREZ','KURUGUAKUA','','4','7076',NULL,NULL,NULL),('70763','SANTA CRUZ','','CORDILLERA','LAGUNILLAS','ALTO PARAPETI','','4','7076',NULL,NULL,NULL),('7077','SANTA CRUZ','','CORDILLERA','LAGUNILLAS','','','3','707',NULL,NULL,NULL),('708','SANTA CRUZ','','VALLEGRANDE','','','','2','7',NULL,NULL,NULL),('7081','SANTA CRUZ','','VALLEGRANDE','MORO MORO','','','3','708',NULL,NULL,NULL),('70811','SANTA CRUZ','','VALLEGRANDE','MORO MORO','ABRA DEL ASTILLERO','','4','7081',NULL,NULL,NULL),('7082','SANTA CRUZ','','VALLEGRANDE','POSTRER VALLE','','','3','708',NULL,NULL,NULL),('7083','SANTA CRUZ','','VALLEGRANDE','PUCARA','','','3','708',NULL,NULL,NULL),('7084','SANTA CRUZ','','VALLEGRANDE','TRIGAL','','','3','708',NULL,NULL,NULL),('7085','SANTA CRUZ','','VALLEGRANDE','VALLE GRANDE','','','3','708',NULL,NULL,NULL),('709','SANTA CRUZ','','FLORIDA','','','','2','7',NULL,NULL,NULL),('7091','SANTA CRUZ','','FLORIDA','MAIRANA','','','3','709',NULL,NULL,NULL),('7092','SANTA CRUZ','','FLORIDA','PAMPA GRANDE','','','3','709',NULL,NULL,NULL),('7093','SANTA CRUZ','','FLORIDA','QUIRUSILLAS','','','3','709',NULL,NULL,NULL),('7094','SANTA CRUZ','','FLORIDA','SAMAIPATA','','','3','709',NULL,NULL,NULL),('710','SANTA CRUZ','','OBISPO SANTIESTEVAN','','','','2','7',NULL,NULL,NULL),('7101','SANTA CRUZ','','OBISPO SANTIESTEVAN','GRAL. SAAVEDRA','','','3','710',NULL,NULL,NULL),('7102','SANTA CRUZ','','OBISPO SANTIESTEVAN','MINEROS','','','3','710',NULL,NULL,NULL),('7103','SANTA CRUZ','','OBISPO SANTIESTEVAN','MONTERO','','','3','710',NULL,NULL,NULL),('7104','SANTA CRUZ','','OBISPO SANTIESTEVAN','PUERTO FERNÁNDEZ ALONSO','','','3','710',NULL,NULL,NULL),('7105','SANTA CRUZ','','OBISPO SANTIESTEVAN','SAN PEDRO','','','3','710',NULL,NULL,NULL),('711','SANTA CRUZ','','ÑUFLO DE CHAVEZ','','','','2','7',NULL,NULL,NULL),('7111','SANTA CRUZ','','ÑUFLO DE CHAVEZ','CONCEPCIÓN','','','3','711',NULL,NULL,NULL),('7112','SANTA CRUZ','','ÑUFLO DE CHAVEZ','CUATRO CAÑADAS','','','3','711',NULL,NULL,NULL),('7113','SANTA CRUZ','','ÑUFLO DE CHAVEZ','SAN ANTONIO DEL LOMERÍO','','','3','711',NULL,NULL,NULL),('7114','SANTA CRUZ','','ÑUFLO DE CHAVEZ','SAN JAVIER','','','3','711',NULL,NULL,NULL),('71141','SANTA CRUZ','','ÑUFLO DE CHAVEZ','SAN JAVIER','MONTE CRISTO','','4','7114',NULL,NULL,NULL),('71142','SANTA CRUZ','','ÑUFLO DE CHAVEZ','SAN JAVIER','SAN FRANCISCO LAS ABRAS','','4','7114',NULL,NULL,NULL),('7115','SANTA CRUZ','','ÑUFLO DE CHAVEZ','SAN JULIÁN','','','3','711',NULL,NULL,NULL),('7116','SANTA CRUZ','','ÑUFLO DE CHAVEZ','SAN RAMÓN','','','3','711',NULL,NULL,NULL),('712','SANTA CRUZ','','ANGEL SANDOVAL','','','','2','7',NULL,NULL,NULL),('7121','SANTA CRUZ','','ANGEL SANDOVAL','SAN MATÍAS','','','3','712',NULL,NULL,NULL),('713','SANTA CRUZ','','MANUEL MARIA CABALLERO','','','','2','7',NULL,NULL,NULL),('7131','SANTA CRUZ','','MANUEL MARIA','SAIPINA','','','3','713',NULL,NULL,NULL),('7132','SANTA CRUZ','','MANUEL MARIA','COMARAPA','','','3','713',NULL,NULL,NULL),('714','SANTA CRUZ','','GERMAN BUSCH','','','','2','7',NULL,NULL,NULL),('7141','SANTA CRUZ','','GERMAN BUSCH','CARMEN RIVERO TORRES','','','3','714',NULL,NULL,NULL),('7142','SANTA CRUZ','','GERMAN BUSCH','PUERTO QUIJARRO','','','3','714',NULL,NULL,NULL),('7143','SANTA CRUZ','','GERMAN BUSCH','PUERTO SUÁREZ','','','3','714',NULL,NULL,NULL),('715','SANTA CRUZ','','GUARAYOS','','','','2','7',NULL,NULL,NULL),('7151','SANTA CRUZ','','GUARAYOS','ASCENCIÓN DE GUARAYOS','','','3','715',NULL,NULL,NULL),('71511','SANTA CRUZ','','GUARAYOS','ASCENCIÓN DE GUARAYOS','SANTA MARIA','','4','7151',NULL,NULL,NULL),('71512','SANTA CRUZ','','GUARAYOS','ASCENCIÓN DE GUARAYOS','CERRO CHICO','','4','7151',NULL,NULL,NULL),('71513','SANTA CRUZ','','GUARAYOS','ASCENCIÓN DE GUARAYOS','CERRO GRANDE','','4','7151',NULL,NULL,NULL),('71514','SANTA CRUZ','','GUARAYOS','ASCENCIÓN DE GUARAYOS','NUEVA JERUSALEN','','4','7151',NULL,NULL,NULL),('7152','SANTA CRUZ','','GUARAYOS','EL PUENTE','','','3','715',NULL,NULL,NULL),('7153','SANTA CRUZ','','GUARAYOS','URUBICHÁ','','','3','715',NULL,NULL,NULL),('8','BENI','','','','','','1','0',NULL,NULL,NULL),('801','BENI','','CERCADO','','','','2','8',NULL,NULL,NULL),('8011','BENI','','CERCADO','SAN JAVIER','','','3','801',NULL,NULL,NULL),('8012','BENI','','CERCADO','TRINIDAD','','','3','801',NULL,NULL,NULL),('802','BENI','','VACA DIEZ','','','','2','8',NULL,NULL,NULL),('8021','BENI','','VACA DIEZ','GUAYARAMERÍN','','','3','802',NULL,NULL,NULL),('8022','BENI','','VACA DIEZ','RIBERALTA','','','3','802',NULL,NULL,NULL),('803','BENI','','GRAL.JOSE BALLIVIAN','','','','2','8',NULL,NULL,NULL),('8031','BENI','','JOSÉ BALLIVIÁN','REYES','','','3','803',NULL,NULL,NULL),('8032','BENI','','JOSÉ BALLIVIÁN','RURRENABAQUE','','','3','803',NULL,NULL,NULL),('8033','BENI','','JOSÉ BALLIVIÁN','SAN BORJA','','','3','803',NULL,NULL,NULL),('8034','BENI','','JOSÉ BALLIVIÁN','SANTA ROSA','','','3','803',NULL,NULL,NULL),('804','BENI','','YACUMA','','','','2','8',NULL,NULL,NULL),('8041','BENI','','YACUMA','EXALTACIÓN','','','3','804',NULL,NULL,NULL),('8042','BENI','','YACUMA','SANTA ANA','','','3','804',NULL,NULL,NULL),('805','BENI','','MOXOS','','','','2','8',NULL,NULL,NULL),('8051','BENI','','MOXOS','SAN IGNACIO','','','3','805',NULL,NULL,NULL),('806','BENI','','MARBAN','','','','2','8',NULL,NULL,NULL),('8061','BENI','','MARBAN','LORETO','','','3','806',NULL,NULL,NULL),('8062','BENI','','MARBAN','SAN ANDRÉS','','','3','806',NULL,NULL,NULL),('807','BENI','','MAMORE','','','','2','8',NULL,NULL,NULL),('8071','BENI','','MAMORE','PUERTO SILES','','','3','807',NULL,NULL,NULL),('8072','BENI','','MAMORE','SAN JOAQUÍN','','','3','807',NULL,NULL,NULL),('8073','BENI','','MAMORE','SAN RAMÓN','','','3','807',NULL,NULL,NULL),('808','BENI','','ITENEZ','','','','2','8',NULL,NULL,NULL),('8081','BENI','','ITENEZ','BAURES','','','3','808',NULL,NULL,NULL),('8082','BENI','','ITENEZ','HUACARAJE','','','3','808',NULL,NULL,NULL),('8083','BENI','','ITENEZ','MAGDALENA','','','3','808',NULL,NULL,NULL),('9','PANDO','','','','','','1','0',NULL,NULL,NULL),('901','PANDO','','NICOLAS SUAREZ','','','','2','9',NULL,NULL,NULL),('90100','PANDO','','NICOLAS SUAREZ','COBIJA','','SECCION CAPITAL','5','9013',NULL,NULL,NULL),('90101','PANDO','','NICOLAS SUAREZ','BOLPEBRA','','PRIMERA SECCION MUNICIPAL','5','9012',NULL,NULL,NULL),('9011','PANDO','','NICOLAS SUAREZ','BELLA FLOR','','','3','901',NULL,NULL,NULL),('9012','PANDO','','NICOLAS SUAREZ','BOLPEBRA','','','3','901',NULL,NULL,NULL),('9013','PANDO','','NICOLAS SUAREZ','COBIJA','','','3','901',NULL,NULL,NULL),('9014','PANDO','','NICOLAS SUAREZ','PORVENIR','','','3','901',NULL,NULL,NULL),('902','PANDO','','MANURIPI','','','','2','9',NULL,NULL,NULL),('90201','PANDO','','MANURIPI','FILADELFIA','','PRIMERA SECCION MUNICIPAL','5','9021',NULL,NULL,NULL),('90202','PANDO','','MANURIPI','SAN PEDRO','','SEGUNDA SECCION MUNICIPAL','5','9023',NULL,NULL,NULL),('9021','PANDO','','MANURIPI','FILADELFIA','','','3','902',NULL,NULL,NULL),('9022','PANDO','','MANURIPI','PUERTO RICO','','','3','902',NULL,NULL,NULL),('9023','PANDO','','MANURIPI','SAN PEDRO','','','3','902',NULL,NULL,NULL),('903','PANDO','','MADRE DE DIOS','','','','2','9',NULL,NULL,NULL),('90301','PANDO','','MADRE DE DIOS','SAN LORENZO (BLANCA FLOR)','','PRIMERA SECCION MUNICIPAL','5','9031',NULL,NULL,NULL),('90302','PANDO','','MADRE DE DIOS','SENA','','SEGUNDA SECCION MUNICIPAL','5','9032',NULL,NULL,NULL),('9031','PANDO','','MADRE DE DIOS','BLANCA FLOR','','','3','903',NULL,NULL,NULL),('9032','PANDO','','MADRE DE DIOS','EL SENA','','','3','903',NULL,NULL,NULL),('9033','PANDO','','MADRE DE DIOS','PUERTO GONZALO MORENO','','','3','903',NULL,NULL,NULL),('904','PANDO','','ABUNA','','','','2','9',NULL,NULL,NULL),('9041','PANDO','','ABUNA','SANTA ROSA DEL ABUNÁ','','','3','904',NULL,NULL,NULL),('9042','PANDO','','ABUNA','HUMAITA','','','3','904',NULL,NULL,NULL),('905','PANDO','','FEDERICO ROMAN','','','','2','9',NULL,NULL,NULL),('90501','PANDO','','FEDERICO ROMAN','SANTOS MERCADO','','PRIMERA SECCION MUNICIPAL','5','9052',NULL,NULL,NULL),('9051','PANDO','','FEDERICO ROMAN','NUEVA ESPERANZA','','','3','905',NULL,NULL,NULL),('9052','PANDO','','FEDERICO ROMAN','SANTOS MERCADO (RESERVA)','','','3','905',NULL,NULL,NULL),('9053','PANDO','','FEDERICO ROMAN','VILLA NUEVA (LOMA ALTA)','','','3','905',NULL,NULL,NULL);
/*!40000 ALTER TABLE `p_ubicacion_geografica_rami` ENABLE KEYS */;
UNLOCK TABLES;

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
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `s_usuario`
--

LOCK TABLES `s_usuario` WRITE;
/*!40000 ALTER TABLE `s_usuario` DISABLE KEYS */;
INSERT INTO `s_usuario` VALUES (1,16,100,'sisec','2'),(6,1,1,'sisec','3'),(7,19,1,'erwin','666'),(8,28,1,'MECHI','123'),(9,34,1,'Nadja','123');
/*!40000 ALTER TABLE `s_usuario` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_aprobacion`
--

DROP TABLE IF EXISTS `t_aprobacion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_aprobacion` (
  `aprobacion_id` int(11) NOT NULL AUTO_INCREMENT,
  `aprobacion_resultado_id` int(11) DEFAULT NULL,
  `aprobacion_resultado_obs` varchar(255) DEFAULT NULL,
  `aprobacion_nro_acta_cdap` varchar(255) DEFAULT NULL,
  `aprobacion_fuente_eu` decimal(15,2) DEFAULT NULL,
  `aprobacion_fuente_bs` decimal(15,2) DEFAULT NULL,
  `aprobacion_contraparte_eu` decimal(15,2) DEFAULT NULL,
  `aprobacion_contraparte_bs` decimal(15,2) DEFAULT NULL,
  `aprobacion_ctf` varchar(255) DEFAULT NULL,
  `aprobacion_ctf_fecha` date DEFAULT NULL,
  `aprobacion_resolucion` varchar(255) DEFAULT NULL,
  `aprobacion_resolucion_fecha` date DEFAULT NULL,
  `aprobacion_fecha_inicio` date DEFAULT NULL,
  `aprobacion_fecha_fin_programada` date DEFAULT NULL,
  `aprobacion_fecha_final` date DEFAULT NULL,
  `aprobacion_duracion_dias` varchar(10) DEFAULT NULL,
  `proyecto_id` int(11) DEFAULT NULL,
  `aprob_proyecto_aprobado_como` int(10) DEFAULT NULL,
  `aprob_fecha_comite_tecnico` date DEFAULT NULL,
  `aprob_fecha_cdap` date DEFAULT NULL,
  `aprob_observacion_acta_comite_tecnico` varchar(900) DEFAULT NULL,
  `aprob_observacion_acta_cdap` varchar(900) DEFAULT NULL,
  `aprob_plazo_total_ejecucion` int(10) DEFAULT NULL,
  `aprob_codigo_correlativo_aprobacion` varchar(50) DEFAULT NULL,
  `apob_id_user` int(11) DEFAULT NULL,
  `aprob_fcha_ult_modif` datetime DEFAULT NULL,
  `aprob_tipo_proyecto` varchar(15) DEFAULT NULL,
  PRIMARY KEY (`aprobacion_id`),
  KEY `fk_aprob_proyecto` (`proyecto_id`),
  KEY `fk_aprob_result` (`aprobacion_resultado_id`),
  KEY `fk_aprob_proy_como` (`aprob_proyecto_aprobado_como`),
  KEY `fk_aprob_user` (`apob_id_user`),
  CONSTRAINT `fk_aprob_proyecto` FOREIGN KEY (`proyecto_id`) REFERENCES `t_proyecto` (`proyecto_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_aprob_proy_como` FOREIGN KEY (`aprob_proyecto_aprobado_como`) REFERENCES `p_estado_etapa` (`estado_codigo`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=189 DEFAULT CHARSET=latin2;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_aprobacion`
--

LOCK TABLES `t_aprobacion` WRITE;
/*!40000 ALTER TABLE `t_aprobacion` DISABLE KEYS */;
INSERT INTO `t_aprobacion` VALUES (1,3,'dfgfg','gdfg fab',4171447.00,458905.06,4171447.00,80983.25,'gfdg dato',NULL,'',NULL,'1970-01-01','1970-01-01','1970-01-01','55',1,1,'2014-05-02','2014-06-02','gdfg gato','dfg dat',5,'55566',7,'2014-12-15 23:13:12','INVERS'),(5,1,'','',107784.74,739403.30,19020.84,130482.94,'','2013-10-16','','0000-00-00','2013-10-09','0000-00-00','0000-00-00','',5,2,'0000-00-00','0000-00-00','','',0,'',NULL,NULL,'INVERS'),(9,1,'','07/12',6.86,140000.00,6.86,0.00,'s/n','2013-10-16','',NULL,'2012-09-10','2012-09-13','2012-09-13','4',9,1,'2012-09-10','2012-09-13','','',1,'',8,'2014-08-27 18:15:20','INVERS'),(13,1,'',' 017 / 2012',6.86,754043.29,6.86,133066.46,'076/2012','2013-05-03','','2012-08-14','2012-09-13','2012-09-14','2012-09-14','2',13,2,'2012-09-10','2012-09-14','','',1,'',7,'2014-08-20 13:50:01','INVERS'),(16,1,'','N? 007/2012 ',6.86,2141705.68,6.86,377948.06,'084/2013','2013-03-13','','2013-03-13','2012-09-13','2012-09-14','2012-09-14','2',16,2,'2012-09-10','2012-09-14','','',180,'',7,'2014-12-10 23:51:00','INVERS'),(22,1,'','018/2012 ',6.86,1501905.89,6.86,265042.22,'113/2012','2012-10-24','','2012-10-24','2012-09-13','2012-09-14','2012-09-14','2',22,2,'2012-09-10','2012-09-14','','',1,'',8,'2014-08-27 18:02:53','INVERS'),(24,1,'','02-008-13 ',6.86,2213791.37,6.86,1068817.43,'s/n','2013-07-15','','2013-07-15','2013-06-04','2013-06-04','2013-07-04','31',24,2,'2013-06-04','2013-06-04','','',1,'',8,'2014-08-27 18:15:05','INVERS'),(26,1,'','',30248.35,207503.65,5337.94,36618.29,'','2013-12-02','','0000-00-00','2013-11-14','0000-00-00','0000-00-00','',26,2,'0000-00-00','0000-00-00','','',0,'',NULL,NULL,'INVERS'),(27,1,'','',9024.29,61906.60,1592.52,10924.69,'','2013-11-18','','0000-00-00','2013-11-14','0000-00-00','0000-00-00','',27,2,'0000-00-00','0000-00-00','','',0,'',NULL,NULL,'INVERS'),(28,1,'','',9632.27,66077.40,1699.81,11660.72,'','2013-11-18','','0000-00-00','2013-11-14','0000-00-00','0000-00-00','',28,2,'0000-00-00','0000-00-00','','',0,'',NULL,NULL,'INVERS'),(29,1,'','',18180.49,124718.18,3208.32,22009.09,'','2013-11-18','','0000-00-00','2013-11-14','0000-00-00','0000-00-00','',29,2,'0000-00-00','0000-00-00','','',0,'',NULL,NULL,'INVERS'),(30,1,'','',63860.00,438079.57,11269.41,77308.16,'','2013-11-18','','0000-00-00','2013-11-14','0000-00-00','0000-00-00','',30,2,'0000-00-00','0000-00-00','','',0,'',NULL,NULL,'INVERS'),(31,1,'','',67478.25,462900.82,62287.62,427293.06,'','2013-09-19','','0000-00-00','2013-06-20','0000-00-00','0000-00-00','',31,2,'0000-00-00','0000-00-00','','',0,'',NULL,NULL,'INVERS'),(33,1,'','',63904.00,438381.42,11277.18,77361.43,'','2013-06-04','','0000-00-00','2012-09-28','0000-00-00','0000-00-00','',33,2,'0000-00-00','0000-00-00','','',0,'',NULL,NULL,'INVERS'),(35,1,'','(2DO-03)-03-058-12',6.86,569362.04,6.86,431802.08,'s/n','2012-09-06','','2012-10-25','2012-10-02','2012-10-02','2012-10-02','1',35,2,'2012-10-02','2012-10-02','','',1,'',8,'2014-08-27 18:04:58','INVERS'),(37,1,'','',74753.31,512807.72,66824.93,458419.03,'','2013-07-04','','0000-00-00','2012-09-21','0000-00-00','0000-00-00','',37,2,'0000-00-00','0000-00-00','','',0,'',NULL,NULL,'INVERS'),(39,1,'','',63860.00,438079.57,11269.41,77308.16,'','2013-06-24','','0000-00-00','2012-09-28','0000-00-00','0000-00-00','',39,2,'0000-00-00','0000-00-00','','',0,'',NULL,NULL,'INVERS'),(41,1,'','',69643.81,477756.54,12290.08,84309.98,'','2013-06-05','','0000-00-00','2012-09-28','0000-00-00','0000-00-00','',41,2,'0000-00-00','0000-00-00','','',0,'',NULL,NULL,'INVERS'),(43,1,'','',165818.67,1137516.07,37191.45,255133.38,'','2013-04-15','','0000-00-00','2012-08-14','0000-00-00','0000-00-00','',43,2,'0000-00-00','0000-00-00','','',0,'',NULL,NULL,'INVERS'),(46,1,'','',65822.88,451544.96,11615.80,79684.41,'','2013-06-28','','0000-00-00','2012-10-03','0000-00-00','0000-00-00','',46,2,'0000-00-00','0000-00-00','','',0,'',NULL,NULL,'INVERS'),(53,1,'','',49274.71,338024.51,8695.54,59651.38,'','2013-03-14','','0000-00-00','2012-08-02','0000-00-00','0000-00-00','',53,2,'0000-00-00','0000-00-00','','',0,'',NULL,NULL,'INVERS'),(56,1,'','',61461.29,421624.44,10846.11,74404.31,'','2013-03-14','','0000-00-00','2012-08-02','0000-00-00','0000-00-00','',56,2,'0000-00-00','0000-00-00','','',0,'',NULL,NULL,'INVERS'),(59,1,'','',43505.52,298447.86,7677.44,52667.27,'','2013-05-21','','0000-00-00','2012-08-09','0000-00-00','0000-00-00','',59,2,'0000-00-00','0000-00-00','','',0,'',NULL,NULL,'INVERS'),(62,1,'','',158560.59,1087725.64,43607.70,299148.82,'','2012-11-09','','0000-00-00','2012-10-26','0000-00-00','0000-00-00','',62,2,'0000-00-00','0000-00-00','','',0,'',NULL,NULL,'INVERS'),(64,1,'','(2DO-03)-03-031-1',6.86,1234662.66,6.86,217881.65,'s/n','2012-08-17','','2012-08-16','2012-08-14','2012-08-14','2012-08-14','1',64,2,'2012-08-14','2012-08-14','','',1,'',8,'2014-08-27 17:51:20','INVERS'),(68,1,'','',18192.10,124797.81,3210.37,22023.14,'','2013-06-24','','0000-00-00','2012-08-17','0000-00-00','0000-00-00','',68,2,'0000-00-00','0000-00-00','','',0,'',NULL,NULL,'INVERS'),(70,1,'','(1ER-03)-03-024-12',6.86,1607468.92,6.86,283670.99,'s/n','2012-08-14','','2012-08-14','2012-08-03','2012-08-03','2012-08-03','1',70,2,'2012-08-03','2012-08-03','','',1,'',8,'2014-08-27 18:11:21','INVERS'),(73,1,'','',18212.80,124939.80,3214.02,22048.20,'','2013-06-04','','0000-00-00','2012-08-17','0000-00-00','0000-00-00','',73,2,'0000-00-00','0000-00-00','','',0,'',NULL,NULL,'INVERS'),(75,1,'','',13711.72,94062.41,2419.72,16599.25,'','2013-06-24','','0000-00-00','2012-08-17','0000-00-00','0000-00-00','',75,2,'0000-00-00','0000-00-00','','',0,'',NULL,NULL,'INVERS'),(77,1,'','',18088.41,124086.50,3192.07,21897.62,'','2013-06-05','','0000-00-00','2012-08-17','0000-00-00','0000-00-00','',77,2,'0000-00-00','0000-00-00','','',0,'',NULL,NULL,'INVERS'),(79,1,'','',13128.25,90059.81,2316.75,15892.91,'','2013-06-24','','0000-00-00','2012-08-17','0000-00-00','0000-00-00','',79,2,'0000-00-00','0000-00-00','','',0,'',NULL,NULL,'INVERS'),(81,1,'','',125671.01,862103.13,48268.10,331119.20,'','2012-09-18','','0000-00-00','2012-08-08','0000-00-00','0000-00-00','',81,2,'0000-00-00','0000-00-00','','',0,'',NULL,NULL,'INVERS'),(84,1,'','',226185.22,1551630.64,39915.04,273817.17,'','2012-12-07','','0000-00-00','2012-08-02','0000-00-00','0000-00-00','',84,2,'0000-00-00','0000-00-00','','',0,'',NULL,NULL,'INVERS'),(87,1,'','',60009.32,411663.97,10589.88,72646.58,'','2013-02-08','','0000-00-00','2012-08-07','0000-00-00','0000-00-00','',87,2,'0000-00-00','0000-00-00','','',0,'',NULL,NULL,'INVERS'),(90,1,'','(2DO-03)-03-005-12',6.86,828597.25,6.86,146223.04,'s/n','2012-06-25','','2012-06-25','2012-05-25','2012-05-25','2012-05-25','1',90,2,'2012-05-25','2012-05-25','','',1,'',8,'2014-08-27 17:55:24','INVERS'),(93,1,'','',69574.15,477278.66,12277.79,84225.65,'','2013-11-05','','0000-00-00','2012-08-03','0000-00-00','0000-00-00','',93,2,'0000-00-00','0000-00-00','','',0,'',NULL,NULL,'INVERS'),(97,1,'','',122405.51,839701.77,21600.97,148182.67,'','2012-11-29','','0000-00-00','2012-08-02','0000-00-00','0000-00-00','',97,2,'0000-00-00','0000-00-00','','',0,'',NULL,NULL,'INVERS'),(99,1,'','',61696.22,423236.05,10887.57,74688.71,'','2012-06-20','','0000-00-00','2012-05-25','0000-00-00','0000-00-00','',99,2,'0000-00-00','0000-00-00','','',0,'',NULL,NULL,'INVERS'),(102,1,'','(2D0-03)-03-051-12',6.86,1004092.63,6.86,177192.82,'s/n','2012-08-16','','2012-08-16','2012-09-20','2012-09-20','2012-09-20','1',102,2,'2012-09-20','2012-09-20','','',1,'',8,'2014-08-27 18:08:09','INVERS'),(104,1,'','',57790.09,396440.01,10198.25,69960.00,'','2013-07-01','','0000-00-00','2012-09-19','0000-00-00','0000-00-00','',104,2,'0000-00-00','0000-00-00','','',0,'',NULL,NULL,'INVERS'),(106,1,'','(2DO-03)-03-026-12',3462296.47,504707.94,610993.51,89066.11,'31/2012','2012-08-14','','2012-08-14','2012-08-07','2012-08-07','2012-08-07','1',106,2,'2012-08-07','2012-08-07','','',1,'',8,'2014-08-15 17:35:56','INVERS'),(108,1,'','',108112.51,741651.83,19078.68,130879.74,'','2013-03-14','','0000-00-00','2012-09-05','0000-00-00','0000-00-00','',108,2,'0000-00-00','0000-00-00','','',0,'',NULL,NULL,'INVERS'),(110,1,'','(2DO-03)-03-028-12',6.86,914525.96,6.86,161386.93,'s/n','2012-08-16','','2012-08-16','2012-08-08','2012-08-09','2012-08-09','2',110,2,'2012-08-09','2012-08-09','','',1,'',8,'2014-08-27 18:03:33','INVERS'),(112,1,'','(2D-03)-03-024-12',6.86,494217.75,6.86,87214.89,'48/2012','2012-08-10','','2012-08-13','2012-08-02','2012-08-03','2012-08-03','2',112,2,'2012-08-03','2012-08-03','','',1,'',8,'2014-08-27 18:06:06','INVERS'),(115,1,'','(2D-03)-03-026-12',6.86,723564.12,6.86,127687.79,'136/2012','2012-08-14','','2012-08-22','2012-08-07','2012-08-07','2012-08-07','1',115,2,'2012-08-07','2012-08-07','','',1,'',8,'2014-08-27 18:05:47','INVERS'),(118,1,'','',82238.97,564159.36,14512.76,99557.54,'','2012-12-07','','0000-00-00','2012-08-03','0000-00-00','0000-00-00','',118,2,'0000-00-00','0000-00-00','','',0,'',NULL,NULL,'INVERS'),(121,1,'','(2DO-03)-03-005-12',6.86,824753.72,6.86,145544.77,'s/n','2012-08-20','','2012-08-20','2012-08-08','2012-08-08','2012-08-08','1',121,2,'2012-08-08','2012-08-08','','',1,'',8,'2014-08-27 18:03:57','INVERS'),(122,1,'','(2DO-03)-03-005-12',6.86,920775.13,6.86,162489.73,'s/n','2012-05-28','','2012-05-28','2012-05-25','2012-05-25','2012-05-25','1',122,2,'2012-05-25','2012-05-25','','',1,'',8,'2014-08-27 18:05:24','INVERS'),(125,1,'','',15398.48,105633.56,2717.38,18641.22,'','2012-10-19','','0000-00-00','2012-05-24','0000-00-00','0000-00-00','',125,2,'0000-00-00','0000-00-00','','',0,'',NULL,NULL,'INVERS'),(127,1,'','(2DO-03)-03-009-12',6.86,801036.15,6.86,141359.32,'21/2012','2012-06-25','','2012-06-25','2012-06-19','2012-06-19','2012-06-18','1',127,2,'2012-06-19','2012-06-19','','',1,'',8,'2014-08-27 18:07:40','INVERS'),(130,1,'','',119615.43,820561.88,21108.61,144805.04,'','2012-11-06','','0000-00-00','2012-05-25','0000-00-00','0000-00-00','',130,2,'0000-00-00','0000-00-00','','',0,'',NULL,NULL,'INVERS'),(133,1,'','',221304.00,1518145.42,39053.65,267908.01,'','2012-09-08','','0000-00-00','2012-05-25','0000-00-00','0000-00-00','',133,2,'0000-00-00','0000-00-00','','',0,'',NULL,NULL,'INVERS'),(136,1,'','(2DO-03)-03-007-12',6.86,1278003.21,6.86,225529.98,'s/n','2012-06-25','','2012-06-25','2012-06-08','2012-06-11','2012-06-11','4',136,2,'2012-06-11','2012-06-11','','',1,'',8,'2014-08-27 18:07:23','INVERS'),(137,1,'','(2DO-04)-04-023-13',6.86,979611.28,6.86,172872.58,'s/n','2013-03-26','','2013-03-26','2013-04-01','2013-04-01','2013-04-01','1',137,2,'2013-04-01','2013-04-01','','',1,'',8,'2014-08-27 18:03:13','PRE-INV'),(140,1,'','',141617.55,971496.42,24991.33,171440.54,'','2013-11-18','','0000-00-00','0000-00-00','0000-00-00','0000-00-00','',140,2,'0000-00-00','0000-00-00','','',0,'',NULL,NULL,'INVERS'),(143,1,'','g',6.86,113935.76,6.86,0.00,'s/n','2013-10-17','','2012-08-07','2012-06-26','2012-06-26','2012-06-26','1',143,1,'2012-06-26','2012-06-26','','',1,'',8,'2014-08-27 18:14:46','PRE-INV'),(146,1,'','',168115.04,1153269.17,29667.36,203518.09,'','2013-06-14','','0000-00-00','2013-05-15','0000-00-00','0000-00-00','',146,2,'0000-00-00','0000-00-00','','',0,'',NULL,NULL,'INVERS'),(152,1,'','',25800.00,176988.00,4200.00,28812.00,'','2013-10-14','','0000-00-00','0000-00-00','0000-00-00','0000-00-00','',152,2,'0000-00-00','0000-00-00','','',0,'',NULL,NULL,'INVERS'),(154,1,'','',71994.86,493884.74,12704.98,87156.13,'','2013-09-28','','0000-00-00','2013-03-27','0000-00-00','0000-00-00','',154,2,'0000-00-00','0000-00-00','','',0,'',NULL,NULL,'INVERS'),(156,1,'','rtg',233537.87,1602069.80,233537.87,282718.20,'cvbfgf','2013-11-13','',NULL,'2013-03-27','2014-12-05','2014-12-25','639',156,1,'2014-12-11','2014-12-12','','',1,'',7,'2014-12-10 23:24:24','PRE-INV'),(167,1,'','(2DO-07)-07-035-12',6.86,862006.88,6.86,152118.86,'s/n','2012-11-28','','2012-11-28','2012-11-12','2012-11-12','2012-11-12','1',167,2,'2012-11-12','2012-11-12','','',1,'',8,'2014-08-27 18:11:36','INVERS'),(169,1,'','(1ER-07)-07-037-12',6.86,1952003.83,6.86,344471.26,'s/n','2012-11-29','','2012-02-10','2012-11-20','2012-11-20','2012-11-20','1',169,2,'2012-06-19','2012-06-19','','',1,'',8,'2014-08-27 18:13:37','INVERS'),(180,1,'','',86817.44,595567.63,15320.72,105100.17,'','2013-02-18','','0000-00-00','2012-10-04','0000-00-00','0000-00-00','',180,2,'0000-00-00','0000-00-00','','',0,'',NULL,NULL,'INVERS'),(182,3,'','II-03-03-009-12',6.86,1078563.25,6.86,190334.69,'s/n','2012-10-15','','2012-06-25','2012-10-04','2012-10-05','2012-10-05','2',182,2,'2012-10-05','2012-10-05','','',1,'',8,'2014-08-27 18:12:06','INVERS'),(186,1,'','(2DO-07)-07-035-12',6.86,883746.42,6.86,155955.25,'s/n','2012-11-28',NULL,'2012-11-28','2012-11-12','2012-11-12','2012-11-12','1',183,2,'2012-11-12','2012-11-12','','',180,NULL,8,'2014-08-27 18:11:46','INVERS'),(187,1,'','05-051-12-1379',1616890.20,235698.28,0.00,0.00,'046/2012','2012-04-26',NULL,'2012-04-26','2012-04-10','2014-04-10','2012-04-10','1',184,1,'2012-03-01','2012-03-05','','',70,NULL,8,'2014-08-19 11:37:12','PRE-INV'),(188,3,'dobs dfdsf','acta',6.08,123.00,6.08,45.00,'ctf',NULL,NULL,NULL,'2014-12-13','2014-12-02','2014-12-03','1',156,1,'2014-12-01','2014-12-04','','',339489,NULL,7,'2014-12-10 22:58:42','INVERS');
/*!40000 ALTER TABLE `t_aprobacion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_aprobacion_componente_presupuesto`
--

DROP TABLE IF EXISTS `t_aprobacion_componente_presupuesto`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_aprobacion_componente_presupuesto` (
  `aprobacion_componente_presupuesto_id` int(10) NOT NULL AUTO_INCREMENT,
  `acp_id_proyecto` int(10) NOT NULL,
  `acp_id_aprobacion_componente` int(10) NOT NULL,
  `acp_monto_bs` decimal(10,2) DEFAULT NULL,
  `acp_monto_sus` decimal(10,2) DEFAULT NULL,
  `acp_tipo_proy` varchar(15) DEFAULT NULL,
  PRIMARY KEY (`aprobacion_componente_presupuesto_id`),
  KEY `fk_acp_componente` (`acp_id_aprobacion_componente`),
  KEY `fk_acp_proyecto` (`acp_id_proyecto`)
) ENGINE=InnoDB AUTO_INCREMENT=67 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_aprobacion_componente_presupuesto`
--

LOCK TABLES `t_aprobacion_componente_presupuesto` WRITE;
/*!40000 ALTER TABLE `t_aprobacion_componente_presupuesto` DISABLE KEYS */;
INSERT INTO `t_aprobacion_componente_presupuesto` VALUES (7,115,4,780965.06,113843.30,'INVERS'),(8,115,6,39048.25,5692.16,'INVERS'),(9,115,8,31238.60,4553.73,'INVERS'),(11,22,4,1666932.11,242993.02,'INVERS'),(12,22,6,100016.00,14579.59,'INVERS'),(13,13,8,40323.11,5878.00,'INVERS'),(14,13,4,806463.55,117560.28,'INVERS'),(15,13,6,40323.11,5878.00,'INVERS'),(18,137,4,1099483.86,160274.62,'PRE-INV'),(19,137,6,53000.00,7725.95,'PRE-INV'),(20,110,4,1028912.89,149987.30,'INVERS'),(21,110,6,47000.00,6851.31,'INVERS'),(22,121,4,924098.49,134708.23,'INVERS'),(23,121,6,46200.00,6734.69,'INVERS'),(24,35,4,1001164.12,145942.29,'INVERS'),(25,35,6,49000.00,7142.86,'INVERS'),(26,122,8,39752.49,5794.82,'INVERS'),(27,122,4,993818.26,144871.47,'INVERS'),(28,122,6,49694.11,7244.04,'INVERS'),(30,112,4,534659.68,77938.73,'INVERS'),(31,112,8,21272.96,3101.01,'INVERS'),(32,112,6,25500.00,3717.20,'INVERS'),(33,127,8,34500.00,5029.15,'INVERS'),(34,127,4,864695.47,126048.90,'INVERS'),(35,127,6,43200.00,6297.38,'INVERS'),(36,102,4,1126285.45,164181.55,'INVERS'),(37,102,6,55000.00,8017.49,'INVERS'),(38,70,4,1746139.91,254539.35,'INVERS'),(39,70,8,65000.00,9475.22,'INVERS'),(40,70,6,80000.00,11661.81,'INVERS'),(41,167,4,979125.74,142729.70,'INVERS'),(42,167,6,35000.00,5102.04,'INVERS'),(43,183,4,1004701.67,146457.97,'INVERS'),(44,183,6,35000.00,5102.04,'INVERS'),(45,182,4,1228897.94,179139.64,'INVERS'),(46,182,6,40000.00,5830.90,'INVERS'),(47,169,8,95000.00,13848.40,'INVERS'),(48,169,6,75000.00,10932.94,'INVERS'),(49,184,3,235698.28,34358.35,'PRE-INV'),(50,143,3,113935.76,16608.71,'PRE-INV'),(51,24,4,3132608.80,456648.51,'INVERS'),(52,24,6,150000.00,21865.89,'INVERS'),(53,9,3,14000.00,2040.82,'INVERS'),(54,106,4,565499.05,82434.26,'INVERS'),(55,106,6,28275.00,4121.72,'INVERS'),(57,64,6,60000.00,8746.36,'INVERS'),(58,64,4,1342544.31,195706.17,'INVERS'),(59,64,8,50000.00,7288.63,'INVERS'),(60,90,4,894330.55,130368.88,'INVERS'),(61,90,6,44716.52,6518.44,'INVERS'),(62,90,8,35773.22,5214.76,'INVERS'),(63,16,6,114529.71,16695.29,'INVERS'),(64,16,4,2290594.34,333905.88,'INVERS'),(65,16,8,114529.71,16695.29,'INVERS'),(66,156,8,15556.00,232.18,'PRE-INV');
/*!40000 ALTER TABLE `t_aprobacion_componente_presupuesto` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_aprobacion_participante`
--

DROP TABLE IF EXISTS `t_aprobacion_participante`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_aprobacion_participante` (
  `aprobacion_participante_id` int(10) NOT NULL AUTO_INCREMENT,
  `ap_id_persona` int(10) DEFAULT NULL,
  `ap_tipo_participante` varchar(50) COLLATE latin1_bin DEFAULT NULL,
  `ap_id_proyecto` int(10) DEFAULT NULL,
  `ap_tipo_proy` varchar(15) COLLATE latin1_bin DEFAULT NULL,
  PRIMARY KEY (`aprobacion_participante_id`),
  KEY `fk_ap_persona` (`ap_id_persona`),
  KEY `fk_ap_proyecto` (`ap_id_proyecto`),
  CONSTRAINT `fk_ap_proyecto` FOREIGN KEY (`ap_id_proyecto`) REFERENCES `t_proyecto` (`proyecto_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=latin1 COLLATE=latin1_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_aprobacion_participante`
--

LOCK TABLES `t_aprobacion_participante` WRITE;
/*!40000 ALTER TABLE `t_aprobacion_participante` DISABLE KEYS */;
INSERT INTO `t_aprobacion_participante` VALUES (1,5,'RPCT',1,'INVERS'),(2,14,'RPCDAP',1,'INVERS'),(3,7,'RPCDAP',1,'INVERS'),(4,20,'RPCT',22,'INVERS'),(5,22,'RPCT',22,'INVERS'),(6,24,'RPCT',22,'INVERS'),(7,23,'RPCT',22,'INVERS'),(8,21,'RPCT',22,'INVERS'),(9,20,'RPCDAP',22,'INVERS'),(10,22,'RPCDAP',22,'INVERS'),(11,24,'RPCDAP',22,'INVERS'),(13,23,'RPCDAP',22,'INVERS'),(14,21,'RPCDAP',22,'INVERS'),(15,14,'RPCT',182,'INVERS'),(16,18,'RPCDAP',156,'PRE-INV'),(17,33,'RPCT',156,'PRE-INV');
/*!40000 ALTER TABLE `t_aprobacion_participante` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_cierre`
--

DROP TABLE IF EXISTS `t_cierre`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_cierre` (
  `cierre_id` int(10) NOT NULL AUTO_INCREMENT,
  `c_id_proyecto` int(10) DEFAULT NULL,
  `c_etapa` varchar(50) COLLATE latin1_bin NOT NULL,
  `c_etapa_hijo` varchar(50) COLLATE latin1_bin DEFAULT NULL,
  `c_componente` varchar(300) COLLATE latin1_bin DEFAULT NULL,
  `c_contrato_numero` varchar(300) COLLATE latin1_bin DEFAULT NULL,
  `c_moneda_contrato` varchar(50) COLLATE latin1_bin DEFAULT NULL,
  `c_monto_final_contrato` decimal(10,2) DEFAULT NULL,
  `c_id_user` int(11) DEFAULT NULL,
  `c_fcha_ult_modif` datetime DEFAULT NULL,
  PRIMARY KEY (`cierre_id`),
  KEY `fk_c_proy` (`c_id_proyecto`),
  CONSTRAINT `fk_c_proy` FOREIGN KEY (`c_id_proyecto`) REFERENCES `t_proyecto` (`proyecto_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=183 DEFAULT CHARSET=latin1 COLLATE=latin1_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_cierre`
--

LOCK TABLES `t_cierre` WRITE;
/*!40000 ALTER TABLE `t_cierre` DISABLE KEYS */;
INSERT INTO `t_cierre` VALUES (1,1,'1','9',' componente 11','C-FPS-01-002801','EU',532235.43,NULL,NULL),(5,5,'',NULL,NULL,'N/A','BS',869886.24,NULL,NULL),(9,9,'',NULL,NULL,'N/A','BS',999397.11,NULL,NULL),(13,13,'',NULL,NULL,'C-FPS-01-002798','BS',781574.35,NULL,NULL),(16,16,'',NULL,NULL,'C-FPS-01-002802','BS',2305993.22,NULL,NULL),(22,22,'',NULL,NULL,'C-FPS-01-002794','BS',1600253.37,NULL,NULL),(24,24,'',NULL,NULL,'N/A','BS',3132608.80,NULL,NULL),(26,26,'',NULL,NULL,'N/A','BS',244121.94,NULL,NULL),(27,27,'',NULL,NULL,'N/A','BS',72831.29,NULL,NULL),(28,28,'',NULL,NULL,'N/A','BS',77738.12,NULL,NULL),(29,29,'',NULL,NULL,'N/A','BS',146727.27,NULL,NULL),(30,30,'',NULL,NULL,'N/A','BS',515387.73,NULL,NULL),(31,31,'',NULL,NULL,'C-FPS-03-003160','BS',875351.41,NULL,NULL),(33,33,'',NULL,NULL,'C-FPS-03-003111','BS',460825.94,NULL,NULL),(35,35,'',NULL,NULL,'N/A','BS',1001164.12,NULL,NULL),(37,37,'',NULL,NULL,'C-FPS-03-003126','BS',1018591.54,NULL,NULL),(39,39,'',NULL,NULL,'C-FPS-03-003119','BS',515643.78,NULL,NULL),(41,41,'',NULL,NULL,'C-FPS-03-003114','BS',548436.39,NULL,NULL),(43,43,'',NULL,NULL,'C-FPS-03-003077','BS',1392286.77,NULL,NULL),(46,46,'',NULL,NULL,'C-FPS-03-003122','BS',529314.39,NULL,NULL),(53,53,'',NULL,NULL,'C-FPS-03-003038','BS',396797.31,NULL,NULL),(56,56,'',NULL,NULL,'C-FPS-03-003039','BS',495908.29,NULL,NULL),(59,59,'',NULL,NULL,'C-FPS-03-003102','BS',351051.65,NULL,NULL),(62,62,'',NULL,NULL,'N/A','BS',1386874.46,NULL,NULL),(64,64,'',NULL,NULL,'C-FPS-03-003097','BS',1327780.52,NULL,NULL),(68,68,'',NULL,NULL,'C-FPS-03-003119','BS',146706.01,NULL,NULL),(70,70,'1','8','comp 70','cont 70 ','bs',3.00,NULL,NULL),(73,73,'',NULL,NULL,'C-FPS-03-003111','BS',144064.81,NULL,NULL),(75,75,'',NULL,NULL,'C-FPS-03-003119','BS',110776.08,NULL,NULL),(77,77,'',NULL,NULL,'C-FPS-03-003114','BS',144388.11,NULL,NULL),(79,79,'',NULL,NULL,'C-FPS-03-003119','BS',104768.74,NULL,NULL),(81,81,'',NULL,NULL,'N/A','BS',1193222.33,NULL,NULL),(84,84,'',NULL,NULL,'C-FPS-03-003070','BS',1823134.83,NULL,NULL),(87,87,'',NULL,NULL,'C-FPS-03-003010','BS',484309.76,NULL,NULL),(90,90,'',NULL,NULL,'C-FPS-03-002906','BS',892098.57,NULL,NULL),(93,93,'',NULL,NULL,'C-FPS-03-003177','BS',559764.66,NULL,NULL),(97,97,'',NULL,NULL,'C-FPS-03-002933','BS',987245.12,NULL,NULL),(99,99,'',NULL,NULL,'C-FPS-03-002905','BS',492368.19,NULL,NULL),(102,102,'',NULL,NULL,'C-FPS-03-003166','BS',1123659.68,NULL,NULL),(104,104,'',NULL,NULL,'C-FPS-03-003123','BS',465072.50,NULL,NULL),(106,106,'',NULL,NULL,'C-FPS-03-002939','BS',550039.16,NULL,NULL),(108,108,'',NULL,NULL,'C-FPS-03-003042','BS',872353.25,NULL,NULL),(110,110,'',NULL,NULL,'C-FPS-03-003036','BS',1099240.72,NULL,NULL),(112,112,'',NULL,NULL,'C-FPS-03-002996','BS',523118.55,NULL,NULL),(115,115,'',NULL,NULL,'C-FPS-03-003009','BS',819921.72,NULL,NULL),(118,118,'',NULL,NULL,'C-FPS-03-003007','BS',729897.99,NULL,NULL),(121,121,'',NULL,NULL,'C-FPS-03-002986','BS',854014.97,NULL,NULL),(122,122,'',NULL,NULL,'C-FPS-03-002762','BS',978366.18,NULL,NULL),(125,125,'',NULL,NULL,'C-FPS-03-003165','BS',124253.58,NULL,NULL),(127,127,'',NULL,NULL,'C-FPS-03-002858','BS',734991.80,NULL,NULL),(130,130,'',NULL,NULL,'C-FPS-03-002879','BS',866538.17,NULL,NULL),(133,133,'',NULL,NULL,'C-FPS-03-002767','BS',1740383.34,NULL,NULL),(136,136,'',NULL,NULL,'C-FPS-03-002820','BS',1348893.45,NULL,NULL),(137,137,'',NULL,NULL,'C-FPS-04-002755','BS',1077388.11,NULL,NULL),(140,140,'',NULL,NULL,'N/A','BS',1142936.96,NULL,NULL),(143,143,'',NULL,NULL,'N/A','BS',1931859.22,NULL,NULL),(146,146,'',NULL,NULL,'N/A','BS',1356787.26,NULL,NULL),(152,152,'',NULL,NULL,'N/A','BS',205800.00,NULL,NULL),(154,154,'',NULL,NULL,'C-FPS-05-002997','BS',563099.87,NULL,NULL),(156,156,'',NULL,NULL,'C-FPS-05-003032','BS',1832670.73,NULL,NULL),(167,167,'',NULL,NULL,'C-FPS-07-002868','BS',978056.15,NULL,NULL),(169,169,'',NULL,NULL,'C-FPS-07-002822','BS',315401.16,NULL,NULL),(180,180,'',NULL,NULL,'C-FPS-07-002807','BS',938544.94,NULL,NULL),(182,182,'',NULL,NULL,'C-FPS-07-002807','BS',951142.12,NULL,NULL);
/*!40000 ALTER TABLE `t_cierre` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_cierre_estacion`
--

DROP TABLE IF EXISTS `t_cierre_estacion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_cierre_estacion` (
  `cierre_estacion_id` int(11) NOT NULL AUTO_INCREMENT,
  `ce_tipo_cierre_id` int(11) DEFAULT NULL,
  `ce_proyecto_id` int(11) DEFAULT NULL,
  `ce_cumplimiento` varchar(255) COLLATE utf8_spanish_ci DEFAULT NULL,
  `ce_fecha_inicio` date DEFAULT NULL,
  `ce_fecha_fin` date DEFAULT NULL,
  `ce_observaciones` varchar(255) COLLATE utf8_spanish_ci DEFAULT NULL,
  PRIMARY KEY (`cierre_estacion_id`),
  KEY `fk_ce_proy` (`ce_proyecto_id`),
  KEY `fk_ce_tipo` (`ce_tipo_cierre_id`),
  CONSTRAINT `fk_ce_proy` FOREIGN KEY (`ce_proyecto_id`) REFERENCES `t_proyecto` (`proyecto_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_ce_tipo` FOREIGN KEY (`ce_tipo_cierre_id`) REFERENCES `p_tipo_cierre` (`tipo_cierre_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=196 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_cierre_estacion`
--

LOCK TABLES `t_cierre_estacion` WRITE;
/*!40000 ALTER TABLE `t_cierre_estacion` DISABLE KEYS */;
INSERT INTO `t_cierre_estacion` VALUES (5,1,1,'si',NULL,NULL,NULL),(6,1,1,'si',NULL,NULL,NULL),(7,1,1,'si',NULL,NULL,NULL),(8,1,1,'si',NULL,NULL,NULL),(9,1,1,'si',NULL,NULL,NULL),(10,1,1,'si',NULL,NULL,NULL),(11,1,1,'si',NULL,NULL,NULL),(12,1,1,'si',NULL,NULL,NULL),(13,1,1,'si',NULL,NULL,NULL),(14,1,1,'si',NULL,NULL,NULL),(15,1,1,'si',NULL,NULL,NULL),(16,1,1,'si',NULL,NULL,NULL),(17,1,1,'si',NULL,NULL,NULL),(18,1,1,'si',NULL,NULL,NULL),(19,1,1,'si',NULL,NULL,NULL),(20,1,1,'si',NULL,NULL,NULL),(21,1,1,'si',NULL,NULL,NULL),(22,1,1,'si',NULL,NULL,NULL),(23,1,1,'si',NULL,NULL,NULL),(24,1,1,'si',NULL,NULL,NULL),(25,1,1,'si',NULL,NULL,NULL),(26,1,1,'si',NULL,NULL,NULL),(27,1,1,'si',NULL,NULL,NULL),(28,1,1,'si',NULL,NULL,NULL),(29,1,1,'si',NULL,NULL,NULL),(30,1,1,'si',NULL,NULL,NULL),(31,1,1,'si',NULL,NULL,NULL),(32,1,1,'si',NULL,NULL,NULL),(33,1,1,'si',NULL,NULL,NULL),(34,1,1,'si',NULL,NULL,NULL),(35,1,1,'si',NULL,NULL,NULL),(36,1,1,'si',NULL,NULL,NULL),(37,1,1,'si',NULL,NULL,NULL),(38,1,1,'si',NULL,NULL,NULL),(39,1,1,'si',NULL,NULL,NULL),(40,1,1,'si',NULL,NULL,NULL),(41,1,1,'si',NULL,NULL,NULL),(42,1,1,'si',NULL,NULL,NULL),(43,1,1,'si',NULL,NULL,NULL),(44,1,1,'si',NULL,NULL,NULL),(45,1,1,'si',NULL,NULL,NULL),(46,1,1,'si',NULL,NULL,NULL),(47,1,1,'si',NULL,NULL,NULL),(48,1,1,'si',NULL,NULL,NULL),(49,1,1,'si',NULL,NULL,NULL),(50,1,1,'si',NULL,NULL,NULL),(51,1,1,'si',NULL,NULL,NULL),(52,1,1,'si',NULL,NULL,NULL),(53,1,1,'si',NULL,NULL,NULL),(54,1,1,'si',NULL,NULL,NULL),(55,1,1,'si',NULL,NULL,NULL),(56,1,1,'si',NULL,NULL,NULL),(57,1,1,'si',NULL,NULL,NULL),(58,1,1,'si',NULL,NULL,NULL),(59,1,1,'si',NULL,NULL,NULL),(60,1,1,'si',NULL,NULL,NULL),(61,1,1,'si',NULL,NULL,NULL),(62,1,1,'si',NULL,NULL,NULL),(63,1,1,'si',NULL,NULL,NULL),(64,1,1,'si',NULL,NULL,NULL),(65,1,1,'si',NULL,NULL,NULL),(66,1,1,'si',NULL,NULL,NULL),(67,1,1,'si',NULL,NULL,NULL),(68,1,1,'si',NULL,NULL,NULL),(69,1,1,'si',NULL,NULL,NULL),(70,1,1,'si',NULL,NULL,NULL),(71,1,1,'si',NULL,NULL,NULL),(72,1,1,'si',NULL,NULL,NULL),(73,1,1,'si',NULL,NULL,NULL),(74,1,1,'si',NULL,NULL,NULL),(75,1,1,'si',NULL,NULL,NULL),(76,1,1,'si',NULL,NULL,NULL),(77,1,1,'si',NULL,NULL,NULL),(78,1,1,'si',NULL,NULL,NULL),(79,1,1,'si',NULL,NULL,NULL),(80,1,1,'si',NULL,NULL,NULL),(81,1,1,'si',NULL,NULL,NULL),(82,1,1,'si',NULL,NULL,NULL),(83,1,1,'si',NULL,NULL,NULL),(84,1,1,'si',NULL,NULL,NULL),(85,1,1,'si',NULL,NULL,NULL),(86,1,1,'si',NULL,NULL,NULL),(87,1,1,'si',NULL,NULL,NULL),(88,1,1,'si',NULL,NULL,NULL),(89,1,1,'si',NULL,NULL,NULL),(90,1,1,'si',NULL,NULL,NULL),(91,1,1,'si',NULL,NULL,NULL),(92,1,1,'si',NULL,NULL,NULL),(93,1,1,'si',NULL,NULL,NULL),(94,1,1,'si',NULL,NULL,NULL),(95,1,1,'si',NULL,NULL,NULL),(96,1,1,'si',NULL,NULL,NULL),(97,1,1,'si',NULL,NULL,NULL),(98,1,1,'si',NULL,NULL,NULL),(99,1,1,'si',NULL,NULL,NULL),(100,1,1,'si',NULL,NULL,NULL),(101,1,1,'si',NULL,NULL,NULL),(102,1,1,'si',NULL,NULL,NULL),(103,1,1,'si',NULL,NULL,NULL),(104,1,1,'si',NULL,NULL,NULL),(105,1,1,'si',NULL,NULL,NULL),(106,1,1,'si',NULL,NULL,NULL),(107,1,1,'si',NULL,NULL,NULL),(108,1,1,'si',NULL,NULL,NULL),(109,1,1,'si',NULL,NULL,NULL),(110,1,1,'si',NULL,NULL,NULL),(111,1,1,'si',NULL,NULL,NULL),(112,1,1,'si',NULL,NULL,NULL),(113,1,1,'si',NULL,NULL,NULL),(114,1,1,'si',NULL,NULL,NULL),(115,1,1,'si',NULL,NULL,NULL),(116,1,1,'si',NULL,NULL,NULL),(117,1,1,'si',NULL,NULL,NULL),(118,1,1,'si',NULL,NULL,NULL),(119,1,1,'si',NULL,NULL,NULL),(120,1,1,'si',NULL,NULL,NULL),(121,1,1,'si',NULL,NULL,NULL),(122,1,1,'si',NULL,NULL,NULL),(123,1,1,'si',NULL,NULL,NULL),(124,1,1,'si',NULL,NULL,NULL),(125,1,1,'si',NULL,NULL,NULL),(126,1,1,'si',NULL,NULL,NULL),(127,1,1,'si',NULL,NULL,NULL),(128,1,1,'si',NULL,NULL,NULL),(129,1,1,'si',NULL,NULL,NULL),(130,1,1,'si',NULL,NULL,NULL),(131,1,1,'si',NULL,NULL,NULL),(132,1,1,'si',NULL,NULL,NULL),(133,1,1,'si',NULL,NULL,NULL),(134,1,1,'si',NULL,NULL,NULL),(135,1,1,'si',NULL,NULL,NULL),(136,1,1,'si',NULL,NULL,NULL),(137,1,1,'si',NULL,NULL,NULL),(138,1,1,'si',NULL,NULL,NULL),(139,1,1,'si',NULL,NULL,NULL),(140,1,1,'si',NULL,NULL,NULL),(141,1,1,'si',NULL,NULL,NULL),(142,1,1,'si',NULL,NULL,NULL),(143,1,1,'si',NULL,NULL,NULL),(144,1,1,'si',NULL,NULL,NULL),(145,1,1,'si',NULL,NULL,NULL),(146,1,1,'si',NULL,NULL,NULL),(147,1,1,'si',NULL,NULL,NULL),(148,1,1,'si',NULL,NULL,NULL),(149,1,1,'si',NULL,NULL,NULL),(150,1,1,'si',NULL,NULL,NULL),(151,1,1,'si',NULL,NULL,NULL),(152,1,1,'si',NULL,NULL,NULL),(153,1,1,'si',NULL,NULL,NULL),(154,1,1,'si',NULL,NULL,NULL),(155,1,1,'si',NULL,NULL,NULL),(156,1,1,'si',NULL,NULL,NULL),(157,1,1,'si',NULL,NULL,NULL),(158,1,1,'si',NULL,NULL,NULL),(159,1,1,'si',NULL,NULL,NULL),(160,1,1,'si',NULL,NULL,NULL),(161,1,1,'si',NULL,NULL,NULL),(162,1,1,'si',NULL,NULL,NULL),(163,1,1,'si',NULL,NULL,NULL),(164,1,1,'si',NULL,NULL,NULL),(165,1,1,'si',NULL,NULL,NULL),(166,1,1,'si',NULL,NULL,NULL),(167,1,1,'si',NULL,NULL,NULL),(168,1,1,'si',NULL,NULL,NULL),(169,1,1,'si',NULL,NULL,NULL),(170,1,1,'si',NULL,NULL,NULL),(171,1,1,'si',NULL,NULL,NULL),(172,1,1,'si',NULL,NULL,NULL),(173,1,1,'si',NULL,NULL,NULL),(174,1,1,'si',NULL,NULL,NULL),(175,1,1,'si',NULL,NULL,NULL),(176,1,1,'si',NULL,NULL,NULL),(177,1,1,'si',NULL,NULL,NULL),(178,1,1,'si',NULL,NULL,NULL),(179,1,1,'si',NULL,NULL,NULL),(180,1,1,'si',NULL,NULL,NULL),(181,1,1,'si',NULL,NULL,NULL),(182,1,1,'si',NULL,NULL,NULL),(183,1,1,'si',NULL,NULL,NULL),(184,1,1,'si',NULL,NULL,NULL),(185,1,1,'si',NULL,NULL,NULL),(187,2,70,'si',NULL,NULL,NULL),(188,1,70,'si',NULL,'2012-12-29',NULL),(190,1,70,'si','2012-10-31','2012-10-31','obs'),(191,2,5,'si','2014-02-05','2014-02-07','hjhj'),(193,1,9,'si','2014-02-06','2014-02-05','fgdfg'),(194,2,5,'si','2014-06-01','2014-05-10','sdsdsd dsdsd'),(195,1,1,'si','2014-03-07','2014-03-07','cvvcxv');
/*!40000 ALTER TABLE `t_cierre_estacion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_comite_fecha_aprobacion`
--

DROP TABLE IF EXISTS `t_comite_fecha_aprobacion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_comite_fecha_aprobacion` (
  `comite_fecha_id` int(11) NOT NULL AUTO_INCREMENT,
  `comite_fecha_tipo` varchar(10) DEFAULT NULL,
  `comite_fecha_descripcion` varchar(255) DEFAULT NULL,
  `comite_miembro_id` int(11) DEFAULT NULL,
  `proyecto_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`comite_fecha_id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin2;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_comite_fecha_aprobacion`
--

LOCK TABLES `t_comite_fecha_aprobacion` WRITE;
/*!40000 ALTER TABLE `t_comite_fecha_aprobacion` DISABLE KEYS */;
INSERT INTO `t_comite_fecha_aprobacion` VALUES (1,'CDAP',NULL,1,76286),(2,'CDAP',NULL,2,76286),(3,'CDAP',NULL,3,76286),(4,'CDAP',NULL,4,76286),(5,'CDAP',NULL,5,76286),(6,'TECNICO',NULL,1,76286),(7,'TECNICO',NULL,2,76286),(8,'TECNICO',NULL,3,76286),(9,'TECNICO',NULL,4,76286),(10,'TECNICO',NULL,6,76286);
/*!40000 ALTER TABLE `t_comite_fecha_aprobacion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_constructora`
--

DROP TABLE IF EXISTS `t_constructora`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_constructora` (
  `constructora_id` int(10) NOT NULL AUTO_INCREMENT,
  `constructora_descripcion` varchar(300) COLLATE utf8_spanish_ci DEFAULT NULL,
  `contructora_tipo` varchar(300) COLLATE utf8_spanish_ci DEFAULT NULL,
  PRIMARY KEY (`constructora_id`)
) ENGINE=InnoDB AUTO_INCREMENT=116 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_constructora`
--

LOCK TABLES `t_constructora` WRITE;
/*!40000 ALTER TABLE `t_constructora` DISABLE KEYS */;
INSERT INTO `t_constructora` VALUES (1,'ACUÑA CAYOJA GIOVANNY JAIR',NULL),(2,'ALAIN CIRO MEDINA VEIZAGA',NULL),(3,'ALAIN DANIEL GUILLEN VIZCARRA',NULL),(4,'ALBERTO COCA NOYA',NULL),(5,'ANGULO CRUZ DAVID',NULL),(6,'ARANCIBIA LOPEZ JUAN CARLOS',NULL),(7,'ARIEL OSVALDO LOPEZ BELMONTE',NULL),(8,'ARMANDO ROJAS DURAN',NULL),(9,'ARNEZ CAMACHO SABINO',NULL),(10,'ASOCIACION ACCIDENTAL HIDROPROYECTO S.R.L.',NULL),(11,'AUGUSTO CALVIMONTES CAMPERO',NULL),(12,'AVILES CRESPO ARIEL JAIME',NULL),(13,'BARINAS CONSTRUCCIONES S.R.L.',NULL),(14,'BUTRON ALVARADO JOSÉ',NULL),(15,'CACERES RIOJA HENRY',NULL),(16,'CARLOS EULOGIO MAGNE CHALLAPA',NULL),(17,'CARLOS NELSON VILLEGAS RODRIGUEZ',NULL),(18,'CHAMBI TORO ISAAC',NULL),(19,'CHAVARRIA COPA FREDDY',NULL),(20,'CINTHYA VERÓNICA  MAMANI QUISPE',NULL),(21,'CODAPI SRL',NULL),(22,'CONDEPCIA S.R.L.',NULL),(23,'CONST. CONSULT. TECNICA DE ING. Y ARQ. COTEINAR',NULL),(24,'CONSTRUCCIONES PUNTAL',NULL),(25,'CONSTRUCTORA ECOCA',NULL),(26,'CONSTRUCTORA ORION S.R.L.',NULL),(27,'CONSTRUCTORA Y CONSULTORA EMCONGOR SRL.',NULL),(28,'CONSTRUCTORA Y CONSULTORA GUARACHI TUMIRI CONSGUAT',NULL),(29,'CONSTRUCTORA&CONSULTORA MAHATMA SRL ',NULL),(30,'CONSULTORA CONSTRUCTORA INGENIERIA MARTINEZ \"CIM\"',NULL),(31,'CONSULTORA MULTIDISCIPLINARIA TAPIA SRL',NULL),(32,'COPA MORATO MILTON',NULL),(33,'CRISPIN ORELLANA CLAROS',NULL),(34,'CUARZO CONSTRUCCIONES',NULL),(35,'DALENZ ZAPATA MARIA TERESA ',NULL),(36,'DELGADILLO ALVARADO WILZON FERNANDO',NULL),(37,'ECOSEI S.R.L.',NULL),(38,'EDGAR CAYO TAQUICHIRI',NULL),(39,'EDGAR RODRIGUEZ FERREL',NULL),(40,'EDWIN JIMENEZ ROSAS',NULL),(41,'EMPRESA CONSTRUCTORA EMCOAS LTDA',NULL),(42,'EMPRESA CONSTRUCTORA EMCOZ',NULL),(43,'EMPRESA CONSTRUCTORA RHENO',NULL),(44,'EMPRESA LEMUEL LTDA',NULL),(45,'ENRIQUE ZURITA IRIARTE',NULL),(46,'ENRIQUEZ GUTIERREZ GUSTAVO RAYMUNDO',NULL),(47,'ESCALANTE BARBA LUIS ENRIQUE',NULL),(48,'FAHRID EDWARD CORIA MARTINEZ',NULL),(49,'FERNANDEZ AVILES RONALD',NULL),(50,'FERNANDEZ ROJAS OSCAR',NULL),(51,'GABRIEL ORTEGA EDWIN',NULL),(52,'HERNÁN LUCIO QUEZADA RODRIGUEZ',NULL),(53,'HUARACHI BEJARANO SEVERINO',NULL),(54,'HUINCHA  S.R.L.',NULL),(55,'IVER WALDO QUILO LOZADA',NULL),(56,'JAVIER CONDE ANDRADE ',NULL),(57,'JORGE ULLOA OSINAGA',NULL),(58,'JOSE ALBERTO ARANIBAR VARGAS',NULL),(59,'JOSE FREDDY ROCHA CAYO',NULL),(60,'JOSE PINTO BENAVIDES',NULL),(61,'JUAN CARLOS VERA MALDONADO',NULL),(62,'JUAN JORGE FONSECA QUISPE',NULL),(63,'JUAN JOSE OCHOA ROJAS',NULL),(64,'JUAN RODRIGUEZ MARTINEZ ',NULL),(65,'JUAN ROJAS MERCADO',NULL),(66,'JULIAN AMAYA EQUILEA',NULL),(67,'JULIO CESAR HURTADO LEDEZMA',NULL),(68,'LAZARTE INGENIERIA EN CONSTRUCCIONES S.R.L.',NULL),(69,'LUIS ALEXANDER COCA ORELLANA',NULL),(70,'MAMANI MERCADO NICOLAS',NULL),(71,'MARCELO ARAMAYO MEDINACELI',NULL),(72,'MARCELO HUGO TAPIA MERCADO',NULL),(73,'MARCOS BRUNO ESPINOZA HERBAS',NULL),(74,'MARIO RODRIGO TERAN SEJAS',NULL),(75,'MONTAÑO GUERY FAVIAN',NULL),(76,'MORALES TAPIA EDWIN',NULL),(77,'NORMAN JUANES SANCHEZ',NULL),(78,'OPORTO VARGAS WILFORD MARVIN',NULL),(79,'ORLANDO LOPEZ ARCE',NULL),(80,'ORLANDO ROCHA LAMAS',NULL),(81,'PEDRO HIPOLITO CORRALES PRADO',NULL),(82,'QUISPE LIMA JOSE ANTONIO',NULL),(83,'RENE VICTOR ALVAREZ ENCINAS',NULL),(84,'ROADBOL S.R.L.',NULL),(85,'ROBERTH ARIEL ALMARAZ TORRICO',NULL),(86,'RODRIGUEZ NINA JESUS ABDIAS',NULL),(87,'ROGER TORRICO VELASQUEZ',NULL),(88,'ROJAS FRIAS JUAN CHRISTIAN',NULL),(89,'ROY NELSON ROMA ZEBALLOS',NULL),(90,'SAIQUE GUTIERREZ RICHARD ',NULL),(91,'SEFECONS S.R.L.',NULL),(92,'THEOS SRL',NULL),(93,'VACAFLOR MOLINA GINA VALERIA',NULL),(94,'VALDIVIEZO SALAZAR BORIS ALIM',NULL),(95,'VARGAS ZAMBRANA RAUL AGUSTIN',NULL),(96,'VICENTE CHOQUE CANAVIRI',NULL),(97,'VICTOR BASCOPE CAERO',NULL),(98,'VILLCA MERCADO LUIS RICARDO',NULL),(99,'VILLEGAS SIERRALTA GUIDO OSVALDO',NULL),(100,'VLADIMIR PLATA ROJAS',NULL),(101,'VLADIMIR VICTOR SANCHEZ ORELLANA',NULL),(102,'ZAMBRANA ROJAS ADALIT',NULL),(103,'ZENON RUIZ QUISPE \"ZRQ\"',NULL),(105,'N/S',NULL),(106,'EMPRESA CONSTRUCTORA MATERSA',NULL),(107,'CONSTRUCTORA Y CONSULTORA ARVA',NULL),(108,'CONSULTORA Y CONSTRUCTORA COCA',NULL),(109,'LOPEZ ARCE CONSTRUCCIONES',NULL),(110,'EMPRESA CONSTRUCTORA Y DE SERVICIOS AVILÉS',NULL),(111,'CONSTRUCTORA EMCOTRAC',NULL),(112,'EMPRESA CONSTRUMIX INGENIERIA Y CONSTRUCCIONES',NULL),(113,'SOCIEDAD ACCIDENTAL CONSORCIO EDRO',NULL),(114,'ROBERTO SOTO SALAZAR',NULL),(115,'JOSE ANTONIO ATAHUICHI GOMEZ',NULL);
/*!40000 ALTER TABLE `t_constructora` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_ejecucion`
--

DROP TABLE IF EXISTS `t_ejecucion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_ejecucion` (
  `ejecucion_id` int(10) NOT NULL AUTO_INCREMENT,
  `ej_proyecto_id` int(10) DEFAULT NULL,
  `ej_tecnico_fps_id` int(10) DEFAULT NULL,
  `ej_contratista_id` int(10) DEFAULT NULL,
  `ej_monto_contrato_bs` decimal(15,2) DEFAULT NULL,
  `ej_monto_contrato_supervicion_bs` decimal(15,2) DEFAULT NULL,
  `ej_monto_contrato_asistecia_bs` decimal(15,2) DEFAULT NULL,
  `ej_cuce_licitacion` varchar(25) COLLATE utf8_spanish_ci DEFAULT NULL,
  `ej_cuce_licitacion_fecha` date DEFAULT NULL,
  `ej_cuce_supervicion` varchar(25) COLLATE utf8_spanish_ci DEFAULT NULL,
  `ej_cuce_supervicion_fecha` date DEFAULT NULL,
  `ej_boleta_inversion_anticipo_estado` varchar(50) COLLATE utf8_spanish_ci DEFAULT NULL,
  `ej_boleta_inversion_anticipo_monto` varchar(200) COLLATE utf8_spanish_ci DEFAULT NULL,
  `ej_boleta_inversion_anticipo_fecha_renov` date DEFAULT NULL,
  `ej_boleta_inversion_anticipo_vigencia` varchar(50) COLLATE utf8_spanish_ci DEFAULT NULL,
  `ej_boleta_inversion_cumplimiento_estado` varchar(50) COLLATE utf8_spanish_ci DEFAULT NULL,
  `ej_boleta_inversion_cumplimiento_monto` varchar(200) COLLATE utf8_spanish_ci DEFAULT NULL,
  `ej_boleta_inversion_cumplimiento_fecha_renov` date DEFAULT NULL,
  `ej_boleta_inversion_cumplimiento_vigencia` varchar(50) COLLATE utf8_spanish_ci DEFAULT NULL,
  `ej_observacion_general` varchar(500) COLLATE utf8_spanish_ci DEFAULT NULL,
  `ej_supervisor_id` int(11) DEFAULT NULL,
  `ej_fcha_ult_modif` datetime DEFAULT NULL,
  `ej_id_usuario` int(11) DEFAULT NULL,
  `ej_cuce_at` varchar(25) COLLATE utf8_spanish_ci DEFAULT NULL,
  PRIMARY KEY (`ejecucion_id`),
  KEY `fk_e_proy` (`ej_proyecto_id`),
  KEY `fk_e_tecnico` (`ej_tecnico_fps_id`),
  KEY `fk_e_contratista` (`ej_contratista_id`),
  KEY `f_e_supervisor` (`ej_supervisor_id`),
  KEY `fk_ej_user` (`ej_id_usuario`),
  CONSTRAINT `fk_e_proy` FOREIGN KEY (`ej_proyecto_id`) REFERENCES `t_proyecto` (`proyecto_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=184 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_ejecucion`
--

LOCK TABLES `t_ejecucion` WRITE;
/*!40000 ALTER TABLE `t_ejecucion` DISABLE KEYS */;
INSERT INTO `t_ejecucion` VALUES (1,1,1,53,539888.32,56.00,567.00,'12-1103-00-3473','2014-03-08','cuce','2014-03-07','','3435454545454.00','0000-00-00','','','30495069505.00','0000-00-00','','xczcx',1,'2014-11-22 11:06:07',9,''),(5,5,1,0,869886.24,0.00,0.00,'','0000-00-00','','0000-00-00','','0.00','0000-00-00','','','0.00','0000-00-00','','',1,NULL,NULL,NULL),(9,9,1,0,999397.11,0.00,0.00,'','0000-00-00','','0000-00-00','','0.00','0000-00-00','','','0.00','0000-00-00','','',1,NULL,NULL,NULL),(13,13,33,42,781574.55,40323.10,40323.10,'12-1107-00-352133-3-1				','0000-00-00','POR EXCEPCION			','0000-00-00','','NO CORRESPONDE','0000-00-00','NO APLICA','','Banco BISA BG-006503-0400 Bs.54.710,22 ','0000-00-00','Vencimiento 31/10/2013','',90,'2014-11-27 15:11:45',9,'13-1107-00-381668-0-E				'),(16,16,33,107,978528.95,114529.70,114529.70,'13-0287-04-376258-1-1				','0000-00-00','13-0287-04-379274-1-1				','0000-00-00','','BNB No.0075653 de fecha 10/5/2013 por Bs.171.500,00','0000-00-00','vencimiento 8/8/2013','','BNB No.0075652 de fecha 10/5/2013por Bs.148.720,54','0000-00-00',' vencimiento 6/11/2013 				','',98,'2014-11-27 10:24:03',9,' 13-0287-04-379269-1-1'),(22,22,33,8,1600253.40,100016.00,0.00,'12-1103-00-347184-1-1				','0000-00-00','13-113-00-353465-2-1','0000-00-00','','BANCO BISA S.A. BG-006023-0400 Bs.320.051,00','0000-00-00','','','BANCO BISA S.A. BG-006123-0400 Bs.112.018,00','0000-00-00','Vencimiento 30/9/2013','',1,'2014-11-28 10:10:22',9,''),(24,24,1,0,3132608.80,0.00,0.00,'13-0287-02-    ','0000-00-00','','0000-00-00','','0.00','0000-00-00','','','0.00','0000-00-00','','',1,NULL,NULL,NULL),(26,26,1,0,244121.94,0.00,0.00,'','0000-00-00','','0000-00-00','','0.00','0000-00-00','','','0.00','0000-00-00','','',1,NULL,NULL,NULL),(27,27,1,0,72831.29,0.00,0.00,'13-0287-03-    ','0000-00-00','','0000-00-00','','0.00','0000-00-00','','','0.00','0000-00-00','','',1,NULL,NULL,NULL),(28,28,1,0,77738.12,0.00,0.00,'13-0287-03-    ','0000-00-00','','0000-00-00','','0.00','0000-00-00','','','0.00','0000-00-00','','',1,NULL,NULL,NULL),(29,29,1,0,146727.27,0.00,0.00,'13-0287-03-    ','0000-00-00','','0000-00-00','','0.00','0000-00-00','','','0.00','0000-00-00','','',1,NULL,NULL,NULL),(30,30,1,0,515387.73,0.00,0.00,'13-0287-03-    ','0000-00-00','','0000-00-00','','0.00','0000-00-00','','','0.00','0000-00-00','','',1,NULL,NULL,NULL),(31,31,1,63,890193.88,0.00,0.00,'13-1341-00-3969','0000-00-00','','0000-00-00','','0.00','0000-00-00','','','0.00','0000-00-00','','',1,NULL,NULL,NULL),(33,33,1,68,515742.85,0.00,0.00,'12-1314-00-3483','0000-00-00','','0000-00-00','','0.00','0000-00-00','','','0.00','0000-00-00','','',1,NULL,NULL,NULL),(35,35,35,113,1000835.14,49000.00,0.00,'13-1314-00-348312-4-2				','0000-00-00','POR EXCEPCION			','0000-00-00','','0.00','0000-00-00','','','N? 10302886/14 (M00092509) / Banco Nacional de Bolivia, 70.0','0000-00-00','Vencimiento 18/11/2014','',115,'2014-11-28 11:06:32',9,''),(37,37,1,60,971226.75,0.00,0.00,'12-1330-00-3495','0000-00-00','','0000-00-00','','0.00','0000-00-00','','','0.00','0000-00-00','','',1,NULL,NULL,NULL),(39,39,1,65,515387.73,0.00,0.00,'12-1314-00-3482','0000-00-00','','0000-00-00','','0.00','0000-00-00','','','0.00','0000-00-00','','',1,NULL,NULL,NULL),(41,41,1,68,562066.52,0.00,0.00,'12-1314-00-3482','0000-00-00','','0000-00-00','','0.00','0000-00-00','','','0.00','0000-00-00','','',1,NULL,NULL,NULL),(43,43,1,37,1392649.45,0.00,0.00,'12-1344-00-3359','0000-00-00','','0000-00-00','','0.00','0000-00-00','','','0.00','0000-00-00','','',1,NULL,NULL,NULL),(46,46,1,75,531229.37,0.00,0.00,'12-1321-00-3482','0000-00-00','','0000-00-00','','0.00','0000-00-00','','','0.00','0000-00-00','','',1,NULL,NULL,NULL),(53,53,1,66,397675.89,0.00,0.00,'12-1338-00-3327','0000-00-00','','0000-00-00','','0.00','0000-00-00','','','0.00','0000-00-00','','',1,NULL,NULL,NULL),(56,56,1,72,496028.75,0.00,0.00,'12-1338-00-3379','0000-00-00','','0000-00-00','','0.00','0000-00-00','','','0.00','0000-00-00','','',1,NULL,NULL,NULL),(59,59,1,45,351115.13,0.00,0.00,'12-1343-00-3385','0000-00-00','','0000-00-00','','0.00','0000-00-00','','','0.00','0000-00-00','','',1,NULL,NULL,NULL),(62,62,1,0,1386874.46,0.00,0.00,'12-1311-00-3487','0000-00-00','','0000-00-00','','0.00','0000-00-00','','','0.00','0000-00-00','','',1,NULL,NULL,NULL),(64,64,3,28,1327780.52,60000.00,50000.00,'12-1329-00-331009-3-1','0000-00-00','12-1329-00-331097-1-1','0000-00-00','','NO SOLICITA','0000-00-00','NO APLICA','','BG N° D301-19247 Bs.92.944.64 Banco de Crédito','0000-00-00','Vencimiento  01/11/ 2013','',55,'2014-11-28 16:26:28',9,'12-1329-00-331105-1-1'),(68,68,1,65,146820.95,0.00,0.00,'12-1314-00-3482','0000-00-00','','0000-00-00','','0.00','0000-00-00','','','0.00','0000-00-00','','',1,NULL,NULL,NULL),(70,70,3,21,1475018.58,80000.00,65000.00,'12-1393-00-333949-1-1				','0000-00-00','12-1339-00-333987-2-1				','0000-00-00','NO SOLICITO','NO SOLICITA','0000-00-00','NO APLICA','','BG N°15280 Bs122.151.30 FONDO DE LA COMUNIDAD','0000-00-00','Vencimiento: 16-11-2013','Se advierte que la linea de aduccion en TA PVC 8 pulg, es una linea que no funciona a tubo lleno por lo tanto era posible reducir el diametro a 6 pulg, sin embargo por presiones del alcalde y pobladores se tuvo que aceptar lo previsto, ademas existio la posibilidad de cancelacion de contrato por el contratista debido a dicho cambio.',1,'2014-11-28 12:32:13',9,'12-1339-00-333997-1-1				'),(73,73,1,68,146988.00,0.00,0.00,'12-1314-00-3483','0000-00-00','','0000-00-00','','0.00','0000-00-00','','','0.00','0000-00-00','','',1,NULL,NULL,NULL),(75,75,1,65,110661.66,0.00,0.00,'12-1314-00-3482','0000-00-00','','0000-00-00','','0.00','0000-00-00','','','0.00','0000-00-00','','',1,NULL,NULL,NULL),(77,77,1,68,145984.12,0.00,0.00,'12-1314-00-3482','0000-00-00','','0000-00-00','','0.00','0000-00-00','','','0.00','0000-00-00','','',1,NULL,NULL,NULL),(79,79,1,65,105952.72,0.00,0.00,'12-1314-00-3482','0000-00-00','','0000-00-00','','0.00','0000-00-00','','','0.00','0000-00-00','','',1,NULL,NULL,NULL),(81,81,1,0,1193222.33,0.00,0.00,'CUCE : 12-1311-','0000-00-00','','0000-00-00','','0.00','0000-00-00','','','0.00','0000-00-00','','',1,NULL,NULL,NULL),(84,84,1,27,1825447.81,0.00,0.00,'12-1310-00-3356','0000-00-00','','0000-00-00','','0.00','0000-00-00','','','0.00','0000-00-00','','',1,NULL,NULL,NULL),(87,87,1,79,484310.55,0.00,0.00,'12-1330-00-3375','0000-00-00','','0000-00-00','','0.00','0000-00-00','','','0.00','0000-00-00','','',1,NULL,NULL,NULL),(90,90,10,23,892099.26,69612.75,55690.21,'12-1344-00-335912-3-1','0000-00-00','12-1341-00-327742-1-1','0000-00-00','','0.00','0000-00-00','','','0.00','0000-00-00','','',87,'2014-11-11 12:15:38',9,'12-1341-00-327691-2-1'),(93,93,1,95,561504.31,0.00,0.00,'12-1311-00-3279','0000-00-00','','0000-00-00','','0.00','0000-00-00','','','0.00','0000-00-00','','',1,NULL,NULL,NULL),(97,97,1,22,987884.44,0.00,0.00,'12-1310-00-3301','0000-00-00','','0000-00-00','','0.00','0000-00-00','','','0.00','0000-00-00','','',1,NULL,NULL,NULL),(99,99,1,23,497924.76,0.00,0.00,'12-0287-03-    ','0000-00-00','','0000-00-00','','0.00','0000-00-00','','','0.00','0000-00-00','','',1,NULL,NULL,NULL),(102,102,1,26,1126285.45,0.00,0.00,'13-0287-03-    ','0000-00-00','','0000-00-00','','0.00','0000-00-00','','','N? de Boleta 85752 / BNB 78.657,00 Bs.','0000-00-00','Vigencia: 20/11/2014','',1,'2014-11-28 17:56:11',9,''),(104,104,1,54,466400.01,0.00,0.00,'13-0287-03-    ','0000-00-00','','0000-00-00','','0.00','0000-00-00','','','0.00','0000-00-00','','',1,NULL,NULL,NULL),(106,106,7,24,550039.31,28275.00,0.00,'12-1332-00-339498-1-1','0000-00-00','POR EXCEPCION			','0000-00-00','','Banco: Fondo de la Comunidad. Monto:  Bs 26.874,64','0000-00-00','Vigencia: al 9-Nov. 2013','','Banco: Fondo de la Comunidad. Monto:  Bs. 38.502,73','0000-00-00','Vigencia: al 12-Nov. 2014','',3,'2014-11-28 16:06:07',9,''),(108,108,1,44,872531.57,0.00,0.00,'12-1343-00-3414','0000-00-00','','0000-00-00','','0.00','0000-00-00','','','0.00','0000-00-00','','',1,NULL,NULL,NULL),(110,110,35,44,1026540.72,47000.00,0.00,'12-1323-00-340263-1-1				','0000-00-00','POR EXCEPCION			','0000-00-00','','NO SOLICITA','0000-00-00','NO APLICA','','BANCO LOS ANDES N°0014905 Bs.71.860,00','0000-00-00','','',74,'2014-11-28 10:18:02',9,''),(112,112,3,110,523118.55,25500.00,21272.96,'12-1323-00-339863-1-1','0000-00-00','12-1323-00-340057-2-1','0000-00-00','','NO SOLICITA','0000-00-00','NO APLICA','','PRODEM N?18890 POR Bs.36.618,30','0000-00-00','12/7/2013','',14,'2014-11-28 16:00:50',9,'12-1323-00-340066-2-1'),(115,115,3,109,780965.01,39048.25,31238.60,'POR EXCEPCION','0000-00-00','12-1330-00-351396-1-1','0000-00-00','','NO SOLICITA','0000-00-00','NO APLICA','','BANCO BISA No. BG-019141-0300 54.667,55 BS.','0000-00-00','Vigencia: 20/12/13','',64,'2014-11-28 15:39:01',9,'12-1330-00-351380-1-1'),(118,118,1,84,663716.90,0.00,0.00,'12-1332-00-3395','0000-00-00','','0000-00-00','','0.00','0000-00-00','','','0.00','0000-00-00','','',1,NULL,NULL,NULL),(121,121,36,29,854181.78,46200.00,0.00,'1-2-1341-00-348299-1-1','0000-00-00','1-2-1341-00-348306-1-1','0000-00-00','','BG-019084-0300 Bs.59.792.72','0000-00-00','','','BG-019085-0300 Bs.170.836,36','0000-00-00','','',4,'2014-11-28 10:31:11',9,''),(122,122,3,108,978528.95,49694.10,39752.49,'12-1346-00-317841-1-2','0000-00-00','12-1346-00-317895-2-1','0000-00-00','','BG-N°14923 serie N°000753 Bs.195.705.79','0000-00-00','','','BG-N°14922 serie N°000753 Bs.68.497.03','0000-00-00','Vigencia: 30/4/13','',7,'2014-11-28 15:23:20',9,'12-1341-00-317705-1-2'),(125,125,1,34,124274.78,0.00,0.00,'12-0287-03-    ','0000-00-00','','0000-00-00','','0.00','0000-00-00','','','0.00','0000-00-00','','',1,NULL,NULL,NULL),(127,127,11,17,734991.74,43200.00,34500.00,'12-1332-00-321525-2-2				','0000-00-00','12-1332-00-341418-2-1				','0000-00-00','','Latina Seguros Bs.146.998,39','0000-00-00','Vigencia de 16/10/12 al 13/4/13','','Latina Seguros Bs.51.449.44','0000-00-00','Vigencia de 16/10/12 al 13/4/13','',86,'2014-11-28 17:39:16',9,'12-1332-00-321463-2-1				'),(130,130,1,13,965366.92,0.00,0.00,'12-1330-00-3232','0000-00-00','','0000-00-00','','0.00','0000-00-00','','','0.00','0000-00-00','','',1,NULL,NULL,NULL),(133,133,1,37,1786053.43,0.00,0.00,'12-1346-00-3178','0000-00-00','','0000-00-00','','0.00','0000-00-00','','','0.00','0000-00-00','','',1,NULL,NULL,NULL),(136,136,7,111,1348893.50,77809.00,0.00,'12-1340-00-317340-2-2','0000-00-00','12-1340-00-317357-1-1','0000-00-00','','NO SOLICITA','0000-00-00','NO APLICA','','Banco Nacional de Bolivia No.0068141, Bs.94.500,00','0000-00-00','Vencimiento: 07/3/2013','',16,'2014-11-28 17:26:46',9,''),(137,137,1,46,1099483.86,0.00,0.00,'13-1430-00-3780','0000-00-00','','0000-00-00','','0.00','0000-00-00','','','0.00','0000-00-00','','',1,NULL,NULL,NULL),(140,140,1,0,1142936.96,0.00,0.00,'','0000-00-00','','0000-00-00','','0.00','0000-00-00','','','0.00','0000-00-00','','',1,NULL,NULL,NULL),(143,143,1,0,1931859.22,0.00,0.00,'13-0287-05-    ','0000-00-00','','0000-00-00','','0.00','0000-00-00','','','0.00','0000-00-00','','',1,NULL,NULL,NULL),(146,146,1,0,1356787.26,0.00,0.00,'13-0287-05-    ','0000-00-00','','0000-00-00','','0.00','0000-00-00','','','0.00','0000-00-00','','',1,NULL,NULL,NULL),(152,152,1,0,205800.00,0.00,0.00,'','0000-00-00','','0000-00-00','','0.00','0000-00-00','','','0.00','0000-00-00','','',1,NULL,NULL,NULL),(154,154,1,43,581040.87,0.00,0.00,'13-0287-05-    ','0000-00-00','','0000-00-00','','0.00','0000-00-00','','','0.00','0000-00-00','','',1,NULL,NULL,NULL),(156,156,1,91,1884788.00,0.00,0.00,'13-0287-05-    ','0000-00-00','','0000-00-00','','0.00','0000-00-00','','','0.00','0000-00-00','','',1,NULL,NULL,NULL),(167,167,39,41,1981890.96,70000.00,0.00,'13-0287-06-355512-2-1				','0000-00-00','','0000-00-00','','NO SOLICITA','0000-00-00','NO APLICA','','BGN-1000075724 Bs.138.732,36  BANCO MERCANTIL SANTA CRUZ S.A.','0000-00-00','Vencimiento 10/11/2013','',67,'2014-12-04 11:17:05',9,''),(169,169,39,92,2042620.79,75000.00,95000.00,'12-0287-06-358993-1-1				','0000-00-00','13-0287-06-361654-1-1				','0000-00-00','','N? 10200935/13 (M00069981)   Bs. 265.540,70  BANCO NACIONAL DE BOLIVIA S.A.','0000-00-00','Vencimiento 20/07/2013','','N? 10200936/13 (M00069982)   Bs. 143.000,00  BANCO NACIONAL DE BOLIVIA S.A.','0000-00-00','Vencimiento 18/10/2013','',47,'2014-12-04 12:19:13',9,'13-0287-06-361663-2-1				'),(180,180,1,89,700667.80,0.00,0.00,'12-0287-07-    ','0000-00-00','','0000-00-00','','0.00','0000-00-00','','','0.00','0000-00-00','','',1,NULL,NULL,NULL),(182,182,29,112,1889687.06,68000.00,0.00,'12-0287-06-350446-1-1				','0000-00-00','13-0287-06-357025-2-1				','0000-00-00','','CIP-B01496  Bs. 377.937,41  SEGUROS Y REASEGUROS CREDINFORM INTERNATIONAL S.A.','0000-00-00','vencimiento 15 /07/ 2013','','COP-B01359   Bs. 132.278,09   SEGUROS Y REASEGUROS CREDINFORM INTERNATIONAL S.A. ','0000-00-00','vencimiento 13 /10/ 2013','',57,'2014-12-04 12:10:14',9,''),(183,183,39,41,1981890.96,70000.00,0.00,'13-0287-06-355512-2-1				',NULL,'',NULL,NULL,'NO SOLICITA',NULL,'NO APLICA',NULL,'BGN-1000075724. Bs.138.732,36. BANCO MERCANTIL SANTA CRUZ S.A.						',NULL,'Vencimiento 10/11/2013','',67,'2014-12-04 11:17:24',9,'');
/*!40000 ALTER TABLE `t_ejecucion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_ejecucion_etapas`
--

DROP TABLE IF EXISTS `t_ejecucion_etapas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_ejecucion_etapas` (
  `ejecucion_id` int(11) NOT NULL AUTO_INCREMENT,
  `proyecto_id` int(11) DEFAULT NULL,
  `ejecucion_detalle_id` int(11) DEFAULT NULL,
  `ejecucion_supervicion_fecha` date DEFAULT NULL,
  `ejecucion_supervicion_existencia` varchar(10) COLLATE utf8_spanish_ci DEFAULT NULL,
  `ejecucion_supervicion_aspectos_valor` varchar(255) COLLATE utf8_spanish_ci DEFAULT NULL,
  `ejecucion_supervicion_observaciones` varchar(700) COLLATE utf8_spanish_ci DEFAULT NULL,
  `ejecucion_informe_periodo` varchar(20) COLLATE utf8_spanish_ci DEFAULT NULL,
  `ejecucion_supervicion_porcentaje` varchar(255) COLLATE utf8_spanish_ci DEFAULT NULL,
  `ejecucion_control_cumple_descripcion` varchar(500) COLLATE utf8_spanish_ci DEFAULT NULL,
  `ejecucion_control_no_cumple_descripcion` varchar(7500) COLLATE utf8_spanish_ci DEFAULT NULL,
  `ejecucion_supervicion_monto` varchar(10) COLLATE utf8_spanish_ci DEFAULT NULL,
  `ejecucion_tipo_etapa` varchar(1) COLLATE utf8_spanish_ci DEFAULT NULL,
  PRIMARY KEY (`ejecucion_id`),
  KEY `fk_eje_proy` (`proyecto_id`),
  KEY `fk_eje_det` (`ejecucion_detalle_id`),
  CONSTRAINT `fk_eje_det` FOREIGN KEY (`ejecucion_detalle_id`) REFERENCES `p_ejecucion_detalle` (`ejecucion_detalle_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_eje_proy` FOREIGN KEY (`proyecto_id`) REFERENCES `t_proyecto` (`proyecto_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=638 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_ejecucion_etapas`
--

LOCK TABLES `t_ejecucion_etapas` WRITE;
/*!40000 ALTER TABLE `t_ejecucion_etapas` DISABLE KEYS */;
INSERT INTO `t_ejecucion_etapas` VALUES (88,70,3,'2013-10-28','si','Nº Planillas: SIETE (7)','','','','','','',NULL),(89,70,4,'0000-00-00','si','Orden de Cambio Nº 1: Reubicacion obra de toma -Orden de Cambio Nº 2: - Cancelacion tanque de almacenamiento, redistribucion de volumenes de obras (pasos de quebrada), incremento volumenes obra de toma, reduccion de la linea de aduccion, reduccion de revo','','','','','','',NULL),(90,70,5,'0000-00-00','si','Item nuevo: TA PVC C-12 DN 8\" 600 m.','','','','','','',NULL),(91,70,6,'0000-00-00','si','NO APLICA','','','','','','',NULL),(97,70,7,'0000-00-00','si','AMPLIACION PLAZO Nº 1: PARALIZACION DE OBRA POR PROBLEMAS SOCIALES, TECNICOS, ACCESOS Y LLUVIAS REGISTRADAS EN EL AREA DEL PROYECTO   - AMPLIACION PLAZO Nº 2: REUBICACION DEL SITIO DE LA TOMA, MODIFICACION DE LA ADUCCION, INCREMENTO EN LA LONGITUD DE ADUC','125 DIAS CALENDARIO\n42 DIAS CALENDARIO    PLAZO DE EJECUCION 317 DIAS CALENDARIO\n10 DIAS CALENDARIO PLAZO DE EJECUCION 327 DIAS CALENDARIO ( 30-oct-2013 entrega provisional)',NULL,NULL,NULL,NULL,NULL,NULL),(98,70,10,'2012-11-08','si','Numero de contrato: 01/2012 ','','',NULL,NULL,NULL,NULL,NULL),(99,70,11,'2012-12-07','si','','','',NULL,NULL,NULL,NULL,NULL),(100,70,12,NULL,'si','Nº Planillas: TRES PLANILLAS','','',NULL,NULL,NULL,NULL,NULL),(101,70,13,NULL,'','Nº Ordenes de Cambio:','Se sugiere regularizar el tiempo de servicios de la consultoria','',NULL,NULL,NULL,NULL,NULL),(102,70,14,NULL,'','Nº Contratos Mod:','','',NULL,NULL,NULL,NULL,NULL),(103,70,15,NULL,'','Observaciones: Cambio compuesta del desarenador y acabado fino de Cámaras, ','Se encuentra para firma del alcalde e Tacopaya','',NULL,NULL,NULL,NULL,NULL),(104,70,16,NULL,'','Luego de 90 dias calendario','Fjado para 28-01-2014','',NULL,NULL,NULL,NULL,NULL),(105,70,17,NULL,'si','Certificado de calidad de tuberias','','',NULL,NULL,NULL,NULL,NULL),(106,70,18,NULL,'si','2 ensayos de rotura de probetas aceptables','valores aceptables','',NULL,NULL,NULL,NULL,NULL),(107,70,19,NULL,'si','Rediseño por el supervisor y contratista','seviabilizo el proyecto y asi se soluciono el problema social y tecnico presentado.','',NULL,NULL,NULL,NULL,NULL),(108,70,20,NULL,'si','NO APLICA','','',NULL,NULL,NULL,NULL,NULL),(109,70,21,NULL,'si','','','',NULL,NULL,NULL,NULL,NULL),(110,70,22,NULL,NULL,'Manifiesta la omision de aspectos tecnicos del proyecto en el estudio del prediseño','Presentado al Municipio','CUMPLE',NULL,NULL,NULL,NULL,NULL),(111,70,23,NULL,NULL,'BALANCE REAL PROYECTO, QUE DERIVAN EN LA NECESIDAD DE VARIACION DE VOLUMENES DE OBRA Y PARALIZACION DE OBRA','PARALIZACION DE OBRAS, POR OMISIONES Y  MODIFICACIONES DEL PROYECTO','2013-02-07',NULL,NULL,NULL,NULL,NULL),(112,70,24,NULL,NULL,'','','CUMPLE',NULL,NULL,NULL,NULL,NULL),(113,70,25,NULL,NULL,'','La certificación No.1 no acompaña el informe ambiental, necesario para el pago',NULL,NULL,NULL,NULL,NULL,NULL),(114,70,26,NULL,NULL,'Si presento el Contratista al Supervisor en fecha 28-05-2013','no aplica',NULL,'Si presento el Contratista al S','Si presento el Contratista al Supervisor en fecha 28-05-2013','no aplica',NULL,NULL),(115,70,27,NULL,NULL,'Si presento el Contratista al Supervisor en fecha 28-05-2013, de Laboratorios Tarifa ','',NULL,'Si presento el Contratista al S','Si presento el Contratista al Supervisor en fecha 28-05-2013, de Laboratorios Tarifa ','',NULL,NULL),(116,70,28,NULL,NULL,'NO APLICA','valores aceptables',NULL,'NO APLICA','NO APLICA','valores aceptables',NULL,NULL),(117,70,29,NULL,NULL,'NO APLICA','',NULL,'NO APLICA','NO APLICA','',NULL,NULL),(118,70,30,NULL,NULL,'NO APLICA','',NULL,'NO APLICA','NO APLICA','',NULL,NULL),(119,70,31,NULL,NULL,'NO SE APLICO, PESE A QUE ESTA ESTABLECIDO EN LAS ET AL 95% del Proctor modificado','PORQUE EL TERRENO NO ES ACCESIBLE',NULL,'NO SE APLICO, PESE A QUE ESTA E','NO SE APLICO, PESE A QUE ESTA ESTABLECIDO EN LAS ET AL 95% del Proctor modificado','PORQUE EL TERRENO NO ES ACCESIBLE',NULL,NULL),(120,70,35,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(121,70,36,NULL,NULL,'SIETE INFORMES ',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(122,70,37,NULL,NULL,NULL,NULL,NULL,'TRES INFORMES EN CADA PLANILLA',NULL,NULL,NULL,NULL),(133,5,1,'2014-02-06','no',NULL,'xcvcxv',NULL,NULL,NULL,NULL,NULL,NULL),(135,5,1,'2014-06-05','si',NULL,'vcxv',NULL,NULL,NULL,NULL,NULL,'1'),(136,5,23,NULL,NULL,NULL,'3434','sdfdffd','4343.00',NULL,NULL,NULL,'2'),(137,1,1,'2014-03-07','si',NULL,'DFRDFDFDF',NULL,NULL,NULL,NULL,NULL,'1'),(138,1,2,'2014-07-05','si',NULL,'zxcxzc',NULL,NULL,NULL,NULL,NULL,'1'),(139,1,22,NULL,NULL,NULL,'dfgdfg','dato perido','67.00',NULL,NULL,NULL,'2'),(140,1,33,NULL,NULL,NULL,'dfdf','fdg','6.00',NULL,NULL,NULL,'2'),(141,1,26,NULL,NULL,NULL,NULL,NULL,NULL,'gdfg','fgfdgfg',NULL,'3'),(142,1,27,NULL,NULL,NULL,NULL,NULL,NULL,'fgf','dgf',NULL,'3'),(143,127,22,NULL,NULL,NULL,'','Del 07 al 18 de dici','20.94',NULL,NULL,NULL,'2'),(144,127,23,NULL,NULL,NULL,'No se solicitaron.','No Aplica','1.00',NULL,NULL,NULL,'2'),(145,127,24,NULL,NULL,NULL,'No se solicitaron.','No Aplica','1.00',NULL,NULL,NULL,'2'),(146,127,25,NULL,NULL,NULL,'No se solicitaron.','No Aplica','1.00',NULL,NULL,NULL,'2'),(147,127,32,NULL,NULL,NULL,'El primer informe señala que se incorporó solo una de tres medidas de mitigación con presupuesto asignado (implementación de contendores diferenciados). ','CUMPLE','33.00',NULL,NULL,NULL,'2'),(148,127,33,NULL,NULL,NULL,'No aplica','No Aplica','1.00',NULL,NULL,NULL,'2'),(149,127,34,NULL,NULL,NULL,'Las planillas 3 y 4 de Supervisión no presentan el informe de medidas de mitigación cumplidas, únicamente se tienen los informes en las planillas 1, 2 y 5. Se debe completar. No se ejecutaron las otras dos medidas de mitigación o no hay reporte de las mismas (señalización y humedecimiento).\r\n','CUMPLE','33.00',NULL,NULL,NULL,'2'),(150,127,35,NULL,NULL,NULL,'No se identifican certificaciones.','No Aplica','1.00',NULL,NULL,NULL,'2'),(151,127,26,NULL,NULL,NULL,NULL,NULL,NULL,'No existe','',NULL,'3'),(152,127,27,NULL,NULL,NULL,NULL,NULL,NULL,'No existe','',NULL,'3'),(153,127,28,NULL,NULL,NULL,NULL,NULL,NULL,'No existe','',NULL,'3'),(154,127,29,NULL,NULL,NULL,NULL,NULL,NULL,'No existe','',NULL,'3'),(155,127,30,NULL,NULL,NULL,NULL,NULL,NULL,'No existe','',NULL,'3'),(156,16,1,NULL,'si',NULL,'Numero de contrato: C-FPS-01-002802',NULL,NULL,NULL,NULL,NULL,'1'),(157,16,2,NULL,'no',NULL,'NO SE TIENE REGISTRO DE DICHA DOCUMENTACION',NULL,NULL,NULL,NULL,NULL,'1'),(158,16,3,NULL,'si',NULL,'Nº Planillas: 3',NULL,NULL,NULL,NULL,NULL,'1'),(159,16,6,NULL,'no',NULL,'Redistribucion de volumnes de obra',NULL,NULL,NULL,NULL,NULL,'1'),(160,16,4,NULL,'si',NULL,'Nº Ordenes de Cambio:0',NULL,NULL,NULL,NULL,NULL,'1'),(161,16,5,NULL,'no',NULL,'Nº Contratos Modificatorio: 0',NULL,NULL,NULL,NULL,NULL,'1'),(162,16,10,NULL,'no',NULL,'No se tuvo acceso a dicha informacion',NULL,NULL,NULL,NULL,NULL,'1'),(163,16,11,NULL,'no',NULL,'No se tuvo acceso a dicha informacion',NULL,NULL,NULL,NULL,NULL,'1'),(164,16,15,NULL,'no',NULL,'',NULL,NULL,NULL,NULL,NULL,'1'),(165,16,16,NULL,'no',NULL,'',NULL,NULL,NULL,NULL,NULL,'1'),(166,16,17,NULL,'si',NULL,'No hay registros en planillas',NULL,NULL,NULL,NULL,NULL,'1'),(167,16,18,NULL,'no',NULL,'No hay registros',NULL,NULL,NULL,NULL,NULL,'1'),(168,16,20,NULL,'no',NULL,'No se tiene acceso a dicha información',NULL,NULL,NULL,NULL,NULL,'1'),(169,16,21,NULL,'si',NULL,'',NULL,NULL,NULL,NULL,NULL,'1'),(170,16,22,NULL,NULL,NULL,'No se tuvo acceso a dicha información','No cumple',NULL,NULL,NULL,NULL,'2'),(171,16,23,NULL,NULL,NULL,'No se tuvo acceso a dicha información','No cumple',NULL,NULL,NULL,NULL,'2'),(172,16,24,NULL,NULL,NULL,'No se tuvo acceso a dicha información','No cumple',NULL,NULL,NULL,NULL,'2'),(173,16,25,NULL,NULL,NULL,'No se tuvo acceso a dicha información','No cumple',NULL,NULL,NULL,NULL,'2'),(174,13,1,NULL,'si',NULL,'',NULL,NULL,NULL,NULL,NULL,'1'),(175,13,2,NULL,'si',NULL,'',NULL,NULL,NULL,NULL,NULL,'1'),(176,13,3,NULL,'si',NULL,'Nº de planillas: 3',NULL,NULL,NULL,NULL,NULL,'1'),(177,13,6,NULL,'no',NULL,'',NULL,NULL,NULL,NULL,NULL,'1'),(179,13,4,NULL,'si',NULL,'Nº Ordenes de Cambio:1. Se presentan incrementos y decrementos de volúmenes resultando un cambio de monto del presupuesto original de 0.20 Bs.',NULL,NULL,NULL,NULL,NULL,'1'),(180,13,5,NULL,'no',NULL,'Nº Contratos Modificatorio: 0',NULL,NULL,NULL,NULL,NULL,'1'),(181,13,10,NULL,'si',NULL,'Nº de contrato: C-FPS-01-002798',NULL,NULL,NULL,NULL,NULL,'1'),(182,13,11,NULL,'si',NULL,'Fecha de Inicio: 06/05/2013                                                                 Fecha de conclusion: 03/09/2013',NULL,NULL,NULL,NULL,NULL,'1'),(183,13,15,NULL,'si',NULL,'',NULL,NULL,NULL,NULL,NULL,'1'),(184,13,16,NULL,'no',NULL,'',NULL,NULL,NULL,NULL,NULL,'1'),(185,13,17,NULL,'si',NULL,'',NULL,NULL,NULL,NULL,NULL,'1'),(186,13,18,NULL,'no',NULL,'',NULL,NULL,NULL,NULL,NULL,'1'),(187,13,20,NULL,'si',NULL,'',NULL,NULL,NULL,NULL,NULL,'1'),(188,13,21,NULL,'si',NULL,'',NULL,NULL,NULL,NULL,NULL,'1'),(189,13,22,NULL,NULL,NULL,'NO SE REGISTRA EL DOCUMENTO MENCIONADO','No cumple',NULL,NULL,NULL,NULL,'2'),(190,13,23,NULL,NULL,NULL,' Orden de cambio: 1. Se ha procesado una Orden de Cambio a fin de reformular los volumenes del proyecto teniendo como resultado un incremento del monto de contrato de 0.20 Bs.','Cumple',NULL,NULL,NULL,NULL,'2'),(191,13,24,NULL,NULL,NULL,'NO SE REGISTRA EL DOCUMENTO MENCIONADO','No cumple',NULL,NULL,NULL,NULL,'2'),(192,13,25,NULL,NULL,NULL,'Tres','Cumple',NULL,NULL,NULL,NULL,'2'),(193,22,1,NULL,'si',NULL,'Numero de contrato: FPS-01-00003737',NULL,NULL,NULL,NULL,NULL,'1'),(194,22,2,NULL,'no',NULL,'NO SE TIENE ACCESO A LA DOCUMENTACION',NULL,NULL,NULL,NULL,NULL,'1'),(195,22,3,NULL,'si',NULL,'Nº Planillas: 5',NULL,NULL,NULL,NULL,NULL,'1'),(196,22,6,NULL,'no',NULL,'Redistribucion devolumnes de obra',NULL,NULL,NULL,NULL,NULL,'1'),(197,22,4,NULL,'si',NULL,'Nº Ordenes de Cambio: 1. Se ha rectificado el monto de contrato por -0,03 Bs.',NULL,NULL,NULL,NULL,NULL,'1'),(198,22,5,NULL,'no',NULL,'',NULL,NULL,NULL,NULL,NULL,'1'),(199,22,10,NULL,'si',NULL,'',NULL,NULL,NULL,NULL,NULL,'1'),(200,22,11,NULL,'si',NULL,'',NULL,NULL,NULL,NULL,NULL,'1'),(201,22,15,NULL,'si',NULL,'',NULL,NULL,NULL,NULL,NULL,'1'),(202,22,16,NULL,'no',NULL,'',NULL,NULL,NULL,NULL,NULL,'1'),(203,22,17,NULL,'no',NULL,'',NULL,NULL,NULL,NULL,NULL,'1'),(204,22,18,NULL,'si',NULL,'ENSAYOS DE ROTURA DE PROBETAS DE HORMIGON',NULL,NULL,NULL,NULL,NULL,'1'),(205,22,19,NULL,'no',NULL,'',NULL,NULL,NULL,NULL,NULL,'1'),(206,22,20,NULL,'si',NULL,'No se tuvo acceso a dicha información',NULL,NULL,NULL,NULL,NULL,'1'),(207,22,21,NULL,'si',NULL,'',NULL,NULL,NULL,NULL,NULL,'1'),(208,22,22,NULL,NULL,NULL,'','Cumple',NULL,NULL,NULL,NULL,'2'),(209,22,23,NULL,NULL,NULL,'Se elaboro un informe especial para la aprobacion de una Orden de Cambio donde se cambia el monto del contrato como correccion a un mal calculo del tipo de cambio.','Cumple',NULL,NULL,NULL,NULL,'2'),(210,22,24,NULL,NULL,NULL,'','No cumple',NULL,NULL,NULL,NULL,'2'),(211,22,25,NULL,NULL,NULL,'Se han presentado 5 planillas de pago para el contratista los cuales cada uno cuenta con su respectivo informe','Cumple',NULL,NULL,NULL,NULL,'2'),(212,137,1,NULL,'si',NULL,'Numero de contrato:C-FPS-04-0002755',NULL,NULL,NULL,NULL,NULL,'1'),(213,137,2,'2013-07-29','si',NULL,'',NULL,NULL,NULL,NULL,NULL,'1'),(214,137,3,NULL,'si',NULL,'Nº Planillas: 2',NULL,NULL,NULL,NULL,NULL,'1'),(215,137,6,NULL,'si',NULL,'Redistribucion de volúmenes de obra. Modificacion del empleazamiento de los muros',NULL,NULL,NULL,NULL,NULL,'1'),(216,137,4,NULL,'si',NULL,'31 días calendario. Conclusión de obras 28-11-2013',NULL,NULL,NULL,NULL,NULL,'1'),(217,137,5,NULL,'si',NULL,'',NULL,NULL,NULL,NULL,NULL,'1'),(218,137,10,NULL,'si',NULL,'Nº de contrato: C-FPS-04-002754',NULL,NULL,NULL,NULL,NULL,'1'),(220,137,11,NULL,'si',NULL,'Fecha de Inicio: 30-07-2013                                                          Fecha de conclusion: 90 DIAS POSTERIOR A ENTERGA PROVISIONAL',NULL,NULL,NULL,NULL,NULL,'1'),(221,137,15,NULL,'no',NULL,'',NULL,NULL,NULL,NULL,NULL,'1'),(222,137,16,NULL,'no',NULL,'',NULL,NULL,NULL,NULL,NULL,'1'),(223,137,17,NULL,'si',NULL,'',NULL,NULL,NULL,NULL,NULL,'1'),(224,137,18,NULL,'si',NULL,'',NULL,NULL,NULL,NULL,NULL,'1'),(225,137,19,NULL,'si',NULL,'',NULL,NULL,NULL,NULL,NULL,'1'),(226,137,20,NULL,'si',NULL,'',NULL,NULL,NULL,NULL,NULL,'1'),(227,137,21,NULL,'si',NULL,'',NULL,NULL,NULL,NULL,NULL,'1'),(228,137,22,NULL,NULL,NULL,'','Cumple',NULL,NULL,NULL,NULL,'2'),(229,137,23,NULL,NULL,NULL,'AMPLIACION DE PLAZO Y ORDEN DE CAMBIO, POR READECUACION DEL PROYECTO','Cumple',NULL,NULL,NULL,NULL,'2'),(230,137,24,NULL,NULL,NULL,'TRES INFORMES, INCLUYEN EL INFORME AMBIENTAL','Cumple',NULL,NULL,NULL,NULL,'2'),(231,137,25,NULL,NULL,NULL,'','No cumple',NULL,NULL,NULL,NULL,'2'),(232,110,1,NULL,'si',NULL,'Numero de contrato: FPS-03-000003497',NULL,NULL,NULL,NULL,NULL,'1'),(233,110,2,NULL,'no',NULL,'',NULL,NULL,NULL,NULL,NULL,'1'),(234,110,3,NULL,'si',NULL,'6 PLANILLAS',NULL,NULL,NULL,NULL,NULL,'1'),(235,110,6,NULL,'no',NULL,'',NULL,NULL,NULL,NULL,NULL,'1'),(236,110,4,NULL,'si',NULL,'Por reubicación del emplazamiento del puente, debido a la oposición de ceder terrenos, generando necesidad de modificar volumenes y cantidades de obra (Bs72.700,-)',NULL,NULL,NULL,NULL,NULL,'1'),(237,110,5,NULL,'no',NULL,'',NULL,NULL,NULL,NULL,NULL,'1'),(238,110,10,NULL,'si',NULL,'',NULL,NULL,NULL,NULL,NULL,'1'),(239,110,11,NULL,'si',NULL,'Fecha de Inicio: 1 de marzo del 2013     ',NULL,NULL,NULL,NULL,NULL,'1'),(240,110,16,NULL,'no',NULL,'',NULL,NULL,NULL,NULL,NULL,'1'),(241,110,17,NULL,'no',NULL,'No se reporta esta situación en la solicitud de pago de las planillas de avance de obra.',NULL,NULL,NULL,NULL,NULL,'1'),(242,110,18,NULL,'si',NULL,'Existe  en forma limitada',NULL,NULL,NULL,NULL,NULL,'1'),(243,110,19,NULL,'si',NULL,'Se tuvo que rediseñar la estructura por re ubicación y modificación de la luz de 35 a 37 m.',NULL,NULL,NULL,NULL,NULL,'1'),(244,110,20,NULL,'si',NULL,'Existen formularios, sin la firma de constancia de la comunidad.',NULL,NULL,NULL,NULL,NULL,'1'),(245,110,21,NULL,'no',NULL,'No se reporta esta situación en los informes mensuales de la Supervisión.',NULL,NULL,NULL,NULL,NULL,'1'),(246,110,22,NULL,NULL,NULL,'El informe presentado es propositivo porque detecta y alerta sobre situaciones deficientes del proyecto inicial.','Cumple',NULL,NULL,NULL,NULL,'2'),(247,110,23,NULL,NULL,NULL,'Existe un informe por modificación de contrato. De acuerdo al sistema de manejo de proyecto del FP, esta situacion se valida por una orden de cambio','Cumple',NULL,NULL,NULL,NULL,'2'),(248,110,24,NULL,NULL,NULL,'El Supervisor emite informes mensuales. En los informes se omite información referida al seguimiento de la programación física y financiera económica de la obra comparada con lo ejecutado en cada periodo.','Cumple',NULL,NULL,NULL,NULL,'2'),(249,110,25,NULL,NULL,NULL,'','No cumple',NULL,NULL,NULL,NULL,'2'),(250,121,1,NULL,'si',NULL,'Numero de contrato: N°48/2012. C-FPS-03-002986',NULL,NULL,NULL,NULL,NULL,'1'),(251,121,2,NULL,'si',NULL,'',NULL,NULL,NULL,NULL,NULL,'1'),(252,121,3,NULL,'si',NULL,'Nº Planillas:  CUATRO PLANILLAS DE AVANCE DE OBRA',NULL,NULL,NULL,NULL,NULL,'1'),(253,121,6,NULL,'si',NULL,'Redistribucion devolumnes de obra',NULL,NULL,NULL,NULL,NULL,'1'),(254,121,4,'2013-06-24','si',NULL,'Creación de nuevos items  y redistribución de volúmenes y cantidades de obra, de cuya resultado el contrato disminuye en  0,02% del presupuesto original.dispone de la documentación generada por el Contratista y el Supervisor, no fue habido en carpeta Acta de Aprobación del Comité Dptal. Resolucion Mpal.de aprobacion de la GAM Tiraque, form de justificacion de la OC, ademdum al contrato de aprobación',NULL,NULL,NULL,NULL,NULL,'1'),(255,121,10,NULL,'si',NULL,'Nº de contrato: N°45/2012',NULL,NULL,NULL,NULL,NULL,'1'),(256,121,11,NULL,'si',NULL,'Fecha de Inicio: 22/02/13       Plazo 240 DC                                                          Fecha de conclusión: 23-10-2013',NULL,NULL,NULL,NULL,NULL,'1'),(257,121,15,'2013-07-03','si',NULL,'Informacion extractada del Libro de Ordenes',NULL,NULL,NULL,NULL,NULL,'1'),(258,121,16,'2013-09-02','si',NULL,'Informacion extractada del Libro de Ordenes',NULL,NULL,NULL,NULL,NULL,'1'),(259,121,17,NULL,'no',NULL,'No fue habido certificaciones de la calamina de cubierta, ni del material metálico empleado en la estructura metálica, ni del cemento.',NULL,NULL,NULL,NULL,NULL,'1'),(260,121,18,NULL,'no',NULL,'Se reportan ensayos de granulometria de los aridos empleados en obra y diseño de la dosificacion del hormigon empleado, en las cuales no se consigna la fecha del ensayo.',NULL,NULL,NULL,NULL,NULL,'1'),(261,121,19,NULL,'no',NULL,'',NULL,NULL,NULL,NULL,NULL,'1'),(262,121,20,NULL,'no',NULL,'No fue habido en las carpeta ninguna documentacion al respecto.',NULL,NULL,NULL,NULL,NULL,'1'),(263,121,21,NULL,'si',NULL,'No existe informacion al respecto',NULL,NULL,NULL,NULL,NULL,'1'),(264,121,22,NULL,NULL,NULL,'No fue habido esta informacion.','No cumple',NULL,NULL,NULL,NULL,'2'),(265,121,23,NULL,NULL,NULL,'No fue habido esta informacion','No cumple',NULL,NULL,NULL,NULL,'2'),(266,121,24,NULL,NULL,NULL,'No fue habido esta informacion','No cumple',NULL,NULL,NULL,NULL,'2'),(267,121,25,NULL,NULL,NULL,'No fue habido esta informacion','No cumple',NULL,NULL,NULL,NULL,'2'),(268,122,1,NULL,'si',NULL,'Numero de contrato: GAMC/C-ANPE-RP/N°011/2012',NULL,NULL,NULL,NULL,NULL,'1'),(269,122,2,'2012-08-27','si',NULL,'',NULL,NULL,NULL,NULL,NULL,'1'),(270,122,3,NULL,'si',NULL,'Nº Planillas: 5',NULL,NULL,NULL,NULL,NULL,'1'),(271,122,6,NULL,'no',NULL,'',NULL,NULL,NULL,NULL,NULL,'1'),(272,122,4,NULL,'si',NULL,'Nº Ordenes de Cambio: 1. Cambio de Excavación con equipo por excavación manual, cancelación del modulo Quebrada y Camara de distribución.',NULL,NULL,NULL,NULL,NULL,'1'),(273,122,5,NULL,'',NULL,'',NULL,NULL,NULL,NULL,NULL,'1'),(274,122,10,NULL,'si',NULL,'Nº de contrato: GAMC/C-ANPE-COT/N°047/2012',NULL,NULL,NULL,NULL,NULL,'1'),(275,122,11,NULL,'si',NULL,'Fecha de Inicio: 1/10/2012    ',NULL,NULL,NULL,NULL,NULL,'1'),(276,122,17,NULL,'si',NULL,'Presenta Certificación de Ibnorca NB 213 para la marca DISMAC (Tuberías), con fecha de vigencia 18 de marzo de 2015.',NULL,NULL,NULL,NULL,NULL,'1'),(277,122,15,NULL,'si',NULL,'',NULL,NULL,NULL,NULL,NULL,'1'),(279,122,16,'2013-04-22','si',NULL,'Plazo 90, ampliaciones 25, plazo real 115 días.',NULL,NULL,NULL,NULL,NULL,'1'),(280,122,18,NULL,'no',NULL,'',NULL,NULL,NULL,NULL,NULL,'1'),(281,122,19,NULL,'no',NULL,'',NULL,NULL,NULL,NULL,NULL,'1'),(282,122,20,NULL,'si',NULL,'Existe Ficha de control de Supervisión semanal firmada por firmada por el Director de obras públicas del Municipio de Cocapata.',NULL,NULL,NULL,NULL,NULL,'1'),(283,122,21,NULL,'si',NULL,'Se identifica una carpeta con correspondencia relacionada al proyecto, en la cual se encuentran notas del supervisor y fiscal FPS.',NULL,NULL,NULL,NULL,NULL,'1'),(284,122,22,NULL,NULL,NULL,'Se presenta un informe inicial con CITE: SUP-AOLB06-12 de fecha 8 de octubre de 2012. Se alerta sobre la necesidad de introducir adecuaciones al proyecto.','Cumple',NULL,NULL,NULL,NULL,'2'),(285,122,23,NULL,NULL,NULL,'No se identifican informes especiales','Cumple',NULL,NULL,NULL,NULL,'2'),(286,122,24,NULL,NULL,NULL,'Se encuetran los informes en cada una de las planillas.','Cumple',NULL,NULL,NULL,NULL,'2'),(287,122,25,NULL,NULL,NULL,'Certificación de la tubería (IBNORCA), Certificación del Fiscal por compensación de tiempo por precipitaciones registradas. Existen 3 certificaciones de Fiscal Mpal. 10DIC, 17DIC, 24DIC, sin cuantificacion alguna y una nota donde autoriza 25 DC de compensación.','Cumple',NULL,NULL,NULL,NULL,'2'),(288,115,1,NULL,'si',NULL,'Número de contrato: C-FPS-03-003009',NULL,NULL,NULL,NULL,NULL,'1'),(289,115,2,'2013-02-08','si',NULL,'FUENTE: LIBRO DE ORDENES',NULL,NULL,NULL,NULL,NULL,'1'),(290,115,3,NULL,'si',NULL,'Nº Planillas: 5',NULL,NULL,NULL,NULL,NULL,'1'),(291,115,6,NULL,'no',NULL,'No Aplica',NULL,NULL,NULL,NULL,NULL,'1'),(292,115,4,NULL,'si',NULL,'Se ha incrementado el 5% del monto del contrato por el incremento del canal.',NULL,NULL,NULL,NULL,NULL,'1'),(293,115,5,NULL,'no',NULL,'',NULL,NULL,NULL,NULL,NULL,'1'),(294,115,10,NULL,'si',NULL,'Nº de contrato: C-FPS-03-003011',NULL,NULL,NULL,NULL,NULL,'1'),(295,115,11,'2013-02-08','si',NULL,'Fecha de conclusión: 16/10/2013',NULL,NULL,NULL,NULL,NULL,'1'),(297,115,15,NULL,'si',NULL,'Plazo de ejecución 153 dc (plazo entrega final 90 dc). observaciones del acabado de compuerta, canales, sellado de juntas del canal, fisusas paru y base canal.',NULL,NULL,NULL,NULL,NULL,'1'),(298,115,16,'2013-10-10','si',NULL,'Plazo final de ejecución 160 dc. Monto de ejecución final Bs. 819.921,72',NULL,NULL,NULL,NULL,NULL,'1'),(299,115,17,NULL,'si',NULL,'',NULL,NULL,NULL,NULL,NULL,'1'),(300,115,18,NULL,'si',NULL,'Reporta ensayo de rotura de cilindros de hormigón. Valor promedio  carga de rotura 198,33.',NULL,NULL,NULL,NULL,NULL,'1'),(301,115,19,NULL,'no',NULL,'No Aplica',NULL,NULL,NULL,NULL,NULL,'1'),(302,115,20,NULL,'si',NULL,'Existe  de control de supervisión firmado por Pastor Chinchilla -cel 68478676 del comité responsable del proyecto',NULL,NULL,NULL,NULL,NULL,'1'),(303,115,21,NULL,'no',NULL,'No se reporta en informes del supervisor',NULL,NULL,NULL,NULL,NULL,'1'),(304,115,22,NULL,NULL,NULL,'','No cumple',NULL,NULL,NULL,NULL,'2'),(305,115,23,NULL,NULL,NULL,'ORDEN DE CAMBIO 1: Se elaboro un informe especial para la aprobación de una Orden de Cambio donde se detallan los volúmenes cambiados por el incremento del canal.','Cumple',NULL,NULL,NULL,NULL,'2'),(306,115,24,NULL,NULL,NULL,'El Supervisor presento 5 informes correspondientes a cada certificado de avance de obras, la emisión de informes del supervision debe ser mensual.','Cumple',NULL,NULL,NULL,NULL,'2'),(307,115,25,NULL,NULL,NULL,'','Cumple',NULL,NULL,NULL,NULL,'2'),(308,112,1,'2012-12-05','si',NULL,'Numero de contrato: GAMS/C/N°106/12',NULL,NULL,NULL,NULL,NULL,'1'),(309,112,2,'2013-01-14','no',NULL,'No reporta EL ACTA',NULL,NULL,NULL,NULL,NULL,'1'),(310,112,3,NULL,'si',NULL,'Nº Planillas:  6',NULL,NULL,NULL,NULL,NULL,'1'),(311,112,6,NULL,'si',NULL,'Redistribución de volúmenes de obra.',NULL,NULL,NULL,NULL,NULL,'1'),(312,112,4,NULL,'no',NULL,'',NULL,NULL,NULL,NULL,NULL,'1'),(313,112,5,NULL,'no',NULL,'',NULL,NULL,NULL,NULL,NULL,'1'),(314,112,7,NULL,'no',NULL,'',NULL,NULL,NULL,NULL,NULL,'1'),(315,112,10,NULL,'si',NULL,'No presenta copia de contrato',NULL,NULL,NULL,NULL,NULL,'1'),(316,112,11,NULL,'no',NULL,'',NULL,NULL,NULL,NULL,NULL,'1'),(317,112,15,'2013-06-13','si',NULL,'',NULL,NULL,NULL,NULL,NULL,'1'),(318,112,16,'2013-09-13','si',NULL,'',NULL,NULL,NULL,NULL,NULL,'1'),(319,112,17,NULL,'no',NULL,'No se encuentra actividades ni resultados de compactación.',NULL,NULL,NULL,NULL,NULL,'1'),(320,112,18,NULL,'no',NULL,'No se encuentra actividades ni resultados de compactación.',NULL,NULL,NULL,NULL,NULL,'1'),(321,112,19,NULL,'no',NULL,'',NULL,NULL,NULL,NULL,NULL,'1'),(322,112,20,NULL,'no',NULL,'',NULL,NULL,NULL,NULL,NULL,'1'),(323,112,21,NULL,'no',NULL,'',NULL,NULL,NULL,NULL,NULL,'1'),(324,112,22,NULL,NULL,NULL,'','Cumple',NULL,NULL,NULL,NULL,'2'),(325,112,23,NULL,NULL,NULL,'','No cumple',NULL,NULL,NULL,NULL,'2'),(326,112,24,NULL,NULL,NULL,'5 informes','Cumple',NULL,NULL,NULL,NULL,'2'),(327,112,25,NULL,NULL,NULL,'','Cumple',NULL,NULL,NULL,NULL,'2'),(328,106,1,'2012-11-08','si',NULL,'Numero de contrato: GAM-ANPE-2P-O-25-Nº06/2012',NULL,NULL,NULL,NULL,NULL,'1'),(329,106,2,'2012-12-27','si',NULL,'',NULL,NULL,NULL,NULL,NULL,'1'),(330,106,3,NULL,'si',NULL,'Nº Planillas: Cuatro',NULL,NULL,NULL,NULL,NULL,'1'),(331,106,6,NULL,'no',NULL,'',NULL,NULL,NULL,NULL,NULL,'1'),(332,106,4,'2013-08-02','si',NULL,'Orden de Cambio Nº 1 Presupuestaria: presupuestaria  por redistribución de cantidades y volúmenes de obra, Presupuesto original: Bs550.039,31. Presupuesto Revisado: Bs550.039,16',NULL,NULL,NULL,NULL,NULL,'1'),(333,106,4,'2013-12-27','si',NULL,'Orden de Cambio N º 1 por paralización de obras:del  27-12-2012 al 18-02-2013 (53 DC). Situación no prevista en el contrato contractual',NULL,NULL,NULL,NULL,NULL,'1'),(334,106,4,'2013-07-16','si',NULL,'Orden de Cambio N º  2 por ampliacion de plazo:del 19-7-2012 al 03-08-2013 (16 DC) precipitaciones pluviales en la cuenca alta del rio',NULL,NULL,NULL,NULL,NULL,'1'),(335,106,4,'2013-08-02','si',NULL,'Orden de Cambio N º  3 Readecuación de volúmenes de obra:  Ampliación de plazo,  04-08-2013  al 23-08-2013         (20 DC) Creacion de nuevos items y redistribucion de volumnes de obra',NULL,NULL,NULL,NULL,NULL,'1'),(336,106,10,NULL,'si',NULL,'Monto del contrato: Bs 28.275',NULL,NULL,NULL,NULL,NULL,'1'),(337,106,11,'2012-12-27','si',NULL,'',NULL,NULL,NULL,NULL,NULL,'1'),(338,106,15,'2013-08-23','si',NULL,'Se han detectado 7 observaciones sobre acabados y limpieza final',NULL,NULL,NULL,NULL,NULL,'1'),(339,106,16,NULL,'no',NULL,'Prevista para el 12/12/13',NULL,NULL,NULL,NULL,NULL,'1'),(340,106,17,NULL,'si',NULL,'Incluye ensayos complementarios como PU y otros, cumple las ET´s',NULL,NULL,NULL,NULL,NULL,'1'),(341,106,18,NULL,'si',NULL,'Se reporta ensayo de granulometria de áridos empleados en obra. Cumple las ET´s del proeycto',NULL,NULL,NULL,NULL,NULL,'1'),(342,106,19,NULL,'si',NULL,'Si se procedió a re adecuar el diseño a fin de ajustar volúmenes de movimiento de tierras, y cuantía del acero de construcción. Volumenes originales subestimados y cuantia de acero sobre dimensionada.',NULL,NULL,NULL,NULL,NULL,'1'),(343,106,20,NULL,'si',NULL,'Existe dicho certificado firmado por el Fiscal Municipal.',NULL,NULL,NULL,NULL,NULL,'1'),(344,106,21,NULL,'no',NULL,'',NULL,NULL,NULL,NULL,NULL,'1'),(345,106,22,NULL,NULL,NULL,'','Cumple',NULL,NULL,NULL,NULL,'2'),(346,106,23,NULL,NULL,NULL,'Existe un informe rechazando la pretension del contratista de solicitud de una nueva ampliación de plazo.','Cumple',NULL,NULL,NULL,NULL,'2'),(347,106,24,NULL,NULL,NULL,'Generados por ampliación de plazo y orden de cambio por modificación de monto.','Cumple',NULL,NULL,NULL,NULL,'2'),(348,106,25,NULL,NULL,NULL,'De parte del Fiscal Municipal por eventos compensables no previstos en el contrato de obras.','Cumple',NULL,NULL,NULL,NULL,'2'),(350,16,26,NULL,NULL,NULL,NULL,NULL,NULL,'No Cumple','NO SE TUVO ACCESO A DOCUMENTACIÓN QUE CERTIFIQUE LA EXISTENCIA DE ENSAYOS DE LABORATORIO NI ESTADÍSTICAS DE CALIDAD DE LOS MATERIALES, TAMPOCO SE HA REGISTRADO ENSAYO ALGUNO EN LAS CARPETAS DE LAS PLANILLAS DE DESEMBOLSOS A PESAR DE QUE LAS MISMAS YA HAN SIDO APROBADAS.',NULL,'3'),(351,16,27,NULL,NULL,NULL,NULL,NULL,NULL,'No Cumple','NO SE TUVO ACCESO A DOCUMENTACIÓN QUE CERTIFIQUE LA EXISTENCIA DE ENSAYOS DE LABORATORIO NI ESTADÍSTICAS DE CALIDAD DE LOS MATERIALES, TAMPOCO SE HA REGISTRADO ENSAYO ALGUNO EN LAS CARPETAS DE LAS PLANILLAS DE DESEMBOLSOS A PESAR DE QUE LAS MISMAS YA HAN SIDO APROBADAS.',NULL,'3'),(352,16,28,NULL,NULL,NULL,NULL,NULL,NULL,'No Cumple','NO SE TUVO ACCESO A DOCUMENTACIÓN QUE CERTIFIQUE LA EXISTENCIA DE ENSAYOS DE LABORATORIO NI ESTADÍSTICAS DE CALIDAD DE LOS MATERIALES, TAMPOCO SE HA REGISTRADO ENSAYO ALGUNO EN LAS CARPETAS DE LAS PLANILLAS DE DESEMBOLSOS A PESAR DE QUE LAS MISMAS YA HAN SIDO APROBADAS.',NULL,'3'),(353,16,29,NULL,NULL,NULL,NULL,NULL,NULL,'No Cumple','NO SE TUVO ACCESO A DOCUMENTACIÓN QUE CERTIFIQUE LA EXISTENCIA DE ENSAYOS DE LABORATORIO NI ESTADÍSTICAS DE CALIDAD DE LOS MATERIALES, TAMPOCO SE HA REGISTRADO ENSAYO ALGUNO EN LAS CARPETAS DE LAS PLANILLAS DE DESEMBOLSOS A PESAR DE QUE LAS MISMAS YA HAN SIDO APROBADAS.',NULL,'3'),(354,16,30,NULL,NULL,NULL,NULL,NULL,NULL,'No Cumple','NO SE TUVO ACCESO A DOCUMENTACIÓN QUE CERTIFIQUE LA EXISTENCIA DE ENSAYOS DE LABORATORIO NI ESTADÍSTICAS DE CALIDAD DE LOS MATERIALES, TAMPOCO SE HA REGISTRADO ENSAYO ALGUNO EN LAS CARPETAS DE LAS PLANILLAS DE DESEMBOLSOS A PESAR DE QUE LAS MISMAS YA HAN SIDO APROBADAS.',NULL,'3'),(359,13,26,NULL,NULL,NULL,NULL,NULL,NULL,'No Aplica','Como el proyecto se basa en la creación de atajados, no se tiene registro de ensayo alguno.',NULL,'3'),(361,13,27,NULL,NULL,NULL,NULL,NULL,NULL,'No Aplica','Como el proyecto se basa en la creación de atajados, no se tiene registro de ensayo alguno.',NULL,'3'),(362,13,28,NULL,NULL,NULL,NULL,NULL,NULL,'No Aplica','Como el proyecto se basa en la creación de atajados, no se tiene registro de ensayo alguno.',NULL,'3'),(363,13,29,NULL,NULL,NULL,NULL,NULL,NULL,'No Aplica','Como el proyecto se basa en la creación de atajados, no se tiene registro de ensayo alguno.',NULL,'3'),(364,13,30,NULL,NULL,NULL,NULL,NULL,NULL,'No Aplica','Como el proyecto se basa en la creación de atajados, no se tiene registro de ensayo alguno.',NULL,'3'),(365,13,31,NULL,NULL,NULL,NULL,NULL,NULL,'Cumple','Cuenta con el certificado de calidad de la geomembran',NULL,'3'),(366,22,26,NULL,NULL,NULL,NULL,NULL,NULL,'No Cumple','No se tiene registrada dicha información.',NULL,'3'),(367,22,27,NULL,NULL,NULL,NULL,NULL,NULL,'No Cumple','No se tiene registrada dicha información.',NULL,'3'),(368,22,28,NULL,NULL,NULL,NULL,NULL,NULL,'Cumple','Se tiene registrada dicha información.',NULL,'3'),(369,22,29,NULL,NULL,NULL,NULL,NULL,NULL,'No Cumple','No se tiene registrada dicha información.',NULL,'3'),(370,22,30,NULL,NULL,NULL,NULL,NULL,NULL,'No Cumple','No se tiene registrada dicha información.',NULL,'3'),(371,137,31,NULL,NULL,NULL,NULL,NULL,NULL,'Cumple','EL PROYECTO SE CUENTA CON LA CERTIFICACIÓN DE CALIDAD DE LOS MATERIALES PRESENTADO POR EL PROVEEDOR(GAVIONES MACAFERRI), EL ESTUDIO DE SUELOS DE EL TERRENO NO FUE REALIZADO Y EL ENSAYO DE DESGASTE DE LOS ANGELES DE PIDRA BRUTA  (DESGASTE 5.78% NUEVO BANCO)',NULL,'3'),(372,110,26,NULL,NULL,NULL,NULL,NULL,NULL,'Cumple','Fecha : 11/04/2013 Lab. Geotechnical SRL, ',NULL,'3'),(373,110,27,NULL,NULL,NULL,NULL,NULL,NULL,'Cumple','Fecha: 10/04/2013 Lab. Geotechnical SRL, AGREGADOS FINO Y GRUESO. Se advierte que los finos presenta una curva fuera del rango establecido, no se sabe si se hizo la corrección.',NULL,'3'),(374,110,28,NULL,NULL,NULL,NULL,NULL,NULL,'Cumple','Fechas: 27/05/2013 y 12/08/2013 Lab. Geotechnical SRL,  4 reportes del 27/05/13,   8 reportes del 12/8/2013. Se reporta 12 resultados y se advierte un valor de 179 kg/cm2 en la zapata 1',NULL,'3'),(375,110,31,NULL,NULL,NULL,NULL,NULL,NULL,'Cumple','Ensayo del Cono de Abramhs (analisis estadistico): Unicamente existe el reporte de una fotografia de la planilla 3. No existe evidencia escrita sobre valores optenidos en los informes de la Supervision',NULL,'3'),(376,110,31,NULL,NULL,NULL,NULL,NULL,NULL,'Cumple','Verificación de las características de la geotecnia: Pese a que esta situación esta prevista en las ET´s del estudio de pre inversión, no se ejecuto. Este aspecto fue omitido al publicar la convocatoria en el SICOES.  ',NULL,'3'),(377,121,26,NULL,NULL,NULL,NULL,NULL,NULL,'Cumple','Existe dichos diseños, empleando arena fuera de la curva permitida.Sin embargo no se interpreta los resultados obtenidos.',NULL,'3'),(378,121,27,NULL,NULL,NULL,NULL,NULL,NULL,'Cumple','Existe reportes de laboratorio sobre granulometria. Sin embargo no se realiza un interpretación de resultados obtenidos y se acepta dichos valores sin ningún tipo de observación o comentario.',NULL,'3'),(379,121,28,NULL,NULL,NULL,NULL,NULL,NULL,'Cumple','11-3-2013, Labotarorio de la facultad de arquitectura           27-5-2013, Labotarorio de la facultad de arquitectura.\r\nTotal 7 probetas, con resultados aceptados según ET´s ',NULL,'3'),(380,121,29,NULL,NULL,NULL,NULL,NULL,NULL,'No Cumple','',NULL,'3'),(381,121,31,NULL,NULL,NULL,NULL,NULL,NULL,'Cumple','Certificados de Calidad de materiales/insumos empleados en Obra:Se empleo calamina, acero de construcción y cemento. No se reporta ninguna certificacion',NULL,'3'),(382,122,26,NULL,NULL,NULL,NULL,NULL,NULL,'No Cumple','De acuerdo a la documentación existente como respaldo para el pago de planillas de avance de obra, se advierte que no existen documentos o al menos no se menciona en ningún informe esta situación; de donde se deduce que estos controles de tipo tecnológico no se han llevado a cabo.',NULL,'3'),(383,122,27,NULL,NULL,NULL,NULL,NULL,NULL,'No Cumple','De acuerdo a la documentación existente como respaldo para el pago de planillas de avance de obra, se advierte que no existen documentos, fotografías o al menos no se menciona en ningún informe esta situación; de donde se deduce que estos controles de tipo tecnológico no se han llevado a cabo.',NULL,'3'),(384,122,28,NULL,NULL,NULL,NULL,NULL,NULL,'No Cumple','De acuerdo a la documentación existente como respaldo para el pago de planillas de avance de obra, se advierte que no existen documentos, fotografías o al menos no se menciona en ningún informe esta situación; de donde se deduce que estos controles de tipo tecnológico no se han llevado a cabo.',NULL,'3'),(385,122,31,NULL,NULL,NULL,NULL,NULL,NULL,'Cumple','Certificados de Calidad de materiales/insumos empleados en Obra: IBNORCA-DISMAT con vigencia al 15-03-2013. Certificado de uso del sello IBNOCA de conformidad con NB 213/2007, de tuberia de PVC clase 6,9,12,15 diferentes diametros',NULL,'3'),(386,115,32,NULL,NULL,NULL,'Fecha: 02/02/2013- Sr.Modesto Mamani Reque Alcalde Municipal de Tapacari.Reporta una planilla sobre las medidas de mitigacion ambiental de proyecto.','Cumple',NULL,NULL,NULL,NULL,'2'),(387,115,34,NULL,NULL,NULL,'No existe evidencia de la presentación del informe inicial del supervisor ni la presentación de informes ambientales, aunque es un requisito previo al pago de la Supervision.','No cumple',NULL,NULL,NULL,NULL,'2'),(388,115,26,NULL,NULL,NULL,NULL,NULL,NULL,'Cumple','04-03-2013 Laboratorio de Certificación de Materiales                  Fac. Arquitectura - UMSS. Reportado por el contratista en el CAO Nº 2  Dosificación:1:2,2:2,7 ',NULL,'3'),(389,115,27,NULL,NULL,NULL,NULL,NULL,NULL,'Cumple','27-2-2013 Laboratorio de Certificacion de Materiales                  Fac Aquitectura - UMSS. El contratista presento en (CAO Nº 1) 2 ensayos de granulometria en el cual, uno de ellos reporta una curva fuera del rango requerido, el Supervisor no reporta esta situación ni las medidas correctivas impuestas.',NULL,'3'),(390,115,28,NULL,NULL,NULL,NULL,NULL,NULL,'Cumple','valores obtenidos: 177-199-209-226-191-188. Valor promedio obtenido: 198,33  Valor obtenido de Mediana: 195                              Cumple lo especificado.',NULL,'3'),(391,112,26,NULL,NULL,NULL,NULL,NULL,NULL,'No Cumple','',NULL,'3'),(392,112,27,NULL,NULL,NULL,NULL,NULL,NULL,'No Cumple','',NULL,'3'),(393,112,28,NULL,NULL,NULL,NULL,NULL,NULL,'No Cumple','',NULL,'3'),(394,112,29,NULL,NULL,NULL,NULL,NULL,NULL,'No Cumple','',NULL,'3'),(395,112,30,NULL,NULL,NULL,NULL,NULL,NULL,'No Cumple','',NULL,'3'),(396,106,26,NULL,NULL,NULL,NULL,NULL,NULL,'Cumple','Fecha: 22-3-2013/R&F Ingenieria. Cumple las especificaciones técnicas.',NULL,'3'),(397,106,27,NULL,NULL,NULL,NULL,NULL,NULL,'Cumple','Fecha:22-3-2013/R&F Ingenieria   Ing. Alberto alex Rivas RNI 18.860. Ensayo de granulometria de los aridos, Peso Unitario, Peso Especifico y % de absorción. Cumple las especificaciones técnicas\r\n',NULL,'3'),(398,106,28,NULL,NULL,NULL,NULL,NULL,NULL,'Cumple','Diferentes fechas /R&F Ingenieria. Ing. Alberto Alex Rivas RNI 18860',NULL,'3'),(399,106,29,NULL,NULL,NULL,NULL,NULL,NULL,'No Cumple','',NULL,'3'),(400,64,1,'2013-01-31','si',NULL,'Numero de contrato: 16-1/2013',NULL,NULL,NULL,NULL,NULL,'1'),(401,64,2,'2013-05-17','si',NULL,'INFORME ESPECIAL DE SUPERVISION 02/2013',NULL,NULL,NULL,NULL,NULL,'1'),(402,64,3,NULL,'si',NULL,'Nº Planillas: 5',NULL,NULL,NULL,NULL,NULL,'1'),(403,64,6,NULL,'no',NULL,'',NULL,NULL,NULL,NULL,NULL,'1'),(404,64,4,NULL,'si',NULL,'Orden de cambio por ampliacion de plazo de 15 dias. En la planilla Nº 5',NULL,NULL,NULL,NULL,NULL,'1'),(405,64,5,NULL,'no',NULL,'',NULL,NULL,NULL,NULL,NULL,'1'),(406,64,10,NULL,'si',NULL,'Nº 60-2012',NULL,NULL,NULL,NULL,NULL,'1'),(407,64,11,NULL,'si',NULL,'Fecha de Inicio: 07/05/2013                                                                 Fecha de conclusión: 14/09/2013',NULL,NULL,NULL,NULL,NULL,'1'),(408,64,15,NULL,'si',NULL,'',NULL,NULL,NULL,NULL,NULL,'1'),(409,64,16,NULL,'no',NULL,'',NULL,NULL,NULL,NULL,NULL,'1'),(410,64,17,NULL,'no',NULL,'',NULL,NULL,NULL,NULL,NULL,'1'),(411,64,18,NULL,'no',NULL,'',NULL,NULL,NULL,NULL,NULL,'1'),(412,64,19,NULL,'no',NULL,'No corresponde',NULL,NULL,NULL,NULL,NULL,'1'),(413,64,20,NULL,'si',NULL,'FORMULARIO DE CAMPO 3000679',NULL,NULL,NULL,NULL,NULL,'1'),(414,64,21,NULL,'si',NULL,'',NULL,NULL,NULL,NULL,NULL,'1'),(415,64,22,NULL,NULL,NULL,'','Cumple',NULL,NULL,NULL,NULL,'2'),(416,64,23,NULL,NULL,NULL,'No existieron','No cumple',NULL,NULL,NULL,NULL,'2'),(417,64,24,NULL,NULL,NULL,'','Cumple',NULL,NULL,NULL,NULL,'2'),(418,64,25,NULL,NULL,NULL,'No hubieron','No cumple',NULL,NULL,NULL,NULL,'2'),(419,64,26,NULL,NULL,NULL,NULL,NULL,NULL,'No Cumple','No se tuvo acceso a los estudios estadísticos de los controles de calidad del hormigon, control de cono de abrahams, resultados de roturas de probetas los cuales deberían estar en poder del supervisor.',NULL,'3'),(420,64,27,NULL,NULL,NULL,NULL,NULL,NULL,'No Cumple','No se tuvo acceso a los estudios estadísticos de los controles de calidad del hormigon, control de cono de abrahams, resultados de roturas de probetas los cuales deberían estar en poder del supervisor.',NULL,'3'),(421,64,28,NULL,NULL,NULL,NULL,NULL,NULL,'No Cumple','No se tuvo acceso a los estudios estadísticos de los controles de calidad del hormigon, control de cono de abrahams, resultados de roturas de probetas los cuales deberían estar en poder del supervisor.',NULL,'3'),(422,64,29,NULL,NULL,NULL,NULL,NULL,NULL,'No Cumple','No se tuvo acceso a los estudios estadísticos de los controles de calidad del hormigon, control de cono de abrahams, resultados de roturas de probetas los cuales deberían estar en poder del supervisor.',NULL,'3'),(423,64,30,NULL,NULL,NULL,NULL,NULL,NULL,'No Cumple','No se tuvo acceso a los estudios estadísticos de los controles de calidad del hormigon, control de cono de abrahams, resultados de roturas de probetas los cuales deberían estar en poder del supervisor.',NULL,'3'),(424,90,1,'2012-09-11','si',NULL,'C-FPS-03-002906',NULL,NULL,NULL,NULL,NULL,'1'),(425,90,2,'2012-11-13','si',NULL,'',NULL,NULL,NULL,NULL,NULL,'1'),(426,90,3,NULL,'si',NULL,'Nº Planillas: 5',NULL,NULL,NULL,NULL,NULL,'1'),(427,90,6,NULL,'si',NULL,'Redistribución de volúmenes de obra.',NULL,NULL,NULL,NULL,NULL,'1'),(428,90,4,NULL,'si',NULL,'Nº Ordenes de Cambio:1: Por54 dc,  por precipitacion pluvial',NULL,NULL,NULL,NULL,NULL,'1'),(429,90,4,NULL,'si',NULL,'Nº Ordenes de Cambio:2.	Por:15 dc,  por precipitación pluvial\r\n',NULL,NULL,NULL,NULL,NULL,'1'),(430,90,5,NULL,'no',NULL,'',NULL,NULL,NULL,NULL,NULL,'1'),(431,90,10,NULL,'si',NULL,'Nº de contrato: C-FPS-03-0029078',NULL,NULL,NULL,NULL,NULL,'1'),(432,90,11,'2013-11-13','si',NULL,'Fecha de conclusión: 7/04/2013',NULL,NULL,NULL,NULL,NULL,'1'),(433,90,15,NULL,'si',NULL,'',NULL,NULL,NULL,NULL,NULL,'1'),(434,90,16,NULL,'no',NULL,'',NULL,NULL,NULL,NULL,NULL,'1'),(435,90,17,NULL,'no',NULL,'No reporta certificado de calidad de las tuberias empeladas',NULL,NULL,NULL,NULL,NULL,'1'),(436,90,18,NULL,'no',NULL,'',NULL,NULL,NULL,NULL,NULL,'1'),(437,90,19,NULL,'no',NULL,'No corresponde',NULL,NULL,NULL,NULL,NULL,'1'),(438,90,20,NULL,'si',NULL,'',NULL,NULL,NULL,NULL,NULL,'1'),(439,90,21,NULL,'no',NULL,'',NULL,NULL,NULL,NULL,NULL,'1'),(440,90,22,NULL,NULL,NULL,'','Cumple',NULL,NULL,NULL,NULL,'2'),(441,90,23,NULL,NULL,NULL,'No existen','No cumple',NULL,NULL,NULL,NULL,'2'),(442,90,24,NULL,NULL,NULL,'No hubieron','No cumple',NULL,NULL,NULL,NULL,'2'),(443,90,25,NULL,NULL,NULL,'Existen cinco','Cumple',NULL,NULL,NULL,NULL,'2'),(444,90,26,NULL,NULL,NULL,NULL,NULL,NULL,'No Aplica','La cantidad de hormigones utilizado en la obra es mínimo por lo que es inviable la realización de estudios estadísticos de agregados, aceros y hormigones ya que los mismos se han utilizado en cantidades pequeñas. Ademas de ello se hace notar que existen ensayos que no han sido presentados a supervisión.',NULL,'3'),(445,90,27,NULL,NULL,NULL,NULL,NULL,NULL,'No Aplica','La cantidad de hormigones utilizado en la obra es mínimo por lo que es inviable la realización de estudios estadísticos de agregados, aceros y hormigones ya que los mismos se han utilizado en cantidades pequeñas. Ademas de ello se hace notar que existen ensayos que no han sido presentados a supervisión.',NULL,'3'),(446,90,28,NULL,NULL,NULL,NULL,NULL,NULL,'No Aplica','La cantidad de hormigones utilizado en la obra es mínimo por lo que es inviable la realización de estudios estadísticos de agregados, aceros y hormigones ya que los mismos se han utilizado en cantidades pequeñas. Ademas de ello se hace notar que existen ensayos que no han sido presentados a supervisión.',NULL,'3'),(448,90,30,NULL,NULL,NULL,NULL,NULL,NULL,'No Aplica','La cantidad de hormigones utilizado en la obra es mínimo por lo que es inviable la realización de estudios estadísticos de agregados, aceros y hormigones ya que los mismos se han utilizado en cantidades pequeñas. Ademas de ello se hace notar que existen ensayos que no han sido presentados a supervisión.',NULL,'3'),(449,90,29,NULL,NULL,NULL,NULL,NULL,NULL,'Cumple','La certificación del acero estructural Grado 60, debería estar acompañado, por lo menos, con la certificación de fábrica.',NULL,'3'),(451,136,2,'2012-12-07','si',NULL,'',NULL,NULL,NULL,NULL,NULL,'1'),(452,136,1,'2012-04-17','si',NULL,'',NULL,NULL,NULL,NULL,NULL,'1'),(453,136,3,NULL,'si',NULL,'Nº Planillas: 5\r\n',NULL,NULL,NULL,NULL,NULL,'1'),(454,136,6,NULL,'si',NULL,'Redistribución de volúmenes de obra.',NULL,NULL,NULL,NULL,NULL,'1'),(455,136,4,NULL,'no',NULL,'No Aplica',NULL,NULL,NULL,NULL,NULL,'1'),(456,136,5,NULL,'no',NULL,'No Aplica',NULL,NULL,NULL,NULL,NULL,'1'),(457,136,7,NULL,'no',NULL,'No Aplica',NULL,NULL,NULL,NULL,NULL,'1'),(458,136,10,NULL,'si',NULL,'',NULL,NULL,NULL,NULL,NULL,'1'),(459,136,11,'2012-12-07','si',NULL,'Fecha de conclusión: 16/05/2013',NULL,NULL,NULL,NULL,NULL,'1'),(460,136,15,'2013-05-16','si',NULL,'Se reporta 8 obras de reparaciones ',NULL,NULL,NULL,NULL,NULL,'1'),(461,136,16,'2013-08-14','si',NULL,'Sin observación',NULL,NULL,NULL,NULL,NULL,'1'),(462,136,17,NULL,'no',NULL,'No reporta',NULL,NULL,NULL,NULL,NULL,'1'),(463,136,18,NULL,'no',NULL,'Reporta ensayos de densidad en sitio',NULL,NULL,NULL,NULL,NULL,'1'),(464,136,19,NULL,'no',NULL,'No aplica',NULL,NULL,NULL,NULL,NULL,'1'),(465,136,20,NULL,'no',NULL,'No reporta',NULL,NULL,NULL,NULL,NULL,'1'),(466,136,21,NULL,'no',NULL,'No reporta',NULL,NULL,NULL,NULL,NULL,'1'),(467,136,22,NULL,NULL,NULL,'','Cumple',NULL,NULL,NULL,NULL,'2'),(468,136,23,NULL,NULL,NULL,'No hubieron','No cumple',NULL,NULL,NULL,NULL,'2'),(469,136,24,NULL,NULL,NULL,'','Cumple',NULL,NULL,NULL,NULL,'2'),(470,136,25,NULL,NULL,NULL,'Existe una','Cumple',NULL,NULL,NULL,NULL,'2'),(471,136,26,NULL,NULL,NULL,NULL,NULL,NULL,'No Cumple','No se reporta',NULL,'3'),(472,136,27,NULL,NULL,NULL,NULL,NULL,NULL,'Cumple','Presenta análisis granulometrico AASTHO 45-91',NULL,'3'),(473,136,28,NULL,NULL,NULL,NULL,NULL,NULL,'No existe','No reporta',NULL,'3'),(474,136,29,NULL,NULL,NULL,NULL,NULL,NULL,'No existe','No reporta',NULL,'3'),(475,136,30,NULL,NULL,NULL,NULL,NULL,NULL,'No Aplica','No corresponde',NULL,'3'),(476,136,31,NULL,NULL,NULL,NULL,NULL,NULL,'Cumple','Ensayos de Densidad de Compactación: DENSIDAD EN SITIO METODO DE LA ARENA',NULL,'3'),(477,127,1,NULL,'si',NULL,'C-FPS-03-002858',NULL,NULL,NULL,NULL,NULL,'1'),(478,127,2,'2012-12-07','si',NULL,'El acta de inicio se firmó el día 07/12/2012.en presencia de los siguientes responsables: Ing. Carlos Ledezma (Fiscal FPS), Jesús Abdias (Supervisor), Sr. Sabino Paniagua (Pte. Comité de Vigilancia), Ing Carlos Nelson Villegas (Eecutor), Ing. Jonny Vasquez (Fiscal GM).',NULL,NULL,NULL,NULL,NULL,'1'),(479,127,3,NULL,'si',NULL,'Nº Planillas: Cinco ',NULL,NULL,NULL,NULL,NULL,'1'),(480,127,4,'2013-03-12','si',NULL,'Nº Ordenes de Cambio: 1. La orden de cambio se justifica por los siguientes motivos: se considera una reducción en el ítem MURO DE HORMIGÓN COCLOPIO y un incremento en los ítems de CERCO PERIMETRAL, DESBROCE Y LIMPIEZA C/EQUIPO y EXCAVACIÓN MANUAL, en todos los casos se identifica que las cantidades contractulaes no coinciden con los planos constructivos.',NULL,NULL,NULL,NULL,NULL,'1'),(481,127,5,NULL,'no',NULL,'No aplica',NULL,NULL,NULL,NULL,NULL,'1'),(482,127,7,NULL,'si',NULL,'Se aprobaron 30 días de ampliación de plazo por 2 motivos presentados por la empresa Contratista:días de perjuicio por las precipitaciones pluviales y por anegación de accesos a causa de la crecida de ríos.',NULL,NULL,NULL,NULL,NULL,'1'),(483,127,10,NULL,'si',NULL,'Numero de contrato: C-FPS-03-002961\r\n',NULL,NULL,NULL,NULL,NULL,'1'),(484,127,11,'2012-12-07','si',NULL,'El acta de inicio se firmó el día 07/12/2012.en presencia de los siguientes responsables: Ing. Carlos Ledezma (Fiscal FPS), Jesús Abdias (Supervisor), Sr. Sabino Paniagua (Pte. Comité de Vigilancia), Ing Carlos Nelson Villegas (Eecutor), Ing. Jonny Vasque',NULL,NULL,NULL,NULL,NULL,'1'),(485,127,12,NULL,'si',NULL,'Nº Planillas: cuatro: Las planillas se encuentran en la carpeta de Seguimiento del Proyecto \" Const Sist. Riego San Francisco\" puesto que la supervisión se adjudico en paquete entre los dos proyectos del municipio de Pojo.\r\n',NULL,NULL,NULL,NULL,NULL,'1'),(486,127,15,'2013-05-06','si',NULL,'Observaciones en el acta de recepción provisional: Compactación a nivel de coronamiento; limpieza general; rehacer el letrero de la obra, corregir obras de arte con rajaduras, agreamientos y cangrejeras; Rehacer obras de arte con Hormigón Ciclopio de baja resistencia mal curados; y se tiene que nivelar y formar corona de atajados segun diseño y especificaciones técnicas.  Los siguientes respoables firman la el acta: Ing. Carlos Ledezma (Fiscal FPS), Carlos Nelson Villegas (Ejecutor), Jesús Abdias (Supervisor) y el Ing. Jonny Vasquez (Fiscal GM).\r\n',NULL,NULL,NULL,NULL,NULL,'1'),(487,127,16,'2013-08-05','si',NULL,'En el acta se indica que la empresa subsanó todas las observaciones que hicieron durante la entrega provisional. El monto final de ejecución fue de 734.991,8 con lapso de ejecución de 150 dias. Firman el acta: Sr. Fidel Rojas (alcalde de Pojo), Ing. Tonny -Vasquez (Fiscal GM), Ing. Carlos Villegas (Ejecutor),  Arq. Jesús Abdias (Supervisor), Ing. Carlos Ledezma (Fiscal FPS).',NULL,NULL,NULL,NULL,NULL,'1'),(488,127,17,NULL,'si',NULL,'',NULL,NULL,NULL,NULL,NULL,'1'),(489,127,18,NULL,'si',NULL,'Prueba de resistencia /Método del Esclerómetro, Ensayo de la Compresión de probetas de hormigón.',NULL,NULL,NULL,NULL,NULL,'1'),(490,127,19,NULL,'no',NULL,'No corresponde',NULL,NULL,NULL,NULL,NULL,'1'),(491,127,20,NULL,'si',NULL,'',NULL,NULL,NULL,NULL,NULL,'1'),(492,127,21,NULL,'si',NULL,'',NULL,NULL,NULL,NULL,NULL,'1'),(498,70,1,'2012-11-19','si',NULL,'Numero de contrato: 06/2012 ',NULL,NULL,NULL,NULL,NULL,'1'),(499,70,2,'2012-12-07','si',NULL,'plazo inicial: 150 dias calendario\r\n',NULL,NULL,NULL,NULL,NULL,'1'),(500,70,3,NULL,'si',NULL,'Nº Planillas: SIETE (7)\r\n',NULL,NULL,NULL,NULL,NULL,'1'),(501,70,4,NULL,'si',NULL,'Orden de Cambio Nº 1: Reubicación obra de toma\r\nOrden de Cambio Nº 2: Cancelación tanque de almacenamiento, redistribución de volúmenes de obras (pasos de quebrada), incremento volúmenes obra de toma, reducción de la linea de aducción, reducción de revoque en cámaras de distribución, \r\n',NULL,NULL,NULL,NULL,NULL,'1'),(502,70,5,NULL,'si',NULL,'Item nuevo: TA PVC C-12 DN 8\" 600 m.\r\n',NULL,NULL,NULL,NULL,NULL,'1'),(503,70,6,NULL,'no',NULL,'No Aplica',NULL,NULL,NULL,NULL,NULL,'1'),(504,70,7,NULL,'si',NULL,'Ampliación plazo nº 1: paralización de obra por problemas sociales, técnicos, accesos y lluvias registradas en el área del proyecto: 125 días. Ampliación plazo nº 2: reubicación del sitio de la toma, modificación de la aducción, incremento en la longitud de aducción de 4416 a 5000 m., incremento de sifon en la aducción, paso de quebrada 35 m., motivo principal tiempo de fabricación de la tubería del sifon: 42 días. Ampliación plazo nº 3: precipitación pluvial y registro de nevadas en el área del proyecto: 10 días\r\n\r\n',NULL,NULL,NULL,NULL,NULL,'1'),(505,70,10,'2012-11-08','si',NULL,'Numero de contrato: 01/2012 \r\n',NULL,NULL,NULL,NULL,NULL,'1'),(506,70,11,'2012-12-07','si',NULL,'',NULL,NULL,NULL,NULL,NULL,'1'),(507,70,12,NULL,'si',NULL,'Nº Planillas: TRES PLANILLAS\r\n\r\n',NULL,NULL,NULL,NULL,NULL,'1'),(508,70,15,NULL,'no',NULL,'No corresponde',NULL,NULL,NULL,NULL,NULL,'1'),(509,70,16,NULL,'no',NULL,'No corresponde',NULL,NULL,NULL,NULL,NULL,'1'),(510,70,17,NULL,'si',NULL,'La certificación No.1 debería estar acompañada de ensayos de compresión de hormigones ya que se han pagado items de hormigón.\r\n',NULL,NULL,NULL,NULL,NULL,'1'),(511,70,18,NULL,'si',NULL,'2 ensayos de rotura de probetas aceptables\r\n\r\n',NULL,NULL,NULL,NULL,NULL,'1'),(512,70,19,NULL,'si',NULL,'Rediseño por el supervisor y contratista. Se viabilizó el proyecto y así se soluciono el problema social y técnico presentado.\r\n',NULL,NULL,NULL,NULL,NULL,'1'),(513,70,20,NULL,'si',NULL,'\r\n',NULL,NULL,NULL,NULL,NULL,'1'),(514,70,21,NULL,'si',NULL,'',NULL,NULL,NULL,NULL,NULL,'1'),(515,70,22,NULL,NULL,NULL,'Manifiesta la misiono de aspectos técnicos del proyecto en el estudio del prediseño. \r\n','Cumple',NULL,NULL,NULL,NULL,'2'),(516,70,23,NULL,NULL,NULL,'BALANCE REAL PROYECTO, QUE DERIVAN EN LA NECESIDAD DE VARIACION DE VOLUMENES DE OBRA Y PARALIZACION DE OBRA\r\n','Cumple',NULL,NULL,NULL,NULL,'2'),(517,70,24,NULL,NULL,NULL,'Si existe		\r\n','Cumple',NULL,NULL,NULL,NULL,'2'),(518,70,25,NULL,NULL,NULL,'SIETE INFORMES \r\n','Cumple',NULL,NULL,NULL,NULL,'2'),(519,70,32,NULL,NULL,NULL,'','No cumple',NULL,NULL,NULL,NULL,'2'),(520,70,33,NULL,NULL,NULL,'No existe','No cumple',NULL,NULL,NULL,NULL,'2'),(521,70,34,NULL,NULL,NULL,'No existe','No cumple',NULL,NULL,NULL,NULL,'2'),(522,70,35,NULL,NULL,NULL,' La certificación No.1 no acompaña el informe ambiental, necesario para el pago','Cumple',NULL,NULL,NULL,NULL,'2'),(523,70,26,NULL,NULL,NULL,NULL,NULL,NULL,'Cumple','Si presento el Contratista al Supervisor en fecha 28-05-2013\r\n',NULL,'3'),(524,70,27,NULL,NULL,NULL,NULL,NULL,NULL,'Cumple','Si presento el Contratista al Supervisor en fecha 28-05-2013, de Laboratorios Tarifa \r\n',NULL,'3'),(525,70,28,NULL,NULL,NULL,NULL,NULL,NULL,'No Aplica','',NULL,'3'),(526,70,29,NULL,NULL,NULL,NULL,NULL,NULL,'No Aplica','',NULL,'3'),(527,70,30,NULL,NULL,NULL,NULL,NULL,NULL,'No Aplica','',NULL,'3'),(528,182,1,NULL,'si',NULL,'Numero de contrato: C-FPS-07-002807',NULL,NULL,NULL,NULL,NULL,'1'),(529,182,2,'2013-04-01','si',NULL,'',NULL,NULL,NULL,NULL,NULL,'1'),(530,182,3,NULL,'si',NULL,'Nº Planillas: CUATRO (4)',NULL,NULL,NULL,NULL,NULL,'1'),(531,182,4,NULL,'no',NULL,'No aplica',NULL,NULL,NULL,NULL,NULL,'1'),(532,182,5,NULL,'no',NULL,'No aplica',NULL,NULL,NULL,NULL,NULL,'1'),(533,182,6,NULL,'si',NULL,'Redistribución de volúmenes de obra',NULL,NULL,NULL,NULL,NULL,'1'),(534,182,7,NULL,'si',NULL,'',NULL,NULL,NULL,NULL,NULL,'1'),(535,182,10,NULL,'si',NULL,'',NULL,NULL,NULL,NULL,NULL,'1'),(536,182,11,'2013-04-01','si',NULL,'',NULL,NULL,NULL,NULL,NULL,'1'),(537,182,15,NULL,'no',NULL,'',NULL,NULL,NULL,NULL,NULL,'1'),(538,182,16,NULL,'no',NULL,'',NULL,NULL,NULL,NULL,NULL,'1'),(539,182,17,NULL,'si',NULL,'',NULL,NULL,NULL,NULL,NULL,'1'),(540,182,18,NULL,'si',NULL,'',NULL,NULL,NULL,NULL,NULL,'1'),(541,182,19,NULL,'si',NULL,'',NULL,NULL,NULL,NULL,NULL,'1'),(542,182,20,NULL,'si',NULL,'',NULL,NULL,NULL,NULL,NULL,'1'),(543,182,21,NULL,'si',NULL,'',NULL,NULL,NULL,NULL,NULL,'1'),(544,182,22,NULL,NULL,NULL,'','Cumple',NULL,NULL,NULL,NULL,'2'),(545,182,23,NULL,NULL,NULL,'No hubieron','No cumple',NULL,NULL,NULL,NULL,'2'),(546,182,24,NULL,NULL,NULL,'','Cumple',NULL,NULL,NULL,NULL,'2'),(547,182,25,NULL,NULL,NULL,'Existen dos','Cumple',NULL,NULL,NULL,NULL,'2'),(548,110,29,NULL,NULL,NULL,NULL,NULL,NULL,'Cumple','La certificación del acero estructural Grado 60, debería estar acompañado, por lo menos, con la certificación de fábrica. La Supervisión no exigió al Contratista la ejecución del control tecnológico de la calidad del hormigon según lo  establecido en las ET´s, ni reporta valores del control del vaciado de hormigón (cono de abramhs), situación que denota debilidad y omisión en aspecto del control tecnológico, importante para este tipo de obras.',NULL,'3'),(549,35,1,'2014-05-02','si',NULL,'Se verifica la existencia del contrato con el GAM de Villa Tunari, Numero 122/2014',NULL,NULL,NULL,NULL,NULL,'1'),(550,35,2,'2014-05-29','si',NULL,'Se documenta también en LO, se da inicio de obra con Supervisor del GAM de Villa Tunari (Ing. Andy Rocabado)',NULL,NULL,NULL,NULL,NULL,'1'),(551,35,3,NULL,'si',NULL,'Nº Planillas:1 (UNA). Contratista Presenta en fecha 24 de julio de 2014',NULL,NULL,NULL,NULL,NULL,'1'),(552,35,4,NULL,'si',NULL,'Se genera la Orden de Cambio 1 por redistribución de volúmenes, se genera una modificación mínima en el monto de -0.16 Bs.',NULL,NULL,NULL,NULL,NULL,'1'),(553,35,5,NULL,'no',NULL,'',NULL,NULL,NULL,NULL,NULL,'1'),(554,35,6,NULL,'si',NULL,'Redistribución de volúmenes de obra, Orden de Cambio 1. Presenta por nota EDRO-CPVVA SUP 002/14 del 19/09/2014. Recibido por supervisor',NULL,NULL,NULL,NULL,NULL,'1'),(555,35,7,NULL,'no',NULL,'',NULL,NULL,NULL,NULL,NULL,'1'),(556,35,10,NULL,'si',NULL,'Nº de contrato: 005/014',NULL,NULL,NULL,NULL,NULL,'1'),(557,35,11,'2014-06-20','si',NULL,'Fecha de conclusión: Hasta recepción definitiva y entrega de informe final. Se establece inicio de funciones mediante comunicación al Contratista vía LO foja 3244 del 20 de junio de 2014',NULL,NULL,NULL,NULL,NULL,'1'),(558,35,15,NULL,'no',NULL,'No corresponde aun. ',NULL,NULL,NULL,NULL,NULL,'1'),(559,35,16,NULL,'no',NULL,'No corresponde aun. ',NULL,NULL,NULL,NULL,NULL,'1'),(560,35,17,NULL,'si',NULL,'1. Desgaste Los Angeles Grava, 2. Dosificación Hormigones H-21, 3.Granulometria Arena y Grava ',NULL,NULL,NULL,NULL,NULL,'1'),(561,35,18,NULL,'si',NULL,'Se presentan copias en los informes de supervisión.',NULL,NULL,NULL,NULL,NULL,'1'),(562,35,19,NULL,'no',NULL,'No corresponde',NULL,NULL,NULL,NULL,NULL,'1'),(563,35,20,NULL,'si',NULL,'Se documenta en formulario de trabajo de campo. Fiscal FPS documenta controles en formulario No 3001004 de fecha 30/07/2014',NULL,NULL,NULL,NULL,NULL,'1'),(564,35,21,NULL,'si',NULL,'Vía Libro de órdenes, entre supervisor y contratista',NULL,NULL,NULL,NULL,NULL,'1'),(565,35,22,NULL,NULL,NULL,'Informe Inicial de Supervisión INF-SUPCPVA-01/2014 de fecha 7 de julio, El informe advierte variación de cantidades y necesidad de adición del Item de protección de gaviones.','Cumple',NULL,NULL,NULL,NULL,'2'),(566,35,23,NULL,NULL,NULL,'','No cumple',NULL,NULL,NULL,NULL,'2'),(567,35,24,NULL,NULL,NULL,'INF-SUPCPVA-02/2014 (7 de julio de 2014), INF-SUPCPVA-03/2014 (4 de agosto de 2014), INF-SUPCPVA-04/2014 (1 de septiembre de 2014)','Cumple',NULL,NULL,NULL,NULL,'2'),(568,35,25,NULL,NULL,NULL,'No presentaron','No cumple',NULL,NULL,NULL,NULL,'2'),(569,35,27,NULL,NULL,NULL,NULL,NULL,NULL,'Cumple','05/06/14, 03/09/14, 04/09/14, 05/09/14, 12/9/14. Laboratorio  de Certificacion de Materiales Facultad de Arquitectura UMSS. Presenta Granulometrias de Arena, Grava, Grav. Espec. De Arena y desgaste de los angeles del Banco Rio Bolivar (sector 1 de mayo) con muestras y datos obtenidos por el Ing. Richard Jaldin. Se actualizan todos los ensayos con muestras del Rio San Mateo (Villa Tunari) para hormigones H-35',NULL,'3'),(570,35,26,NULL,NULL,NULL,NULL,NULL,NULL,'Cumple','07 de junio de 2014 (H-21) 5 de septiembre de 2014 (H-35)/Laboratorio  de Certificación de Materiales Facultad de Arquitectura UMSS. Material del Rio Bolivar (sector 1 de mayo), presenta calculo y dosificación H-21. Para hormigones H-35 el material proviene del Río San Mateo.',NULL,'3'),(571,35,28,NULL,NULL,NULL,NULL,NULL,NULL,'Cumple','Se presentan ensayos de Pilotes 1-4 y roturas de prueba de la dosificacion',NULL,'3'),(572,35,29,NULL,NULL,NULL,NULL,NULL,NULL,'No Cumple','No se realizaron. No se presentan objeciones por parte del Supervisor a la calidad del Acero',NULL,'3'),(573,35,30,NULL,NULL,NULL,NULL,NULL,NULL,'No Aplica','Hasta la fecha no se ejecutaron trabajos con este material.',NULL,'3'),(574,102,1,'2013-10-09','si',NULL,'Numero de contrato: GAMALP 001/2013. Firmado y sellado por las partes.',NULL,NULL,NULL,NULL,NULL,'1'),(575,102,2,'2013-12-30','si',NULL,'Firmado y sellado por las partes',NULL,NULL,NULL,NULL,NULL,'1'),(576,102,3,NULL,'si',NULL,'Nº Planillas: 7 (SIETE)\r\n',NULL,NULL,NULL,NULL,NULL,'1'),(577,102,4,NULL,'si',NULL,'Nº Ordenes de Cambio: 2 (DOS)\r\nOC1 Fecha 23/01/2014 OC 2 Fecha 27/05/2014\r\n',NULL,NULL,NULL,NULL,NULL,'1'),(578,102,5,NULL,'no',NULL,'',NULL,NULL,NULL,NULL,NULL,'1'),(579,102,6,NULL,'no',NULL,'',NULL,NULL,NULL,NULL,NULL,'1'),(580,102,7,NULL,'no',NULL,'',NULL,NULL,NULL,NULL,NULL,'1'),(581,102,10,'2013-06-03','',NULL,'Nº de contrato: C.A.# 008/2013\r\n',NULL,NULL,NULL,NULL,NULL,'1'),(582,102,11,'2013-12-30','si',NULL,'',NULL,NULL,NULL,NULL,NULL,'1'),(583,102,15,'2014-06-24','si',NULL,'Se emiten observaciones de forma',NULL,NULL,NULL,NULL,NULL,'1'),(584,102,16,'2014-09-22','si',NULL,'',NULL,NULL,NULL,NULL,NULL,'1'),(585,102,17,NULL,'no',NULL,'En informes del Supervisor se aprueba la calidad del acero BELGO\r\n',NULL,NULL,NULL,NULL,NULL,'1'),(586,102,18,NULL,'si',NULL,'Rotura de probetas cilindricas de hormigon\r\nReportados en las planillas de avance\r\n',NULL,NULL,NULL,NULL,NULL,'1'),(587,102,19,NULL,'no',NULL,'No corresponde',NULL,NULL,NULL,NULL,NULL,'1'),(588,102,20,NULL,'si',NULL,'',NULL,NULL,NULL,NULL,NULL,'1'),(589,102,21,NULL,'si',NULL,'Via Libro de Ordenes\r\n',NULL,NULL,NULL,NULL,NULL,'1'),(590,102,22,NULL,NULL,NULL,'Informe inicial y revisión al diseño final\r\n\r\n\r\n','Cumple',NULL,NULL,NULL,NULL,'2'),(591,102,23,NULL,NULL,NULL,'Informe de Recepción Provisional\r\n','Cumple',NULL,NULL,NULL,NULL,'2'),(592,102,24,NULL,NULL,NULL,'Informes mensuales Enero-Abril\r\n','Cumple',NULL,NULL,NULL,NULL,'2'),(593,102,25,NULL,NULL,NULL,'Rotura de probetas cilíndricas de hormigón\r\nEn planillas de avance del contratista\r\n','Cumple',NULL,NULL,NULL,NULL,'2'),(594,102,26,NULL,NULL,NULL,NULL,NULL,NULL,'Cumple','30/12/2013/ CEDEX\r\nHormigones H-35 y H-21\r\n',NULL,'3'),(595,102,27,NULL,NULL,NULL,NULL,NULL,NULL,'Cumple','16/12/13/ CEDEX\r\nAgregados rio Punata (Arena y Grava)\r\n',NULL,'3'),(596,102,28,NULL,NULL,NULL,NULL,NULL,NULL,'No Cumple','No se llevo a cabo\r\n',NULL,'3'),(597,102,29,NULL,NULL,NULL,NULL,NULL,NULL,'Cumple','En consideración y aprobación por parte del supervisor\r\n',NULL,'3'),(598,102,30,NULL,NULL,NULL,NULL,NULL,NULL,'Cumple','Fichas de Tesado\r\nFirmadas y selladas por el supervisor de obra en planillas de avance\r\n',NULL,'3'),(599,167,1,NULL,'si',NULL,'',NULL,NULL,NULL,NULL,NULL,'1'),(600,167,2,'2013-07-22','si',NULL,'',NULL,NULL,NULL,NULL,NULL,'1'),(601,167,3,NULL,'si',NULL,'Nº Planillas: DOS (2)\r\n',NULL,NULL,NULL,NULL,NULL,'1'),(602,167,4,NULL,'no',NULL,'',NULL,NULL,NULL,NULL,NULL,'1'),(603,167,5,NULL,'no',NULL,'',NULL,NULL,NULL,NULL,NULL,'1'),(604,167,6,NULL,'no',NULL,'',NULL,NULL,NULL,NULL,NULL,'1'),(605,167,7,NULL,'no',NULL,'',NULL,NULL,NULL,NULL,NULL,'1'),(606,167,10,NULL,'si',NULL,'',NULL,NULL,NULL,NULL,NULL,'1'),(607,167,11,'2013-07-22','si',NULL,'',NULL,NULL,NULL,NULL,NULL,'1'),(608,167,15,NULL,'no',NULL,'No corresponde',NULL,NULL,NULL,NULL,NULL,'1'),(609,167,16,NULL,'no',NULL,'No corresponde',NULL,NULL,NULL,NULL,NULL,'1'),(610,167,17,NULL,'si',NULL,'',NULL,NULL,NULL,NULL,NULL,'1'),(611,167,18,NULL,'si',NULL,'',NULL,NULL,NULL,NULL,NULL,'1'),(612,167,19,NULL,'no',NULL,'',NULL,NULL,NULL,NULL,NULL,'1'),(613,167,20,NULL,'si',NULL,'',NULL,NULL,NULL,NULL,NULL,'1'),(614,167,21,NULL,'si',NULL,'',NULL,NULL,NULL,NULL,NULL,'1'),(615,167,22,NULL,NULL,NULL,'','Cumple',NULL,NULL,NULL,NULL,'2'),(616,167,23,NULL,NULL,NULL,'No existieron','No cumple',NULL,NULL,NULL,NULL,'2'),(617,167,24,NULL,NULL,NULL,'','Cumple',NULL,NULL,NULL,NULL,'2'),(618,167,25,NULL,NULL,NULL,'Dos','Cumple',NULL,NULL,NULL,NULL,'2'),(619,183,1,NULL,'si',NULL,'',NULL,NULL,NULL,NULL,NULL,'1'),(620,183,2,'2013-07-22','si',NULL,'',NULL,NULL,NULL,NULL,NULL,'1'),(621,183,3,NULL,'si',NULL,'Nº Planillas: DOS (2)\r\n',NULL,NULL,NULL,NULL,NULL,'1'),(622,183,4,NULL,'no',NULL,'',NULL,NULL,NULL,NULL,NULL,'1'),(623,183,5,NULL,'no',NULL,'',NULL,NULL,NULL,NULL,NULL,'1'),(624,183,7,NULL,'no',NULL,'',NULL,NULL,NULL,NULL,NULL,'1'),(625,183,10,NULL,'si',NULL,'',NULL,NULL,NULL,NULL,NULL,'1'),(626,183,11,'2013-07-22','si',NULL,'',NULL,NULL,NULL,NULL,NULL,'1'),(627,183,15,NULL,'no',NULL,'No Corresponde',NULL,NULL,NULL,NULL,NULL,'1'),(628,183,16,NULL,'no',NULL,'No Corresponde',NULL,NULL,NULL,NULL,NULL,'1'),(629,183,17,NULL,'si',NULL,'',NULL,NULL,NULL,NULL,NULL,'1'),(630,183,18,NULL,'si',NULL,'',NULL,NULL,NULL,NULL,NULL,'1'),(631,183,19,NULL,'no',NULL,'',NULL,NULL,NULL,NULL,NULL,'1'),(632,183,20,NULL,'si',NULL,'',NULL,NULL,NULL,NULL,NULL,'1'),(633,183,21,NULL,'si',NULL,'',NULL,NULL,NULL,NULL,NULL,'1'),(634,183,22,NULL,NULL,NULL,'','Cumple',NULL,NULL,NULL,NULL,'2'),(635,183,23,NULL,NULL,NULL,'No hubieron','No cumple',NULL,NULL,NULL,NULL,'2'),(636,183,24,NULL,NULL,NULL,'','Cumple',NULL,NULL,NULL,NULL,'2'),(637,183,25,NULL,NULL,NULL,'Dos','Cumple',NULL,NULL,NULL,NULL,'2');
/*!40000 ALTER TABLE `t_ejecucion_etapas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_evaluacion_documentos`
--

DROP TABLE IF EXISTS `t_evaluacion_documentos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_evaluacion_documentos` (
  `evaluacion_documentos_id` int(11) NOT NULL AUTO_INCREMENT,
  `evaluacion_documentos_cumple` varchar(25) CHARACTER SET utf8 COLLATE utf8_spanish_ci DEFAULT NULL,
  `evaluacion_documentos_nro_pagina` varchar(10) DEFAULT NULL,
  `evaluacion_documentos_observaciones` text CHARACTER SET utf8 COLLATE utf8_spanish_ci,
  `evaluacion_docs_id` int(11) DEFAULT NULL,
  `proyecto_id` int(11) DEFAULT NULL,
  `evaluacion_documentos_tipo_proy_reg` varchar(15) DEFAULT NULL,
  PRIMARY KEY (`evaluacion_documentos_id`)
) ENGINE=InnoDB AUTO_INCREMENT=1676 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_evaluacion_documentos`
--

LOCK TABLES `t_evaluacion_documentos` WRITE;
/*!40000 ALTER TABLE `t_evaluacion_documentos` DISABLE KEYS */;
INSERT INTO `t_evaluacion_documentos` VALUES (402,'Cumple','','Carta dirigida a Martín Torrico Ramos Alcalde de Tacopoya en fecha 08/06/2012',1,70,'INVERS'),(403,'No Cumple','','No se presenta el documento en la carpeta de evaluación del proyecto.',2,70,'INVERS'),(404,'No Cumple','','No se presenta el documento en la carpeta de evaluación del proyecto.',3,70,'INVERS'),(405,'Cumple','','El Acta de Certificación de derecho propietario y uso libre de fuente de agua, está firmada por el  Sindicato Agrario Qasa Pata, Muruta, Quinua Chajra y Qewina Qasa en fecha 10/12/2009 , en dciha acta se menciona que los terrenos son propiedad de los comunarios y que se las puede utilizar de forma libre para el proyecto.\r\n',4,70,'INVERS'),(406,'No Cumple','','No se presenta el documento en la carpeta de evaluación del proyecto.',5,70,'INVERS'),(407,'No Cumple','X','No se presenta el documento en la carpeta de evaluación del proyecto.',6,70,'INVERS'),(408,'Cumple','','Se encuentra en el documento',7,70,'INVERS'),(409,'Cumple','','Deficiencia en el dise?o de la obra de captación, por falta de análisis del estudio de la hidrología, así mismo  el componente de la geología es muy deficiente.',8,70,'INVERS'),(410,'Cumple','','Cumple lo establecido en la Guía de Riego Menor',9,70,'INVERS'),(411,'Cumple','','Los planos  topográficos al ser la topografía deficiente no fueron de utilidad,  los planos de detalle constructivo de pasos de quebrada y puentes colgantes son incompletos y debieron ser mejorados, previo análisis y estudio por el Supervisor de Obra.',10,70,'INVERS'),(412,'Cumple','','Cumple lo establecido en la Guía de riego menor, existe un ítem con la denominación de RIP RAP, el cual es muy ambiguo, es conveniente definir y de nominar  adecuadamente cada ítem.',11,70,'INVERS'),(413,'Cumple','','Las Especificaciones técnicas insertadas cumplen con la norma vigente y lo establecido en la Guía de riego menor.',12,70,'INVERS'),(414,'Cumple','','El presupuesto se encuentra de acuerdo al alcance del proyecto',13,70,'INVERS'),(415,'Cumple','','Presenta el cronograma de ejecución adecuado para el tipo de proyecto y Cumple lo establecido en la guía de riego menor.',14,70,'INVERS'),(416,'Cumple','','Sobre el certificado DIA corresponde al N? 030602-12/DRNMA-FA-2932 cd-222/2012 emitido por Ing. Zenón Miranda Ossio de la DRRNN MA de la Gobernación de Cochabamba.',15,70,'INVERS'),(417,'Cumple','','Ing. Carlos Bejarano Quiroz RNI 11692 sept 2009',16,70,'INVERS'),(418,'No Cumple','','El volumen total de H?C?es 247,03 m3, por lo tanto no aplica esta situacion',17,70,'INVERS'),(419,'No Corresponde','','NO aplica',18,70,'INVERS'),(420,'Cumple','','Según el análisis socioeconómico del estudio son cuatro las comunidades beneficiadas por este proyecto: Qasa Pata, Muruta, Quinua Chajra y Qewina Qasa. El total de las familias beneficiarias es de 81, haciendo un total de 340 personas, de las cuales 166 son hombres y 174 mujeres. El estudio brinda información de estabilidad poblacional, composición de la población, tamaño de las familias y el idioma predominante en el municipio, no haciendo referencia al área específica del proyecto. Respecto al acceso a servicios básicos, se menciona que solamente la comunidad Qewiña Qasa no cuenta con ningún tipo de sistema de provisión de agua; si bien las demás comunidades cuentan con agua, ésta no recibe ningún tipo de tratamiento. Ninguna de las comunidades tiene acceso a la red de energía eléctrica. El estudio carece de información importante en el área social, si bien menciona el número de escuelas y centros de salud, no hace referencia al nivel de educación de los beneficiarios, tampoco hace referencia a las enfermedades recurrentes en el lugar ni al tipo de servicio que presentan los centros de salud. El estudio también debió tener más información acerca la realidad social y económica en la que se encuentran las comunidades beneficiarias, por lo que será más dificultoso medir el impacto social del proyecto sobre la calidad de vida de los/as beneficiarios. Según el estudio el costo total del proyecto es de Bs. 1.715.416,19',19,70,'INVERS'),(421,'Cumple','','El informe de evaluación técnica es firmado y evaluado por el  Ing. Carlos Ledezma en fecha 05/07/2012, dicho informe indica que el proyecto es técnicamente factible ya que cumple con todos los criterios técnicos mínimos según exigencias del sector, la evaluación ha sido positiva tanto en gabinete como en la visita a campo. El informe indica que la ejecución del proyecto debe realizarse en 150 días calendario, las especificaciones técnicas están en base a la norma boliviana del hormigón y a las normas específicas de la manipulación de insumos y de ejecución de ítems de la obra.\r\n',20,70,'INVERS'),(422,'Cumple','','El informe de evaluación socioeconómica es firmado y evaluado por el  Ing. Carlos Ledezma en fecha 05/07/2012. Según la categorización del resultado por tipo de indicador, se concluye que todos los indicadores evaluados son positivos, tanto los indicadores socioeconómicos, financieros y los de costo eficiencia. El resultado que se expone en el informe indica que el proyecto es socio-económicamente factible ya que el resultado de la comparación entre los costos referenciales de los diferentes sectores con el costo anual equivalente social y privado brindan valores que demuestran la factibilidad socioeconómica del proyecto.\r\n',21,70,'INVERS'),(423,'Cumple','','El informe de valoración social es firmado y evaluado por el  Ing. Carlos Ledezma en fecha 05/07/2012. De acuerdo al instrumento de valoración social N°4, donde todas las variables estudiadas dan positivas, la categorización del resultados por tipo de variable dan positivas. El resultado de la valoración social según el evaluador, da positivo porque la población de las 4 comunidades formularon el proyecto mediante consenso social tomando en cuenta que el proyecto mejorará las condiciones de la producción y de su calidad de vida. El formulario utilizado para esta evaluación e encuentra dentro de la carpeta, firmado y llenado por los representantes de la cada comunidad.\r\n',22,70,'INVERS'),(424,'Cumple','','El informe de evaluación ambiental es firmado y evaluado por el  Ing. Carlos Ledezma en fecha 05/07/2012. El informe da cuenta de todos los documentos ambientales que se han presentado, por lo que el informe concluye que el proyecto evaluado es ambientalmente positivo y recomienda que se comunique al gobierno municipal que tiene la obligación de cumplir con lo establecido en la licencia ambiental del proyecto reflejado en la matriz de medidas de mitigación ambiental.\r\n',23,70,'INVERS'),(425,'Cumple','','El informe de valoración institucional es firmado y evaluado por el  Ing. Carlos Ledezma en fecha 05/07/2012. De acuerdo a los rangos de valoración institucional el resultado es positivo, por lo tanto el proyecto es institucionalmente factible, ya que según el informe del evaluador la alcaldía de Tacopaya cuenta con una estructura organizacional, aplicación de funciones y sistema SAFCO, capacidad fiscal, capacidad para encarar la operación y mantenimiento del proyecto. El cuestionario aplicado se encuentra dentro de la carpeta llenado y firmado por el alcalde de Tacopaya Martín Torrico Ramos.\r\n',24,70,'INVERS'),(426,'Cumple','','El informe de visita de campo es firmado y evaluado por el  Ing. Carlos Ledezma en fecha 05/07/2012. Según el informe la ubicación del proyecto es coherente con lo descrito en la memoria, lo mismo sucede con los planos de la topografía del proyecto. Respecto a la verificación social, se indica que los pobladores que han sido entrevistados ven una necesidad urgente de que el proyecto se lleve a cabo ya que mejorará su economía y al mismo tiempo su nivel de vida. El resultado del informe indica que en la visita de campo no se encontraron observaciones y se recomienda ejecutar la obra en época de estiaje. Las fotograficas de la visita a campo se encuentran dentro de la carpeta.\r\n',25,70,'INVERS'),(427,'Cumple','','El dictamen final de la evaluación integral está firmado y evaluado por el  Ing. Carlos Ledezma en fecha 05/07/2012. el informe indica que el total de familias beneficiadas con el proyecto son 81, que son conformadas por 405 personas, 190 hombres y 215 mujeres. El monto solicitado es de 1.715.416,19bs y el evaluado (superior) 1.891.139,90bs. Dicho presupuesto se lo debe dividir de la siguiente manera: el 85% (Bs. 1.607.468,90) lo debe asumir el financiador, y la contraparte del 15% (Bs. 283.670,99) la alcaldía. El informe indica que los seis ámbitos de evaluación resultan positivos, por lo que el dictamen final señala que el proyecto es viable ya que prevé el óptimo uso de la infraestructura de riego para cumplir con los objetivos planteados en el estudio que fueron verificados tanto en campo como en gabinete.\r\n',26,70,'INVERS'),(428,'No Cumple','X','No se presenta el documento en la carpeta de evaluación del proyecto.',27,70,'INVERS'),(429,'No Cumple','X','No se presenta el documento en la carpeta de evaluación del proyecto.',28,70,'INVERS'),(430,'Cumple','','El 23/08/12 se realiza el acta de cierre del proyecto en su etapa de evaluación, donde se indica que se hace entrega de toda la documentación (15 ítems) revisada y aprobada por el evaluador. El acta es firmada por Mario Severich (Jefe técnico) y el ing. Carlos Ledezma (Profesional técnico evaluador)\r\n',29,70,'INVERS'),(431,'Cumple','','La fecha del reporte del presupuesto es 7/8/12, donde se detalla que el presupuesto es de Bs. 1891.139,90 desglosado de la siguiente manera: Infraestructura: Bs.1.746.139,90. Asistencia técnica: Bs. 65.000,00 y Supervisión: 80.000,00.\r\n',30,70,'INVERS'),(432,'Cumple','','La fecha del reporte del presupuesto a detalle es 7/8/12, donde se desglosa el presupuesto total de Bs. 1.891.139,90 en 10 módulos.\r\n',31,70,'INVERS'),(433,'Cumple','','La fecha del reporte explosión de insumos es 7/8/12, el reporte señala que el monto total asignado es de Bs. 1.408.742,08 a tipo de cambio 6,86.\r\n',32,70,'INVERS'),(434,'Cumple','','La fecha del reporte de precios unitarios es 7/8/12, donde se encuentran el detalle de los 10 módulos.\r\n',33,70,'INVERS'),(435,'No Cumple','X','No se presenta el documento en la carpeta de evaluación del proyecto.\r\n',34,70,'INVERS'),(436,'Cumple','X','La fecha del informe de evaluación es 7/8/12, según el informe el total de los beneficiarios es de 340 personas, el número es inferior al que figura en el IDIF. El informe muestra datos específicos del proyecto, da cuenta de los indicadores socioeconómicos, sin embargo no se encuentra firmado por ninguna autoridad.\r\n',35,70,'INVERS'),(437,'Cumple','','La fecha del reporte de la matriz de cofinanciamiento es 7/8/12,figuran dos matrices una en moneda nacional y la otra en dólares. El monto que total que figura en la matriz es de Bs. 1.891.139,91. En infraestructura el financiador aporta con el 85% que significa Bs.1.484.218,92, el GAMT con el 15% que hace un total de Bs261.920,99. Asistencia técnica el financiador aporta con el 85% que significa Bs.55.250,00, el GAMT con el 15% que hace un total de Bs9.750,00. Y en supervisión el financiador aporta con el 85% que significa Bs.68.000,00, el GAMT con el 15% que hace un total de Bs12.000,00\r\n',36,70,'INVERS'),(438,'','','',37,70,'INVERS'),(439,'Cumple','','14/8/2012',38,70,'INVERS'),(440,'Cumple','','Resolución de aprobación del CTF N?076/2012',39,70,'INVERS'),(441,'Cumple','','Construcción Sistema de Microriego Sisaqueña',40,70,'INVERS'),(442,'Cumple','','1.607.468,92',41,70,'INVERS'),(443,'Cumple','','283.670,99',42,70,'INVERS'),(444,'','','',43,70,'INVERS'),(445,'Cumple','','(1ER-03)-03-024-12',44,70,'INVERS'),(446,'Cumple','','03/08/2012',45,70,'INVERS'),(447,'Cumple','','Bs1.607.468,92',46,70,'INVERS'),(448,'Cumple','','Bs283.670,99',47,70,'INVERS'),(449,'','','',48,70,'INVERS'),(450,'Cumple','','(1ER-03)-03-024-12',49,70,'INVERS'),(451,'Cumple','','08/03/2012',50,70,'INVERS'),(452,'Cumple','','Bs1.607.468,92',51,70,'INVERS'),(453,'Cumple','','Bs283.670,99',52,70,'INVERS'),(455,'Cumple','343','Dentro del estudio a diseño final, se puede evidenciar información acerca de las características socioeconómicas de la población beneficiaria por el proyecto. Donde se señala que la comunidad Condor Pata tiene 463 habitantes nucleados 107 familias mientras que la otra comunidad beneficiaria La Habana, tiene 333 habitantes nucleados en 78 familias. También e observa información sobre el origen de la población beneficiaria, el idioma que se habla, la cantidad de tierras cultivadas y no cultivadas en hectáreas y el nivel de ingresos aproximado de la población beneficiaria. Dentro el estudio también se hace referencia a la disponibilidad de servicios básicos en las comunidades. La comunidad de Condor Pata no tiene acceso a energía eléctrica; sin embargo la comunidad de la Habana sí. El acceso al agua es uniforme, ambas comunidades cuentan con una red de agua potable. Respecto a la variable de educación, el informe se encuentra completo, ya que muestra el nivel de educación alcanzado por los jefes de familia de ambas comunidades, donde se puede observar que la mayoría solo alcanzaron a cursas el nivel primario. En cuanto a salud, el informe carece de información acerca de los centros de salud en la zona y las enfermedades más recurrentes de sus pobladores. El análisis socioeconómico del proyecto está completo, sin embargo hubiera sido interesante ver datos sobre natalidad y mortalidad. El monto final del presupuesto es 572.787,48 bs.',1,1,'INVERS'),(456,'No Cumple','11','dfdf',2,1,'INVERS'),(457,'No Cumple','11','dfdf',2,1,'INVERS'),(458,'No Cumple','2','dfdf',3,1,'INVERS'),(459,'Cumple','2','fdfd',2,1,'INVERS'),(476,'Cumple','1','En fecha 01/03/2012, mediante carta CITE GAMP N? 047/2012, el alcalde de Poroma, Felipe Choque; solicita a la Ministra de Planificación del Desarrollo, Viviana Caro, la inclusión del proyecto en el programa Plan Vida KfW1.',1,22,'INVERS'),(477,'Cumple','1','En fecha 16/07/3023, el alcalde de Poroma, env?a un acta de compromiso del Gobierno Municipal al FPS,  comprometiéndose a cumplir con los aportes de contraparte requeridos para la ejecución del proyecto, y a su su vez autoriza al ministerio de Hacienda a ',2,22,'INVERS'),(478,'No Cumple','0','No se presenta el documento en la carpeta de evaluación del proyecto.',3,22,'INVERS'),(479,'No Cumple','0','No se presenta el documento en la carpeta de evaluación del proyecto.',4,22,'INVERS'),(480,'Cumple','1','En fecha 16/07/12, el alcalde de Poroma, envía un acta de compromiso del Gobierno Municipal al FPS, comprometiéndose a impulsar la conformación de un comité impulsor del proyecto para su administración, operación y mantenimiento del mismo, después de la recepción definitiva de la misma.',55,22,'INVERS'),(481,'Cumple','66','Se cuenta con la carpeta completa del proyecto TESA.',6,22,'INVERS'),(482,'Cumple','37','Tanto los aspectos sociales, culturales, demográficos, etc. se encuentran contemplados en este punto.',7,22,'INVERS'),(483,'Cumple','24','Se realiza una propuesta técnica del proyecto y una evaluación de la misma y en anexos se complementa todo el cálculo del mismo.  El mismo no cuenta con la firma del responsable.',8,22,'INVERS'),(484,'Cumple','1','Dentro de la propuesta se presenta no solamente la ubicación exacta del proyecto, sino de los accesos y los medios de comunicación que acceden al lugar de emplazamiento del proyecto.',9,22,'INVERS'),(485,'Cumple','13','Dentro de la propuesta se cuenta con un estudio topográfico de toda la zona donde se emplazará el proyecto.',10,22,'INVERS'),(486,'Cumple','15','SE ha creado el an?lisis de precios unitarios de cada uno de los ítems involucrados en el proyecto.',11,22,'INVERS'),(487,'Cumple','33','Se cuenta con las especificaciones técnicas de todos los ?tems involucrados en el proyecto.',12,22,'INVERS'),(488,'Cumple','1','Puesto que se cuenta con un solo elemento del cual depende el proyecto, también se cuenta con un solo presupuesto general.',13,22,'INVERS'),(489,'Cumple','2','Se creo un cronograma general dividido en items,  por meses y semanas.  ',14,22,'INVERS'),(490,'Cumple','15','Se cuenta con la ficha ambiental con su respectiva evaluación y firma de aprobación.',15,22,'INVERS'),(491,'Cumple','12','Si bien no se especifica un registro de profesionales registrados en la SIB se ha podido corroborar que todos los profesionales implicados cuentan con un registro.',16,22,'INVERS'),(492,'Cumple','1','Los volúmenes a utilizarse en el proyecto implica un movimiento de agregados mayores a los 500 M3.',17,22,'INVERS'),(493,'Cumple','1','En el proyecto no se registra un análisis de explotación de áridos que se base en las leyes mencionadas.',18,22,'INVERS'),(494,'Cumple',NULL,'fdsf sdfmod',1,1,'INVERS'),(495,'Cumple',NULL,'La solicitud de financiamiento se la realiza en fecha 06/08/2012',1,183,'INVERS'),(497,'No Cumple',NULL,'No se presenta el documento en la carpeta de evaluación del proyecto.',2,183,'INVERS'),(498,'No Cumple',NULL,'No se presenta el documento en la carpeta de evaluación del proyecto.',3,183,'INVERS'),(499,'Cumple',NULL,'',1,184,'PRE-INV'),(500,'Cumple',NULL,'En fecha 05/07/2012; mediante carta ; el alcalde de Tarvita, Agr. Wilfredo Ipi?a Alcoba; solicita a la Ministra de Planificación del Desarrollo, Viviana Caro, la incluisón del proyecto en el programa Plan Vida KfW1',1,16,'INVERS'),(501,'No Cumple',NULL,'No se presenta el documento en la carpeta de evaluación del proyecto.',2,16,'INVERS'),(502,'Cumple',NULL,'En fecha 24/04/12, mediante carta con cite N°JT/CHQ/009/2012, el Jefe Técnico del FPS Chuquisaca, Ing. Carmelo Valda, asigna al Ing. Juan Pablo Díaz para ser el evaluador del presente proyecto.  Bajo la consigna de que el comité técnico debía ser el 03/05/12',3,16,'INVERS'),(503,'No Cumple',NULL,'No se presenta el documento en la carpeta de evaluación del proyecto.',4,16,'INVERS'),(504,'Cumple',NULL,'Presenta una carta del Alcalde de Tarvita, dirigida al FPS, dónde se compromete a impulsar la conformación del comité impulsor del proyecto para garantizar la buena operación y mantenimiento de las obras, después de la recepción definitiva de las mismas.  En la misma se puede encontrar como descargo, un acta de similar importancia firmada por los beneficiarios directos del proyecto.\r\n',55,16,'INVERS'),(505,'Cumple',NULL,'La carpeta ha sido entregada con todos los estudios necesarios para ser aprobado.',7,16,'INVERS'),(506,'Cumple',NULL,'presenta todos los calculos necesarios para su aprobacion',8,16,'INVERS'),(507,'Cumple',NULL,'En el estudio En el estudio Socioeconomico se detalla la ubicación geográfica del proyecto. ',9,16,'INVERS'),(508,'Cumple',NULL,'Se detalla la ubicación precisa de cada una de las obras a través de planos topográficos.',10,16,'INVERS'),(509,'Cumple',NULL,'El proyecto cuenta con el Análisis de Precios unitarios de cada uno de los items que se usaran en la obra.',11,16,'INVERS'),(510,'Cumple',NULL,'Se cuenta con especificaciones técnicas por item.',12,16,'INVERS'),(512,'Cumple',NULL,'Se cuenta tanto con un presupuesto general así como con un presupuesto desglosado por mano de obra, maquinaria y equipo.',13,16,'INVERS'),(513,'Cumple',NULL,'Se cuenta con un cronograma general el cual deberia ser desglosado',14,16,'INVERS'),(514,'No Cumple',NULL,'No se tuvo acceso a dicha documentación',15,16,'INVERS'),(515,'Cumple',NULL,'Si bien no existe un registro de los profesionales participantes en el proyecto, se puede corroborar que todos cuentan con su respectivo registro en la SIB',16,16,'INVERS'),(516,'No Corresponde',NULL,'El proyecto no registra movimientos de volumenes mayores al mencionado',17,16,'INVERS'),(517,'No Cumple',NULL,'No se cuenta con un estudio comparativo que certifique que se esta ateniendo a las mencionadas leyes.',18,16,'INVERS'),(520,'Cumple',NULL,'Los objetivos del proyecto son de aumentar la calidad de vida de los pobladores de la comunidad de Tarea Pampa, proporcionándoles mayores facilidades para la producción agrícola, contribuyendo a mejorar su dieta alimentaria nutricional y a la generación de excedentes para la comercialización e incrementar sus ingresos económicos.  El presupuesto total evaluado es de Bs. 2.519.653,74.  (85% por parte del financiador, y 15% por contraparte del municipio).  Se deben utilizar 60 días calendario par a su ejecución.  El presupuesto evaluado en la descripción técnica del proyecto es de Bs. 2.317.303,77.  El resultado de la evaluación técnica muestra que el proyecto es ELEGIBLE, puesto que cumple con las condiciones anotadas en el Manual de Evaluación del Plan Vida para sistemas de riego grenajes, canalizaciones y protección y mitigación de riesgo.  También concluye que se revisó los Precios Unitarios de cada item y el presupuesto general; por lo que concluye entonces que el proyecto cumple con los requisitos para su aprobación y ejecución.  Firma esta evaluación el Ing. Juan Pablo Días Vargas (10/09/12).',20,16,'INVERS'),(521,'Cumple',NULL,'No existen planillas parametrizadas que respalden la evaluación  socioeconómica.  Aunque, si bien, se calificará al proyecto con una categoría de evaluación socioeconómica positiva; las casillas de los indicadores están vacías; por lo que al final el evaluador se ampara en que es un proyecto de emergencia y que por ende, se asumen las variables socioeconómicas como positivas; cosa que no es real debido a la evaluación que se muestra en el punto 4.14 del presente formulario. Firma esta evaluación el Ing. Juan Pablo Días Vargas (10/09/12).',21,16,'INVERS'),(522,'Cumple',NULL,'Los resultados del cuadro de valoración Social son positivos, por tanto el proyecto es socialmente factible, ya que existe consenso social, acceso a servicios, equidad social, capital social y control social en la zona.  Firma esta evaluación el Ing. Juan Pablo Días Vargas (10/09/12).',22,16,'INVERS'),(523,'Cumple',NULL,'El proyecto no tendrá ningún  impacto ambiental negativo que merezca consideración.  Firma esta evaluación el Ing. Juan Pablo Días Vargas (10/09/12).',23,16,'INVERS'),(524,'Cumple',NULL,'Esta valoración se la hizo conjuntamente entre el Ing. Díaz y el Alcalde Miunicipal, Wilfredo Ipiña, y el Oficial Mayo Administrativo, Reynaldo Cruz.  La valoración es positiva en cuanto a los proyectos de riego, ya que la valoración da un resultado de 13, siendo que esta tiene que estar entre un 8 y un 18 de puntuación; por lo que la categoría de la valoración institucional es A.   El resultado de la valoración, de acuerdo al Cuestionario Institucional, es positivo, respaldado por dirigentes comunarios, autoridades comunales, miembros de la GAMT, lo que garantiza la ejecución del proyecto y su factibildiad apoyada econ toda la institucionalidad indispensable para este tipo de obras.  Cabe recalcar que ninguna de estos dirigentes comunarios ni autoridades comunales firman el cuestionario de Valoración Social.   Firma esta evaluación el Ing. Juan Pablo Días Vargas (10/09/12).\r\n',24,16,'INVERS'),(525,'Cumple',NULL,'Existe el informe , en formato IVC, pero no se encuentran las fotos del lugar. En la visita de campo se verificaron los criterios generales de elegibilidad, presentados anteriormente; haciendo la recomendación de que exista un compromiso de parte de los beneficiarios en sentido de invertir recursos y esfuerzos en el mantenimiento de la estrucutra para su óptimo funcionamiento y producción. Firma esta evaluación el Ing. Juan Pablo Días Vargas (10/09/12).\r\n',25,16,'INVERS'),(526,'Cumple',NULL,'La construcción del Sistema de Microriego de la Comunidad Tarea Pampa - Pata Tarea son parte importante del sustento de vida de esta comunidad.  Existen 46 familias y una población de 185 habitantes.  El monto solicitado es de $us. 2.519.653,74.  Tiene una duración de 240 días calendario.  La fuente nombrada es BID, pero en realidad es KfW.  El dictamen final de la evaluación integral es el siguiente: realizada la evaluación ex-ante del proyecto, y luego de haber verificado y revisado el cumplimiento de elegibilidad definido por las normas del FPS, junto con los resultados en todos los ámbitos de evaluación , se recomienda la \"Aprobación\" del financiamiento para la ejecución correspondiente.   Firma esta evaluación el Ing. Juan Pablo Díaz Vargas (como evaluador) y el Ing, Orlando Reyes Llanque (como jefe de seguimiento) en fecha 10/09/12.\r\n',26,16,'INVERS'),(527,'Cumple',NULL,'Se encuentra presente dentro del TESA.',27,16,'INVERS'),(528,'Cumple',NULL,'El presupuesto total evaluado es de Bs. 2.519.653,74.  (85% por parte del financiador, y 15% por contraparte del municipio).  Se deben utilizar 60 días calendario par a su ejecución.  ',28,16,'INVERS'),(529,'Cumple',NULL,'En fecha 05/04/13, Los Ing Juan Pablo Díaz Vargas (Técnico Evaluador) y Orlando Reyes (Jefe Técnico) firman el acta de cierre del proyecto (etapa de evaluación); la cuál detalla que toda la documentación se encuentra en la carpeta (15 items).  Además existe la conformidad con el contenido de la presente acta y con la certificación de la conclusión del procedimiento previsto para el cierre de proyectos.        \r\n',29,16,'INVERS'),(530,'Cumple',NULL,'Existen dos versiones del presupuesto manejado en este informe, una de Bs. 2.519.653,74 ó $us. 367.296,46; y la otra de  Bs. 2.733.149,84 ó $us. 370.758,27.',30,16,'INVERS'),(531,'Cumple',NULL,'Se encuentra presente',31,16,'INVERS'),(532,'Cumple',NULL,'La explosión de insumos maneja un dato total de Bs. 1.915.487,7. a un tipo de cambio de Bs. 6,86/$us.',32,16,'INVERS'),(533,'Cumple',NULL,'El presente análisis de precios unitarios difiere de los del TESA. Por las actualizaciones y mejoras que se le pudieron dar a estos durante el período de evaluación.',33,16,'INVERS'),(534,'No Cumple',NULL,'No presenta como un capítulo aparte pero es similar al punto 19',34,16,'INVERS'),(535,'Cumple',NULL,'Maneja el presupuesto registrado para inversión de Bs. 2.327.343,71.  Evalúa a 0 hectáreas incrementales. Una duración de 120 días.  Hombres: 90. Mujeres: 95. No se muestran los empleos a generar.  No existen ninguno de los indicadores socioeconómicos. El objetivo superior es coadyuvar a mejorar la calidad de vida de los pobladores, mejorando la producción.  El objetivo del proyecto mejorar la producción y economía de la comunidad a través de la construcción de un sistema de microriego. La justificación del mismo es un proyecto que conste en al construcción de un sistema de riego que consta de una obra de toma tipo azud de H°C°, la red de aducción de tubería D=8\" clase 6 L = 5207 M, red de distribución de tubería D=6\" clase 6 L=2163 M, tanque de almacenamiento de 40 M3.  Obra de arte como sifones 25 cámaras departidoras con sus respectivos hidrantes.  Se requiere un Estudio de Medidas de mitigación e impactos ambientales y un plan de monitoreo ambiental. Se encuentra dentro del programa Bolivia Productiva - Transportes.  El Subprograma Oeste - Este.  Subsubprograma: Construcción y Mejoramiento de las redes departamentales camineras.  Firman: Ing. Juan Pablo Días Vargas (Especialista Riegos - FPS - Evaluador) y el Ing. Orlando Reyes Llanque (Jefe de seguimiento a.i. - FPS - Jefe de Evaluación); no se distingue la fecha de esta firma.\r\n',35,16,'INVERS'),(536,'Cumple',NULL,'Muestra que el proyecto registrado para inversión tiene un valor de $us. 370.758,27; y un proyecto asignado en evaluación de $us. 367.296,46. En ambos casos existen un 85% del monto total correspondiente del financiador; y  un 15% del monto total correspondiente a la Contraparte Municipal.\r\n',36,16,'INVERS'),(537,'No Cumple',NULL,'No se presenta el documento en la carpeta de evaluación del proyecto.',37,16,'INVERS'),(538,'No Cumple',NULL,'No se presenta el documento en la carpeta de evaluación del proyecto.',38,16,'INVERS'),(539,'No Cumple',NULL,'No se presenta el documento en la carpeta de evaluación del proyecto.',39,16,'INVERS'),(540,'No Cumple',NULL,'No se presenta el documento en la carpeta de evaluación del proyecto.',40,16,'INVERS'),(541,'No Cumple',NULL,'No se presenta el documento en la carpeta de evaluación del proyecto.',41,16,'INVERS'),(547,'No Cumple',NULL,'No se presenta el documento en la carpeta de evaluación del proyecto.',42,16,'INVERS'),(548,'Cumple',NULL,'Nº 018/2012 ',44,16,'INVERS'),(549,'Cumple',NULL,'10 de septiembre de 2012',45,16,'INVERS'),(550,'Cumple',NULL,'2.141.705,68',46,16,'INVERS'),(551,'Cumple',NULL,'377.948,06',47,16,'INVERS'),(552,'Cumple',NULL,'Nº 007/2012 ',49,16,'INVERS'),(553,'Cumple',NULL,'13 de septiembre de 2012',50,16,'INVERS'),(554,'Cumple',NULL,'2.141.705,68',51,16,'INVERS'),(555,'Cumple',NULL,'377.948,06',52,16,'INVERS'),(556,'Cumple',NULL,'La evaluación socioeconómica, muestra que los habitantes de la zona de influencia llegan a ser 57. Entrega un informe pormenorizado de los aspectos productivos, demográficos y sociales de la zona. Los costos de producción presentados en el TESA difieren d',53,16,'INVERS'),(557,'Cumple',NULL,'Los indicadores Financieros, muestran que no es un proyecto rentable a este nivel; ya que si bien el VAN es positivo; la TIR o llega a la tasa esperada, cosa entendible en cualquier proyecto de índole social, pese a que su RBC es 1,25.  Por otra parte, lo',54,16,'INVERS'),(558,'Cumple',NULL,'En fecha 01/03/2012; mediante carta CITE GAMP/DESPACHO N° 0471/2012; el alcalde de Presto, Felipe Ortuño; solicita a la Ministra de Planificación del Desarrollo, Viviana Caro, la inclusión del proyecto en el programa Plan Vida KfW1',1,13,'INVERS'),(559,'Cumple',NULL,'En fecha 05/04/12, el alcalde de Presto, envía un acta de compromiso del Gobierno Municipal al FPS, comprometiéndose a cumplir con los aportes de contraparte requeridos para la ejecución del proyecto, y a su vez autoriza al ministerio de Hacienda a pignor',2,13,'INVERS'),(560,'No Cumple',NULL,'No se presenta el documento en la carpeta de evaluación del proyecto.',3,13,'INVERS'),(561,'No Cumple',NULL,'No se presenta el documento en la carpeta de evaluación del proyecto.',4,13,'INVERS'),(562,'Cumple',NULL,'En fecha 05/04/12, el alcalde de Presto, envía un acta de compromiso del Gobierno Municipal al FPS, comprometiéndose a impulsar la conformación de un comité impulsor del proyecto para su administración, operación y mantenimiento del mismo, después de la r',55,13,'INVERS'),(563,'Cumple',NULL,'Presenta y detalla todas las características básicas del proyecto.',7,13,'INVERS'),(564,'Cumple',NULL,'Contiene todo el análisis técnico del proyecto visto desde distintas áreas.',8,13,'INVERS'),(565,'Cumple',NULL,'Especifica no solamente la ubicación si no también coordenadas, accesos, etc.',9,13,'INVERS'),(566,'Cumple',NULL,'Se encuentra detallado en la propuesta aprobada.',10,13,'INVERS'),(567,'Cumple',NULL,'En los anexos del proyecto se tiene un análisis pormenorizado de cada uno de los items involucrados en el proyecto.',11,13,'INVERS'),(568,'Cumple',NULL,'En los anexos se cuenta con una especificación por item.',12,13,'INVERS'),(569,'Cumple',NULL,'Se cuenta en el proyecto con toda la estructura presupuestaria para materializar la obra.',13,13,'INVERS'),(570,'Cumple',NULL,'En anexos se cuenta con un cronograma detallado mensual y semanal',14,13,'INVERS'),(571,'No Cumple',NULL,'A tiempo de la presentación del proyecto no se proceso ficha ambiental alguna si bien se encuentra dentro del indice el acapite se encuentra vacío.',15,13,'INVERS'),(572,'Cumple',NULL,'Si bien no existe un detalle donde se especifica la inscripción de todos los técnicos involucrados, se puede corroborar que todos esta inscritos en la SIB.',16,13,'INVERS'),(573,'No Cumple',NULL,'No existe un extracto de movimiento de agregados diarios.',17,13,'INVERS'),(574,'No Cumple',NULL,'No existe ningun acapite donde se especifique o se considere que el movimiento de tierras este sujeta a las leyes mencionadas',18,13,'INVERS'),(575,'Cumple',NULL,'En el TESA se habla de 22 familias beneficiadas, un área de influencia de 29,22 ha y un área de riego incremental de 20 ha. Se habla de un presupuesto general de $87.033,84.  El estudio hace referencia directamente a los aspectos económicos y productivos ',53,13,'INVERS'),(576,'Cumple',NULL,'En el análisis financiero y socioeconómico, se puede observar que el mismo se basa directamente en el criterio del VANS positivo, siendo que a nivel TESA los criterios que definen la recomendación de inversión son los Índices Costo Eficiencia, en el caso ',54,13,'INVERS'),(577,'No Cumple',NULL,'No se presenta el documento en la carpeta de evaluación del proyecto.',20,13,'INVERS'),(578,'No Cumple',NULL,'No se presenta el documento en la carpeta de evaluación del proyecto.',21,13,'INVERS'),(579,'Cumple',NULL,'Positiva. Firmada por los representantes de la subcentral de trabajadores campesinos de Aramasi, en fecha 5/04/12; y evaluada por el Ing. Juan Coronado A.',22,13,'INVERS'),(580,'No Cumple',NULL,'No se presenta el documento en la carpeta de evaluación del proyecto.',23,13,'INVERS'),(581,'Cumple',NULL,'Positiva.  Firmada por el Alcalde Municipal. Felipe Ortu?o; y por el Oficial Mayor Administrativo, Milton Echalar.',24,13,'INVERS'),(582,'No Cumple',NULL,'No se presenta el documento en la carpeta de evaluación del proyecto.',25,13,'INVERS'),(583,'No Cumple',NULL,'No se presenta el documento en la carpeta de evaluación del proyecto.',26,13,'INVERS'),(584,'Cumple',NULL,'Presente en el documento TESA',27,13,'INVERS'),(585,'No Cumple',NULL,'No se presenta el documento en la carpeta de evaluación del proyecto.',28,13,'INVERS'),(586,'Cumple',NULL,'En fecha 5/12/12, Los Ing Juan Pablo Díaz Vargas (Técnico Evaluador) y Orlando Reyes (Jefe Técnico) firman el acta de cierre del proyecto (etapa de evaluación); la cuál detalla que toda la documentación se encuentra en la carpeta (15 items).  Además exist',29,13,'INVERS'),(587,'Cumple',NULL,'17/09/12.  Presupuesto de Bs. 887.109,75',30,13,'INVERS'),(588,'Cumple',NULL,'17/09/12.  Presupuesto de Bs. 887.109,75; divido en 6 módulos.',31,13,'INVERS'),(589,'No Cumple',NULL,'No se presenta el documento en la carpeta de evaluación del proyecto.',32,13,'INVERS'),(590,'Cumple',NULL,'Precios Unitarios de actividades del proyecto para 22 de estas.',33,13,'INVERS'),(591,'No Cumple',NULL,'No se presenta el documento en la carpeta de evaluación del proyecto.',34,13,'INVERS'),(592,'No Cumple',NULL,'No se presenta el documento en la carpeta de evaluación del proyecto.',35,13,'INVERS'),(593,'Cumple',NULL,'17/09/12.  Presupuesto de Bs. 887.109,75.  dónde existen Bs. 806.463,55 destinados a la infraestructura (con participación del 85% por parte del FPS como financiador; y del 15% como contraparte del gobierno municipal de Presto Bs. 40.323,11 como capacitac',36,13,'INVERS'),(594,'No Cumple',NULL,'No se presenta el documento en la carpeta de evaluación del proyecto.',37,13,'INVERS'),(595,'No Cumple',NULL,'No se presenta el documento en la carpeta de evaluación del proyecto.',38,13,'INVERS'),(596,'No Cumple',NULL,'No se presenta el documento en la carpeta de evaluación del proyecto.',39,13,'INVERS'),(597,'No Cumple',NULL,'No se presenta el documento en la carpeta de evaluación del proyecto.',40,13,'INVERS'),(598,'No Cumple',NULL,'No se presenta el documento en la carpeta de evaluación del proyecto.',41,13,'INVERS'),(599,'No Cumple',NULL,'No se presenta el documento en la carpeta de evaluación del proyecto.',42,13,'INVERS'),(600,'Cumple',NULL,'N. 018 / 2012',44,13,'INVERS'),(601,'Cumple',NULL,'10/09/2012',45,13,'INVERS'),(602,'Cumple',NULL,'754.043,29',46,13,'INVERS'),(603,'Cumple',NULL,'133.066,46',47,13,'INVERS'),(604,'Cumple',NULL,'N. 017 / 2012',49,13,'INVERS'),(605,'Cumple',NULL,'13/09/2012',50,13,'INVERS'),(606,'Cumple',NULL,'754.043,29',51,13,'INVERS'),(607,'Cumple',NULL,'133.066,46',52,13,'INVERS'),(608,'',NULL,'',6,13,'INVERS'),(609,'Cumple',NULL,'La evaluación muestra que existen 683 habitantes (166 familias). Da una visión de las fortalezas y debilidades de la zona beneficiada en los aspectos demográficos, de educación, de salud, y los aspectos productivos y económicos de la misma.',53,22,'INVERS'),(610,'Cumple',NULL,'Los indicadores Financieros, muestran que no es un proyecto rentable a este nivel; cosa entendible en cualquier proyecto de índole social.  Por otra parte, los indicadores sociales muestran un VANS positivos y una TIRS de 12,90%, superior a la establecida',54,22,'INVERS'),(611,'No Cumple',NULL,'No se presenta el documento en la carpeta de evaluación del proyecto.',20,22,'INVERS'),(612,'No Cumple',NULL,'No se presenta el documento en la carpeta de evaluación del proyecto.',21,22,'INVERS'),(613,'No Cumple',NULL,'No se presenta el documento en la carpeta de evaluación del proyecto.',22,22,'INVERS'),(614,'No Cumple',NULL,'No se presenta el documento en la carpeta de evaluación del proyecto.',23,22,'INVERS'),(615,'No Cumple',NULL,'No se presenta el documento en la carpeta de evaluación del proyecto.',24,22,'INVERS'),(616,'No Cumple',NULL,'No se presenta el documento en la carpeta de evaluación del proyecto.',25,22,'INVERS'),(617,'No Cumple',NULL,'No se presenta el documento en la carpeta de evaluación del proyecto.',26,22,'INVERS'),(618,'No Cumple',NULL,'No se presenta el documento en la carpeta de evaluación del proyecto.',27,22,'INVERS'),(619,'No Cumple',NULL,'No se presenta el documento en la carpeta de evaluación del proyecto.',28,22,'INVERS'),(620,'Cumple',NULL,'En fecha 5/12/12, Los Ing Ariel Zeballos (Técnico Evaluador) y Orlando Reyes (Jefe Técnico) firman el acta de cierre del proyecto (etapa de evaluación); la cuál detalla que toda la documentación se encuentra en la carpeta (15 items).  Además existe la conformidad con el contenido de la presente acta y con la certificación de la conclusión del procedimiento previsto para el cierre de proyectos.        \r\n',29,22,'INVERS'),(621,'No Cumple',NULL,'No se presenta el documento en la carpeta de evaluación del proyecto.',30,22,'INVERS'),(622,'Cumple',NULL,'El presupuesto que se maneja en este análisis es el de $us. 257.572,61 (el cuál es el presupuesto del proyecto asigando en Evaluación)',31,22,'INVERS'),(623,'No Cumple',NULL,'No se presenta el documento en la carpeta de evaluación del proyecto.',32,22,'INVERS'),(624,'Cumple',NULL,'Se encuentra dentro del documento',33,22,'INVERS'),(625,'No Cumple',NULL,'No se presenta el documento en la carpeta de evaluación del proyecto.',34,22,'INVERS'),(626,'Cumple',NULL,'Maneja el presupuesto registrado para inversión ($us. 253.634,55)  Evalua a 27 km construidos. Una duración de 120 días.  Hombres: 456. Mujeres: 258. Se generará 115 empleos directos y 75 indirectos. La relación costo beneficio es de 1,2. No existen otros indicadores socioeconómicos. El objetivo superior es de garantizar la transitabilidad continua y permanente entre las localidades de porama a la capital del departamento.  El objetivo del proyecto es el de promover eld esarrollo de la región mediante la inserción y participación de entidades vinculadas con el proyecto hacia la capital del departamento y el resto del país. Se requiere un Estudio de Medidas de mitigación e impactos ambientales y un plan de monitoreo ambiental. Se encuentra dentro del programa Bolivia Productiva - Transportes.  El Subprograma Oeste - Este.  Subsubprograma: Construcción y Mejoramiento de las redes departamentales camineras.  Firman: Ing. Ariel Zeballos Leaño (Fiscal de Obra - FPS - Evaluador) y el Ing. Orlando Reyes Llanque (Jefe de seguimiento a.i. - FPS - Jefe de Evaluación); no se distingue la fecha de esta firma.\r\n',35,22,'INVERS'),(627,'Cumple',NULL,'Muestra que el proyecto registrado para inversión tiene un valor de $us. 253.634,55; dónde existen $us 205.323,2 (85% del monto total correspondiente del Financiador) y $us. 36.233,51 (15% del monto total correspondiente a la Contraparte Municipal)',36,22,'INVERS'),(628,'No Cumple',NULL,'No se presenta el documento en la carpeta de evaluación del proyecto.',37,22,'INVERS'),(629,'No Cumple',NULL,'No se presenta el documento en la carpeta de evaluación del proyecto.',38,22,'INVERS'),(630,'No Cumple',NULL,'No se presenta el documento en la carpeta de evaluación del proyecto.',39,22,'INVERS'),(631,'No Cumple',NULL,'No se presenta el documento en la carpeta de evaluación del proyecto.',40,22,'INVERS'),(632,'No Cumple',NULL,'No se presenta el documento en la carpeta de evaluación del proyecto.',41,22,'INVERS'),(633,'Cumple',NULL,'No se presenta el documento en la carpeta de evaluación del proyecto.',42,22,'INVERS'),(634,'',NULL,'',43,22,'INVERS'),(635,'Cumple',NULL,'Nº 018/2012 ',44,22,'INVERS'),(636,'Cumple',NULL,'10 de septiembre de 2012',45,22,'INVERS'),(637,'Cumple',NULL,'1.501.905,89',46,22,'INVERS'),(638,'Cumple',NULL,'265.042,22',47,22,'INVERS'),(639,'',NULL,'',48,22,'INVERS'),(640,'Cumple',NULL,'Nº 007/2012 ',49,22,'INVERS'),(641,'Cumple',NULL,'13 de septiembre de 2012',50,22,'INVERS'),(642,'Cumple',NULL,'1.501.905,89',51,22,'INVERS'),(643,'Cumple',NULL,'265.042,22',52,22,'INVERS'),(644,'Cumple',NULL,'En fecha 17/11/12; el alcalde del municipio de Carangas , Hermes Viza Cáceres; solicita a la entidad financiadora  la aprobación y ejecución del proyecto, comprometiéndose a que el municipio dará la contraparte del 15%.',1,137,'PRE-INV'),(646,'Cumple',NULL,'En fecha 17/11/12, el alcalde del municipio de Carangas , Hermes Viza Cáceres; envía una carta de certificación a la entidad financiadora. En la carta se hace conocer que el proyecto está inscrito en el Plan Operativo Anual del presente a?o. La carta la f',2,137,'PRE-INV'),(647,'No Cumple',NULL,'No se presenta el documento en la carpeta de evaluación del proyecto.',3,137,'PRE-INV'),(648,'No Cumple',NULL,'No se presenta el documento en la carpeta de evaluación del proyecto.',4,137,'PRE-INV'),(649,'Cumple',NULL,'En fecha 15/11/12, el alcalde de Carangas y el honorable concejo del municipio presentan una carta a la entidad financiadora, en donde se explica que los comunarios y el municipio garantizan que la propiedad donde emplazaran las obras civiles no presentan conflictos. También figura un acta firmada por  el alcalde, el representante del corregimiento y el concejo, en el acta se indica que hubo una reunión en donde se explicó los alcances del proyecto y se llegaron a las siguientes conclusiones: Asumir las tareas de operación y mantenimiento de la infraestructura construida en el sistema de riego durante su vida útil. Comprometidos al pago de cuotas y aportes de ser necesario, durante la ejecución del proyecto.\r\n',55,137,'PRE-INV'),(650,'',NULL,'',6,137,'PRE-INV'),(651,'Cumple',NULL,'Se encuentra presente en la carpeta',7,137,'PRE-INV'),(652,'Cumple',NULL,'El proyecto cuenta con un estudio hidrológico completo y detalado',8,137,'PRE-INV'),(653,'No Cumple',NULL,'No se presenta el documento en la carpeta de evaluación del proyecto.',9,137,'PRE-INV'),(654,'Cumple',NULL,'Los planos topográficos cuentan con los elementos necesarios para el proyecto.',10,137,'PRE-INV'),(655,'No Cumple',NULL,'No cuenta con un análisis de precios unitarios detallado',11,137,'PRE-INV'),(656,'Cumple',NULL,'Se encuentra dentro de la carpeta',12,137,'PRE-INV'),(657,'Cumple',NULL,'Se encuentra de acuerdo al alcance del proyecto , cuenta con un presupuesto de supervisión, asistencia técnica y operación y mantenimiento.',13,137,'PRE-INV'),(658,'Cumple',NULL,'Presenta el cronograma de ejecución en concordancia con el tipo de proyecto.',14,137,'PRE-INV'),(659,'Cumple',NULL,'No se encuentra dentro de la carpeta pero se verifico que el numero de dispensación es el N. 041503-12-CD 3 N. 541-13 del 29/01/2013.',15,137,'PRE-INV'),(660,'Cumple',NULL,'',16,137,'PRE-INV'),(661,'No Cumple',NULL,'No se presenta el documento en la carpeta de evaluación del proyecto.',17,137,'PRE-INV'),(662,'No Cumple',NULL,'No se presenta el documento en la carpeta de evaluación del proyecto.',18,137,'PRE-INV'),(663,'Cumple',NULL,'Según el TESA, los directos beneficiarios del proyecto son 353 habitantes (39 familias), de los cuales el 60%  corresponde a la comunidad de Carangas y el 40% a la comunidad de Mantos. Según el estudio la superficie total de la zona es de 315 hectáreas qu',53,137,'PRE-INV'),(664,'Cumple',NULL,'Presenta los principales indicadores que hacen factible el proyecto. La evaluación se hizo en base a la metodología de preparación y evaluación de proyectos de inversión publica en gaviones de protección utilizando como instrumento las planillas parametri',54,137,'PRE-INV'),(665,'Cumple',NULL,'Según el TESA, los directos beneficiarios del proyecto son 353 habitantes (39 familias), de los cuales el 60%  corresponde a la comunidad de Carangas y el 40% a la comunidad de Mantos. Según el estudio la superficie total de la zona es de 315 hectáreas que incluye sólo tierras en explotación tanto cultivadas como en barbecho, nos e toma en cuenta las tierras de pastoreo. el promedio del tamaño de la tierra por familia es de 0,5 a 1 hectárea. Se habla de un presupuesto general de $183.749,184.  El estudio hace referencia a aspectos económicos y productivos de la zona, si bien presenta fatores sociales como  migración, idioma no presenta datos de educación , salud y servicios básicos. Dichos aspectos son de suma importancia al momento de implementación de proyectos, se sugiere que antes de implementar proyectos se debe conocer su realidad social y así medir los impactos reales sobre la población. ',19,137,'PRE-INV'),(666,'No Cumple',NULL,'No se presenta el documento en la carpeta de evaluación del proyecto.',20,137,'PRE-INV'),(667,'Cumple',NULL,'Se presenta el informe de la evaluación socieconómica donde figuran los indicadores para el análisis financiero del proyecto. En las conclusiones de la evaluación se indica que es conveniente la inversión en el proyecto. Para el análisis se utilizaron planillas parametrizadas, estas planillas están anexadas a la carpeta.. No existen firmas ni del evaluador ni de la persona encargada de revisar.\r\n',21,137,'PRE-INV'),(668,'Cumple',NULL,'2/4/13. Los resultados del cuadro de valoración Social son positivos dando un total de 8,5 por lo que es mayor a 8, por tanto el proyecto es socialmente factible. El informe no lleva ninguna firma  que lo avale.\r\n',22,137,'PRE-INV'),(669,'Cumple',NULL,'El Certificado de dispensación es CD-3 041503-12-cd 3N°541/13',23,137,'PRE-INV'),(670,'Cumple',NULL,'4/13. La valoración institucional del proyecto indica que el Municipio de Carangas cuenta con una estructura organizacional con la aplicación de funciones y sistema SAFCO, con la capacidad financiera y física, capacidad para encarar condiciones como la contraparte del proyecto, el mantenimiento para un funcionamiento eficiente y demás actividades concernientes al desarrollo integral de la infraestructura. Por lo tanto el resultado es positivo y el proyecto institucional es factible. La evaluación no cuenta ni con el nombre del evaluador ni con firmas. \r\n',24,137,'PRE-INV'),(671,'Cumple',NULL,'2/4/2013, Existe el informe, en formato IVC, y contiene 9 fotografías. En el informe se presenta datos de la ubicación del proyecto, la descripción y se ha verificado que existe coherencia entre la topografía y los planos presentados. El informe avala que tantos los aspectos tecnicos como los sociales tienen relación y son los mismos que se han presentado en el TESA. El informe concluye que el proyecto es factible técnica, social económica y ambientalmente siendo su implementación conveniente de acuerdo a los parámetros establecidos por inversión pública para el sector agrícola. No cuenta con firmas\r\n',25,137,'PRE-INV'),(672,'Cumple',NULL,'El informe se encuentra en formato DIF, donde se señala que la población beneficiada es de 39 familias, un total de 200 personas beneficiadas de las cuales el 60% son hombres y el 40% mujeres (dato no concuerda con lo que indica el TESA). Los resultados de la evaluación dan cuenta que la factibilidad ténica, f: económica, F. Social, F. ambiental y F. Institucional son positivas.El dictamen integral indica lo siguiente:  Por lo que el proyecto considera todos los aspectos para mejorar las condiciones de vida de los beneficiarios, de manera que los objetivos del proyecto sean alcanzados se recomienda su inversión y ejecución. el dictamen final indica lo siguiente: Proyecto es viable porque prevé el optimo uso de la infraestructura de defensivos de gaviones para cumplir con los objetivos generales y específicos planteados en el estudio del mismo que fueron verificados a través de la evaluación tanto en la visita de campo como en gabinete, en todos los ámbitos contemplados.El dictamen final de valoración del proyecto indica: El proyecto no presenta observaciones u observaciones que fueron subsanadas rápidamente y no comprometen la viabilidad del proyecto (pasar a CDAP) La fecha es 2/4/13.El Jefe de Evaluación es Alan Franco Burgulla Zelada, sin embargo no existen firmas.\r\n',26,137,'PRE-INV'),(673,'No Cumple',NULL,'No se presenta el documento en la carpeta de evaluación del proyecto.',27,137,'PRE-INV'),(674,'No Cumple',NULL,'No se presenta el documento en la carpeta de evaluación del proyecto.',28,137,'PRE-INV'),(675,'Cumple',NULL,'En fecha 2/4/13 los ing. Alan Franco Burguella Zelada (jefe técnico) y Rodmy alanez Medina (Profesional técnico evaluador) dan conformidad al acta y certifican la conclusión del procedimiento previsto para el cierre de proyectos,indicando que los 15 items se encuentran dentro de la carpeta.\r\n',29,137,'PRE-INV'),(676,'Cumple',NULL,'Inf. de fecha 2/4/2013 presupuesto de Bs. 1.152.483,86 No tiene firmas',30,137,'PRE-INV'),(677,'Cumple',NULL,'Inf. de fecha 2/4/2013, presupuesto de Bs. 1.152.483,86 dividido en 5 módulos: Defensivos Carangas, Defensivos Mantos, Obras preliminares, Medidas de mitigación ambiental y supervisión.No tiene firmas',31,137,'PRE-INV'),(678,'Cumple',NULL,'Inf. de fecha;2/4/2013 un total de Bs. 847230,93 al tipo de cambio 6,86',32,137,'PRE-INV'),(679,'No Cumple',NULL,'Está presente en el TESA, no figura en la carpeta',33,137,'PRE-INV'),(680,'No Cumple',NULL,'No se presenta el documento en la carpeta de evaluación del proyecto.',34,137,'PRE-INV'),(681,'Cumple',NULL,'2/4/12, Del presupuesto final de Bs 1.152.483,86 ($us 168.000,56)  se tiene contemplado que el financiador aportará con el 85% (Bs 934.561,28) y la contraparte del municipio alcanza al 15% (164.922,58) en infraestructura. Mientras que en supervisión el 85% del financiador alcanza a 45.050,00 y la contraparte con el 15% que significa bs7.950,00\r\n',36,137,'PRE-INV'),(682,'Cumple',NULL,'De fecha 26 de marzo del 2013',37,137,'PRE-INV'),(684,'Cumple',NULL,'Resolución concejal N°009/203',38,137,'PRE-INV'),(685,'Cumple',NULL,'Se encuentra el documento solo con la firma del alcalde en fecha 26/3/13',39,137,'PRE-INV'),(686,'Cumple',NULL,'Se encuentra en la carpeta como CONSTRUCCIÓN DEFENSIVOS CARANGAS Y MANTOS',40,137,'PRE-INV'),(687,'Cumple',NULL,'979.611,28',41,137,'PRE-INV'),(688,'Cumple',NULL,'172.872,58',42,137,'PRE-INV'),(689,'',NULL,'',43,137,'PRE-INV'),(690,'Cumple',NULL,'(1ER-04)-04-023-13',44,137,'PRE-INV'),(691,'Cumple',NULL,'01 de abril del 2013',45,137,'PRE-INV'),(692,'Cumple',NULL,'979.611,28',46,137,'PRE-INV'),(693,'Cumple',NULL,'172.872,58',47,137,'PRE-INV'),(694,'',NULL,'',48,137,'PRE-INV'),(695,'Cumple',NULL,'(2DO-04)-04-023-13',49,137,'PRE-INV'),(696,'Cumple',NULL,'01 de abril, 2013',50,137,'PRE-INV'),(697,'Cumple',NULL,'979.611,28',51,137,'PRE-INV'),(698,'Cumple',NULL,'172.872,58',52,137,'PRE-INV'),(699,'Cumple',NULL,'Se puede verificar dos cartas de solicitudes de financiamiento por parte del GAM de Sacabamba, la primera es de fecha 22/3/12 dirigida al FPS firmada por el alcalde Martin Siles Iriarte, donde se comprometen a respetar los procedimientos de licitación y cumplir con el aporte de la contraparte entre otros. La otra nota de solicitud de financiamiento es fecha30/5/12 dirigida al ministerio de planificación y desarrollo (MPD) donde se solicita el financiamiento y registro en pre cartera del proyecto, la nota es firmada por el honorable alcalde de Sacabamba Martín Siles Iriarte\r\n',1,110,'INVERS'),(700,'Cumple',NULL,'Dentro de la carpeta se pudo verificar que se a?adió una planilla de incremento de gastos en el POA del municipio, que se encuentra firmada por el alcalde Martin Siles y el Dir. Administrativo financiero de la alcaldía Peter Montalvo, en la lista está pre',2,110,'INVERS'),(701,'Cumple',NULL,'El memorándum CBB/GD/3000/025/2012 de fecha 10/2/12 es de parte del ing. Nelson Rojas gerente departamental del FPS hacia el ing. Juan Laime Ricaldez, indicando que se lo asigna como responsable en el proceso de evaluación, contratación y seguimiento del proyecto \"Const. Puente vehicular Challaque\"\r\n',3,110,'INVERS'),(702,'Cumple',NULL,'Uno de los documentos que se presenta en la carpeta indica que la dirigencia de las comunidades de la sub central Sacabamaba alto declara la tenencia legal de los predios donde se encuentra las obras del proyecto son propiedad de la comunidad y se autoriza el uso de dichos predios en el proyecto. El documento es de fecha 16/4/12 y está firmada por el alcalde Martin Siles Iriarte y el representante de la sub central campesina Sacabamba. El otro documento presente en la carpeta es de fecha 14/5/12 se trata de un acta de conformidad de sesión voluntaria de los terrenos, donde se indica que los comunarios como únicos dueños de los terrenos aceptan ceder las tierras como área destinada a la construcción del puente vehicular Challaque. El acta se encuentra firmada por los propietarios de los terrenos, el alcalde y los dirigentes del sector.\r\n',4,110,'INVERS'),(703,'Cumple',NULL,'Dentro de la solicitud de financiamiento que se realiza en fecha 22/3/12 por parte del GAM de Sacabamba, existe el compromiso de garantizar la futura operación y mantenimiento del proyecto, por lo que se comprometen formalmente incorporar el presupuesto y las actividades de mantenimiento y operación en los POAs correspondientes para la operación y mantenimiento de la vida útil del proyecto.\r\n',55,110,'INVERS'),(704,'',NULL,'',6,110,'INVERS'),(705,'Cumple',NULL,'Incluye dise?o subestructura, superestructura, vigas preesforzadas',7,110,'INVERS'),(706,'Cumple',NULL,'Incluye',8,110,'INVERS'),(707,'Cumple',NULL,'Incluye',9,110,'INVERS'),(708,'Cumple',NULL,'Aparentemente la topografía no es real, porque el emplazamiento del puente presenta un esviaje que genera la necesidad de una curva para empalme a la vía existente.                                                                                           ',10,110,'INVERS'),(709,'Cumple',NULL,'Dispone de lo previsto',11,110,'INVERS'),(710,'Cumple',NULL,'Contiene todos las ET´s, que no se aplicaron adecuadamente',12,110,'INVERS'),(711,'Cumple',NULL,'Presenta un presupuesto general por requerimiento de volumenes y cantidades.',13,110,'INVERS'),(712,'No Cumple',NULL,'No fue habido en la carpeta',14,110,'INVERS'),(713,'Cumple',NULL,'Fotocopia de tramite en la gobernación dentro de la carpeta',15,110,'INVERS'),(714,'No Cumple',NULL,'Ninguno de los planos llevan la firma del profesional responsable.',16,110,'INVERS'),(715,'Cumple',NULL,'La fuente de explotación de aridos, se halla fuera del area de influencia del proyecto',17,110,'INVERS'),(716,'Cumple',NULL,'En el estudio de la pre inversión no esta previsto esta situación, que el suscrito la considera necesario para fines de ejecución de obras.',18,110,'INVERS'),(717,'Cumple',NULL,'Dentro del TESA del proyecto está incluido el análisis socioeconómico de la población, donde se indica que la población existente en el municipio de Sacabamba es de 4718 personas de las cuales 2343 son hombres y 2375 mujeres. En la variable de educación s',53,110,'INVERS'),(718,'No Cumple',NULL,'Dentro del TESA no se encuentran los indicadores ni planillas parametrizadas',54,110,'INVERS'),(719,'Cumple',NULL,'El informe de evaluación socioeconómica se imprime en fecha 13/03/12; sin embargo está firmado y evaluado el 3/5/12 por el ing. Juan Laime Ricaldez . El informe indica que el cronograma propuesto para la ejecución de obras es racional y está previsto para',20,110,'INVERS'),(720,'Cumple',NULL,'El informe de evaluación técnica se imprime en fecha 13/03/12; sin embargo está firmado y evaluado el 3/5/12 por el ing. Juan Laime Ricaldez . El informe indica que el cronograma propuesto para la ejecución de obras es racional y está previsto para una duración de 210 días, respecto a los planos de construcción el estudio cuenta con 8 planos constructivos, ninguno lleva la firma ni sello del profesional responsable de su elaboración, algunos planos tienen cotas ilegibles; que según el evaluador son los necesarios para la correcta construcción. El resultado de la evaluación indica que el proyecto tiene toda la información técnica adecuada para ser construido, finalmente se recomienda la construcción en época de estiaje.',21,110,'INVERS'),(721,'Cumple',NULL,'El informe de valoración social se imprime en fecha 13/03/12; sin embargo está firmado y evaluado el 3/5/12 por el ing. Juan Laime Ricaldez. De acuerdo a los resultados por tipo de variable que es 10, el proyecto es denominado socialmente factible. Los cu',22,110,'INVERS'),(722,'Cumple',NULL,'El informe de evaluación ambiental se imprime en fecha 13/03/12; sin embargo está firmado y evaluado el 3/5/12 por el ing. Juan Laime Ricaldez. Dentro de la carpeta se encuentra la categorización de la ficha ambiental dispensada por la gobernación en fech',23,110,'INVERS'),(723,'Cumple',NULL,'El informe de valoración institucional se imprime en fecha 13/03/12; sin embargo está firmado y evaluado el 3/5/12 por el ing. Juan Laime Ricaldez. De acuerdo a los rangos de valoración institucional se concluye que el GAM de Sacabamba cuenta con la estru',24,110,'INVERS'),(724,'Cumple',NULL,'El informe de visita de campo se imprime en fecha 13/03/12; sin embargo está firmado y evaluado el 3/5/12 por el ing. Juan Laime Ricaldez. Según la evaluación la ubicación del proyecto es coherente en lo que se ha descrito en la memoria, lo mismo ocurre c',25,110,'INVERS'),(725,'',NULL,'El informe de visita de campo se imprime en fecha 13/03/12; sin embargo está firmado y evaluado el 3/5/12 por el ing. Juan Laime Ricaldez (profesional técnico) y Mario Severich (Jefe de seguimiento). El informe indica que el monto solicitado es de 1.013.5',26,110,'INVERS'),(726,'Cumple',NULL,'El marco lógico se encuentra dentro del TESA en el acápite 4.8',27,110,'INVERS'),(727,'No Cumple',NULL,'No se presenta el documento en la carpeta de evaluación del proyecto.',28,110,'INVERS'),(728,'Cumple',NULL,'El acta de cierre del proyecto en su etapa de evaluación es emitido el día 21/8/12 firmado por Mario Severich (Jefe técnico) y Marco Antonio Guzmán (Profesional técnico evaluador). El informe indica que el proyecto ha presentado los 15 ítems requeridos pa',29,110,'INVERS'),(729,'Cumple',NULL,'El reporte del resumen del proyecto es generado en fecha 30/01/13, el presupuesto para el proyecto es Bs. 1.075.912,89, desglosado de la siguiente manera: Infraestructura: 1.028.912,89. Supervisión: 47.000,00.',30,110,'INVERS'),(730,'Cumple',NULL,'El reporte del detalle del presupuesto es generado el 30/1/13, el presupuesto es de Bs. 1.075.912,89, que se lo divide en 5 módulos: Actividades preliminares y complementarias, Infraestructura, super estructura, medidas de mitigación ambiental y supervisi',31,110,'INVERS'),(731,'Cumple',NULL,'El reporte de explosión de insumos es generado el 30/1/13, el presupuesto asignado a este componentes es de 875.970,23 bs a tipo de cambio 6,86.',32,110,'INVERS'),(732,'Cumple',NULL,'El reporte de precios unitarios es generado el 30/1/13, donde se puede advertir que se encuentran los 5 módulos antes descritos.',33,110,'INVERS'),(733,'No Cumple',NULL,'No se presenta el documento en la carpeta de evaluación del proyecto.',34,110,'INVERS'),(734,'Cumple',NULL,'El informe de evaluación es generado el 6/6/12, firmado por el ing. Juan Laime Ricaldez. Dentro del informe existen datos del proyecto, como el monto solicitado, la cantidad de metros construidos de puente (35), no figura la institución ni el monto de apo',35,110,'INVERS'),(735,'Cumple',NULL,'El reporte de la matriz de cofinanciamiento es generado el 30/1/13, donde se indica que el presupuesto es de 1.075.912,89 bs dividido de la siguiente manera: Infraestructura: el financiador aportará con el 68,5% (704.805,33bs) y la contraparte municipal a',36,110,'INVERS'),(736,'',NULL,'',37,110,'INVERS'),(737,'No Cumple',NULL,'No se presenta el documento en la carpeta de evaluación del proyecto.',38,110,'INVERS'),(738,'Cumple',NULL,'El CTF es firmado en fecha 16/8/12 por el gerente departamental del FPS Ing. Nelson Rojas y el HonorableAlcalde de Sacabamba Martín Siles Iriarte',39,110,'INVERS'),(739,'Cumple',NULL,'CONST. PUENTE VEHICULAR CHALLAQUE',40,110,'INVERS'),(740,'Cumple',NULL,'914.525,96',41,110,'INVERS'),(741,'Cumple',NULL,'161.386,93',42,110,'INVERS'),(742,'',NULL,'',43,110,'INVERS'),(743,'Cumple',NULL,'(1ER-03)-03-028-12',44,110,'INVERS'),(744,'Cumple',NULL,'08 de septiembre del 2012',45,110,'INVERS'),(745,'Cumple',NULL,'914.525,96',46,110,'INVERS'),(746,'Cumple',NULL,'161.386,93',47,110,'INVERS'),(747,'',NULL,'',48,110,'INVERS'),(748,'Cumple',NULL,'(2DO-03)-03-028-12',49,110,'INVERS'),(749,'Cumple',NULL,'08 de septiembre del 2012',50,110,'INVERS'),(750,'Cumple',NULL,'914.525,96',51,110,'INVERS'),(751,'Cumple',NULL,'161.386,93',52,110,'INVERS'),(752,'Cumple',NULL,'Se encuentra presente en la carpeta, la carta está dirigida al FPS, en la que solicitan el financiamiento al proyecto de ampliación del mercado de Tiraque, en la carta se comprometen a asumir la contraparte como GAM y respetar los procedimientos de licita',1,121,'INVERS'),(753,'Cumple',NULL,'La carta se encuentra dentro de la carpeta, la misma fue enviada con el cite N° 183/2012, dirigida al FPS, donde se indica que el proyecto no se encuentra inscrito dentro el POA 2012; sin embargo el municipio se compromete a que si el proyecto es aprobado',2,121,'INVERS'),(754,'Cumple',NULL,'El memorándum de asignación al profesional técnico es de fecha 10/2/2012, proveniente del gerente departamental Ing. Nelson Rojas, designando como responsable en el proceso de evaluación, contratación y seguimiento del proyecto al Arq. Mauricio Rojas Quir',3,121,'INVERS'),(755,'Cumple',NULL,'Dentro de la carpeta se puede apreciar que sólo existe un plano demostrativo del terreno donde se ejecutarán las obras del proyecto, firmado por el Arq. Winsor Ortu?o (jefe del departamento de planificación y urbanismo de la alcaldía.',4,121,'INVERS'),(756,'Cumple',NULL,'Dentro de la solicitud de financiamiento emitida en fecha 8/2/12, se encuentra un punto en que el el municipio se compromete a garantizar la operación y mantenimiento del proyecto a través del ente operador. La carta la firma el honorable alcalde Grover G',55,121,'INVERS'),(757,'Cumple',NULL,'Cumple lo previsto en el reglamento de riesgo',6,121,'INVERS'),(758,'Cumple',NULL,'Dispone de un Resumen ejecutivo, Aspectos generales., Aspectos Físico Naturales, aspectos socio culturales, aspectos económico productivo, Compromiso de incorporación en POA, cómputos métrico, cronograma de obras, especificaciones técnicas, presupuesto de',7,121,'INVERS'),(759,'Cumple',NULL,'La memoria de cálculo se encuentra en otra carpeta elaborado y firmado por el Ing. Oscar Mario Morato.',8,121,'INVERS'),(760,'Cumple',NULL,'Se encuentra dentro de la carpeta',9,121,'INVERS'),(761,'Cumple',NULL,'Los planos muestran detalles generales de la estructura metálica,no se muestran las características y detalle de juntas y uniones soldadas y ni el tipo de electrodo a ser empleado.Todos los planos llevan el sello del Ing. Oscar Mario Morato RNI 5706.',10,121,'INVERS'),(762,'Cumple',NULL,'Se encuentra pero los precios unitarios no llevan la firma de ningun profesional responsable',11,121,'INVERS'),(763,'Cumple',NULL,'Se cuenta con las especificaciones técnicas',12,121,'INVERS'),(764,'Cumple',NULL,'Se presenta un presupuesto general',13,121,'INVERS'),(765,'Cumple',NULL,'Dispone de dos cronograma de obra, una referida a la construcción con 120 días calendario y la otra referida a ampliación y mejoramiento con 90 días calendario.',14,121,'INVERS'),(766,'Cumple',NULL,'Tiene fotocopia de categorizacion de la Gobernación.',15,121,'INVERS'),(767,'Cumple',NULL,'No firma el profesional responsable, solo figura el sello profesional ',16,121,'INVERS'),(768,'Cumple',NULL,'No se aplica, debido al reducido volumen de hormigón ',17,121,'INVERS'),(769,'Cumple',NULL,'No aplica por tema de volumen de obra.',18,121,'INVERS'),(770,'Cumple',NULL,'Dentro del documento se puede apreciar que se incluyó un análisis sociocultural, donde se pueden encontrar datos de la historia del municipio, el idioma, la religión que practican, el estado y la calidad de las infraestructuras educativas, tasa de asisten',53,121,'INVERS'),(771,'No Cumple',NULL,'No se presenta el componente en el documento del proyecto.',54,121,'INVERS'),(772,'Cumple',NULL,'Dentro de la carpeta se ha anexado un archivo fotográfico a colores de la actual feria del mercado.',19,121,'INVERS'),(773,'Cumple',NULL,'El informe de la evaluación técnica es firmado y evaluado por el arq. Mauricio Rojas Quiroz en fecha 10/5/2010, El informe indica que se presentó una sola alternativa, señala tambipen que el dimensionamiento y diseño de las estructuras están con el respaldo de las memorias de cálculo respectivas. El resultado de la evaluación índice que el proyecto es técnicamente factible ya que cumple con todos los criterios técnicos mínimos, al mismo tiempo cumple con la evaluación a través de la verificación de la calidad de los aspectos y documentos técnicos tanto en gabinete como en la visita a campo.',20,121,'INVERS'),(774,'',NULL,'El informe de la evaluación socioeconómica es firmado y evaluado por el arq. Mauricio Rojas Quiroz en fecha 10/5/2012, el informe indica que de acuerdo a la categorización del resultado por tipo de indicador, el proyecto resulta positivo y económicamente ',21,121,'INVERS'),(775,'Cumple',NULL,'El informe de la valoración social es firmado y evaluado por el arq. Mauricio Rojas Quiroz en fecha 10/5/2012. El informe indica que de acuerdo a la categorización de resultado por tipo de variable que resulta positivo, el proyecto es factible, ya que seg',22,121,'INVERS'),(776,'Cumple',NULL,'El informe de evaluación ambiental es firmado y evaluado por el arq. Mauricio Rojas Quiroz en fecha 10/5/2012. Según el evaluador el proyecto cuenta con los documentos ambientales requeridos, por lo que el proyecto es ambientalmente positivo.',23,121,'INVERS'),(777,'Cumple',NULL,'El informe de la valoración institucional es firmado y evaluado por el arq. Mauricio Rojas Quiroz en fecha 10/5/2012. De acuerdo a los rangos para la valoración institucional el proyecto es factible ya que la alcaldía cuenta con una estructura organizacio',24,121,'INVERS'),(778,'Cumple',NULL,'El informe de visita a campo es firmado y evaluado por el arq. Mauricio Rojas Quiroz en fecha 26/04/12, donde se verificó que al momento de ejecutar las obras se deberá tener cuidado ya que por el lugar se encontrarán los feriantes y los compradores, una ',25,121,'INVERS'),(779,'Cumple',NULL,'El dictamen final de la evaluación integral es firmado y evaluado por el arq. Mauricio Rojas Quiroz en fecha 10/05/12. El monto solicitado es de 966.462,95 $us y el monto evaluado es de 970.298,49$us. En cuanto a los resultados por ámbitos de evaluación, ',26,121,'INVERS'),(780,'No Cumple',NULL,'No se presenta el componente en el documento del proyecto.',27,121,'INVERS'),(781,'No Cumple',NULL,'No se presenta el componente en el documento del proyecto.',28,121,'INVERS'),(782,'Cumple',NULL,'Dentro de la carpeta se encuentra el cata de cierre del proyecto en su etapa de evaluación, donde se observa que dentro de la carpeta existen los 15 ítems requeridos. El acta está firmada por Mario Severich (Jefe técnico) y Mauricio Rojas (Profesional téc',29,121,'INVERS'),(783,'Cumple',NULL,'El reporte del resumen del presupuesto es de fecha 15/5/12, donde se indica que el monto para el proyecto es de 970.298,49 bs, divididos de la siguiente manera: Infraestructura: 924.089, 49 y Supervisión: 46.200,00 bs.',30,121,'INVERS'),(784,'Cumple',NULL,'El reporte del presupuesto es de fecha 15/5/12, donde indica que el presupuesto del proyecto es de 970.298,49 bs, desglosado en 6 módulos: Trabajos preliminares, obras finales, mejoramiento infraestructura para mercado, ampliación estructura para mercado,',31,121,'INVERS'),(785,'Cumple',NULL,'El reporte de la explosión de insumos es de fecha 15/5/12, el monto designado para esto es de 712.866,09 bs.',32,121,'INVERS'),(786,'Cumple',NULL,'El reporte del presupuesto es de fecha 11/5/12, dentro de la carpeta se encuentra detallado los presupuestos de los seis módulos antes descritos.',33,121,'INVERS'),(787,'Cumple',NULL,'El reporte del presupuesto evaluado es de fecha 10/5/12, dentro de la informe se encuentra detallado los presupuestos de los seis módulos ',34,121,'INVERS'),(788,'Cumple',NULL,'El reporte del informe de evaluación es de fecha 15/5/12, donde se?ala que la cantidad de beneficiarios del proyecto, el monto solicitado, también se indica que el tiempo para la ejecución es de 300 días calendario.  Del mismo modo en el informe indica qu',35,121,'INVERS'),(789,'No Cumple',NULL,'No se presenta el componente en el documento del proyecto.',36,121,'INVERS'),(790,'',NULL,'',37,121,'INVERS'),(791,'Cumple',NULL,' N° 061/2012',38,121,'INVERS'),(794,'Cumple',NULL,'El documento está firmado el 20/8/12 por el Ing. Nelson Rojas (Gerente departamental FPS) y Grover García (Alcalde de Tiraque)',39,121,'INVERS'),(795,'Cumple',NULL,'CONST. MERCADO MUNICIPAL TIRAQUE (TIRAQUE)',40,121,'INVERS'),(796,'Cumple',NULL,'824.753,72',41,121,'INVERS'),(797,'Cumple',NULL,'145.544,77',42,121,'INVERS'),(798,'',NULL,'',43,121,'INVERS'),(799,'Cumple',NULL,'(1ER-03)-03-027-12',44,121,'INVERS'),(800,'Cumple',NULL,'08 de agosto del 2012',45,121,'INVERS'),(801,'Cumple',NULL,'824.753,72',46,121,'INVERS'),(802,'Cumple',NULL,'145.544,77',47,121,'INVERS'),(803,'',NULL,'',48,121,'INVERS'),(804,'Cumple',NULL,'(2DO-03)-03-005-12',49,121,'INVERS'),(805,'Cumple',NULL,'08 de agosto del 2012',50,121,'INVERS'),(806,'Cumple',NULL,'824.753,72',51,121,'INVERS'),(807,'Cumple',NULL,'145.544,77',52,121,'INVERS'),(808,'No Cumple',NULL,'No se presenta el documento en la carpeta de evaluación del proyecto.',1,35,'INVERS'),(809,'No Cumple',NULL,'No se presenta el documento en la carpeta de evaluación del proyecto.',2,35,'INVERS'),(810,'No Cumple',NULL,'No se presenta el documento en la carpeta de evaluación del proyecto.',3,35,'INVERS'),(811,'No Cumple',NULL,'No se presenta el documento en la carpeta de evaluación del proyecto.',4,35,'INVERS'),(812,'No Cumple',NULL,'No se presenta el documento en la carpeta de evaluación del proyecto.',55,35,'INVERS'),(813,'Cumple',NULL,'',6,35,'INVERS'),(814,'Cumple',NULL,'El puente está ubicado sobre el Río Valle Alto entre las poblaciones de Tacopaya y Valle Alto',7,35,'INVERS'),(815,'Cumple',NULL,'El estudio cuenta con una memoria de cálculo de acuerdo a Norma AASHTO ?STANDARD SPECIFICATION FOR HIGHWAY BRIDGES?, tanto para el dise?o de la estructura como para el empleo de cargas. También cuenta con un estudio geotécnico, un estudio de fundación de ',8,35,'INVERS'),(816,'Cumple',NULL,'Detalla la ubicación exacta del lugar donde se emplazara el proyecto, también se especifican las coordenadas y los medios de acceso a dicha ubicación.',9,35,'INVERS'),(817,'Cumple',NULL,'Se cuenta con un levantamiento topográfico dentro de los anexos del TESA y un plano detallado resultante de dicho levantamiento. A pesar de que cuenta con planos generales de la forma posición y características del puente, faltan muchos detalles construct',10,35,'INVERS'),(818,'Cumple',NULL,'Una vez realizada la revisión a los análisis de precios unitarios se detectó que existen materiales que precisan ser aclarados:En el ítem de LETRERO DE OBRA se habla del material hormigón simple el cual no se encuentra desglosado.',11,35,'INVERS'),(819,'Cumple',NULL,'Las Especificaciones técnicas insertadas cumplen con la norma vigente para este tipo de infraestructura.',12,35,'INVERS'),(820,'Cumple',NULL,'El presupuesto de la obra establece precios unitarios bajos que no tienen relación con algunos aspectos del proyecto. La revisión realizada pro el Ingeniero Civil de la Consultora Jorge Miranda y en reunión realizada con técnicos del GAM y FPS se establec',13,35,'INVERS'),(821,'Cumple',NULL,'Presenta un cronograma adecuado con el tipo de proyecto, establece trabajos preliminares, superestructura, infraestructura y accesos y obras complementarias.',14,35,'INVERS'),(822,'Cumple',NULL,'No se encuentra presente en la carpeta, sin embargo el seguimiento realizado por el Consultor de A&M permitió establecer que el proyecto cuenta con licencia Categoría III',15,35,'INVERS'),(823,'Cumple',NULL,'Si se considero esta normativa',16,35,'INVERS'),(824,'No Cumple',NULL,'No considera',17,35,'INVERS'),(825,'No Cumple',NULL,'No considera',18,35,'INVERS'),(826,'No Cumple',NULL,'No se presenta el documento en la carpeta de evaluación del proyecto. Indican que el TESA se encuentra en el municipio.',53,35,'INVERS'),(827,'No Cumple',NULL,'No se presenta el documento en la carpeta de evaluación del proyecto. Indican que el TESA se encuentra en el municipio.',54,35,'INVERS'),(828,'',NULL,'',19,35,'INVERS'),(829,'Cumple',NULL,'El informe de evaluación técnica está evaluado y firmado por el ing. Walter Zuleta el 6/11/12, en dicho informe se detallan los objetivos del proyecto, presenta también el presupuesto  de bs. 903.173,08, el cronograma de obras según el evaluador está prev',20,35,'INVERS'),(830,'Cumple',NULL,'El informe de evaluación socioeconómica está evaluado y firmado por el ing. Walter Zuleta el 6/11/12, done se indica que de acuerdo a la categorización de resultado por tipo de indicador, done todos los indicadores socioeconómicos, financieros y de costo-',21,35,'INVERS'),(831,'Cumple',NULL,'El informe valoración social está evaluado y firmado por el ing. Walter Zuleta el 6/11/12, donde de acuerdo al resultado por tipo e variable el puntaje asignado al proyecto es 8, por lo tanto es factible. El evaluador concluye que la población de las comu',22,35,'INVERS'),(832,'Cumple',NULL,'El informe de evaluación ambiental está evaluado y firmado por el ing. Walter Zuleta el 6/11/12. En dicho informe se observa que el proyecto cuenta con la ficha ambiental en categoría 3. Por lo tanto el evaluador indica que una vez verificada la pertinenc',23,35,'INVERS'),(833,'Cumple',NULL,'El informe valoración institucional está evaluado y firmado por el ing. Walter Zuleta el 6/11/12,  donde acuerdo a los rango para la valoración institucional del FPS el proyecto entra en la categoría de caminos vecinales. El evaluador concluye que el GAM ',24,35,'INVERS'),(834,'Cumple',NULL,'El informe de visita de campo está evaluado y firmado por el ing. Walter Zuleta el 6/11/12, donde se indica que la ubicación de los distintos elementos del proyecto concuerda con la topografía de la zona. En la visita de campo se pudo verificar que los ca',25,35,'INVERS'),(835,'Cumple',NULL,'El dictamen final de la evaluación integral  está evaluado y firmado por el ing. Walter Zuleta y por Mario Severich el 6/11/12. El informe detalla los datos generales del proyecto, también datos de la población beneficiaria que se trataría de 975 familias',26,35,'INVERS'),(836,'No Cumple',NULL,'No se presenta el documento en la carpeta de evaluación del proyecto.',27,35,'INVERS'),(837,'No Cumple',NULL,'No se presenta el documento en la carpeta de evaluación del proyecto.',28,35,'INVERS'),(838,'No Cumple',NULL,'No se presenta el documento en la carpeta de evaluación del proyecto.',29,35,'INVERS'),(839,'Cumple',NULL,'El reporte de resumen del presupuesto del proyecto es emitido en fecha 18/12/12, donde se indica lo siguiente: Infraestructura: bs 860.173,08 y supervisión: 43.000,00bs',30,35,'INVERS'),(840,'Cumple',NULL,'El reporte del presupuesto a detalle del proyecto es emitido en fecha 18/12/12, donde se encuentra detallado todos los módulos del presupuesto general.',31,35,'INVERS'),(841,'Cumple',NULL,'El reporte de la explosión de insumos  del proyecto es emitido en fecha 18/12/12, donde se indica que el monto designado es de 857.986,62 bs a tipo de cambio 6,86.',32,35,'INVERS'),(842,'Cumple',NULL,'El reporte de la lista de precios unitarios del proyecto es emitido en fecha 18/12/12, dentro del reporte se encuentra todos los precios agrupados en sus respectivos módulos.',33,35,'INVERS'),(843,'Cumple',NULL,'El reporte de del presupuesto para la evaluación económica por el SAP es generado en fecha 18/12/12, donde el presupuesto se encuentra desglosado en los respectivos módulos; el monto que figura corresponde a mano de obra calificada, mano de obra no califi',34,35,'INVERS'),(844,'Cumple',NULL,'El informe de evaluación emitido por el SAP es generado en fecha 18/12/12, donde se verifican los datos generales del proyecto. No se verifica los porcentajes de financiamiento ni las instituciones que intervienen. Los datos específicos del proyecto están',35,35,'INVERS'),(845,'Cumple',NULL,'El reporte de la matriz de cofinanciamiento es emitido en fecha 18/12/12, donde se indica lo siguiente: Infraestructura: bs.125.389,67 donde el financiador aporta con el 66,2% (83.007,96$us) y el GAM con el 33.8% (42.381,71$us). Supervisión: $us.6.268,22 ',36,35,'INVERS'),(846,'',NULL,'',37,35,'INVERS'),(847,'Cumple',NULL,'196/2013',38,35,'INVERS'),(848,'Cumple',NULL,'El CTF fue firmado en fecha 6/9/13 por el gerente departamental del FPS Ing. Nelson Rojas y el honorable alcalde de Villa Tunari Feliciano Mamani Quispe',39,35,'INVERS'),(849,'Cumple',NULL,'CONST. PUENTE VEHICULAR VALLE ALTO (V. TUNARI)',40,35,'INVERS'),(850,'Cumple',NULL,'597.826,14',41,35,'INVERS'),(851,'Cumple',NULL,'452.337,98',42,35,'INVERS'),(852,'',NULL,'',43,35,'INVERS'),(853,'Cumple',NULL,'(1ER-03)-03-058-12',44,35,'INVERS'),(854,'Cumple',NULL,'02 de octubre del 2012',45,35,'INVERS'),(855,'Cumple',NULL,'569.362,04',46,35,'INVERS'),(856,'Cumple',NULL,'431.802,08',47,35,'INVERS'),(857,'',NULL,'',48,35,'INVERS'),(858,'Cumple',NULL,'(2DO-03)-03-058-12',49,35,'INVERS'),(859,'Cumple',NULL,'02 de octubre del 2012',50,35,'INVERS'),(860,'Cumple',NULL,'569.362,04',51,35,'INVERS'),(861,'Cumple',NULL,'431.802,08',52,35,'INVERS'),(862,'No Cumple',NULL,'No se presenta el documento en la carpeta de evaluación del proyecto.',1,122,'INVERS'),(863,'Cumple',NULL,'La certificación indica que el GAMC inscribió el proyecto Construcción sistema de micro riego comunidad Tunari, comprometiéndose a realizar el aporte de la contraparte. La certificación también indica que se comprometen a realizar su aporte en mano de obr',2,122,'INVERS'),(864,'Cumple',NULL,'Memorándum CBB/GD/3000/07/2012, se trata de un memorándum de asignación de parte del ING. Nelson Rojas Angulo (gerente departamental) hacia la Ing. Dorothy Torrico (profesional técnico) donde se indica que ha sido asignada como responsable del proceso de ',3,122,'INVERS'),(865,'Cumple',NULL,'Existen varios documentos en la carpeta dentro los cuales figura el \"Derecho de Uso de fuente de Agua\" firmado en fecha 6/3/12 por el alcalde Ing. Pedro Padilla Antezana, y los representantes del sindicato agrario del cantón Tunari, en la que se estipula ',4,122,'INVERS'),(866,'Cumple',NULL,'El acta está firmada por la sub central del canton Tunari, y la OTB Tunari, en dicha acta se comprometen a que los regantes asumirán las tareas de operación y mantenimiento de la infraestructura construida. También figura un acta de compromiso avalada por',55,122,'INVERS'),(867,'',NULL,'',6,122,'INVERS'),(868,'Cumple',NULL,'El proyecto contiene Memoria Descriptiva',7,122,'INVERS'),(869,'Cumple',NULL,'El proyecto contiene Memoria, Contiene  Hidrológico (sin identificación del Especialista- lleva la firma de V?B? del Ing. Marcelo Quiroga),Informe de Suelos Agrícolas sin identificación del especialista y reportes de laboratorio - Geoptecnia (lleva la fir',8,122,'INVERS'),(870,'Cumple',NULL,'Se identifican mapas de ubicación a nivel nacional, departamental, municipal e imagen satelital del sitio de implementación de obras. ',9,122,'INVERS'),(871,'Cumple',NULL,'Existen los planos del proyecto pero se ubican en la carpeta de evaluación.',10,122,'INVERS'),(872,'Cumple',NULL,'El documento contiene análisis de Precios Unitarios y se encuentra en el anexo 13',11,122,'INVERS'),(873,'Cumple',NULL,'Se identifican las Especificaciones Técnicas en el documento y las mismas coinciden con los Precios Unitarios (Anexo 15)',12,122,'INVERS'),(874,'Cumple',NULL,'El documento contiene un presupuesto por componentes en el anexo 13',13,122,'INVERS'),(875,'Cumple',NULL,'El cronograma se encuentra en el anexo 17',14,122,'INVERS'),(876,'Cumple',NULL,'Nota de presentación a la Gobernación 5/3/2012',15,122,'INVERS'),(877,'No Cumple',NULL,'No se considera',16,122,'INVERS'),(878,'No Cumple',NULL,'No se considera',17,122,'INVERS'),(879,'No Cumple',NULL,'No se considera',18,122,'INVERS'),(880,'Cumple',NULL,'El estudio no presenta un análisis social ni económico de la población beneficiaria, se limita a indicar, mediante una proyección con datos del CENSO 2001, que existiría un total de 254 habitantes conformando 85 familias, las mismas que serán las benefici',53,122,'INVERS'),(881,'Cumple',NULL,'En el análisis económico financiero no han sido utilizadas las planillas parametrizadas; los indicadores de factibilidad dan cuenta de que el proyecto es viable económicamente ya que el VANS y el TIRS son positivos. Así mismo resulta ser el análisis costo',54,122,'INVERS'),(882,'Cumple',NULL,'Se verificó que existen varias actas de consentimiento y de apoyo al proyecto por parte de los miembros de la comunidad, así mismo hay compromisos de colaborar en todos los aspectos relacionados al proyecto y evitar algún tipo de convulsión social',19,122,'INVERS'),(883,'Cumple',NULL,'El informe es de fecha 7/5/12, la evaluación indica que los parámetros, coeficientes, metodología y normas empleadas son suficientes. En el aspecto técnico dan cuenta que el estudio cuanta con toda la información necesaria para ser construido. Pero se deb',20,122,'INVERS'),(884,'Cumple',NULL,'El informe es de fecha 7/5/12, evaluado por la ing. Dorothy Stephany Torrico A., donde se indica que el proyecto es económicamente factible aceptable financieramente. Ya que los indicadores socioeconómicos como el VANS es positivo, asimismo son las otras ',21,122,'INVERS'),(885,'Cumple',NULL,'El informe es de fecha 7/5/12, evaluado por la Ing. Dorothy Stephany Torrico A. en donde se indica que la población solicitó y formuló el proyecto por censo social, tomando en cuenta que el proyecto va a mejorar la calidad de vida de los beneficiarios log',22,122,'INVERS'),(886,'Cumple',NULL,'El informe es de fecha 7/5/12, evaluado por la ing. Dorothy Stephany Torrico A. en el cual se indica que verificada la pertinencia de mitigación, procesados los cambios respectivos en la matriz de medidas de mitigación, incorporado el presupuesto ambienta',23,122,'INVERS'),(887,'Cumple',NULL,'El informe es de fecha 7/5/12, evaluado por la ing. Dorothy Stephany Torrico A. donde se indica que el GAMC cuenta con una estructura institucional adecuada, aplica funciones y sistemas de la ley SAFCO, además de contar con capacidad financiera y fiscal, ',24,122,'INVERS'),(888,'Cumple',NULL,'El informe es de fecha 7/5/12, firmado por la ing. Dorothy Stephany Torrico A, donde se indica que en la visita de campo se verificó y aclaró algunos aspectos cuestionados en la evaluación en gabinete, por lo que se realizaron algunas modificaciones y aju',25,122,'INVERS'),(889,'Cumple',NULL,'El informe es de fecha 7/5/12, firmado por la ing. Dorothy Stephany Torrico A y el ing. Mario Severich Bustamante. El informe da cuenta de que el proyecto beneficiará a 18 familias, compuestas por 89 personas, de las cuales 40 son hombres y 49 mujeres. da',26,122,'INVERS'),(890,'No Cumple',NULL,'No se presenta el documento en la carpeta de evaluación del proyecto',27,122,'INVERS'),(891,'No Cumple',NULL,'No se presenta el documento en la carpeta de evaluación del proyecto.',28,122,'INVERS'),(892,'Cumple',NULL,'En fecha 11/06/12, se realiza el cierre de la etapa de evaluación del proyecto, donde se indica que los 15 items requeridos para la evaluación se encuentran dentro de la carpeta. El informes está firmado por la ing. Dorothy Stephany Torrico A y el ing. Ma',29,122,'INVERS'),(893,'Cumple',NULL,'Indica que el presupuesto total es de Bs. 973.659,19. el monto destinado a infraestructura es de Bs. 876.855,97, el monto destinado a capacitación es de Bs. 48,401,61. Y el monto destinado a supervisión es de BS.48,401,61.  ',30,122,'INVERS'),(894,'Cumple',NULL,'En fecha 9/4/12, Indica que el presupuesto total es de Bs. 973.659,19. dividido en 11 módulos.',31,122,'INVERS'),(895,'Cumple',NULL,'En fecha 9/4/12, Indica que el presupuesto total para la explosión de insumos es de Bs. 801.895,59 a tipo de cambio 6,86.',32,122,'INVERS'),(896,'Cumple',NULL,'Figura en la carpeta todo el análisis de precios unitarios en fecha 14/06/12',33,122,'INVERS'),(897,'No Cumple',NULL,'No se presenta el documento en la carpeta de evaluación del proyecto.',34,122,'INVERS'),(898,'Cumple',NULL,'En fecha 2/3/12 se emite el informe, el cual no cuenta con firmas ni con el nombre del/a evaluador/a. el punto 3 de datos específicos del proyecto se encuentra vacío, el informe está incompleto.',35,122,'INVERS'),(899,'Cumple',NULL,'En fecha 9/4/12 figuran dos matrices una en moneda nacional y la otra en dólares. El monto que total que figura en la matriz es de Bs. 864.524,08. en infraestructura el financiador aporta con el 85% que significa Bs. 668.041,33, el GAMC con el 15% que hac',36,122,'INVERS'),(900,'',NULL,'',37,122,'INVERS'),(901,'Cumple',NULL,'N° 067/2012',38,122,'INVERS'),(902,'Cumple',NULL,'28/05/2012 firmado por el gerente departamental del FPS en Cochabamba Ing. J. Nelson Rojas y el honorable alcalde municipal Ing. Pedro Padilla Antezana',39,122,'INVERS'),(903,'Cumple',NULL,'CONSTRUCCIÓN SISTEMA MICRORIEGO COMUNIDAD TUNARI',40,122,'INVERS'),(904,'Cumple',NULL,'920.775,13',41,122,'INVERS'),(905,'Cumple',NULL,'162.489,73',42,122,'INVERS'),(906,'',NULL,'',43,122,'INVERS'),(907,'Cumple',NULL,'(1ER-03)-03-005-12',44,122,'INVERS'),(908,'Cumple',NULL,'25 de mayo del 2012',45,122,'INVERS'),(909,'Cumple',NULL,'920.775,13',46,122,'INVERS'),(910,'Cumple',NULL,'162.489,73',47,122,'INVERS'),(911,'',NULL,'',48,122,'INVERS'),(912,'Cumple',NULL,'(2DO-03)-03-005-12',49,122,'INVERS'),(913,'Cumple',NULL,'25 de mayo del 2012',50,122,'INVERS'),(914,'Cumple',NULL,'920.775,13',51,122,'INVERS'),(915,'Cumple',NULL,'162.489,73',52,122,'INVERS'),(916,'Cumple',NULL,'La solicitud de financiamiento se encuentra dentro de la carpeta; sin embargo está incompleto: no tiene la fecha, le falta la descripción de la intervención solicitada en el proyecto, le falta el costo estimado del proyecto y el croquis de ubicación. La s',1,115,'INVERS'),(917,'Cumple',NULL,'La certificación se encuentra dentro de la carpeta, el documento se?ala que el GAM de Tapacarí certifica que el EI del proyecto \"Const. Sistema de micro riego Amaru Apharumiri\" se encuentra inscrito en el POA, PDM y PDD. El documento no tiene fecha y está',2,115,'INVERS'),(918,'No Cumple',NULL,'No se presenta el documento en la carpeta de evaluación del proyecto.',3,115,'INVERS'),(919,'Cumple',NULL,'En la carpeta se encuentra el documento que indican certificar la tenencia de los predios,  que está firmado por el dirigente Pastor Chinchilla, el documento indica que los beneficiarios del proyecto son los únicos propietarios de los predios, por lo tant',4,115,'INVERS'),(920,'Cumple',NULL,'El documento se encuentra presente dentro de la carpeta, el mismo india que tanto los dirigentes como los pobladores que son beneficiarios del proyecto se comprometen a realizar aportes mensuales de 10bs, el monto servirá para la reparación y mantenimient',55,115,'INVERS'),(921,'Cumple',NULL,'Dispone y cumple minimanente lo requerido',6,115,'INVERS'),(922,'Cumple',NULL,'Cumple con lo requerido',7,115,'INVERS'),(923,'Cumple',NULL,'Cumple lo establecido en la guía de riego menor.',8,115,'INVERS'),(924,'Cumple',NULL,'Cumple lo establecido en la Guía de Riego Menor.',9,115,'INVERS'),(925,'Cumple',NULL,'Los planos  topográficos cumplen la guía de riego menor, sin embargo se advierte que no lleva la firma del profesional responsable.',10,115,'INVERS'),(926,'Cumple',NULL,'Cumple lo establecido en la Guía de riego menor. ',11,115,'INVERS'),(927,'Cumple',NULL,'Las Especificaciones técnicas cumplen lo establecido en la Guía de riego menor.',12,115,'INVERS'),(928,'Cumple',NULL,'El presupuesto establecido en el estudio se encuentra de acuerdo al tipo y alcance del proyecto',13,115,'INVERS'),(929,'Cumple',NULL,'Presenta el cronograma de ejecución adecuado para el tipo de proyecto y  Cumple lo establecido en la guía de riego menor.',14,115,'INVERS'),(930,'Cumple',NULL,'Sobre el certificado DIA corresponde al N? 030602-12/DRNMA-FA-2932 cd-222/2012 emitido por Ing. Zenón Miranda Ossio de la DRRNN MA de la Gobernación de Cochabamba.',15,115,'INVERS'),(932,'No Cumple',NULL,'No lleva firma responsable del profesional correspondiente',16,115,'INVERS'),(933,'No Cumple',NULL,'No considera',17,115,'INVERS'),(934,'No Cumple',NULL,'No considera',18,115,'INVERS'),(935,'Cumple',NULL,'El componente de análisis socioeconómico se encuentra dentro del estudio, donde se indica que la población beneficiaria comprende a 75 familias, que significa un total de 374 personas, de las cuales 152 son mujeres y 222 son hombres. El componente identif',53,115,'INVERS'),(936,'Cumple',NULL,'Para la evaluación socioeconómica y financiera, se ha hecho uso de las planillas parametrizadas donde dan cuenta que tanto el VANP, VANS, TIRP y TIRS son positivos lo que hace que el proyecto sea factible social y económicamente así mismo el análisis cost',54,115,'INVERS'),(937,'',NULL,'',19,115,'INVERS'),(938,'Cumple',NULL,'El informe de la evaluación técnica es firmado y evaluado por el Ing. Roberto Jiménez Ferrufino en fecha 22/03/12, el resultado del informe es positivo, ya que el proyecto técnicamente cuenta con toda la información adecuada para llevar a cabo la construc',20,115,'INVERS'),(939,'Cumple',NULL,'El informe de la evaluación socioeconómica es firmado y evaluado por el ing. Roberto Jiménez Ferrufino en fecha 22/03/12, el informe es el resultado de la categorización  por tipo de indicador, en el cual se presentan los indicadores socioeconómicos, financieros y de costo - eficiencia, todos estos al ser positivos concluyen que el proyecto es económicamente factible, según el evaluador.',21,115,'INVERS'),(940,'Cumple',NULL,'El informe de la valoración social es firmado y evaluado por el ing. Roberto Jiménez Ferrufino en fecha 22/03/12, el resultado del informe está basado en la categorización por tipo de variable, en este caso el proyecto obtuvo 8,5 puntos lo cual según el i',22,115,'INVERS'),(941,'Cumple',NULL,'El informe de evaluación ambiental es firmado y evaluado por el ing. Roberto Jiménez Ferrufino en fecha 22/03/12, el informe indica que el proyecto cuenta con una matriz ed medidas de mitigación, al mismo tiempo estas medidas son pertinentes y adecuadas, ',23,115,'INVERS'),(942,'Cumple',NULL,'El informe de valoración institucional es firmado y evaluado por el ing. Roberto Jiménez Ferrufino en fecha 22/03/12, el informe indica que el proyecto es institucionalmente factible, ya que la alcaldía de Tapacarí cuenta con una estructura organizacional',24,115,'INVERS'),(943,'',NULL,'El informe de visita de campo es firmado y evaluado por el ing. Roberto Jiménez Ferrufino en fecha 22/03/12, según el informe la visita de campo se la realizó el 21/3/12, donde se ha podido evaluar todos los aspectos más importantes referidos al proyecto.',25,115,'INVERS'),(944,'Cumple',NULL,'El dictamen final de la evaluación integral es firmado y evaluado por el ing. Roberto Jiménez Ferrufino en fecha 22/03/12, el informe da cuenta de que la población beneficiaria está conformada por 75 familias que significa 375 personas de las cuales 176 s',26,115,'INVERS'),(945,'No Cumple',NULL,'No se presenta el documento en la carpeta de evaluación del proyecto.',27,115,'INVERS'),(946,'No Cumple',NULL,'No se presenta el documento en la carpeta de evaluación del proyecto.',28,115,'INVERS'),(947,'Cumple',NULL,'El Acta de cierre del proyecto en su etapa de evaluación está firmado por el ing. Mario Severich (Jefe técnico) y el ing. Carlos Ledezma (Profesional técnico evaluador), en fecha 23/08/2012, el acta indica que los ítems de documentación se encuentran firm',29,115,'INVERS'),(948,'Cumple',NULL,'El reporte es realizado el 7/8/12, el mismo indica que el presupuesto para el proyecto es de 851.251,91, desglosado en sus tres componentes: Infraestructura: 780,965.06 bs, Capacitación: Bs. 31.238,60 y supervisión: 39.048,25',30,115,'INVERS'),(949,'Cumple',NULL,'El reporte es realizado el 7/8/12, el mismo indica que el presupuesto para el proyecto es de 851.251,91, desglosado en 12 módulos.',31,115,'INVERS'),(950,'Cumple',NULL,'El reporte de explosión de insumos ha sido realizado el 7/8/12, el monto asignado es de 611.516,08 bs a tipo de cambio 6,86',32,115,'INVERS'),(951,'Cumple',NULL,'El reporte es realizado el 7/8/12. Se encuentra completo, con los 11 módulos desglosados.',33,115,'INVERS'),(952,'No Cumple',NULL,'No se presenta el documento en la carpeta de evaluación del proyecto.',34,115,'INVERS'),(953,'Cumple',NULL,'El reporte es realizado el 7/8/12, el reporte detalla la cantidad de beneficiarios con el proyecto, indica que el número de hectáreas incrementales es de 25. No brinda datos específicos del proyecto y no tienen ninguna firma.',35,115,'INVERS'),(954,'Cumple',NULL,'El reporte es realizado el 7/8/12, el reposte de la matriz corresponde a la etapa 20, que indica que el presupuesto es monto total es de 859.891,81 bs, de los cuales 781.719,83 corresponden a infraestructura. El 85% asumido por el financiador (664.461,86 ',36,115,'INVERS'),(955,'',NULL,'',37,115,'INVERS'),(956,'Cumple',NULL,'N° 136/2012',38,115,'INVERS'),(957,'Cumple',NULL,'Se firma el 14/7/2012, donde firman el gerente departamental del FPS ing. Nelson Rojas y el honorable alcalde municipal de Tapacarí  Modesto Mamani Reque.',39,115,'INVERS'),(958,'Cumple',NULL,'SISTEMA DE RIEGO APHARUMIRI AMARU (TAPACARI)',40,115,'INVERS'),(959,'Cumple',NULL,'723.564,12',41,115,'INVERS'),(960,'Cumple',NULL,'127.687,79',42,115,'INVERS'),(961,'',NULL,'',43,115,'INVERS'),(962,'Cumple',NULL,'(1ER-03)-03-026-12',44,115,'INVERS'),(963,'Cumple',NULL,'07 de agosto del 2012',45,115,'INVERS'),(964,'Cumple',NULL,'723.564,12',46,115,'INVERS'),(965,'Cumple',NULL,'127.687,79',47,115,'INVERS'),(966,'',NULL,'',48,115,'INVERS'),(967,'Cumple',NULL,'(2D-03)-03-026-12',49,115,'INVERS'),(968,'Cumple',NULL,'07 de agosto de 2012',50,115,'INVERS'),(969,'Cumple',NULL,'723.564,12',51,115,'INVERS'),(970,'Cumple',NULL,'127.687,79',52,115,'INVERS'),(971,'Cumple',NULL,'Dentro de la carpeta de evaluación figuran dos cartas solicitando financiamiento la primera es en fecha 22/3/12 dirigida al FPS. A tiempo de solicitar el financiamiento del proyecto se comprometen a respetar los procedimientos de licitación, cumplir con e',1,112,'INVERS'),(972,'Cumple',NULL,'El documento de certificación no cuenta con fecha; sin embargo figura el proyecto \"Construcción atajados Pucaruma\" dentro del POA de la gestión 2012 con un monto total de Bs122.941,00, firmada por el alcalde Martin Siles, el secretario Jorge Arispe y el d',2,112,'INVERS'),(973,'Cumple',NULL,'Memorándum CBB/GD/3000/024/2012, se trata de un memorándum de asignación de parte del Ing. Nelson Rojas Angulo (gerente departamental) hacia el Ing. Juan Laime Ricaldez (profesional técnico) donde se indica que ha sido asignada como responsable del proces',3,112,'INVERS'),(974,'Cumple',NULL,'Dentro de la carpeta figura un documento de respaldo sobre la tenencia legal de los predios donde se encuentran las obras del proyecto. El documento está firmado por el alcalde Martín Siles Iriarte y el dirigente Lucio Aguayo. En el documento se indica qu',4,112,'INVERS'),(975,'Cumple',NULL,'No existe un documento en el cual sólo se haga referencia a este punto, sin embargo en una carta enviada el 22/3/2012 al FPS solicitando el financiamiento, se encuentra estipulado el compromiso de la comunidad de GARANTIZAR LA OPERACIÓN Y MANTENIMIENTO DE',55,112,'INVERS'),(976,'',NULL,'',6,112,'INVERS'),(977,'Cumple',NULL,'El proyecto cuenta con una descripción del proyecto en dos anillados como dise?o final ',7,112,'INVERS'),(978,'Cumple',NULL,'Deficiencia en el dise?o de la obra de captación, por falta de análisis del estudio de la hidrología, así mismo el componente de la geología es muy deficiente.',8,112,'INVERS'),(979,'Cumple',NULL,'En el Anexo I se presenta un mapa de ubicación del proyecto 27 Atajados',9,112,'INVERS'),(980,'Cumple',NULL,'Anexo VIII presenta planos de construcción pero no se muestra topografía.',10,112,'INVERS'),(981,'Cumple',NULL,'En el Anexo XIV, se presenta los precios unitarios de forma correcta.',11,112,'INVERS'),(982,'Cumple',NULL,'El informe cuenta con especificaciones técnicas; sin embargo las Especificaciones técnicas de impermeabilización no están en el presupuesto.',12,112,'INVERS'),(983,'Cumple',NULL,'Presenta presupuesto en la pagina 37 de informe de dise?o final',13,112,'INVERS'),(984,'Cumple',NULL,'Presenta cronograma de ejecución en los anexos S/N de pagina',14,112,'INVERS'),(985,'Cumple',NULL,'Se presenta ficha ambiental con firmas del las autoridades correspondientes en documento del Dise?o Final.',15,112,'INVERS'),(986,'Cumple',NULL,'Presenta planos con firma del responsable',16,112,'INVERS'),(987,'Cumple',NULL,'Se hace mención del uso de áridos en la zona de los 27 atajado en el punto 4 del informe de dise?o ',17,112,'INVERS'),(988,'No Cumple',NULL,'No reporta',18,112,'INVERS'),(989,'Cumple',NULL,'Según el estudio los directos beneficiarios del proyecto son 27 familias, por lo tanto se construirían 27 atajados, el documento hace referencia a los principales cultivos que existen en la zona y la principal actividad económica de los pobladores; realiz',53,112,'INVERS'),(990,'Cumple',NULL,'Dentro del documento no figura el análisis de los indicadores financieros ni de los indicadores socioeconómicos; sin embargo en el anexo de planillas parametrizadas figuran estos datos que revelan que el TIRP es 24, 22% y el VANP es 36.792,38. Mientras qu',54,112,'INVERS'),(991,'Cumple',NULL,'Existen varias actas de conformidad de la comunidad así como se adjuntan los formularios de valoración social que se encuentran firmados por los representantes de las comunidades y comunitarios de base que se consideran beneficiarios del proyecto.',19,112,'INVERS'),(992,'Cumple',NULL,'El informe es evaluado y firmado por el ing. Juan Laime Ricaldez en fecha 3/5/12, donde se indica que el proyecto tiene toda la información adecuada para ser construido, en cuanto a la seguridad del dise?o los parámetros, variables metodología y normas ut',20,112,'INVERS'),(993,'Cumple',NULL,'El informe es evaluado y firmado por el ing. Juan Laime Ricaldez en fecha 3/5/12, el informe indica que el proyecto es económicamente factible de acuerdo a los indicadores  socioeconómicos, financieros y de costo eficiencia, todas las categorías son posit',21,112,'INVERS'),(994,'Cumple',NULL,'El informe es evaluado y firmado por el ing. Juan Laime Ricaldez en fecha 3/5/12, indica que la población de Pucaruma solicitó y formuló el proyecto por consenso social tomando en cuenta que la ejecución del mismo va a mejorar la calidad de vida de los be',22,112,'INVERS'),(995,'Cumple',NULL,'El informe es evaluado y firmado por el ing. Juan Laime Ricaldez en fecha 3/5/12, dicho informe indica que la pertinencia de los documentos ambientales y la incorporación del presupuesto ambiental en el presupuesto general concluyen en que el proyecto sea',23,112,'INVERS'),(996,'Cumple',NULL,'El informe es evaluado y firmado por el ing. Juan Laime Ricaldez en fecha 3/5/12, el informe concluye que el gobierno municipal de Sacabamba cuenta con la estructura institucional adecuada y aplica varias funciones y sistemas de la ley SAFCO, además de co',24,112,'INVERS'),(997,'Cumple',NULL,'El informe es evaluado y firmado por el ing. Juan Laime Ricaldez en fecha 3/5/12,  el informe indica que en campo se pudieron verificar todos los aspectos que habían sido observados en gabinete y que se deberán efectuar algunos ajustes en el presupuesto. ',25,112,'INVERS'),(998,'Cumple',NULL,'El informe es de fecha 3/5/12, firmado por el ing. Juan Laime Ricaldez y el ing. Mario Severich Bustamante, donde se da cuenta que en el sector existen 38 familias, haciendo un total de 171 personas de las cuales 89 son varones y 82 mujeres. Se indica que',26,112,'INVERS'),(999,'Cumple',NULL,'Se encuentra presente con los puntos requeridos: Objetivos, Indicadores, fuentes de verificación y supuestos.',27,112,'INVERS'),(1000,'No Cumple',NULL,'No se presenta el documento en la carpeta de evaluación del proyecto.',28,112,'INVERS'),(1001,'Cumple',NULL,'El informe de cierre del proyecto de la etapa de evaluación, indica el detalle de los 15 items requeridos, todos firmados y llenados por el responsable , la acta la firman el ing. Mario Severich (Jefe Técnico) y el ing. Carlos Ledezma (profesional técnico',29,112,'INVERS'),(1002,'Cumple',NULL,'En fecha 13/06/12, Indica que el presupuesto total es de Bs. 581.432,64, el monto destinado a infraestructura es de Bs. 535.432,64, el monto destinado a capacitación es de Bs. 21.000,00. Y el monto destinado a supervisión es de BS.25.000,00.  ',30,112,'INVERS'),(1003,'Cumple',NULL,'En fecha 13/06/12 se indica que el monto total es de 581.432,64, correspondiente a cinco módulos.',31,112,'INVERS'),(1004,'Cumple',NULL,'En fecha 13/06/12 el presupuesto para explosión de insumos es de Bs. 458.039,32 a tipo de cambio 6,86.',32,112,'INVERS'),(1005,'Cumple',NULL,'Se encuentra dentro la carpeta con fecha 13/06/12.',33,112,'INVERS'),(1006,'No Cumple',NULL,'No se presenta el documento en la carpeta de evaluación del proyecto.',34,112,'INVERS'),(1007,'Cumple',NULL,'En fecha 13/06/12 se presenta el informe de evaluación en el que consta que el número de hectáreas incrementales es de 27, la duración del proyecto debería ser 180 días. El monto solicitado que figura es de Bs. 849.778,38. Así mismo figuran los indicadore',35,112,'INVERS'),(1008,'Cumple',NULL,'En fecha 13/06/12 se realiza la matriz de cofinanciamiento, en donde figuran los siguientes montos en dólares: El total es 84.756,94, en lo referente a infraestructura el financiador asume el 85% (66.343,69), el solicitante asume el 15% (11.707,71). en ca',36,112,'INVERS'),(1009,'',NULL,'',37,112,'INVERS'),(1010,'Cumple',NULL,'48/2012',38,112,'INVERS'),(1011,'Cumple',NULL,'10/7/12, firmado por el gerente departamental del FPS Cochabamba, ing. Nelson Rojas y el honorable alcalde municipal de Sacabamba Martin Siles.',39,112,'INVERS'),(1012,'Cumple',NULL,'CONST. ATAJADOS EN LA COMUNIDAD DE PUCARUMA',40,112,'INVERS'),(1013,'Cumple',NULL,'494.217,75',41,112,'INVERS'),(1014,'Cumple',NULL,'87.214,89',42,112,'INVERS'),(1015,'',NULL,'',43,112,'INVERS'),(1016,'Cumple',NULL,'(1ER-03)-03-024-12',44,112,'INVERS'),(1017,'Cumple',NULL,'03 de agosto del 2013',45,112,'INVERS'),(1018,'Cumple',NULL,'494.217,75',46,112,'INVERS'),(1019,'Cumple',NULL,'87.214,89',47,112,'INVERS'),(1020,'',NULL,'',48,112,'INVERS'),(1021,'Cumple',NULL,'(2D-03)-03-024-12',49,112,'INVERS'),(1022,'Cumple',NULL,'03 de agosto de 2012',50,112,'INVERS'),(1023,'Cumple',NULL,'494.217,75',51,112,'INVERS'),(1024,'Cumple',NULL,'87.214,89',52,112,'INVERS'),(1025,'Cumple',NULL,'La solicitud de financiamiento se encuentra dentro de la carpeta en el formato del FPS, donde se detalla el nombre del proyecto y sus características, firmado por el honorable alcalde del municipio Fidel Rojas Catorceno',1,106,'INVERS'),(1026,'Cumple',NULL,'Dentro del documento se encuentra la carta con cite: GAMP/INST./N°131/2012, donde se indica que se certifica la inclusión del proyecto \"Construcción puente vehicular Phajcha Mayu - Cóndor Pata\", en el POA  de la gestión 2012.',2,106,'INVERS'),(1027,'Cumple',NULL,'El memorandum CBB/GD/3000/046/2012, con fecha 10/2/12, está dirigido al Ing. Mario Cosio donde se le indica que se le asigna como responsable en el proceso de evaluación, contratación y seguimiento del proyecto.',3,106,'INVERS'),(1028,'Cumple',NULL,'Dentro de la carpeta se encuentran acuerdos de sesión voluntaria de predio por afectación parcial, estas actas son llenadas y firmadas por los/as pobladores que están cediendo una parte de sus terrenos (cada uno señala la superficie que sede) para la construcción  del puente, en total son cuatro acuerdos.\r\n',4,106,'INVERS'),(1029,'No Cumple',NULL,'No se presenta el documento en la carpeta de evaluación del proyecto.',55,106,'INVERS'),(1030,'',NULL,'',6,106,'INVERS'),(1031,'Cumple',NULL,'Se presenta dentro el documento por el Consultor Ing. Jhonny Quiroga',7,106,'INVERS'),(1032,'Cumple',NULL,'Dispone de la memoria Consultor Ing. Jhonny Quiroga, firma Planos Ing. Salomon Balderrama',8,106,'INVERS'),(1033,'Cumple',NULL,'Cumple lo establecido en la ET´s ',9,106,'INVERS'),(1034,'Cumple',NULL,'Los planos llevan la firma del Ing. Salomon Balderrama',10,106,'INVERS'),(1035,'Cumple',NULL,'Dispone de lo establecido y requerido según las especificaciones técnicas',11,106,'INVERS'),(1036,'Cumple',NULL,'Las Especificaciones técnicas insertadas cumplen con la norma vigente y lo establecido.',12,106,'INVERS'),(1037,'Cumple',NULL,'Presupuesto de Obra Bs.	565.499,05; Supervisión de Obra	Bs. 28.275,00\r\n',13,106,'INVERS'),(1038,'Cumple',NULL,'Se prevee 120 dias calendario',14,106,'INVERS'),(1039,'Cumple',NULL,'Certificado DIA N? 031202-06/DRNMA-FA N? 2726 CD-119/2012',15,106,'INVERS'),(1040,'No Cumple',NULL,'No considera',16,106,'INVERS'),(1041,'No Cumple',NULL,'No considera',17,106,'INVERS'),(1042,'No Cumple',NULL,'No considera',18,106,'INVERS'),(1043,'Cumple',NULL,'Dentro del estudio a dise?o final, se puede evidenciar información acerca de las características socioeconómicas de la población beneficiaria por el proyecto. Donde se se?ala que la comunidad Condor Pata tiene 463 habitantes nucleados 107 familias mientra',53,106,'INVERS'),(1044,'Cumple',NULL,'Se presenta en el estudio TESA',54,106,'INVERS'),(1045,'Cumple',NULL,'Dentro del estudio a diseño final, se puede evidenciar información acerca de las características socioeconómicas de la población beneficiaria por el proyecto. Donde se señala que la comunidad Condor Pata tiene 463 habitantes nucleados 107 familias mientras que la otra comunidad beneficiaria La Habana, tiene 333 habitantes nucleados en 78 familias. También e observa información sobre el origen de la población beneficiaria, el idioma que se habla, la cantidad de tierras cultivadas y no cultivadas en hectáreas y el nivel de ingresos aproximado de la población beneficiaria. Dentro el estudio también se hace referencia a la disponibilidad de servicios básicos en las comunidades. La comunidad de Condor Pata no tiene acceso a energía eléctrica; sin embargo la comunidad de la Habana sí. El acceso al agua es uniforme, ambas comunidades cuentan con una red de agua potable. Respecto a la variable de educación, el informe se encuentra completo, ya que muestra el nivel de educación alcanzado por los jefes de familia de ambas comunidades, donde se puede observar que la mayoría solo alcanzaron a cursas el nivel primario. En cuanto a salud, el informe carece de información acerca de los centros de salud en la zona y las enfermedades más recurrentes de sus pobladores. El análisis socioeconómico del proyecto está completo, sin embargo hubiera sido interesante ver datos sobre natalidad y mortalidad. El monto final del presupuesto es 572.787,48 bs.\r\n',19,106,'INVERS'),(1046,'Cumple',NULL,'El informe de evaluación técnica es firmado y evaluado por el ing. Mario Cosio en fecha 26/3/12, dicho informe señala que desde el punto de vista de la seguridad del diseño, los parámetros coeficientes, metodología y normas empleadas son suficientes, y desde el punto de vista técnico el proyecto cuenta con toda la información necesaria para ser construido. Sin embargo recomienda complementar ensayos en la etapa de construcción para la elección de materiales. El evaluador indica que el municipio deberá ejecutar rellenos y cortes para los accesos y los aleros para la protección de los estribos y terraplenes.\r\n',20,106,'INVERS'),(1047,'Cumple',NULL,'El informe de evaluación socioeconómica es firmado y evaluado por el ing. Mario Cosio en fecha 26/3/12, según la categorización del resultado por tipo de indicador, los indicadores socioeconómicos, financieros y de costo – eficiencia son positivos. Por lo tanto se concluye que el proyecto es económicamente factible.\r\n',21,106,'INVERS'),(1048,'Cumple',NULL,'El informe de valoración social es firmado y evaluado por el ing. Mario Cosio en fecha 26/3/12. Según la categorización de resultado por tipo de variable, el resultado de los cuestionarios aplicados suma 10 puntos, por lo tanto el proyecto es socialmente factible. El evaluador indica que la población de las comunidades solicitó y formularon el proyecto por consenso, ya que el mismo mejorará su calidad de vida y los ingresos económicos. Los formularios de valoración institucional se encuentran dentro de la carpeta debidamente llenados y firmados por los beneficiarios.\r\n',22,106,'INVERS'),(1049,'Cumple',NULL,'El informe de evaluación ambiental es firmado y evaluado por el ing. Mario Cosio en fecha 26/3/12. El informe indica que el proyecto cuenta con las medidas de mitigación, las mismas que son pertinentes y adecuadas, también se verificó que se incorporó el presupuesto ambiental dentro del presupuesto general, razón por la cual el proyecto es ambientalmente positivo.\r\n',23,106,'INVERS'),(1050,'Cumple',NULL,'El informe de valoración institucionales firmado y evaluado por el ing. Mario Cosio en fecha 26/3/12, de acuerdo a los rangos para la valoración institucional el proyecto se encuentra dentro del rango positivo, por lo que el evaluador concluye que el GAM de Pojo puede encarar la operación y mantenimiento del proyecto.\r\n',24,106,'INVERS'),(1051,'Cumple',NULL,'El informe de visita de campo es firmado y evaluado por el ing. Mario Cosio en fecha 16/3/12, donde se señala que la ubicación del emplazamiento del puente es coherente con lo descrito en el proyecto. Todos los componentes están e acuerdo a lo requerido por lo que el evaluador concluye que en la visita a campo se verificaron y aclararon aspectos cuestionados en la evaluación de gabinete, por lo que se realizaron algunos ajustes al presupuesto, finalmente recomienda que la obra debe ser ejecutada en época de estiaje.\r\n',25,106,'INVERS'),(1052,'Cumple',NULL,'El dictamen final de la evaluación integral es firmado y evaluado por el ing. Mario Cosio en fecha 26/3/12, donde señala que la población total beneficiaria es de 796 personas, (185 familias). El presupuesto solicitado que figura en la carpeta es de 565.194,93 bs. Donde el aporte del financiador es del 85% (480.674,19bs) y la contraparte del municipio es de 15% (84.824,86bs). Dentro del informe se observan los indicadores socioeconómicos y financieros del proyecto. El dictamen final indica que de acuerdo a los requisitos exigidos por el FPS, se recomienda la aprobación del proyecto.\r\n',26,106,'INVERS'),(1053,'Cumple',NULL,'Se encuentra dentro del TESA en la pagina 48',27,106,'INVERS'),(1054,'No Cumple',NULL,'No se presenta el documento en la carpeta de evaluación del proyecto.',28,106,'INVERS'),(1055,'Cumple',NULL,'El acta de cierre del proyecto en la etapa de evaluación detalla que la documentación requerida (15 ítems) se encuentran dentro de la carpeta, el acta es firmada el 7/8/12 por Mario Severich y Mario Cosio.',29,106,'INVERS'),(1056,'Cumple',NULL,'El reporte es generado el 22/5/12, donde se detalla lo siguiente: Presupuesto total: 593.774,05bs. El monto destinado a Infraestructura es de565.499,05, y el monto destinado a supervisión es de 28.275,00 bs.',30,106,'INVERS'),(1057,'Cumple',NULL,'El reporte es generado el 7/5/12, donde se detalla lo siguiente: Presupuesto total: 593.774,05bs, dividido en 5 módulos: Actividades preliminares y complementarias, infraestructura, superestructura, medidas de mitigación ambiental y supervisión.',31,106,'INVERS'),(1058,'Cumple',NULL,'El reporte es generado el 22/5/12, donde se detalla que el monto asignado es de 502.771,04 bs a tipo de cambio 6,86.',32,106,'INVERS'),(1059,'Cumple',NULL,'El reporte es generado el 22/5/12, donde están expresados los precios unitarios de los cinco modulos propuestos. ',33,106,'INVERS'),(1060,'No Cumple',NULL,'No se presenta el documento en la carpeta de evaluación del proyecto.',34,106,'INVERS'),(1061,'Cumple',NULL,'El reporte del proyecto es emitido el 24/5/12, donde se indica que el monto solicitado es de 572.787,48 bs, el tiempo estimado para la ejecución es de 150 días. Figuran datos específicos del proyecto, sin embargo el informe no contiene los indicadores socioeconómicos. El informe no contiene firmas ni responsables.\r\n',35,106,'INVERS'),(1062,'Cumple',NULL,'LA matriz de cofinanciamiento es generaada el 22/5/12, donde se indica lo siguiente: Infraestrucutra: El financiador asumira el 85% ($us 70.069,12) y la contraparte municiapl el 15% ($us12.365,12). Supervisión: el financiador asumirá el 85% ($us3.503,46) y la contraparte municipal el 15% ($us 618,26)\r\n',36,106,'INVERS'),(1063,'',NULL,'',37,106,'INVERS'),(1064,'Cumple',NULL,'31/2012',38,106,'INVERS'),(1065,'Cumple',NULL,'El CTF es firmado por el gerente departamental del FPS Ing. Nelson Rojas y el honorable alcalde de Pojo Fidel Rojas en fecha 14/8/12',39,106,'INVERS'),(1066,'Cumple',NULL,'CONST. PUENTE VEHICULAR PAJCHA MAYU CONDOR PATA (POJO)',40,106,'INVERS'),(1067,'Cumple',NULL,'504.707,94',41,106,'INVERS'),(1068,'Cumple',NULL,'89.066,11',42,106,'INVERS'),(1069,'',NULL,'',43,106,'INVERS'),(1070,'Cumple',NULL,'(1ER-03)-03-026-12',44,106,'INVERS'),(1071,'Cumple',NULL,'07 de agosto de 2012',45,106,'INVERS'),(1072,'Cumple',NULL,'504.707,94',46,106,'INVERS'),(1073,'Cumple',NULL,'89.066,11',47,106,'INVERS'),(1074,'',NULL,'',48,106,'INVERS'),(1075,'Cumple',NULL,'(2DO-03)-03-026-12',49,106,'INVERS'),(1076,'Cumple',NULL,'07 de agosto de 2012',50,106,'INVERS'),(1077,'Cumple',NULL,'504.707,94',51,106,'INVERS'),(1078,'Cumple',NULL,'89.066,11',52,106,'INVERS'),(1079,'Cumple',NULL,'En fecha 04/06/12 el GAM de Sicaya envía una carta solicitando el financiamiento y registro en precartera del proyecto \"Const. De muros defensivos sobre el rio Arque y Sayari\" indicando que los beneficiarios serán 240 familias. La carta está firmada por el alcalde Jorge Sanchez Peñaranda.\r\n',1,64,'INVERS'),(1080,'No Cumple',NULL,'No se presenta el documento en la carpeta de evaluación del proyecto.',2,64,'INVERS'),(1081,'No Cumple',NULL,'No se presenta el documento en la carpeta de evaluación del proyecto.',3,64,'INVERS'),(1082,'No Cumple',NULL,'No se presenta el documento en la carpeta de evaluación del proyecto.',4,64,'INVERS'),(1083,'No Cumple',NULL,'No se presenta el documento en la carpeta de evaluación del proyecto.',55,64,'INVERS'),(1084,'',NULL,'',6,64,'INVERS'),(1085,'Cumple',NULL,'Se presenta una descripción resumida del proyecto como ficha tecnica',7,64,'INVERS'),(1086,'Cumple',NULL,'En el capitulo 2.1 pagina 32 criterios básicos del dise?o se presenta los cálculos necesarios para el estudio ',8,64,'INVERS'),(1087,'Cumple',NULL,'En la pagina 3 se presenta el mapa de ubicación del proyecto en anexos también presenta un plano de ubicación en tama?a A3.',9,64,'INVERS'),(1088,'Cumple',NULL,'Los planos presentan la ubicación, topografía y otros detalles necesarios',10,64,'INVERS'),(1089,'Cumple',NULL,'Anexo 7, presenta  análisis de precios unitarios Anexo 8, presenta presupuesto',11,64,'INVERS'),(1090,'Cumple',NULL,'Anexo 15, si presenta especificaciones técnicas',12,64,'INVERS'),(1091,'Cumple',NULL,'Anexo 8, presenta el presupuesto',13,64,'INVERS'),(1092,'Cumple',NULL,'Presenta el cronograma de ejecución adecuado para el tipo de proyecto y Cumple lo establecido.',14,64,'INVERS'),(1093,'Cumple',NULL,'Revisada la documentación se verifica que el proyecto cuenta con Licencia Ambiental Categoría III - DIA: N? 050102-06-CD-C3-022/2013',15,64,'INVERS'),(1094,'Cumple',NULL,'Los planos presentan firma de responsable',16,64,'INVERS'),(1095,'No Cumple',NULL,'No presenta',17,64,'INVERS'),(1096,'No Cumple',NULL,'No presenta',18,64,'INVERS'),(1097,'Cumple',NULL,'Según el análisis socioeconómico el total de los beneficiarios con el proyecto es de 700 personas que conforman 173 familias en las cuatro comunidades: Kara Kara, Liquimpay, Higuerani y Soraraya. Existe información de suma importancia como: principales ac',53,64,'INVERS'),(1098,'Cumple',NULL,'El documento hace referencia a un presupuesto de Bs. 1.45.576,71 para la ejecución del proyecto. Respecto a los indicadores socioeconómicos y financieros, según el estudio el proyecto tiene una tasa de rendimiento del 10,09% adicional al costo de oportuni',54,64,'INVERS'),(1099,'Cumple',NULL,'Según el análisis socioeconómico el total de los beneficiarios con el proyecto es de 700 personas que conforman 173 familias en las cuatro comunidades: Kara Kara, Liquimpay, Higuerani y Soraraya. Existe información de suma importancia como: principales actividades productivas, principales cultivos, servicios y medios de comunicación, salud, infraestructura en salud, organizaciones y estructura organizativa (hace mención a los sindicatos y grupos locales existentes); sin embargo no se tomaron en cuenta las variables de educación y acceso a servicios básicos, que son de suma importancia para una evaluación social. Se verifica que se trabajó con fuentes secundarias como el INE y el PDM del municipio. Aún sigue siendo un análisis no exhaustivo y no da una visión real de la situación actual (antes del proyecto) de las comunidades. \r\n',19,64,'INVERS'),(1100,'Cumple',NULL,'El informe de evaluación técnica se realiza en fecha 5/7/12 firmada y evaluada por el ing. Carlos Ledezma Román. En el informe da cuenta de la estructura de financiamiento, el estudio de alternativas, los planos de construcción, cómputos métricos entre otros. El resultado de la evaluación es positivo, ya que el proyecto es técnicamente factible, cumple con la evaluación a través de la verificación de la calidad de aspectos y documentos técnicos, tanto en la evaluación en gabinete como la evaluación en la visita a campo.\r\n',20,64,'INVERS'),(1101,'Cumple',NULL,'El informe de evaluación socioeconómica se realiza en fecha 5/7/12 firmada y evaluada por el ing. Carlos Ledezma Román. El informe evalúa los indicadores socioeconómicos, financieros y el análisis costo-eficiencia. El resultado es positivo ya que la comparación entre los costos referenciales de los diferentes sectores con el costo anual equivalente social y privado, todos estos demuestran la factibilidad socioeconómica del proyecto.\r\n',21,64,'INVERS'),(1102,'Cumple',NULL,'El informe de valoración social se realiza en fecha 5/7/12 firmado y evaluado por el ing. Carlos Ledezma Román, el resultado basado en la categorización de resultados por tipo de variable, done son categorizados como proyecto socialmente no factibles aquellos que tenga al menos una de las variables de evaluación social con resultado negativo. Las variables tomadas en cuenta son: Consenso social, acceso a servicios, equidad social, capital social y control social. En este caso según los cuestionarios todas son positivas. Se anexa los formularios debidamente llenados y firmados por autoridades y comunarios de los cuatro sectores beneficiados.\r\n',22,64,'INVERS'),(1103,'Cumple',NULL,'El informe de evaluación ambiental se realiza en fecha 5/7/12 firmado y evaluado por el ing. Carlos Ledezma Román, en dicho informe se indica que el proyecto evaluado es ambientalmente positivo; sin embargo se recomienda que en cumplimiento a la ley N° 1333, ley de medio ambiente, se comunique al GAM que tiene la obligación de cumplir con lo establecido en la licencia ambiental del proyecto reflejado en la matriz de medidas de mitigación.\r\n',23,64,'INVERS'),(1104,'Cumple',NULL,'El informe de valoración institucional se realiza en fecha 5/7/12 firmado y evaluado por el ing. Carlos Ledezma Román, el informe indica que el proyecto es institucionalmente factible, ya que la alcaldía de Sicaya cuenta con una estructura organizacional, aplicación de funciones sistema SAFCO, capacidad financiera y fiscal y es capaz de encarar la operación y mantenimiento del proyecto. La valoración es el resultado de la evaluación según los rangos que maneja el FPS para la valoración institucional.\r\n',24,64,'INVERS'),(1105,'Cumple',NULL,'El informe de visita de campo se realiza en fecha 5/7/12 firmada y evaluada por el ing. Carlos Ledezma Román. El informe indica que la ubicación del proyecto coincide con lo descrito en la memoria, ya que pasa y beneficia a las 4 comunidades, así mismo la información presenta en los planos es coherente con la ubicación de los muros defensivos. SE realiza una observación en cuanto al presupuesto ya que este incrementaría debido a la lejanía de la zona. La verificación socioeconómica y social dan cuenta de que los/as comunarios ven como necesaria la construcción de los muros ya que les beneficiará tanto económicamente como en la mejora de su calidad de vida. El resultado de la evaluación da cuenta de que no existen observaciones y recomienda ejecutar la obra en época de estiaje. Existen las fotografías de la visitas\r\n',25,64,'INVERS'),(1106,'Cumple',NULL,'El dictamen final de la evaluación integral se realiza en fecha 5/7/12 firmada y evaluada por el ing. Carlos Ledezma Román. El informe indica que el monto solicitado es de Bs. 1.451.511,36 y el monto evaluado es de Bs. 1.452.544,30. Dividendo el monto de la siguiente manera: la entidad financiadora aportará con el 85% (1.234.662,66bs) y el gobierno municipal hará la contraparte con el 15% (217.881,65bs). El plazo de ejecución del proyecto es de 120 días calendario. Los resultados de todos los ámbitos de evaluación son positivos y factibles, por lo que el dictamen final dice lo siguiente: El proyecto es viable, ya que prevé el óptimo uso de la infraestructura de riego para cumplir con los objetivos generales y específicos planteados en el estudio.\r\n',26,64,'INVERS'),(1107,'Cumple',NULL,'Se encuentra presente en el TESA con el nombre de Matriz de planificación del proyecto.',27,64,'INVERS'),(1108,'No Cumple',NULL,'No se presenta el documento en la carpeta de evaluación del proyecto.',28,64,'INVERS'),(1109,'Cumple',NULL,'El cierre del proyecto en la etapa de evaluación se lo realizó el 17/8/12, donde se expresa conformidad con los 15 ítems presentados. El informe es firmado por Mario Severich (Jefe técnico) y el ing. Carlos Ledezma.',29,64,'INVERS'),(1110,'Cumple',NULL,'El reporte se lo realiza el 15/8/12, indicando que el monto total es de Bs. 1.452.544,30, divididos de la siguiente manera: Infraestructura: Bs. 1.342.544,30. Capacitación: Bs. 50.000,00 y supervisión: Bs. 60.000,00',30,64,'INVERS'),(1111,'Cumple',NULL,'El reporte se lo realiza el 15/8/12, en el cual el presupuesto se ve desglosado en 5 módulos: Actividades preliminares y complementarias, defensivos hormigón ciclópeo, medidas de mitigación ambiental, capacitación en operación y mantenimiento y supervisión.\r\n',31,64,'INVERS'),(1112,'Cumple',NULL,'El reporte se lo realiza el 15/8/12, asignando el monto total de 1.027.551,36 bs a tipo de cambio 6,86.',32,64,'INVERS'),(1113,'Cumple',NULL,'El analisis de precios unitarios está de acuerdo a los modulos propuestos.',33,64,'INVERS'),(1114,'No Cumple',NULL,'No se presenta el documento en la carpeta de evaluación del proyecto.',34,64,'INVERS'),(1115,'Cumple',NULL,'El reporte se lo realiza el 15/8/12, el informe da cuenta de los detalles generales del proyecto como ubicación, población beneficiaria (220 personas, 100 hombres y 120 mujeres), el monto solicitado. Muestra los indicadores socioeconómicos, como el VANS; sin embargo no se encuentra firmado y faltan detalles como el tipo de financiamiento, fuente y el monto evaluado.\r\n',35,64,'INVERS'),(1116,'Cumple',NULL,'El reporte se lo realiza el 15/8/12 el monto evaluado en dólares es de 211.741,14. Dividido en los siguientes componentes: Inversión: el 85% lo asume el financiador con un total de $us166.350,24, la alcaldía da su contraparte con el 15% ($us 29.355,92). Capacitación: el financiador aporta con el 85% ($us 6.195,34) y el GAM con el 15% ($us 1.093,29). Supervisión: De igual manera el financiador asume el 85% ($us 7.434,40) y el GAM con el 15% ($us 1.311,95)\r\n',36,64,'INVERS'),(1117,'',NULL,'',37,64,'INVERS'),(1118,'Cumple',NULL,'N°030/2012',38,64,'INVERS'),(1119,'Cumple',NULL,'El CTF es firmado el 17/8/12 por el gerente departamental del FPS Ing. Nelson Rojas y el honorable alcalde municipal de Sicaya Jorge Sanchez Pe?arrieta.',39,64,'INVERS'),(1120,'Cumple',NULL,'CONSTRUCCIÓN MUROS DEFENSIVOS SOBRE EL RIO ARQUE Y SAYARI PAQUETE II',40,64,'INVERS'),(1121,'Cumple',NULL,'1.234.662,65',41,64,'INVERS'),(1122,'Cumple',NULL,'217.881,65',42,64,'INVERS'),(1123,'',NULL,'',43,64,'INVERS'),(1124,'Cumple',NULL,'(1ER-03)-03-031-12',44,64,'INVERS'),(1125,'Cumple',NULL,'14 de agosto de 2012',45,64,'INVERS'),(1126,'Cumple',NULL,'1.234.662,66',46,64,'INVERS'),(1127,'Cumple',NULL,'217.881,65',47,64,'INVERS'),(1128,'',NULL,'',48,64,'INVERS'),(1129,'Cumple',NULL,'(2DO-03)-03-031-12',49,64,'INVERS'),(1130,'Cumple',NULL,'14 de agosto de 2012',50,64,'INVERS'),(1131,'Cumple',NULL,'1.234.662,66',51,64,'INVERS'),(1132,'Cumple',NULL,'217.881,65',52,64,'INVERS'),(1133,'Cumple',NULL,'Dentro de la carpeta se encuentra la solicitud de financiamiento que la realiza el alcalde municipal Grover Garcia, el formulario en el formato del FPS, el formulario está correctamente llenado. No se encuentra la fecha.',1,90,'INVERS'),(1134,'Cumple',NULL,'El documento es una copia de fax donde se certifica que el proyecto se encuentra inscrito dentro del POA 2012, la certificación es de mayo del 2012, firmada por el alcalde Grover García.',2,90,'INVERS'),(1135,'Cumple',NULL,'Se encuentra el memorándum CBB/GD/3000/09/2012, donde el ing. Nelson Rojas gerente departamental del FPS designa al Ing. Roberto Jimenez Ferrufino como responsable en el proceso de evaluación, contratación y seguimiento del proyecto Mejoramiento sistema de micro riego Jatun Chinija (Tiraque). La fecha del documento es de 10/2/12\r\n',3,90,'INVERS'),(1136,'Cumple',NULL,'Se presenta el documento del dise?o final firmado en fecha marzo 2012, por los representantes de 9 comunidades beneficiadas.',4,90,'INVERS'),(1137,'Cumple',NULL,'Se presenta el documento del dise?o final firmado en fecha marzo 2012, por los representantes de 9 comunidades beneficiadas.',55,90,'INVERS'),(1138,'Cumple',NULL,'Contiene el ABRO',6,90,'INVERS'),(1139,'Cumple',NULL,'El estudio TESA arriba en la formulación del sistema de Micro Riego que consiste en el mejoramiento de un sistema de micro riego por canales existentes.',7,90,'INVERS'),(1140,'Cumple',NULL,'El sistema de riego por tubería dispone del cálculo hidraulico, Anexo 16 donde se advierte presiones muy bajas, (0,02-0,01-0,03), sin embargo llama la atención la falta del dato de ingreso y salida de la cota de terreno, donde se tiene cámara distribuidoras de caudal que funcionan como rompe presiones, luego las presiones disponibles no precisamente pueden ser las indicadas en la memoria de cálculo; se pudo advertir que la tubería no funciona a sección llena.\r\n',8,90,'INVERS'),(1141,'Cumple',NULL,'Cuenta con el correspondiente mapa y croquis de ubicación en el documento del proyecto.',9,90,'INVERS'),(1142,'Cumple',NULL,'La topografía presentada en los planos de planta perfil de la tubería se considera no es adecuada y no cuenta con el suficiente detalle, además los planos de planta perfil carecen de leyendas que permitan identificar los elementos. ',10,90,'INVERS'),(1143,'Cumple',NULL,'Cumple lo establecido en la Guía de riego menor.',11,90,'INVERS'),(1144,'Cumple',NULL,'Las Especificaciones técnicas insertadas cumplen con la norma vigente y lo establecido en la Guía de riego menor. ',12,90,'INVERS'),(1145,'Cumple',NULL,'El presupuesto se encuentra de acuerdo al alcance del proyecto y está divido por módulos  e ítems.',13,90,'INVERS'),(1146,'Cumple',NULL,'Presenta el cronograma de ejecución adecuado para el tipo de proyecto y cumple lo establecido en la guía de riego menor.',14,90,'INVERS'),(1147,'Cumple',NULL,'Sobre el certificado DIA corresponde al N? 030602-12/DRNMA-FA-2932 cd-222/2012 emitido por Ing. Zenón Miranda Ossio de la DRRNN MA de la Gobernación de Cochabamba.',15,90,'INVERS'),(1148,'No Cumple',NULL,'Los planos no llevan la firma del profesional responsable ',16,90,'INVERS'),(1149,'No Cumple',NULL,'No presenta',17,90,'INVERS'),(1150,'No Cumple',NULL,'No presenta',18,90,'INVERS'),(1151,'Cumple',NULL,'Dentro del estudio se enceuntra el acápite socioeconómico donde se indica que las zonas beneficiarias son Qotani alto, Qotani bajo, Viscachani, Chaki Qhocha, Churo alto, Churo Bajo y Qotani bajo juventud.. En el análisis se muestra el índice de pobreza; p',53,90,'INVERS'),(1152,'Cumple',NULL,'Dentro del estudio se observa la evaluación económica financiera, donde según los datos VAN es positivo al igual que el TIR. El costo por hectárea incremental es de 3.369,11 $us, como es menor a 5mil$ no ha ningún inconveniente. Dentro del documento se en',54,90,'INVERS'),(1153,'Cumple',NULL,'Dentro del estudio se encuentra el acápite socioeconómico donde se indica que las zonas beneficiarias son Qotani alto, Qotani bajo, Viscachani, Chaki Qhocha, Churo alto, Churo Bajo y Qotani bajo juventud.. En el análisis se muestra el índice de pobreza; pero solamente a nivel municipal. El número total de beneficiarios es de 168, donde 148 son hombres y sólo 20 son mujeres. Se hace mención a la principal actividad económica en el área. Dentro del estudio también se indica que en el sector las familias solamente cuentan con letrinas o pozos ciegos, y la mayoría no cuentan con servicio de agua potable. En relación a la cobertura de energía eléctrica todas las comunidades señaladas cuentan con el servicio. El documento parace estar completo, sin embargo no presenta un análisis sobre educación, salud, tasas de mortalidad ni de natalidad que son consideradas importantes para este tipo de proyectos. Sobre aspectos económicos, el estudio analiza cuales son las principales actividades económicas en el lugar, rendimiento de toneladas por hectárea, nivel de ingresos, y actividades productivas. El presupuesto final propuesto en el estudio es de 1.005.043,04 Bs.\r\n',19,90,'INVERS'),(1154,'Cumple',NULL,'El informe de evaluación técnica es firmado y evaluado por Roberto Jimenez en fecha 20/03/12, donde se indica que los planos de construcción están presentes y son suficientes, también se indica que la alternativa elegida es la adecuada. El resultado de la evaluación da cuenta de que el proyecto técnicamente cuenta con toda la información adecuada y técnica para llevar a cabo la construcción. Se recomienda que la construcción sea en cualquier periodo del año ya que la zona es geológicamente estable.\r\n',20,90,'INVERS'),(1155,'Cumple',NULL,'El informe de evaluación técnica es firmado y evaluado por Roberto Jimenez en fecha 20/03/12. El resultado indica que una vez analizados los resultados obtenidos por la evaluación socioeconómica se concluye que el proyecto es económicamente viable. Dentro de la evaluación se presentan los principales indicadores de coto-eficiencia, y los indicadores socioeconómicos y financieros. Dentro de la carpeta se encuentra anexado las planillas parametrizadas.\r\n',21,90,'INVERS'),(1156,'Cumple',NULL,'El informe de valoración social es firmado y evaluado por Roberto Jimenez en fecha 20/03/12.  De acuerdo a la categorización de resultados por tipo de variable, el proyecto obtiene un puntaje de 8,5 por lo tanto es considerado socialmente viable. El resultado de está valoración indica que de acuerdo al resultado de las encuestas a los beneficiarios se considera que el proyecto es viable ya que no existe ningún impedimento para su aprobación y financiamiento. Los formularios se encuentran dentro de la carpeta debidamente llenados y firmados por los pobladores.\r\n',22,90,'INVERS'),(1157,'Cumple',NULL,'El informe de evaluación ambiental es firmado y evaluado por Roberto Jimenez en fecha 20/03/12 Según la evaluación ambiental el proyecto cuenta con medidas de mitigación que son pertinentes y adecuadas, además se verificó que el presupuesto ambiental se encuentra dentro del presupuesto general. Además se señala que la ficha ambiental se encuentra en trámite para su dispensación por el gobierno departamental. El resultado de la evaluación indica que una vez verificada la pertinencia de los componentes, el proyecto es ambientalmente positivo.\r\n',23,90,'INVERS'),(1158,'No Cumple',NULL,'Dentro de la carpeta no se encuentran el informe, solamente los cuestionarios.',24,90,'INVERS'),(1159,'Cumple',NULL,'El informe de visita de campo es firmado y evaluado en fecha 20/03/12. El informe indica que el 20 de marzo del 2012 se acudió a campo para verificar todos los datos que se revisaron en gabinete, donde se comprobó que el proyecto cumple con los criterios de elegibilidad del plan vida, en la verificación ambiental se indica que el proyecto no generará impactos negativos al medio ambiente. Al mismo tiempo pudieron entrevistarse con la población beneficiaria quienes indican que si existe consenso social entre los comunarios. Entre las recomendaciones más relevantes el evaluador indica que se debe reducir el presupuesto general para que se pueda cumplir con los criterios de elegibilidad del proyecto.\r\n',25,90,'INVERS'),(1160,'Cumple',NULL,'El informe dictamen final de la evaluación integral es firmado y evaluado por Roberto Jimenez en fecha 20/03/12. Donde se indica que la población beneficiada son 168 familias, compuestas por un total de 840 personas, de las cuales 415 son hombres y 425 mujeres. El monto solicitado es de 894.330,95 bs dividido de la siguiente manera: el aposrte del financiador abarca el 85% (760.181,31bs) y el municipio asumiría el 15% (134.149,64bs). Según el dictamen el tiempo de ejecución del proyecto debe ser de 4 meses. Los indicadores socioecómicos se encuentran presentes dentro del informe. \r\n',26,90,'INVERS'),(1161,'Cumple',NULL,'Se encuentra presente dentro del estudio TESA ',27,90,'INVERS'),(1162,'No Cumple',NULL,'No se presenta el documento en la carpeta de evaluación del proyecto.',28,90,'INVERS'),(1163,'No Cumple',NULL,'No se presenta el documento en la carpeta de evaluación del proyecto.',29,90,'INVERS'),(1164,'Cumple',NULL,'El reporte del resumen del presupuesto es generado el 30/5/12, donde se indica que el monto total es de 542.737,98 bs. Dividido de la siguiente manera: Infraestructura: 497.924,98bs. Capacitación: 19.916,99bs y supervisión: 24.896,23 bs.',30,90,'INVERS'),(1165,'Cumple',NULL,'El reporte del presupuesto a detalle es generado el 30/5/12, donde se indica que el monto total es de 542.737,98 bs. Dividido en 10 módulos.',31,90,'INVERS'),(1166,'Cumple',NULL,'El informe de explosión de insumos es generado el 30/5/12, donde se indica que el presupuesto asignado es de 397.259,02bs, a tipo de cambio 6,89.',32,90,'INVERS'),(1167,'Cumple',NULL,'El informe de precios unitarios es generado el 30/5/12, donde se encuentran todos los módulos del presupuesto.',33,90,'INVERS'),(1168,'No Cumple',NULL,'No se presenta el documento en la carpeta de evaluación del proyecto.',34,90,'INVERS'),(1169,'No Cumple',NULL,'No se presenta el documento en la carpeta de evaluación del proyecto.',35,90,'INVERS'),(1170,'Cumple',NULL,'El informe precios unitarios es generado el 18/9/12, donde se encuentra la matriz de las etapas 27 y 50 expresadas en dólares. La matriz de la etapa 50 indica lo siguiente: El presupuesto del proyecto es de 79.116,33, donde se divide de la siguiente manera: Infraestructura: el 15% ($us10.887,57) es asumido por la contraparte y el 85% ($U61.696,22). Capacitación: el 15% ($us435,50) es asumido por la contraparte y el 85% ($us 2.476,85) y Supervisión: el 15% ($us544,38) es asumido por la contraparte y el 85% ($us 3.084,81) \r\n',36,90,'INVERS'),(1171,'',NULL,'',37,90,'INVERS'),(1172,'Cumple',NULL,'N° 041/2012',38,90,'INVERS'),(1173,'Cumple',NULL,'El CTF se encuentra firmado por el gerente departamental del FPS Ing. Nelson Rojas y el honorable alcalde municipal de Tiraque Grover García Carballo en fecha 28/5/12',39,90,'INVERS'),(1174,'Cumple',NULL,'MEJORAMIENTO SISTEMA DE RIEGO JATUN CHINIJA (TIRAQUE)',40,90,'INVERS'),(1175,'Cumple',NULL,'828.597,25',41,90,'INVERS'),(1176,'Cumple',NULL,'146.223,04',42,90,'INVERS'),(1177,'',NULL,'',43,90,'INVERS'),(1178,'Cumple',NULL,'(1ER-03)-03-005-12',44,90,'INVERS'),(1179,'Cumple',NULL,'25 de mayo de 2012',45,90,'INVERS'),(1180,'Cumple',NULL,'828.597,25',46,90,'INVERS'),(1181,'Cumple',NULL,'146.223,04',47,90,'INVERS'),(1182,'',NULL,'',48,90,'INVERS'),(1183,'Cumple',NULL,'(2DO-03)-03-005-12',49,90,'INVERS'),(1184,'Cumple',NULL,'25 de mayo de 2012',50,90,'INVERS'),(1185,'Cumple',NULL,'828.597,25',51,90,'INVERS'),(1186,'Cumple',NULL,'146.223,04',52,90,'INVERS'),(1187,'Cumple',NULL,'La solicitud de financiamiento se encuentra dentro de la carpeta, junto a los criterios de elegibilidad, la misma se encuentra llenada y firmada por el Alcalde del Municipio de Bolívar Francisco Delgado Ledezma',1,136,'INVERS'),(1188,'Cumple',NULL,'La certificación se encuentra dentro de la carpeta, en una carta dirigida el gerente departamental del FPS en donde se se?ala que como alcalde certifica la inclusión del poryecto en el POA 2012. La carta llega al FPS con CITE: GAMB. DTB-031/12, en fecha 3',2,136,'INVERS'),(1189,'Cumple',NULL,'El memorándum CBB/GD/3000/044/2012, está dirigido al ing, Mario Cosio Oropeza, con fecha 10/2/12. Donde se le asigna como responsable del proceso de evaluación contratación y seguimiento del proyecto: Const. Camino vecinal cruce Kewiña Escalerani. El memorándum lo firma el ing. Nelson Rojas (Gerente departamental)\r\n',3,136,'INVERS'),(1190,'Cumple',NULL,'El documento legal de respaldo sobre la tenencia legal de los predios done se encuentra las obras del proyecto, lleva la firma de las principales autoridades del sector, así como los sellos de respaldo con fecha 23/4/12. En el documento se indica que la tenencia legal de los predios donde se construirá el proyecto son propiedad de la comunidad y autorizan el uso del mismo para la construcción.\r\n',4,136,'INVERS'),(1191,'No Cumple',NULL,'No se presenta el documento en la carpeta de evaluación del proyecto.',55,136,'INVERS'),(1192,'',NULL,'',6,136,'INVERS'),(1193,'Cumple',NULL,'En la pagina 145 presenta descripción del proyecto.',7,136,'INVERS'),(1194,'Cumple',NULL,'El estudio presenta las memorias de cálculo necesarias utilizadas en estudios a dise?o final. ',8,136,'INVERS'),(1195,'Cumple',NULL,'En el tomo II se presenta plano de ubicación.',9,136,'INVERS'),(1196,'Cumple',NULL,'Presenta en planos topografía. ',10,136,'INVERS'),(1197,'Cumple',NULL,'Presenta presupuesto y analisis de precios unitarios',11,136,'INVERS'),(1198,'Cumple',NULL,'Si presenta especificaciones técnicas.',12,136,'INVERS'),(1199,'Cumple',NULL,'Se presenta el presupuesto por un monto de Bs. 1.441.729,82, el mismo se encuentra de acuerdo al alcance del proyecto.',13,136,'INVERS'),(1200,'Cumple',NULL,'Presenta cronograma en la pagina 277',14,136,'INVERS'),(1201,'Cumple',NULL,'La licencia ambiental fue emitida por la Gobernación de Cochabamba: DIA 031501-06/DRNMA-FA-2835 CD-242/2012, emitida en fecha 07/12/2012',15,136,'INVERS'),(1202,'Cumple',NULL,'Los planos presentan firma de responsable.',16,136,'INVERS'),(1203,'No Cumple',NULL,'No presenta',17,136,'INVERS'),(1204,'No Cumple',NULL,'No presenta',18,136,'INVERS'),(1205,'Cumple',NULL,'El diagnóstico socioeconómico se presenta dentro del estudio, en el análisis se indica que serán cuatro las comunidades beneficiadas directamente: Huaylloma, Vila Pampa, Villa Victoria y Piakayma, el total de las familias beneficiadas con el proyecto es d',53,136,'INVERS'),(1206,'Cumple',NULL,'Se presentan los principales indicadores socioeconómicos y financieros, extraídos de las planillas parametrizadas (se encuentran anexadas). SE puede observar que los indicadores de rentabilidad cumplen lo determinado por el VIPFE, ya que el VANS y el TIRS',54,136,'INVERS'),(1207,'Cumple',NULL,'El diagnóstico socioeconómico se presenta dentro del estudio, en el ana´lisis se indica que serán cuatro las comunidades beneficiadas directamente: Huaylloma, Vila Pampa, Villa Victoria y Piakayma, el total de las familias beneficiadas con el proyecto es de 42, conformadas por un total de 509 personas de las cuales 247 son varones y 262 mujeres; así mismo el informe brinda datos sobre tasas de natalidad y mortalidad a nivel municipal, lo mismo ocurre con datos de migración y esperanza de vida. Respecto al acceso a servicios básicos, en el estudio se indica que 3 de las comunidades tienen cobertura del 100%  de agua potable por sistema de gravedad, mientras que en la comunidad de Piakayma sólo el 75% cuenta con este servicio. Respecto al acceso a energía eléctrica el estudio muestra datos sólo a nivel municipal. Con referencia al estado y calidad de las viviendas, el estudio indica que el 48%de las viviendas cuenta con solo un ambienta para dormitorio, depósito y cocina. el estudio también muestra datos de la principal actividad económica y sistema de producción agrícola a nivel municipal únicamente, lo mismo sucede con los principales cultivos y el destino de la producción, se considera que los resultados de estos datos deberían ser sobre las cuatro comunidades beneficiarias. El estudio carece de datos importantes como la cobertura de educación y salud. Se indica que se realizaron encuestas en el área de influencia, sin embargo no se encuentran anexadas al documento.\r\n',19,136,'INVERS'),(1208,'Cumple',NULL,'El informe de evaluación técnica está firmado y evaluado en fecha 15/5/12 por el ing. Mario Cosio. El informe indica que el marco lógico es coherente y guarda una relación aceptable, también se indica que el plazo de ejecución del proyecto es de 160 días calendario. Respecto a los planos de construcción el evaluador indica que están aceptables. El resultado de la evaluación indica que desde el punto de vista técnico el proyecto cuenta con la información necesaria para ser construido; pero debe complementarse ensayos en la etapa de construcción de para la elección de materiales. Así mismo recomienda su construcción en época de estiaje.\r\n',20,136,'INVERS'),(1209,'Cumple',NULL,'El informe de evaluación socioeconómica está firmado y evaluado en fecha 15/5/12 por el ing. Mario Cosio. De acuerdo a la categorización de resultado por tipo de indicador, se puede verificar que los indicadores son positivos, el resultado de la evaluación indica que el proyecto es económicamente factible.\r\n',21,136,'INVERS'),(1210,'Cumple',NULL,'El informe de valoración social está firmado y evaluado en fecha 15/5/12 por el ing. Mario Cosio. De acuerdo al resultado obtenido mediante los formularios de validación social, el resultado es 10 (Se considera positivo cuando el resultado es mayor a 8) por lo tanto el evaluador indica que la población de las comunidades solicitó y formuló el proyecto por consenso social, teniendo en cuenta que se ejecute mejorará la calidad de vida de los beneficiarios por lo que el proyecto es socialmente factible. Los formularios se encuentran en la carpeta, debidamente llenados y firmados por autoridades y miembros de la comunidad.\r\n',22,136,'INVERS'),(1211,'Cumple',NULL,'El informe de evaluación ambiental está firmado y evaluado en fecha 15/5/12 por el ing. Mario Cosio. EL informe indica que el proyecto cuenta con medidas de mitigación ambiental que son pertinentes y adecuadas, también hace notar que el presupuesto ambiental está incorporado en el presupuesto general. Según el evaluador el proyecto cuenta con ficha ambiental aún no categorizada. El resultado del informe concluye que el proyecto es ambientalmente sustentable.\r\n',23,136,'INVERS'),(1212,'Cumple',NULL,'El informe de valoración institucional está firmado y evaluado en fecha 15/5/12 por el ing. Mario Cosio. De acuerdo a los rangos para la valoración institucional del proyecto se puede observar que el resultado es positivo, por lo que el evaluador concluye que el GAMB cuenta con estructura institucional adecuada, aplica funciones y sistemas de la ley SAFCO, también cuenta con capacidad financiera y fiscal. Por lo que tiene la capacidad de encarar la operación y mantenimiento del proyecto. Se encuentra anexado el cuestionario para la valoración institucional debidamente llenado y firmado por el alcalde municipal Francisco Delgado Ledezma.\r\n',24,136,'INVERS'),(1213,'Cumple',NULL,'El informe de visita de campo está firmado y evaluado en fecha 15/5/12 por el ing. Mario Cosio. Según el informe la ubicación de las obras de drenaje y el emplazamiento del camino guarda relación con lo descrito en el estudio, lo mismo ocurre con los planos de la topografía. La verificacion social da cuenta de que los/as miembros de la comunidad consideran importante la implementación del proyecto. El resultado expuesto por el evaluador indica que en campo se verificaron y aclararon aspectos cuestionado en la evaluación previa en gabinete, por lo que se realizaron algunos ajustes al presupuesto. Así mismo recomienda que la obra debe ser ejecutada en época de estiaje. El archivo fotográfico se encuentra en el lugar.\r\n',25,136,'INVERS'),(1214,'Cumple',NULL,'El dictamen final de la evaluación integral está firmado y evaluado en fecha 15/5/12 por el ing. Mario Cosio. Según el informe el total de las familias beneficiadas es de 172 compuestas por un total de 861 personas de las cuales 388 son hombres y 473 mujeres. Las comunidades beneficiarias son Kewiña Cruz y Escalerani. El monto solicitado que figura es de 1.431.938,19 bs. No se observa cual es el monto evaluado. La duración de la obra según el dictamen debe ser de 161 días calendario. El informe contempla los indicadores socioeconómicos y además los resultados por ámbitos de evaluación que son todos positivos. El dictamen final indica que al cumplir con los requisitos exigidos se recomienda su aprobación.\r\n',26,136,'INVERS'),(1215,'Cumple',NULL,'No se encuentra en la carpeta; sin embargo si se lo puede apreciar dentro del TESA.',27,136,'INVERS'),(1216,'No Cumple',NULL,'No se presenta el documento en la carpeta de evaluación del proyecto.',28,136,'INVERS'),(1217,'Cumple',NULL,'El documento se encuentra presente dentro de la carpeta, el documento fue aprobado y firmado por el ing. Mario Cosio y el ing. Mario Severichen fecha 19/6/12, el informe detalla que toda la documentación representada en los 15 ítems se encuentra dentro de la carpeta.\r\n',29,136,'INVERS'),(1218,'Cumple',NULL,'El reporte es generado el 22/5/12, donde indica que el presupuesto del proyecto es de Bs. 1.503.533,19. Donde el importe destinado a infraestructura es de Bs.1.431.938,19 y el importe destinado a supervisión es de 71.595,00',30,136,'INVERS'),(1219,'Cumple',NULL,'El reporte es generado el 16/5/12, donde indica que el presupuesto del proyecto es de Bs. 1.503.533,19, desglosado en 7 módulos ',31,136,'INVERS'),(1220,'Cumple',NULL,'El reporte es generado el 22/5/12, donde indica que el monto destinado es de 1.315.178,59 bs a tipo de cambio 6,86.',32,136,'INVERS'),(1221,'Cumple',NULL,'El reporte es generado el 22/5/12, los precios unitarios están analizados de acuerdo a los 7 módulos.',33,136,'INVERS'),(1222,'No Cumple',NULL,'No se presenta el documento en la carpeta de evaluación del proyecto.',34,136,'INVERS'),(1223,'Cumple',NULL,'El reporte es generado el 24/5/12, el mismo indica que los benficiarios son 388 hombres y 473 mujeres. El informe no brinda datos específicos del proyecto, se nota la ausencia de los indicadores socioeconómicos. El reporte está firmado por el ing. Mario Cosio.\r\n',35,136,'INVERS'),(1224,'Cumple',NULL,'El reporte es generado el 22/5/12, el mismo indica que el monto evaluado es de Bs. 1.503.533,19, desglosado de la siguiente manera: Infraestructura1.431.938,18 bs, donde el financiador asume el 85% (Bs. 1.217.147,46) y la contraparte del municipio es el 15% (bs. 214.790,73). Supervisión: 71.595,00  donde el financiador asume el 85% (Bs. 60.855,75) y la contraparte del municipio es el 15% (bs. 10.739,25)\r\n',36,136,'INVERS'),(1225,'',NULL,'',37,136,'INVERS'),(1226,'Cumple',NULL,'N° 022/2012',38,136,'INVERS'),(1227,'Cumple',NULL,'El convenio es firmado por el gerente departamental del FPS Ing. Nelson Rojas y el honorable alcalde municipal de Bolivar Francisco Delgado Ledezma en fecha 15/6/12',39,136,'INVERS'),(1228,'Cumple',NULL,'MEJ. CAMINO VECINAL CRUCE KEWI?A CRUZ-ESCALERANI (BOLIVAR)',40,136,'INVERS'),(1229,'Cumple',NULL,'1.278.003,21',41,136,'INVERS'),(1230,'Cumple',NULL,'225.529,98',42,136,'INVERS'),(1231,'',NULL,'',43,136,'INVERS'),(1232,'Cumple',NULL,'(1ER-03)-03-007-12',44,136,'INVERS'),(1233,'Cumple',NULL,'09 de junio de 2012',45,136,'INVERS'),(1234,'Cumple',NULL,'1.278.003,21',46,136,'INVERS'),(1235,'Cumple',NULL,'225.529,98',47,136,'INVERS'),(1236,'',NULL,'',48,136,'INVERS'),(1237,'Cumple',NULL,'(2DO-03)-03-007-12',49,136,'INVERS'),(1238,'Cumple',NULL,'09 de junio de 2012',50,136,'INVERS'),(1239,'Cumple',NULL,'1.278.003,21',51,136,'INVERS'),(1240,'Cumple',NULL,'225.529,98',52,136,'INVERS'),(1241,'No Cumple',NULL,'No se presenta el documento en la carpeta de evaluación del proyecto.',1,127,'INVERS'),(1242,'Cumple',NULL,'Se presenta la certificación de inscripción del proyecto \"Construcción de atajados Chacras (Pojo), en fecha 25/6/12 firmada por el honorable alcalde Fidel Rojas Catorceno y el presidente del concejo municipal Vitalio Vargas García. También se presenta una',2,127,'INVERS'),(1243,'Cumple',NULL,'No se presenta el documento en la carpeta de evaluación del proyecto.',3,127,'INVERS'),(1244,'Cumple',NULL,'Se verifica un acta de derecho de propiedad del sitio de obras y la libre disponibilidad de la fuente de agua firmada por Víctor Campos, dirigente del sindicato agrario de Chacras. En el documento se certifica que los propietarios de estos terrenos son los comunarios y originarios, además de tener derecho para aprovechar de manera libre las aguas de la zona de acuerdo a sus usos y costumbres.\r\n',4,127,'INVERS'),(1245,'Cumple',NULL,'Se puede verificar el documento de compromiso para la ejecución del proyecto, donde el GAM de Pojo se compromete a respetar todos los procedimientos definidos por el FPS, cumplir con la contraparte requerida y garantizar la operación y mantenimiento del proyecto. El documento es del mes de junio del 2010. Firmada por el alcalde Fidel Rojas Catorceno.\r\n',55,127,'INVERS'),(1246,'',NULL,'',6,127,'INVERS'),(1247,'Cumple',NULL,'Se encuentra presente  e indica que contempla la construcción de 16 atajados de tierra de 3.000 m3 de capacidad y con pendientes diferentes.',7,127,'INVERS'),(1248,'Cumple',NULL,'Se cuenta con la Memoria de Cálculos Hidráulicos y Estructurales en el Anexo 9. ',8,127,'INVERS'),(1249,'Cumple',NULL,'Cuenta con un mapa de ubicación a nivel nacional, departamental y municipal.',9,127,'INVERS'),(1250,'Cumple',NULL,'Se identifican los planos en el Anexo 20 del proyecto.',10,127,'INVERS'),(1251,'Cumple',NULL,'Se encuentran los Precios Unitarios en el Anexo 11 del proyecto.',11,127,'INVERS'),(1252,'Cumple',NULL,'Se encuentran las Especificaciones Técnicas en el Anexo 13 del proyecto.',12,127,'INVERS'),(1253,'Cumple',NULL,'Se cuenta con presupuesto general.',13,127,'INVERS'),(1254,'Cumple',NULL,'Se cuenta con el cronograma en al Anexo 14.',14,127,'INVERS'),(1255,'Cumple',NULL,'TIENE CERTIFICADO DE DISPENSACIÓN DE LA GOBERNACIÓN CATEG.III',15,127,'INVERS'),(1256,'No Corresponde',NULL,'No aplica',16,127,'INVERS'),(1257,'No Corresponde',NULL,'No aplica',17,127,'INVERS'),(1258,'No Corresponde',NULL,'No aplica',18,127,'INVERS'),(1259,'Cumple',NULL,'La evaluación socioeconómica del estudio, cuenta con información primaria (aunque no se anexa los formularios aplicados) y secundaria de la zona, según el estudio los beneficiarios del proyecto son un total de 35 familias, haciendo un total de 178 persona',53,127,'INVERS'),(1260,'Cumple',NULL,'Para un mejor resultado se utilizó la aplicación de planillas parametrizadas, que dan cuenta que tanto el TIRP como el TIRS son positivos, lo mismo sucede con el VANP y el VANS, por lo que el proyecto resulta factible económica y socialmente. El análisis ',54,127,'INVERS'),(1261,'Cumple',NULL,'La evaluación socioeconómica del estudio, cuenta con información primaria (aunque no se anexa los formularios aplicados) y secundaria de la zona, según el estudio los beneficiarios del proyecto son un total de 35 familias, haciendo un total de 178 personas de las cuales 84 son mujeres y 94 varones. Se puede evidenciar datos de migración, composición familiar, idioma, tipos de vivienda. También se muestran datos del acceso a los servicios básicos, donde se encuentra una contradicción, por una parte se dice que la población no cuenta con luz ni agua, sin embargo más adelante hacen referencia a que el 40% de las familias cuentan con agua potable y el 70% con energía eléctrica. Se mencionan datos importantes como salud y educción, ritos y costumbres, tenencia de tierras y principales actividades económicas. La observación que se realiza al documento es que los datos son a nivel macro (municipal), cuando debería también contener datos a nivel micro (Chacras)\r\n',19,127,'INVERS'),(1262,'Cumple',NULL,'El informe de evaluación técnica es firmado y evaluado por el ing. Wilson Ponce Montero en fecha 18/5/12, el resultado del informe indica que el proyecto es técnicamente factible, ya que cumple con todos los criterios técnicos mínimos de evaluación tanto en gabinete como en la visita a campo. Según el informe, el proyecto se inserta en la nueva dinámica municipal que serán los encargados de plantear alternativas de desarrollo que permitan concretizar acciones de desarrollo para el sector rural. En la evaluación se analizan puntos como la descripción técnica del proyecto, especificaciones técnicas, planos de construcción, estudio de alternativas y presupuesto entre otras.\r\n',20,127,'INVERS'),(1263,'Cumple',NULL,'El informe de evaluación socioeconómica es firmado y evaluado por el ing. Wilson Ponce Montero en fecha 18/5/12. El informe da cuenta que el resultado de categorización por tipo de indicador es positivo, tomando en cuenta los indicadores socioeconómicos, financieros y de costo - eficiencia. el resultado del informe indica que el proyecto es socio económicamente factible ya que al comparar los costos referenciales de los diferentes sectores con el costo anual equivalente social y privado demuestran la factibilidad socio económica del proyecto.\r\n',21,127,'INVERS'),(1264,'Cumple',NULL,'El informe de valoración social es firmado y evaluado por el ing. Wilson Ponce Montero en fecha 18/5/12. El informe da cuenta de que la población de Chacras formuló el proyecto mediante consenso social tomando en cuenta que el proyecto mejorar su condición productiva, y de vida. El resultado está basado en el instrumento de valoración social N°4, donde las variables evaluadas son: Consenso social, acceso a servicios, equidad social, capital social y control social, todos son positivos. En la carpeta figuran los cuestionarios de valoración social respectivamente llenados y firmados por autoridades y personas de la comunidad.\r\n',22,127,'INVERS'),(1265,'Cumple',NULL,'El informe de evaluación ambiental es firmado y evaluado por el ing. Wilson Ponce Montero en fecha 18/5/12. Según el informe, el proyecto es ambientalmente positivo, ya que todos los documentos ambientales están en orden.',23,127,'INVERS'),(1266,'Cumple',NULL,'El informe de valoración institucional es firmado y evaluado por el ing. Wilson Ponce Montero en fecha 18/5/12. El resultado de la evaluación es positiva, ya que la alcaldía de Pojo cuenta con una estructura organizacional, aplicación de funciones y sistema SAFCO, capcidad financiera y fiscal, además de ser capaz de encarar la operación y mantenimiento del proyecto. El evaluador se basa en el resultado del cuestionario de valoración institucional que es llenado y firmado por el alcalde Fidel Rojas Catorceno.\r\n',24,127,'INVERS'),(1267,'Cumple',NULL,'El informe de visita de campo es firmado y evaluado por el ing. Wilson Ponce Montero en fecha 18/5/12. La evaluación ha sido basada en distintos puntos, como la ubicación del proyecto, que en este caso coincide con lo que se ha descrito en la memoria, en la verificación de los aspectos técnicos se verificó que el presupuesto considera costos reales sin tomar en cuenta la distancia (se incrementan) por lo que el presupuesto final se ve afectado. en la visita de campo se realizó la verificación social que da cuenta de la satisfacción de los pobladores y de la urgencia que tienen por el proyecto. El resultado del informe indica que todos los aspectos están de acuerdo a lo revisado en gabinete y se recomienda ejecutar la obra en época de estiaje.\r\n',25,127,'INVERS'),(1268,'Cumple',NULL,'El informe de visita del dictamen final de la evaluación integral es firmado y evaluado por el ing. Wilson Ponce Montero y el ing. Mario Severich en fecha 18/5/12.Según el informe el monto solicitado es de Bs. 734.051,93 y el presupuesto evaluado es de Bs. 942.395,47. Que según el informe debe ser dividido de la siguiente manera: GAM de Pojo asume la contraparte con el 15% (141.359,32 bs) y el ente financiador asume el 85% (801.036,15bs).La duración del proyecto debe ser de 120 días hábiles, también se verifica que los resultados por ámbito de evaluación son todos positivos y factibles. El dictamen final indica que el proyecto es viable ya que prevé el óptimo uso de la infraestructura de riego para cumplir con los objetivos generales y específicos planteados en el estudio, que han sido verificados en la visita de campo como en gabinete.\r\n',26,127,'INVERS'),(1269,'Cumple',NULL,'Se encuentra presente en el TESA, el marco lógico demuestra coherencia en todos sus puntos.',27,127,'INVERS'),(1270,'No Cumple',NULL,'No se presenta el documento en la carpeta de evaluación del proyecto.',28,127,'INVERS'),(1271,'Cumple',NULL,'El documento se encuentra presente dentro de la carpeta, el documento fue aprobado y firmado por el ing. Wilson Ponce Montero y el ing. Mario Severichen fecha 19/6/12, el informe detalla que toda la documentación representada en los 15 ítems se encuentra dentro de la carpeta.\r\n',29,127,'INVERS'),(1272,'Cumple',NULL,'El informe ha sido generado el 19/6/12, el resumen del presupuesto indica lo siguiente: El monto total es de Bs. 942.395,47, Monto para Infraestructura es de 864.695,47. El monto para capacitación es de Bs. 34.500,00 y el monto para supervisión es de 43.200,00',30,127,'INVERS'),(1273,'Cumple',NULL,'El informe ha sido generado el 23/6/12, donde el presupuesto se encuentra desglosado en 5 módulos: Obras preliminares, medidas de mitigación ambiental, atajados, capacitación en operación y mantenimiento y supervisión.',31,127,'INVERS'),(1274,'Cumple',NULL,'El informe ha sido generado el 19/6/12, donde se indica que l monto asignado es de 746.060,19 bs al tipo de cambio 6,86.',32,127,'INVERS'),(1275,'No Cumple',NULL,'No se presenta el documento en la carpeta de evaluación del proyecto.',33,127,'INVERS'),(1276,'No Cumple',NULL,'No se presenta el documento en la carpeta de evaluación del proyecto.',34,127,'INVERS'),(1277,'Cumple',NULL,'El informe ha sido generado el 19/6/12, el informe no presenta el número total de beneficiados, tampoco datos específicos del proyecto ni los indicadores socioeconómicos. Dicho informe no lleva firmas ni nombres de los evaluadores. Estás incompleto.',35,127,'INVERS'),(1278,'Cumple',NULL,'El informe ha sido generado el 28/6/12, donde da cuenta que el monto evaluado para el proyecto es de $us 942.395,47 dividido de la siguiente manera: Infraestructura: $us 864.695,47 donde el aporte del financiador es el 85% ($us734.991,15) y la contraparte del municipio es del 15% ($us 129.704,32). Capacitación: $us 35.500,00 donde el aporte del financiador es del 85% ($us29.325,00) y la contraparte del municipio es el 15% ($us 5.175,00). Supervisión $us 43.200,00 donde el aporte del financiador es el 85% ($us 36.720,00) y la contraparte del municipio es el 15% ($us 6.480,00)\r\n',36,127,'INVERS'),(1279,'',NULL,'',37,127,'INVERS'),(1280,'Cumple',NULL,'N° 021/2012',38,127,'INVERS'),(1281,'Cumple',NULL,'El convenio se firma el 25/06/2012, los que firman son: el gerente departamental del FPS Ing. Nelson Rojas y el honorable alcalde municipal de Pojo Fidel Rojas Catorceno.',39,127,'INVERS'),(1282,'Cumple',NULL,'CONSTRUCCIÓN ATAJADOS CHACRAS (POJO)',40,127,'INVERS'),(1283,'Cumple',NULL,'801.036,15',41,127,'INVERS'),(1284,'Cumple',NULL,'141.359,32',42,127,'INVERS'),(1285,'',NULL,'',43,127,'INVERS'),(1286,'Cumple',NULL,'(1ER-03)-03-009-12',44,127,'INVERS'),(1287,'Cumple',NULL,'19 de junio de 2012',45,127,'INVERS'),(1288,'Cumple',NULL,'801.036,15',46,127,'INVERS'),(1289,'Cumple',NULL,'141.359,32',47,127,'INVERS'),(1290,'',NULL,'',48,127,'INVERS'),(1291,'Cumple',NULL,'(2DO-03)-03-009-12',49,127,'INVERS'),(1292,'Cumple',NULL,'19 de junio de 2012',50,127,'INVERS'),(1293,'Cumple',NULL,'801.036,15',51,127,'INVERS'),(1294,'Cumple',NULL,'141.359,32',52,127,'INVERS'),(1295,'Cumple',NULL,'La solicitud de financiamiento se encuentra dentro de la carpeta; el GAM de Anzaldo envía la solicitud de financiamiento al ministerio de planificación, donde se solicita al ministro el financiamiento del proyecto. La nota se envía el 5/6/12 con la firma del alcalde del municipio, Lic. Grover Vallejos Zarate\r\n',1,102,'INVERS'),(1296,'Cumple',NULL,'La certificación se encuentra dentro de la carpeta, el documento se?ala que el GAM de Anzaldo certifica que el  proyecto \"Const. Puente vehicular Lloque Mayu\" se inscribira en el POA . El documento es de fecha 5/6/12  y está firmado por el director admini',2,102,'INVERS'),(1297,'Cumple',NULL,'El memorandum CBB/GD/3000/028/2012 es enviado en fecha 10/2/12, dirigido al ing. Juan Laime. Donde se indica que es asignado como responsable en el proceso de evaluación, contratación y seguimiento del proyecto.',3,102,'INVERS'),(1298,'Cumple',NULL,'En la carpeta se encuentra el documento que indican certificar la tenencia de los predios,  que está firmado por el alcalde del municipio, el documento indica que el GAMA cuenta con acuerdos para garantizar el paso de tuberías de acuerdo al trazo del proyecto y con transferencias de terreno de las áreas donde se ubican estructuras.\r\ntransferencias de terreno de las áreas donde se ubican estructuras.\r\n',4,102,'INVERS'),(1299,'No Cumple',NULL,'No se presenta el documento en la carpeta de evaluación del proyecto.',55,102,'INVERS'),(1300,'',NULL,'',6,102,'INVERS'),(1301,'Cumple',NULL,'El puente está ubicado sobre el Río Lloquemayu entre las poblaciones de Lloquemayu y Anzaldo, cuenta con los siguientes módulos: superestructura, infraestructura y obras complementarias.',7,102,'INVERS'),(1302,'Cumple',NULL,'El estudio cuenta con una memoria de cálculo de acuerdo a Norma AASHTO ÒSTANDARD SPECIFICATION FOR HIGHWAY BRIDGESÓ, tanto para el diseño de la estructura como para el empleo de cargas. También cuenta con un estudio geotécnico, un estudio de fundación de pilotes, un estudio hidrológico e hidraulico incluyendo un análisis de socavaciones.\r\n',8,102,'INVERS'),(1303,'Cumple',NULL,'Existe dentro del TESA un acápite donde se detalla la ubicación exacta del lugar donde se emplazara el proyecto, también se especifican las coordenadas y los medios de acceso a dicha ubicación.',9,102,'INVERS'),(1304,'Cumple',NULL,'No se tiene registro de un levantamiento topográfico alguno, no se muestra plano alguno ni detalles constructivos por lo que la ausencia de la presente documentación podría llevar a malas interpretaciones a tiempo de la construcción del mismo, es necesario que se complete dicha documentación a fin de contar con un documento claro y completo.\r\n',10,102,'INVERS'),(1305,'Cumple',NULL,'Cuenta con análisis de precios unitarios por ítem donde se perciben precios acordes al mercado, cuenta con todas las características necesarias de acuerdo a normativas.',11,102,'INVERS'),(1306,'',NULL,'Las Especificaciones técnicas insertadas cumplen con la norma vigente y lo establecido en normativa vigente.',12,102,'INVERS'),(1307,'Cumple',NULL,'El cronograma de ejecución es el adecuado para el tipo de proyecto.',13,102,'INVERS'),(1308,'Cumple',NULL,'Presenta Cronograma de ejecución adecuado al tipo de proyecto.',14,102,'INVERS'),(1309,'Cumple',NULL,'El proyecto cuenta con Licencia Ambiental Categoría III',15,102,'INVERS'),(1310,'No Cumple',NULL,'No se presenta en el documento',16,102,'INVERS'),(1311,'No Cumple',NULL,'',17,102,'INVERS'),(1312,'No Cumple',NULL,'No se presenta en el documento',18,102,'INVERS'),(1313,'Cumple',NULL,'El estudio indica que la población beneficiada por el proyecto pertenenciente a la comunidad de Lloque Mayu es de 141 personas, de las cuales 68 son hombres y 73 mujeres. respecto a la composición étnica de la comunidad, tenemos que 134 de los pobladores ',53,102,'INVERS'),(1314,'Cumple',NULL,'Dentro del TESA se pueden encontrar los indicadores financieros y socioeconómicos donde se observa que tanto el VANP, TIRP, TIRS y VANS son positivos por lo que el proyecto es social y económicamente factible; sin embargo no se encuentra un análisis de es',54,102,'INVERS'),(1315,'Cumple',NULL,'El estudio indica que la población beneficiada por el proyecto pertenenciente a la comunidad de Lloque Mayu es de 141 personas, de las cuales 68 son hombres y 73 mujeres. respecto a la composición étnica de la comunidad, tenemos que 134 de los pobladores son de origen quechua y sólo 2 de origen aymara, siguiendo en la línea de usos y costumbres se observa que 100 personas de la comunidad hablan castellano, 134 quechua y 2 hablan aymará. La principal actividad económica en la comunidad es la agrícola y pecuaria. En relación a los ingresos económicos según el estudio el ingreso promedio por mes es de 3.016,90, y el ingreso anual por familia es de 36.202,74. A pesar de ser resultados obtenidos mediante encuesta no son resultados que reflejen la realidad de la comunidad. En lo que respecta al acceso a servicios básicos según el TESA de las 54 familias beneficiarias, 21 tienen agua mediante vertiente y 33 mediante el rio, en lo que respecta a la cobertura de alcantarillado sanitario, 12 familias tienen pozo séptico en sus domicilios y 40 debe eliminar sus excretas a campo abierto. El acceso a energía dentro de la comunidad cubre el 50%. El estudio también hace referencia a la cantidad de centros educativos que hay en el municipio, sin embargo no hay datos de la cantidad de personas de la comunidad que asisten a la escuela o cual fue el nivel de instrucción alcanzado por el jefe de familia. En lo que respecta a salud, se hace una comparación entre medicina tradicional y convencional; sin embargo no hay datos de cuáles son las enfermedades más recurrentes, tasas de natalidad ni mortalidad. El presupuesto presentado en el TESA es de 1.246.471,50 bs.\r\n',19,102,'INVERS'),(1316,'Cumple',NULL,'El informe de la evaluación técnica es firmado y evaluado por el ing. Walter Zuleta Miranda en fecha 5/9/12, el resultado del informe es positivo, ya que el proyecto técnicamente cuenta con toda la información adecuada para llevar a cabo la construcción de la obra, desde el punto de vista de la seguridad del diseño se menciona que los parámetros, normas de diseño y metodología son los recomendados. El informe recomienda que la construcción se realice en epoca de estiaje. Otra recomendación es que se presume la existencia de roca y de sermesta muy superficial el pilotaje debería cambiarse por fundición directa.\r\n',20,102,'INVERS'),(1317,'Cumple',NULL,'El informe de la evaluación socioeconómica es firmado y evaluado por el ing. Walter Zuleta Miranda en fecha 5/9/12, donde de acuerdo al análisis de categorización del resultado por tipo de indicador, el proyecto es positivo (todos los indicadores resultan positivos). El evaluador concluye que luego de un análisis delos indicadores el proyecto es económicamente factible y viable. Al mismo tiempo recomienda que al momento de ejecutar la obra se debe verificar la presencia de roca, en función a este dato se debe rediseñar la infraestructura según los requerimientos reales.\r\n',21,102,'INVERS'),(1318,'Cumple',NULL,'El informe de la valoración social es firmado y evaluado por el ing. Walter Zuleta Miranda en fecha 5/9/12, de acuerdo a los resultados por tipo de variable, las respuestas del cuestionario suman 10 puntos (si el resultado es mayor a 8 el proyecto es viable). El evaluador pudo verificar que es la población de Lloquemayu la que solicitó el proyecto al GAM, quien realizo las gestiones a pedido de la comunidad, ya que el proyecto es una necesidad para la comunidad y su aprobación fue por consenso social. Por lo tanto el proyecto es calificado como socialmente factible. Dentro de la carpeta se encuentran los cuestionarios debidamente llenados y firmados por miembros de la comunidad.\r\n',22,102,'INVERS'),(1319,'Cumple',NULL,'El informe de la evaluación ambiental es firmado y evaluado por el ing. Walter Zuleta Miranda en fecha 5/9/12, el evaluador indica que una vez verificada la pertinencia de los documentos ambientales y además la incorporación del presupuesto ambiental al presupuesto general se concluye que el proyecto es ambientalmente sustentable.\r\n',23,102,'INVERS'),(1320,'Cumple',NULL,'El informe de valoración institucional es firmado y evaluado por el ing. Walter Zuleta Miranda en fecha 5/9/12, el informe indica que los rangos para la valoración institucional, donde el proyecto figura dentro de la categoría caminos vecinales. Por lo que el evaluador concluye que el GAM de Anzaldo cuenta con la estructura institucional adecuada, por lo tanto puede encarar la operación y mantenimiento de dicho proyecto.\r\n',24,102,'INVERS'),(1321,'Cumple',NULL,'El informe de visita de campo es firmado y evaluado por el ing. Walter Zuleta Miranda en fecha 5/9/12, el informe señala que en la visita de campo se pudo constatar que la ubicación del proyecto está de acuerdo a los planos del diseño. En el aspecto técnico se ha podido verificar que la propuesta es viable siempre y cuando se encuentre el suelo duro a la profundidad indicada. En la visita de campo también se constató que el proyecto beneficia económicamente a las familias. El informe cuenta con el archivo fotográfico requerido\r\n',25,102,'INVERS'),(1322,'Cumple',NULL,'El dictamen final de la evaluación integral es firmado y evaluado por el ing. Walter Zuleta Miranda y el jefe de seguimiento ing. Mario Severich en fecha 5/9/12.  En el informe se indica que las familias directamente beneficiadas son 54, compuestas por 141 personas, de las cuales 68 son hombres y 73 mujeres. El monto solicitado según el informe es de 1.098.055, 47 bs, donde el 85% (933.347, 15bs) debe ser asumido por el financiador y el 15% (164.708,32bs) corresponde a la contraparte del GAM Anzaldo. En el informe también figuran los indicadores socioeconómicos y los resultados por ámbitos de evaluación son todos positivos y factibles. Por lo que el dictamen indica que de acuerdo a los requisitos exigidos a la verificación integral de las condiciones del proyecto se recomienda su aprobación final.\r\n',26,102,'INVERS'),(1323,'Cumple',NULL,'Se encuentra presenta dentro del TESA en las páginas 34 y 35',27,102,'INVERS'),(1324,'No Cumple',NULL,'No se presenta el documento en la carpeta de evaluación del proyecto.',28,102,'INVERS'),(1325,'Cumple',NULL,'El acta de cierre de proyecto en la etapa de evaluación es firmada por Mario Severich (Jefe técnico) y Walter Zuleta (profesional técnico evaluador) en fecha 6/11/13. En el informe se indica que el proyecto presenta los 15 items requeridos ya evaluados.',29,102,'INVERS'),(1326,'Cumple',NULL,'El reporte del resumen del presupuesto es generado en fecha 12/11/12. Donde figura que el monto destinado al proyecto es de 1.098.055,47 bs. Divididos de la siguiente manera: Infraestructura: 1.043.055, 47bs y supervisión: 55.000,00 bs.',30,102,'INVERS'),(1327,'Cumple',NULL,'El reporte del detalle del presupuesto es generado en fecha 12/11/12. Donde se observan todos los módulos de acuerdo a los precios unitarios.',31,102,'INVERS'),(1328,'Cumple',NULL,'El reporte explosión de insumos es generado en fecha 12/11/12, el monto destinado es de 823.319,80 bs. A tipo de cambio 6,86.',32,102,'INVERS'),(1329,'Cumple',NULL,'El reporte de precios unitarios es generado en fecha 12/11/12, donde se encuentra todo el detalle y análisis de estos precios.',33,102,'INVERS'),(1330,'No Cumple',NULL,'No se presenta el documento en la carpeta de evaluación del proyecto.',34,102,'INVERS'),(1331,'Cumple',NULL,'El reporte de evaluación emitido por el SAP es generado en fecha 12/11/12, donde se indican los datos del proyecto, donde se indica que el plazo de ejecución de la obra es de 230 días. Se pueden observar los indicadores socioeconómicos; sin embargo no figura el monto evaluado ni el tipo de financiamiento. El informe no lleva ninguna firma.\r\n',35,102,'INVERS'),(1332,'Cumple',NULL,'El reporte de la matriz de cofinanciamiento  es generado en fecha 12/11/12. Donde se puede observar lo siguiente: el monto total es de 1.098.055, 47 bs donde el financiamiento se divide de la siguiente manera: Infraestructura:1.043.055,47 bs donde el 15% (156.458,32bs) lo asume el GAM y el 85% (886.597,15bs) el financiador. Supervisión: 55.000,00 bs donde el 15% (8.250,00bs) lo asume el GAM y el 85% (46.750,00bs) el financiador.\r\n',36,102,'INVERS'),(1333,'',NULL,'',37,102,'INVERS'),(1334,'Cumple',NULL,'N° 048/2012',38,102,'INVERS'),(1335,'Cumple',NULL,'Se firma el 30/7/2013, donde firman el gerente departamental del FPS ing. Nelson Rojas y el honorable alcalde municipal de Anzaldo Grover Vallejos Zarate.',39,102,'INVERS'),(1336,'Cumple',NULL,'CONST. PUENTE VEHICULAR LLOQUE MAYU (ANZALDO)',40,102,'INVERS'),(1337,'Cumple',NULL,'1.004.092,63',41,102,'INVERS'),(1338,'Cumple',NULL,'177,192.82',42,102,'INVERS'),(1339,'',NULL,'',43,102,'INVERS'),(1340,'Cumple',NULL,'(1ER-03)-03-051-12',44,102,'INVERS'),(1341,'Cumple',NULL,'20 de septiembre de 2012',45,102,'INVERS'),(1342,'Cumple',NULL,'1.004.092,63',46,102,'INVERS'),(1343,'Cumple',NULL,'177.192,82',47,102,'INVERS'),(1344,'',NULL,'',48,102,'INVERS'),(1345,'Cumple',NULL,'(2D0-03)-03-051-12',49,102,'INVERS'),(1346,'Cumple',NULL,'20 de septiembre de 2012',50,102,'INVERS'),(1347,'Cumple',NULL,'1.004.092,63',51,102,'INVERS'),(1348,'Cumple',NULL,'177.192,82',52,102,'INVERS'),(1349,'Cumple',NULL,'Según el análisis socioeconómico del estudio son cuatro las comunidades beneficiadas por este proyecto: Qasa Pata, Muruta, Quinua Chajra y Qewina Qasa. El total de las familias beneficiarias es de 81, haciendo un total de 340 personas, de las cuales 166 s',53,70,'INVERS'),(1351,'Cumple',NULL,'Respecto a los indicadores socioeconómicos y financieros: VANS, VANP, TIRS y TIRP, el proyecto es factible tanto social como financieramente, ya que todos los resultados son positivos, según el estudio la evaluación consideró magnitudes sociales para eval',54,70,'INVERS'),(1352,'Cumple',NULL,'La solicitud de financiamiento se la realiza en fecha 06/08/2012',1,167,'INVERS'),(1353,'No Cumple',NULL,'No se presenta el documento en la carpeta de evaluación del proyecto.',2,167,'INVERS'),(1354,'No Cumple',NULL,'No se presenta el documento en la carpeta de evaluación del proyecto.',3,167,'INVERS'),(1355,'Cumple',NULL,'Está presente dentro el documento solo la fotocopia',4,167,'INVERS'),(1356,'No Cumple',NULL,'No se presenta el documento en la carpeta de evaluación del proyecto.',55,167,'INVERS'),(1357,'No Cumple',NULL,'No se presenta el documento en la carpeta de evaluación del proyecto.',6,167,'INVERS'),(1358,'Cumple',NULL,'El estudio TESA Construcción del Mercado Campesino San Rafael comprende la construcción de una infraestructura tipo tinglado con estructura metálica, una batería de ba?os y oficinas para el personal responsable.',7,167,'INVERS'),(1359,'No Cumple',NULL,'No se encuentra este respaldo dentro del contenido del proyecto, ni en anexos dentro de la carpeta de evaluación.',8,167,'INVERS'),(1360,'No Cumple',NULL,'No se encuentran mapas ni croquis de ubicación dentro del proyecto.',9,167,'INVERS'),(1361,'Cumple',NULL,'El proyecto contiene los planos de construcción tanto de la estructura metálica como de los ba?os y oficinas, pero no contempla el plano general del proyecto, incluyendo la barda perimetral.',10,167,'INVERS'),(1362,'Cumple',NULL,'El proyecto cuenta con los respectivos precios unitarios para todos los ítems contemplados en el proyecto. ',11,167,'INVERS'),(1363,'Cumple',NULL,'Las Especificaciones técnicas cumplen con la norma vigente y corresponden con los precios unitarios. ',12,167,'INVERS'),(1364,'Cumple',NULL,'El presupuesto se encuentra de acuerdo al alcance del proyecto.',13,167,'INVERS'),(1365,'Cumple',NULL,'Presenta el cronograma de ejecución adecuado para el tipo de proyecto, mismo que contempla un periodo de cinco meses para la ejecución de las obras. ',14,167,'INVERS'),(1366,'Cumple',NULL,'La Declaratoria de Impacto Ambiental(DIA)fue otorgada en fecha 5 de junio de 2013 con el siguiente código: Nº 070303-011-CD4-059-2013 como proyecto Categoría 4, firma la nota el Ing. Mario Alberto Roca Zamora (Secretario Departamental de Desarrollo sostenible y Medio Ambiente). ',15,167,'INVERS'),(1367,'',NULL,'',16,167,'INVERS'),(1368,'',NULL,'',17,167,'INVERS'),(1369,'',NULL,'',18,167,'INVERS'),(1370,'Cumple',NULL,'La información contenida en el TESA al respecto de la evaluación socioeconómica es muy general y conceptual, mencionando puntualmente que el proyecto es de beneficio social, económico y productivo, por lo cual los beneficios serán medibles en un largo pla',53,167,'INVERS'),(1371,'Cumple',NULL,'Respecto a los indicadores socioeconómicos y financieros: VANS, TIRS y TIRP, el proyecto es factible tanto social como financieramente, ya que todos los resultados muestran valores positivos.',54,167,'INVERS'),(1372,'Cumple',NULL,'La información contenida en el TESA al respecto de la evaluación socioeconómica es muy general y conceptual, mencionando puntualmente que el proyecto es de beneficio social, económico y productivo, por lo cual los beneficios serán medibles en un largo plazo.',19,167,'INVERS'),(1373,'Cumple',NULL,'El informe de evaluación técnica es firmado y evaluado en fecha 08/09/2011, el presente informe se?ala que el proyecto cumple con todos los aspectos técnicos y económicos, el mismo es recomendado para dar curso su ejecución.',20,167,'INVERS'),(1374,'Cumple',NULL,'El informe de evaluación socioeconómica elaborado en fecha 08/09/2011,según la categorización del resultado por tipo de indicador, se concluye que todos los indicadores evaluados son positivos, tanto los indicadores socioeconómicos y  financieros. ',21,167,'INVERS'),(1375,'Cumple',NULL,'El informe de valoración social se encuentra firmado y evaluado en fecha 08/09/2011. De acuerdo al instrumento de valoración social N°4, donde todas las variables estudiadas dan positivas. Según informa el evaluador se ha socializado el proyecto con la comunidad, misma que tiene conocimiento de rol durante la etapa de operación y mantenimiento.',22,167,'INVERS'),(1376,'Cumple',NULL,'El informe de evaluación ambiental es firmado y evaluado en fecha 08/09/2011. El informe ambiental señala que el proyecto Construcción del Mercado Municipal Campesino San Rafael es ambientalmente positivo y que cuenta con las respectivas medidas de mitigación para la etapa de ejecución de obras.',23,167,'INVERS'),(1377,'Cumple',NULL,'Informe de valoración institucional firmado y evaluado en fecha 08/06/2013, de acuerdo a los rangos de valoración institucional el resultado es positivo, por lo tanto el proyecto es institucionalmente factible.',24,167,'INVERS'),(1378,'Cumple',NULL,'El informe de visita de campo realizado por el profesional técnico del FPS en fecha 08/06/2013, recomienda la construcción de esta obra dada la necesidad del municipio de contar con una infraestructura que permita mejorar la comercialización de productos y como consecuencia una mejor calidad de vida a la comunidad.\r\nLas fotografías de la visita a campo se encuentran dentro de la carpeta.\r\n',25,167,'INVERS'),(1379,'Cumple',NULL,'El dictamen final de la evaluación integral emitido por el  Ing. Fernando Gil en fecha  08/09/2011, indica que el proyecto cumple con todos los criterios de elegibilidad requeridos por el FPS y por lo tanto recomienda aprobar el financiamiento correspondiente a la inversión.',26,167,'INVERS'),(1380,'No Cumple',NULL,'No se presenta el documento en la carpeta de evaluación del proyecto.',27,167,'INVERS'),(1381,'No Cumple',NULL,'No se presenta el documento en la carpeta de evaluación del proyecto.',28,167,'INVERS'),(1382,'Cumple',NULL,'Se encuentra dentro de la carpeta con fecha 08 de julio de 2012',29,167,'INVERS'),(1383,'Cumple',NULL,'Se encuentra en la carpeta con fecha: 08 de julio de 2012.',30,167,'INVERS'),(1384,'Cumple',NULL,'Se encuentra en la carpeta con fecha: 08 de julio de 2012.',31,167,'INVERS'),(1385,'Cumple',NULL,'Se encuentra en la carpeta con fecha: 08 de julio de 2012.',32,167,'INVERS'),(1386,'Cumple',NULL,'Se encuentra en la carpeta con fecha: 08 de julio de 2012.',33,167,'INVERS'),(1387,'No Cumple',NULL,'No se presenta el documento en la carpeta de evaluación del proyecto.',34,167,'INVERS'),(1388,'No Cumple',NULL,'No se presenta el documento en la carpeta de evaluación del proyecto.',35,167,'INVERS'),(1389,'Cumple',NULL,'Se encuentra presente con fecha: 08 de julio de 2012',36,167,'INVERS'),(1390,'',NULL,'',37,167,'INVERS'),(1391,'Cumple',NULL,'N?076/2012',38,167,'INVERS'),(1392,'No Cumple',NULL,'No se presenta el documento en la carpeta de evaluación del proyecto.',39,167,'INVERS'),(1393,'No Cumple',NULL,'No se presenta el documento en la carpeta de evaluación del proyecto.',40,167,'INVERS'),(1394,'No Cumple',NULL,' 2.053.827,38 Bs. \r\n',41,167,'INVERS'),(1395,'No Cumple',NULL,' 308.074,11 Bs. \r\n',42,167,'INVERS'),(1396,'',NULL,'',43,167,'INVERS'),(1397,'Cumple',NULL,'(1ER-03)-03-024-12',44,167,'INVERS'),(1398,'Cumple',NULL,'03 de agosto de 2012',45,167,'INVERS'),(1399,'Cumple',NULL,'1.607.468,92',46,167,'INVERS'),(1400,'Cumple',NULL,'283.670,99',52,167,'INVERS'),(1401,'',NULL,'',48,167,'INVERS'),(1402,'Cumple',NULL,'(1ER-03)-03-024-12',49,167,'INVERS'),(1403,'Cumple',NULL,'03 de agosto de 2012',50,167,'INVERS'),(1404,'Cumple',NULL,'1.607.468,92',51,167,'INVERS'),(1405,'Cumple',NULL,'283.670,99',52,167,'INVERS'),(1406,'Cumple',NULL,'Se encuentra dentro de la carpeta, pero solamente la fotocopia.',4,183,'INVERS'),(1407,'No Cumple',NULL,'No se presenta el documento en la carpeta de evaluación del proyecto.',55,183,'INVERS'),(1408,'No Cumple',NULL,'No se presenta el documento en la carpeta de evaluación del proyecto.',6,183,'INVERS'),(1409,'Cumple',NULL,'El estudio TESA Mejoramiento de Camino San Rafael ? El Tuna comprende la implementación de 6 alcantarillas Tipo cajón de H?A? (dobles y simples) y la reconstrucción de 2 puentes de madera (de 15 y 25 metros)',7,183,'INVERS'),(1410,'No Cumple',NULL,'No se encuentra este respaldo dentro del contenido del proyecto ni en los anexos dentro de la carpeta de evaluación.',8,183,'INVERS'),(1411,'Cumple',NULL,'EL proyecto cuenta con 2 mapas del municipio de San Rafael (Infraestructura Vial del Municipio de San Rafael y otro denominado Imagen Satelital del Municipio de San Rafael) pero ninguno muestra la ubicación exacta de las alcantarillas y puentes contemplad',9,183,'INVERS'),(1412,'Cumple',NULL,'El proyecto contiene los planos Tipo de construcción de las alcantarillas (dobles y simples) y planos a detalle de los 2 puentes de madera (vista superior, corte longitudinal y corte transversal).',10,183,'INVERS'),(1413,'Cumple',NULL,'El proyecto cuenta con los respectivos precios unitarios para todos los ítems contemplados en el proyecto. ',11,183,'INVERS'),(1414,'Cumple',NULL,'Las Especificaciones técnicas cumplen con la norma vigente y corresponden con los precios unitarios. ',12,183,'INVERS'),(1415,'Cumple',NULL,'El presupuesto se encuentra de acuerdo al alcance del proyecto.',13,183,'INVERS'),(1416,'No Cumple',NULL,'El proyecto no presenta un cronograma de ejecución.',14,183,'INVERS'),(1417,'Cumple',NULL,'La Declaratoria de Impacto Ambiental (DIA) fue otorgada en fecha 15 de julio de 2013 con el siguiente código: Nº 070303-06-CD4-082-2013 como proyecto Categoría 4, firma la nota el Ing. Mario Alberto Roca Zamora (Secretario Departamental de Desarrollo sostenible y Medio Ambiente). ',15,183,'INVERS'),(1418,'No Cumple',NULL,'',16,183,'INVERS'),(1419,'No Cumple',NULL,'',17,183,'INVERS'),(1420,'No Cumple',NULL,'',18,183,'INVERS'),(1421,'Cumple',NULL,'La información contenida en el TESA al respecto de la evaluación socioeconómica es muy general y conceptual, mencionando puntualmente que el proyecto es de beneficio social y productivo, por lo cual estos beneficios serán medibles en un largo plazo.',53,183,'INVERS'),(1422,'Cumple',NULL,'Respecto a los indicadores socioeconómicos y financieros: VANS, TIRS y TIRP, el proyecto es factible tanto social como financieramente, ya que todos los resultados muestran valores positivos.',54,183,'INVERS'),(1423,'Cumple',NULL,'La información contenida en el TESA al respecto de la evaluación socioeconómica es muy general y conceptual, mencionando puntualmente que el proyecto es de beneficio social y productivo, por lo cual estos beneficios serán medibles en un largo plazo.',19,183,'INVERS'),(1424,'Cumple',NULL,'El informe de evaluación técnica es firmado y evaluado en fecha 08/09/2011, el presente informe señala que el proyecto cumple con todos los aspectos técnicos y económicos, el mismo es recomendado para dar curso su ejecución.',20,183,'INVERS'),(1425,'Cumple',NULL,'El informe de evaluación socioeconómica elaborado en fecha 08/09/2011, según la categorización se concluye que todos los indicadores evaluados son positivos, tanto los indicadores socioeconómicos y  financieros. ',21,183,'INVERS'),(1426,'Cumple',NULL,'El informe de valoración social se encuentra firmado y evaluado en fecha 07/09/2011. De acuerdo al instrumento de valoración social N°4, todas las variables estudiadas resultan en valores positivos. Según informa el evaluador se ha socializado el proyecto con la comunidad, misma que tiene conocimiento de rol durante la etapa de operación y mantenimiento. La evaluación recomienda la aprobación de la inversión del proyecto.',22,183,'INVERS'),(1427,'Cumple',NULL,'El informe de evaluación ambiental es firmado y evaluado en fecha 08/09/2011. El informe ambiental señala que el proyecto Mejoramiento de Camino San Rafael - El Tuna es ambientalmente positivo y que cuenta con las respectivas medidas de mitigación para la etapa de ejecución de obras.',23,183,'INVERS'),(1428,'Cumple',NULL,'Informe de valoración institucional firmado y evaluado en fecha 08/09/2013, de acuerdo a los rangos de valoración institucional el resultado es positivo, por lo tanto el proyecto es institucionalmente factible.',24,183,'INVERS'),(1429,'Cumple',NULL,'El informe de visita de campo realizado por el profesional técnico del FPS en fecha 08/06/2013, recomienda la construcción de esta obra dada la necesidad del municipio de contar con una infraestructura que permita mejorar las condiciones de transitabilidad del camino San Rafael – El Tuna durante todo el año y como consecuencia permita mejorar la calidad de vida de la comunidad.',25,183,'INVERS'),(1430,'Cumple',NULL,'El dictamen final de la evaluación integral emitido por el  Ing. Fernando Gil en fecha  08/09/2011, indica que el proyecto es positivo en todos los aspectos evaluados y por lo tanto recomienda aprobar el financiamiento correspondiente a la inversión.',26,183,'INVERS'),(1431,'No Cumple',NULL,'No se presenta el documento en la carpeta de evaluación del proyecto.',27,183,'INVERS'),(1432,'No Cumple',NULL,'No se presenta el documento en la carpeta de evaluación del proyecto.',28,183,'INVERS'),(1433,'Cumple',NULL,'Se encuentra presente con fecha 08 de julio de 2012.',29,183,'INVERS'),(1434,'Cumple',NULL,'Se encuentra presente con fecha 08 de julio de 2012.',30,183,'INVERS'),(1435,'Cumple',NULL,'Se encuentra presente con fecha 08 de julio de 2012.',31,183,'INVERS'),(1436,'Cumple',NULL,'Se encuentra presente con fecha 08 de julio de 2012.',32,183,'INVERS'),(1437,'Cumple',NULL,'Se encuentra presente con fecha 08 de julio de 2012.',33,183,'INVERS'),(1438,'No Cumple',NULL,'No se presenta el documento en la carpeta de evaluación del proyecto.',34,183,'INVERS'),(1439,'No Cumple',NULL,'No se presenta el documento en la carpeta de evaluación del proyecto.',35,183,'INVERS'),(1440,'Cumple',NULL,'Se encuentra presente con fecha 08 de julio de 2012',36,183,'INVERS'),(1441,'',NULL,'',37,183,'INVERS'),(1442,'Cumple',NULL,'Nº 076/2012',38,183,'INVERS'),(1443,'No Cumple',NULL,'No se presenta el documento en la carpeta de evaluación del proyecto.',39,183,'INVERS'),(1444,'No Cumple',NULL,'No se presenta el documento en la carpeta de evaluación del proyecto.',40,183,'INVERS'),(1445,'Cumple',NULL,'1.039.701,67',41,183,'INVERS'),(1446,'Cumple',NULL,'155.955,25',42,183,'INVERS'),(1447,'',NULL,'',43,183,'INVERS'),(1448,'Cumple',NULL,'(1ER-03)-03-024-12',44,183,'INVERS'),(1449,'Cumple',NULL,'03 de agosto de 2012',45,183,'INVERS'),(1450,'Cumple',NULL,'1.607.468,92',46,183,'INVERS'),(1451,'Cumple',NULL,'283.670,99',47,183,'INVERS'),(1452,'',NULL,'',48,183,'INVERS'),(1453,'Cumple',NULL,'(1ER-03)-03-024-12',49,183,'INVERS'),(1454,'Cumple',NULL,'03 de agosto 2012',50,183,'INVERS'),(1455,'Cumple',NULL,'1.607.468,92',51,183,'INVERS'),(1456,'Cumple',NULL,'283.670,99',52,183,'INVERS'),(1457,'No Cumple',NULL,'No se encuentra el documento; sin embargo existe una nota de respuesta de la ministra del ministerio de planificación indicando que el proyecto solicitado está en etapa de evaluación técnica en FPS.',1,182,'INVERS'),(1458,'Cumple',NULL,'Se encuentra dentro de la carpeta con el número de resolución municipal 176/2012',2,182,'INVERS'),(1459,'No Cumple',NULL,'No se presenta el documento en la carpeta de evaluación del proyecto.',3,182,'INVERS'),(1460,'No Cumple',NULL,'No se presenta el documento en la carpeta de evaluación del proyecto.',4,182,'INVERS'),(1461,'No Cumple',NULL,'No se presenta el documento en la carpeta de evaluación del proyecto.',55,182,'INVERS'),(1462,'No Cumple',NULL,'No se presenta el documento en la carpeta de evaluación del proyecto.',6,182,'INVERS'),(1463,'Cumple',NULL,'Cumple lo establecido en los manuales de preparación de proyectos de VIPFE. ',7,182,'INVERS'),(1464,'Cumple',NULL,'Cumple lo establecido en los manuales de preparación de proyectos de VIPFE, pero se encuentra ubicada en la parte de anexos',8,182,'INVERS'),(1465,'Cumple',NULL,'Cumple lo establecido en los manuales de preparación de proyectos de VIPFE. ',9,182,'INVERS'),(1466,'Cumple',NULL,'Se encuentran dentro del documento TESA, y están de acuerdo a las condiciones y aspectos evaluados en la zona de emplazamiento.',10,182,'INVERS'),(1467,'Cumple',NULL,'Cumple lo establecido en las normativas de preparación de proyectos del VIPFE, observándose precios unitarios que se encuentran dentro de los parámetros por el mercado de la construcción. Se puede ubicar en el Anexo 8.',11,182,'INVERS'),(1468,'Cumple',NULL,'No existirían mayores observaciones a las especificaciones técnicas, ya que éstas se incluyen dentro del TESA y están ligadas a cada uno de los precios unitarios.  Se puede ubicar en el Anexo 12.',12,182,'INVERS'),(1469,'Cumple',NULL,'El presupuesto se encuentra de acuerdo al alcance del proyecto, y se encuentra adicionado en los anexos del TESA, teniendo un valor total de Bs. 1.290.298,59. Se puede ubicar en el Anexo 9.',13,182,'INVERS'),(1470,'Cumple',NULL,'Se encuentra en el Anexo 10, como Cronograma de Actividades.',14,182,'INVERS'),(1471,'Cumple',NULL,'Cuenta con la categorización 3, cuenta con su PPM ? PASA; emitido por la DRRNN MA de la Gobernación de Santa Cruz con número 071502-06CD3-054-2012.',15,182,'INVERS'),(1472,'No Corresponde',NULL,'No aplica',16,182,'INVERS'),(1473,'No Corresponde',NULL,'NO APLICA',17,182,'INVERS'),(1474,'No Corresponde',NULL,'NO APLICA',18,182,'INVERS'),(1475,'Cumple',NULL,'Según el análisis socioeconómico del estudio son nueve las comunidades beneficiadas por este proyecto son todas las del municipio, al ser un proyecto que se ubica dentro de la vía principal de comunicación del municipio. El total de las familias beneficia',53,182,'INVERS'),(1476,'Cumple',NULL,'El proyecto maneja distintos valores entre la evaluación presentada dentro del documento TESA , como la presentada en las planillas parametrizadas, ubicadas en los anexos del mismo documento.  ',54,182,'INVERS'),(1477,'Cumple',NULL,'Según el análisis socioeconómico del estudio son nueve las comunidades beneficiadas por este proyecto son todas las del municipio, al ser un proyecto que se ubica dentro de la vía principal de comunicación del municipio. El total de las familias beneficiarias es de 500. El estudio brinda información de composición de la población, tamaño de las familias y el idioma predominante en el municipio, no haciendo referencia al área específica del proyecto, sino al municipio en general. El estudio carece de información importante en el área social como ser el número de escuelas y centros de salud, y no hace referencia al nivel de educación de los beneficiarios, tampoco hace referencia a las enfermedades recurrentes en el lugar ni al tipo de servicio que presentan los centros de salud. El estudio también debió tener más información acerca la realidad social y económica en la que se encuentran las comunidades beneficiarias, por lo que será más dificultoso medir el impacto social del proyecto sobre la calidad de vida de los/as beneficiarios, ya que básicamente se enfoca en la producción y las cualidad de esta en la zona de influencia del proyecto.  Según el estudio el costo total del proyecto es de Bs. 1.290.298,59.',19,182,'INVERS'),(1478,'Cumple',NULL,'El proyecto cumple con los requerimientos técnicos y económicos por lo cual se recomienda la ejecución de la obra. Firma el Ing. Fernando Gil en fecha 08/09/2011.',20,182,'INVERS'),(1479,'Cumple',NULL,'El informe de evaluación Socioeconómica financiera categoriza al proyecto como positivo. El informe presenta las respectivas planillas parametrizadas del área social. Firma el Ing. Fernando Gil en fecha 08/09/2011.',21,182,'INVERS'),(1480,'Cumple',NULL,'El informe de evaluación social otorga una valoración positiva al proyecto y recomienda su aprobación para la inversión. Firma Ing. Fernando Gil en fecha 08/09/2011.',22,182,'INVERS'),(1481,'Cumple',NULL,'El informe señala que el proyecto es ambientalmente positivo. Firma el Ing. Fernando Gil en fecha 08/09/2011.',23,182,'INVERS'),(1482,'Cumple',NULL,'El informe de Valoración Institucional categoriza al proyecto como positivo con capacidad organizativa y administrativas. Firma el Ing. Fernando Gil en fecha 08/09/2011.',24,182,'INVERS'),(1483,'Cumple',NULL,'El Informe de Visita de Campo recomienda la aprobación de la ejecución del proyecto. Firma Ing. Fernando Gil en fecha 08/09/2011.  No pudieron encontrarse las respectivas fotos de la visita.',25,182,'INVERS'),(1484,'Cumple',NULL,'El Dictamen Final señala que el proyecto es valorado como positivo y recomienda la autorización de financiamiento del proyecto. Firma el Ing. Fernando Gil en fecha 08/09/2011.',26,182,'INVERS'),(1485,'No Cumple',NULL,'Únicamente se presenta un modelo de matriz de marco lógico.',27,182,'INVERS'),(1486,'No Cumple',NULL,'No se presenta el documento en la carpeta de evaluación del proyecto.',28,182,'INVERS'),(1487,'Cumple',NULL,'El acta de cierre de evaluación es de fecha 20/11/12 firmado por Eduardo Cuentas y Luis Fernando Gil.',29,182,'INVERS'),(1488,'Cumple',NULL,'El presupuesto resumen presenta un monto de 1.268.897,94 bs.',30,182,'INVERS'),(1489,'Cumple',NULL,'El presupuesto detalle contempla los ítems de todos los componentes del proyecto alcanzando un monto total de 1.268.897,94 bs',31,182,'INVERS'),(1490,'Cumple',NULL,'Se cuenta con un detalle de insumos que alcanza un monto total de 998.730,80 bs',32,182,'INVERS'),(1491,'No Cumple',NULL,'No se presenta el documento en la carpeta de evaluación del proyecto.',33,182,'INVERS'),(1492,'Cumple',NULL,'Contempla una evaluación económica por componente, elemento y módulo',34,182,'INVERS'),(1493,'Cumple',NULL,'Informe emitido el 18/02/2013 (etapa 120)',35,182,'INVERS'),(1494,'No Cumple',NULL,'No se presenta el documento en la carpeta de evaluación del proyecto.',36,182,'INVERS'),(1495,'',NULL,'',37,182,'INVERS'),(1496,'Cumple',NULL,'N. 21/2012',38,182,'INVERS'),(1497,'Cumple',NULL,'En fechas 25/06/2012 y 15/10/2012',39,182,'INVERS'),(1498,'Cumple',NULL,'CONSTRUCCIÓN PUENTE PEATONAL CURURÚ',40,182,'INVERS'),(1499,'Cumple',NULL,'1.078.563,25 bs',41,182,'INVERS'),(1500,'Cumple',NULL,'190.334,69 bs',42,182,'INVERS'),(1501,'',NULL,'',43,182,'INVERS'),(1502,'Cumple',NULL,'(1ER-03)-03-024-12',44,182,'INVERS'),(1503,'Cumple',NULL,'19/06/2012',45,182,'INVERS'),(1504,'Cumple',NULL,'1.078.563,25 bs',46,182,'INVERS'),(1505,'Cumple',NULL,'190.334,69 bs',47,182,'INVERS'),(1506,'',NULL,'',48,182,'INVERS'),(1507,'Cumple',NULL,'II-03-03-009-12\r\n',49,182,'INVERS'),(1508,'Cumple',NULL,'19/6/2012',50,182,'INVERS'),(1509,'Cumple',NULL,'1.078.563,25 bs',51,182,'INVERS'),(1510,'Cumple',NULL,'190.334,69 bs',52,182,'INVERS'),(1511,'Cumple',NULL,'Se encuentra en el proyecto',1,169,'INVERS'),(1512,'No Cumple',NULL,'No se presenta el documento en la carpeta de evaluación del proyecto.',2,169,'INVERS'),(1513,'No Cumple',NULL,'No se presenta el documento en la carpeta de evaluación del proyecto.',3,169,'INVERS'),(1514,'No Cumple',NULL,'No se presenta el documento en la carpeta de evaluación del proyecto.',4,169,'INVERS'),(1515,'No Cumple',NULL,'No se presenta el documento en la carpeta de evaluación del proyecto.',55,169,'INVERS'),(1516,'',NULL,'',6,169,'INVERS'),(1517,'No Cumple',NULL,'No pudo evidenciar esta documentación dentro de la carpeta de evaluación del proyecto ni en el mismo TESA.',7,169,'INVERS'),(1518,'No Cumple',NULL,'No pudo evidenciar esta documentación dentro de la carpeta de evaluación del proyecto ni en el mismo TESA.',8,169,'INVERS'),(1519,'Cumple',NULL,'Cumple lo establecido en los manuales de preparación de proyectos de VIPFE. ',9,169,'INVERS'),(1520,'Cumple',NULL,'Se encuentran dentro del documento TESA, y están de acuerdo a las condiciones y aspectos evaluados en la zona de emplazamiento.',10,169,'INVERS'),(1521,'Cumple',NULL,'Cumple lo establecido en las normativas de preparación de proyectos del VIPFE, observándose precios unitarios que se encuentran dentro de los parámetros definidos por el mercado y de acuerdo a la zona dónde se realizan los trabajos.',11,169,'INVERS'),(1522,'Cumple',NULL,'No existirían mayores observaciones a las especificaciones técnicas, ya que éstas se incluyen dentro del TESA y están ligadas a cada uno de los precios unitarios.',12,169,'INVERS'),(1523,'Cumple',NULL,'El presupuesto se encuentra de acuerdo al alcance del proyecto, y se encuentra adicionado en los anexos del TESA, teniendo un valor total de Bs. 1.828.484,42.',13,169,'INVERS'),(1524,'Cumple',NULL,'No pudo evidenciar esta documentación dentro de la carpeta de evaluación del proyecto ni en el mismo TESA.',14,169,'INVERS'),(1525,'Cumple',NULL,'Cuenta con la categorización 3, cuenta con su PPM ? PASA; emitido por la DRRNN MA de la Gobernación de Santa Cruz con número 071105-12-CD3-011-2013.',15,169,'INVERS'),(1526,'No Corresponde',NULL,'No aplica',16,169,'INVERS'),(1527,'No Corresponde',NULL,'No aplica',17,169,'INVERS'),(1528,'No Corresponde',NULL,'No aplica',18,169,'INVERS'),(1529,'Cumple',NULL,'Según el análisis socioeconómico del estudio son nueve las comunidades beneficiadas por este proyecto: San Antonio, Palmira, Fátima, Todos Santos, Surusubí, Santo Rosario, San Pablo, San Andrés y San ignacito. El total de las familias beneficiarias es de ',53,169,'INVERS'),(1530,'Cumple',NULL,'Según la planilla parametrizada el frejol es el único producto que se comerciará en la zona, lo que la convierte en la única fuente de ingreso de los beneficiarios; cosa que difiere de lo presentado en el diagnóstico y estudio socioeconómico. Respecto a l',54,169,'INVERS'),(1531,'Cumple',NULL,'Según el análisis socioeconómico del estudio son nueve las comunidades beneficiadas por este proyecto: San Antonio, Palmira, Fátima, Todos Santos, Surusubí, Santo Rosario, San Pablo, San Andrés y San ignacito. El total de las familias beneficiarias es de 65, lo que significa que que son 311 personas. El estudio brinda información de composición de la población, tamaño de las familias y el idioma predominante en el municipio, no haciendo referencia al área específica del proyecto, sino al municipio en general. El estudio carece de información importante en el área social como ser el número de escuelas y centros de salud, y no hace referencia al nivel de educación de los beneficiarios, tampoco hace referencia a las enfermedades recurrentes en el lugar ni al tipo de servicio que presentan los centros de salud. El estudio también debió tener más información acerca la realidad social y económica en la que se encuentran las comunidades beneficiarias, por lo que será más dificultoso medir el impacto social del proyecto sobre la calidad de vida de los/as beneficiarios, ya que básicamente se enfoca en la producción y las cualidad de esta en la zona de influencia del proyecto.  Según el estudio el costo total del proyecto es de Bs. 1.828.484,42.',19,169,'INVERS'),(1532,'Cumple',NULL,'El informe se?ala que el proyecto cumple con todos los requerimientos técnicos - económicos  y se recomienda la ejecución del mismo. Firma el Ing. Fernando Gil en fecha 04/07/2012.',20,169,'INVERS'),(1533,'Cumple',NULL,'El punto 1.3 Tipo de Proyecto hace mención a \"Caminos y Puentes Vehiculares\" lo cual no corresponde al proyecto.  En el punto 3 se hace mención al municipio de San Rafael lo cual no corresponde. La Evaluación Socioeconómica categoriza al proyecto como positivo.',21,169,'INVERS'),(1534,'Cumple',NULL,'El punto 1.4 menciona Caminos y puentes vehiculares, se debe cambiar a Atajados.  La Valoración Social evalúa como positivo al proyecto y recomienda su aprobación. Firma el Ing. Fernando Gil en fecha 04/07/2013.',22,169,'INVERS'),(1535,'Cumple',NULL,'El punto 1.3 menciona Caminos y puentes vehiculares, se debe cambiar a Atajados.  La evaluación se?ala que el proyecto es Ambientalmente positivo. Firma Ing. Fernando Gil en fecha 04/07/2012.',23,169,'INVERS'),(1536,'Cumple',NULL,'El punto 1.3 Tipo de Proyecto hace mención a \"Caminos y Puentes Vehiculares\" lo cual no corresponde al proyecto (revisar).  El informe de valoración Institucional categoriza al proyecto con positivo. El informe lo Firma el Ing. Fernando Gil en fecha 04/07/2012.',24,169,'INVERS'),(1537,'Cumple',NULL,'El punto 1.3 menciona \"Infraestructura Vial\", se debe cambiar a Atajados. En el punto 2 se hace mención al municipio de Urubichá lo cual no corresponde al proyecto (se debe revisar). El informe de Visita de Campo recomienda la ejecución del proyecto.',25,169,'INVERS'),(1538,'Cumple',NULL,'El Dictamen Final de la Evaluación Integral califica al proyecto como positivo y recomienda la aprobación de su financiamiento. Firman la nota los ingenieros: Fernando Gil y Eduardo cuestas en fecha 04/07/2012.',26,169,'INVERS'),(1539,'No Cumple',NULL,'Solo se presenta el modelo de matriz de marco lógico',27,169,'INVERS'),(1540,'No Cumple',NULL,'No se presenta el documento en la carpeta de evaluación del proyecto.',28,169,'INVERS'),(1541,'No Cumple',NULL,'No se presenta el documento en la carpeta de evaluación del proyecto.',29,169,'INVERS'),(1542,'Cumple',NULL,'El monto total es de 2.296.475,09 bs, coincidiendo este con el presupuesto detalle',30,169,'INVERS'),(1543,'Cumple',NULL,'El presupuesto contempla un detalle correspondiente a la infraestructura de los 9 atajados, considerando un monto total de 2.296.475,09bs.',31,169,'INVERS'),(1544,'Cumple',NULL,'La explosión de insumos cuenta con un desglose para cada atajado contemplado en el proyecto y considera un monto total de 1.464.917,11 bs',32,169,'INVERS'),(1545,'No Cumple',NULL,'No se presenta el documento en la carpeta de evaluación del proyecto.',33,169,'INVERS'),(1546,'Cumple',NULL,'El documento presenta un detalle por componentes, elementos y módulos de la obra',34,169,'INVERS'),(1547,'Cumple',NULL,'Informe de evaluación emitido el 07/03/2013 (etapa 120)',35,169,'INVERS'),(1548,'No Cumple',NULL,'No se presenta el documento en la carpeta de evaluación del proyecto.',36,169,'INVERS'),(1549,'',NULL,'',37,169,'INVERS'),(1550,'No Cumple',NULL,'No se presenta el documento en la carpeta de evaluación del proyecto.',38,169,'INVERS'),(1551,'No Cumple',NULL,'No se presenta el documento en la carpeta de evaluación del proyecto.',39,169,'INVERS'),(1552,'Cumple',NULL,'Se identifica el nombre del proyecto en CTF',40,169,'INVERS'),(1553,'Cumple',NULL,'2.296.475,09',41,169,'INVERS'),(1554,'Cumple',NULL,'344.471,83',42,169,'INVERS'),(1555,'',NULL,'',43,169,'INVERS'),(1556,'Cumple',NULL,'(2do/07)-07-037-12',44,169,'INVERS'),(1557,'Cumple',NULL,'02 de noviembre de 2012',45,169,'INVERS'),(1558,'Cumple',NULL,'1.952.003,83',46,169,'INVERS'),(1559,'Cumple',NULL,'344.471,26 ',47,169,'INVERS'),(1560,'',NULL,'',48,169,'INVERS'),(1561,'Cumple',NULL,'(1ER-07)-07-037-12',49,169,'INVERS'),(1562,'Cumple',NULL,'02 de noviembre de 2012',50,169,'INVERS'),(1563,'Cumple',NULL,'1.952.003,83',51,169,'INVERS'),(1564,'Cumple',NULL,'344.474,26',52,169,'INVERS'),(1565,'Cumple',NULL,'En fecha 22 de julio de 2012 se envió la solicitud.',1,156,'PRE-INV'),(1566,'Cumple',NULL,'Cumple con todas las condiciones, se declara viable',20,156,'PRE-INV'),(1567,'Cumple',NULL,'La alternativa elegida y el respaldo se los estudios de soporte y documentos complementarios justifican la inversión por lo que se recomienda su aprobación.',21,156,'PRE-INV'),(1568,'Cumple',NULL,'El proyecto cuenta con una valoración social positiva, existen los cuestionarios de valoración firmados por los comunarios.',22,156,'PRE-INV'),(1569,'Cumple',NULL,'Presenta el certificado de dispensación con numero 050102-06-CD-C3-022/2013 emitido en fecha 22 de mayo de 2013',23,156,'PRE-INV'),(1570,'Cumple',NULL,'El municipio es factible institucionalmente.',24,156,'PRE-INV'),(1571,'Cumple',NULL,'Cuenta con dos visitas de campo en fechas 11/12/2013 y 22/05/2013',25,156,'PRE-INV'),(1572,'Cumple',NULL,'Cuenta con el contrato con fecha 6 de junio de 2013',37,156,'PRE-INV'),(1573,'Cumple',NULL,'Cuenta con la resolución municipal No. 086/2013',38,156,'PRE-INV'),(1574,'Cumple',NULL,'Cuenta con la matriz de confinamiento, informe de evaluación y presupuesto del proyecto.',35,156,'PRE-INV'),(1575,'Cumple',NULL,'Cuenta con el acta debidamente firmada',43,156,'PRE-INV'),(1576,'Cumple',NULL,'Cuenta con el acta debidamente firmada.',48,156,'PRE-INV'),(1577,'Cumple',NULL,'En fecha 14 de enero de 2013 se envió la solicitud.',1,143,'PRE-INV'),(1578,'Cumple',NULL,'La alternativa elegida y la suficiencia de estudios de soporte y documentación complementarios justifican la inversión.',20,143,'PRE-INV'),(1579,'Cumple',NULL,'Realizada la revisión socioeconomica se ha determinado que el proyecto es viable.',21,143,'PRE-INV'),(1580,'Cumple',NULL,'El proyecto goza del consenso social en pleno ya que es una preferencia para la población beneficiaria.',22,143,'PRE-INV'),(1581,'Cumple',NULL,'Se ha determinado que el impacto ambiental sera positivo pues se traduce en el mejoramiento de la producción y productividad agrícola diversificada. No se registra el certificado de dispensación.',23,143,'PRE-INV'),(1582,'Cumple',NULL,'La información del municipio muestra solvencia técnica, económica y financiera.',24,143,'PRE-INV'),(1583,'Cumple',NULL,'Presenta el certificado de visita de campo firmado por el responsable pero no se presentan actas de visita.',25,143,'PRE-INV'),(1584,'Cumple',NULL,'La documentación esta debidamente registrado. Se cuenta con la valoración del municipio, aceptando su compromiso de participación social y económica en el proyecto.',37,143,'PRE-INV'),(1585,'Cumple',NULL,'Se registra la resolución municipal con fecha 15 de octubre de 2013.',38,143,'PRE-INV'),(1586,'Cumple',NULL,'Se registra el presupuesto del proyecto y el informe de evaluación y la matriz de confinamiento.',34,143,'PRE-INV'),(1587,'Cumple',NULL,'Cuenta con el acta ',43,143,'PRE-INV'),(1588,'Cumple',NULL,'Cuenta con el acta',48,143,'PRE-INV'),(1589,'Cumple',NULL,'En fecha 29/02/2012; mediante carta CITE GAMA/MAE N° 115/2012; el alcalde de Apolo, Mario Flores Cuba; solicita al Gerente del FPS La Paz, Ariel Cortés, la incluisón del proyecto en el programa Plan Vida KfW1',1,24,'INVERS'),(1590,'Cumple',NULL,'En fecha 30/11/12, el alcalde de Apolo, envía un acta de compromiso del Gobierno Municipal al FPS, comprometiendose a cumplir con los aportes de contraparte requeridos para la ejecución del proyecto (15%), para el proyecto que ya se encuentra inscrito al ',2,24,'INVERS'),(1591,'Cumple',NULL,'En fecha 20/06/12, el gerente del FPS - La Paz, Ariel Cortés Milán, asigna el proceso de evaluación hasta el cierre del proyecto a la Ing. Olga Gutierrez.',3,24,'INVERS'),(1592,'Cumple',NULL,'En fecha 30/11/12, el alcalde de Apolo, envía un acta de aviso del Gobierno Municipal al FPS, dónde los informa que los predios ubicados en el barrio Porvenir, sobre la calle Caupolicán y Romualdo Mamani  y calle Concepción, lugar dónde se emplazará la ob',4,24,'INVERS'),(1593,'Cumple',NULL,'En fecha 05/04/12, el alcalde de Presto, envía un acta de compromiso del Gobierno Municipal al FPS, comprometiendose a impulsar la conformación de un comité impulsor del proyecto para su administración, operación y mantenimiento del mismo, después de la r',55,24,'INVERS'),(1594,'',NULL,'',6,24,'INVERS'),(1595,'',NULL,'',7,24,'INVERS'),(1596,'',NULL,'',8,24,'INVERS'),(1597,'',NULL,'',9,24,'INVERS'),(1598,'',NULL,'',10,24,'INVERS'),(1599,'',NULL,'',11,24,'INVERS'),(1600,'',NULL,'',12,24,'INVERS'),(1601,'',NULL,'',13,24,'INVERS'),(1602,'',NULL,'',14,24,'INVERS'),(1603,'',NULL,'',15,24,'INVERS'),(1604,'',NULL,'',16,24,'INVERS'),(1605,'',NULL,'',17,24,'INVERS'),(1606,'',NULL,'',18,24,'INVERS'),(1607,'',NULL,'',53,24,'INVERS'),(1608,'',NULL,'',54,24,'INVERS'),(1609,'',NULL,'',19,24,'INVERS'),(1610,'Cumple',NULL,'Como resultado se cita textualmente: \"realizada la verificación de los parámetros técnicos de dise?o y cómputos métricos, se concluye qeu el proyecto cumple con los requisitos exigidos en el aspecto técnico, considerándose el resultado de la Evaluación T',20,24,'INVERS'),(1611,'Cumple',NULL,'Los  datos son positivos y dentro de la norma VIPFE, definen que la valoración socioeconómica es positiva.  El presente informe se encuentra firmado por la Ing. Olga Gutierrez en fecha 3 de Junio de 2013.',21,24,'INVERS'),(1612,'Cumple',NULL,'Bajo la consigna de que los beneficiarios decidieron sobre la elaboración del proyecto, en una Asamble de toda la Comunidad; generando que todos los beneficiarios y no beneficiarios conozcan sobre la elaboración y presentación del presente proyecto al FPS',22,24,'INVERS'),(1613,'Cumple',NULL,'El proyecto cuenta con un certificado de dispensación categoría III, otorgado por la Gobernación del departamento de La Paz; dónde se incluye tanto la ficha ambiental como el PPM-PASA.  El presente informe se encuentra firmado por la Ing. Olga Gutierrez e',23,24,'INVERS'),(1614,'Cumple',NULL,'El proyecto se encuentra incluido en el POA del Municipio, por tanto no incluye riesgo de pago de contraparte, lo que lo hace elegible para la ejecución del mismo.  El presente informe se encuentra firmado por la Ing. Olga Gutierrez en fecha 3 de Junio de',24,24,'INVERS'),(1615,'Cumple',NULL,'Se puede citar textualmente: \"verificada la necesidad de una nueva infraestructura con los espacios físicos e instalaciones necesarias para la población demandante, en crecimiento se recomienda la aprobación del proyecto\".  El presente informe se encuentr',25,24,'INVERS'),(1616,'No Cumple',NULL,'No se presenta el documento en la carpeta de evaluación del proyecto.',26,24,'INVERS'),(1617,'Cumple',NULL,'Se encuentra dentro del Informe de Evaluación Técnica.',27,24,'INVERS'),(1618,'Cumple',NULL,'Se encuentra dentro del Informe de Evaluación Técnica.',28,24,'INVERS'),(1619,'No Cumple',NULL,'No se presenta el documento en la carpeta de evaluación del proyecto.',29,24,'INVERS'),(1620,'Cumple',NULL,'Maneja un presupuesto total de Bs. 3.282.608,80.  ',30,24,'INVERS'),(1621,'Cumple',NULL,'Maneja un presupuesto total de Bs. 3.282.608,80.  Divididos en Infraestructura: Bs. 3.132.608,80; y Supervisión: Bs. 150.000,00. y 10 Módulos.',31,24,'INVERS'),(1622,'Cumple',NULL,'La explosión de insumos maneja un dato total de Bs. 3.282.608,80. a un tipo de cambio de Bs. 6,96/$us. Dónde define un aporte del FPS del 67,44% (Bs. 2.112.631,37) y una contraparte munciipal del 32,56% (Bs. 1.019.977,43)',32,24,'INVERS'),(1623,'Cumple',NULL,'Se encuentra dentro de la carpeta',33,24,'INVERS'),(1624,'Cumple',NULL,'Presenta, con un monto que resulta alrededor de un 17% menos del presupuesto a precios de mercado.',34,24,'INVERS'),(1625,'Cumple',NULL,'Se encuentra presente',35,24,'INVERS'),(1626,'Cumple',NULL,'Se encuentra presente',36,24,'INVERS'),(1627,'',NULL,'',37,24,'INVERS'),(1628,'Cumple',NULL,'La evaluación socioeconómica, muestra que los habitantes de la zona de influencia llegan a ser 57. Entrega un informe pormenorizado de los aspectos productivos, demográficos y sociales de la zona. Los costos de producción presentados en el TESA difieren de los utilizados en las planillas parametrizadas 90 hectáreas son las que se espera poder regar.',19,16,'INVERS'),(1629,'Cumple',NULL,'Los indicadores Financieros, muestran que no es un proyecto rentable a este nivel; ya que si bien el VAN es positivo; la TIR o llega a la tasa esperada, cosa entendible en cualquier proyecto de índole social, pese a que su RBC es 1,25.  Por otra parte, los indicadores sociales muestran un VANS positivo y una TIRS de 5,02% , menor a la establecida como parámetro por el VIPFE (12,67%); por lo que no se justificaría la inversión en el presente proyecto, desde el punto de vista social y económico; por otro lado también se aprecia una RBCS de 1,01.  Por otro lado, y aportando al criterio de aceptación, el indicador costo eficiencia utilizado en el Plan Vida, es el costo de inversión por hectárea incremental  es $us. 5.189,17; mayor a la línea de corte de $us. 5.000 establecida por el MPD para el Plan Vida; el costo de inversión por familia, no se lo analizará ya que no es un criterio de aceptación dentro de los lineamientos del Plan Vida, aunque se observa que el mismo es muy caro para el impacto en el número de familias que existen en la zona de influencia directa.  Por lo que se ratifica, según los indicadores, que el proyecto no es rentable, y es más caro de lo que debería ser para el tipo de proyecto con el que se trabaja.',57,16,'INVERS'),(1630,'No Corresponde',NULL,'',58,16,'INVERS'),(1631,'Cumple',NULL,'ggg',19,13,'INVERS'),(1632,'Cumple',NULL,'gg',57,13,'INVERS'),(1633,'No Cumple',NULL,'ghghg',58,13,'INVERS'),(1634,'Cumple',NULL,'La evaluación muestra que existen 683 habitantes (166 familias).Da una visión de las fortalezas y debilidades de la zona beneficiada en los aspectos demográficos, de educación, de salud, y los aspectos productivos y económicos de la misma.',19,22,'INVERS'),(1635,'Cumple',NULL,'Los indicadores Financieros, muestran que no es un proyecto rentable a este nivel; cosa entendible en cualquier proyecto de índole social.  Por otra parte, los indicadores sociales muestran un VANS positivos y una TIRS de 12,90%, superior a la establecida como parámetro por el VIPFE; por lo que justificaría la inversión en el presente proyecto, desde el punto de vista social y económico.  Por otro lado, y aportando al criterio de aceptación, el indicador costo eficiencia utilizado en el Plan Vida, es el costo de inversión por kilómetro construido es $us. 3.097,71; menor a la línea de corte de $us. 12.000 establecida por el MPD para el Plan Vida.  En la planilla parametrizada, se debería manejar una sola moneda, y uniformizar los resultados, ya que se habla de $us. 24.007,81; siendo que esta suma es en Bs.',57,22,'INVERS'),(1636,'No Corresponde',NULL,'',58,22,'INVERS'),(1637,'Cumple',NULL,'Presenta los principales indicadores que hacen factible el proyecto. La evaluación se hizo en base a la metodología de preparación y evaluación de proyectos de inversión publica en gaviones de protección utilizando como instrumento las planillas parametrizadas. VANP:1.610.78. TIRP: 12,98%.\r\n',57,137,'PRE-INV'),(1638,'No Corresponde',NULL,'',58,137,'PRE-INV'),(1639,'Cumple',NULL,'dsdsdsdsd',59,16,'INVERS'),(1640,'Cumple',NULL,'Dentro del documento se encuentra la carta con cite: GAMP/INST./N°131/2012, donde se indica que se certifica la inclusión del proyecto \"Construcción puente vehicular Phajcha Mayu - Condor Pata\", en el POA  de la gestión 2012.\r\n',59,106,'INVERS'),(1641,'Cumple',NULL,'Se presenta en la estudio TESA \r\n',57,106,'INVERS'),(1642,'No Corresponde',NULL,'',58,106,'INVERS'),(1643,'No Cumple',NULL,'No se presenta el documento en la carpeta de evaluación del proyecto.\r\n',59,64,'INVERS'),(1644,'Cumple',NULL,'El documento hace referencia a un presupuesto de Bs. 1.45.576,71 para la ejecución del proyecto. Respecto a los indicadores socioeconómicos y financieros, según el estudio el proyecto tiene una tasa de rendimiento del 10,09% adicional al costo de oportunidad; por lo que el proyecto es rentable justificando la inversión total y asumiendo la recuperación de dicha inversión. Respecto al VAN se indica que se tendría una tasa de actualización de 12,98% año. (Se anexan las planillas parame trizadas)\r\n',57,64,'INVERS'),(1645,'Cumple',NULL,'Se presenta la carta de las organizaciones sociales del municipio, solicitando al alcalde que se pueda cofinanciar el proyecto, además de que sea la alcaldía la que se encargue de realizar las gestiones para el financiamiento del proyecto. La carta es enviada el 23/5/12 firmada por el representante del sindicato agrario 14 de septiembre.\r\n',58,64,'INVERS'),(1646,'Cumple',NULL,'El documento es una copia de fax donde se certifica que el proyecto se encuentra inscrito dentro del POA 2012, la certificación es de mayo del 2012, firmada por el alcalde Grover García.\r\n',59,90,'INVERS'),(1647,'Cumple',NULL,'Dentro del estudio se observa la evaluación económica financiera, donde según los datos VAN es positivo al igual que el TIR. El costo por hectárea incremental es de 3.369,11 $us, como es menor a 5mil$ no ha ningún inconveniente. Dentro del documento se encuentran anexadas las planillas parametrizadas.\r\n',57,90,'INVERS'),(1648,'Cumple',NULL,'Dentro de los documentos se encuentra una nota de compromiso firmada por el alcalde Grover García, en el mes de mayo del 2012, donde se indica que el GAM de Tiraque se compromete a realizar la instalación eléctrica del sistema de bombeo, que se refiere a la instalación de la red eléctrica de la toma de corriente hasta la caseta de bombeo.\r\n',58,90,'INVERS'),(1649,'Cumple',NULL,'La certificación se encuentra dentro de la carpeta, en una carta dirigida el gerente departamental del FPS en donde se señala que como alcalde certifica la inclusión del proyecto en el POA 2012. La carta llega al FPS con CITE: GAMB. DTB-031/12, en fecha 3/5/12.\r\n',59,136,'INVERS'),(1650,'Cumple',NULL,'Se presentan los principales indicadores socioeconómicos y financieros, extraídos de las planillas parametrizadas (se encuentran anexadas). SE puede observar que los indicadores de rentabilidad cumplen lo determinado por el VIPFE, ya que el VANS y el TIRS son positivos. Lo mismo sucede con los indicadores privados que son positivos, por lo tanto el TIRP y el VANP son mayores al 10%  \r\n',57,136,'INVERS'),(1651,'No Corresponde',NULL,'',58,136,'INVERS'),(1652,'Cumple',NULL,'Se presenta la certificación de inscripción del proyecto \"Construcción de atajados Chacras (Pojo), en fecha 25/6/12 firmada por el honorable alcalde Fidel Rojas Catorceno y el presidente del concejo municipal Vitalio Vargas García. También se presenta una carta dirigida al FPS indicando que el proyecto ha sido inscrito en el POA .Al mismo tiempo existe el documento de ejecución presupuestaria del GAM de Pojo donde figura el aporte para el proyecto.\r\n',59,127,'INVERS'),(1653,'Cumple',NULL,'Para un mejor resultado se utilizó la aplicación de planillas parametrizadas, que dan cuenta que tanto el TIRP como el TIRS son positivos, lo mismo sucede con el VANP y el VANS, por lo que el proyecto resulta factible económica y socialmente. El análisis costo-eficiencia también indica que el proyecto es factible ya que el costo por hectárea incremental es de 3.059,18\r\n',57,127,'INVERS'),(1654,'Cumple',NULL,' En el anexo 5 del TESA se puede observar la existencia de actas de sesión gratuita de tierras para la construcción delos atajados firmadas y llenadas por los comunarios.\r\n',58,127,'INVERS'),(1655,'Cumple',NULL,'La certificación se encuentra dentro de la carpeta, el documento señala que el GAM de Anzaldo certifica que el  proyecto \"Const. Puente vehicular Lloque Mayu\" se inscribira en el POA . El documento es de fecha 5/6/12  y está firmado por el director administrativo financiero Ariel Flores\r\n',59,102,'INVERS'),(1656,'Cumple',NULL,'Dentro del TESA se pueden encontrar los indicadores financieros y socioeconómicos donde se observa que tanto el VANP, TIRP, TIRS y VANS son positivos por lo que el proyecto es social y económicamente factible; sin embargo no se encuentra un análisis de estos indicadores, solamente se los presenta en cuadros. El especialista de este capítulo debería realizar una explicación de los indicadores para un mejor entendimiento.  Las planillas parametrizadas se encuentran anexadas en el documento.\r\n',57,102,'INVERS'),(1657,'No Corresponde',NULL,'',58,102,'INVERS'),(1658,'No Cumple',NULL,'No se presenta el documento en la carpeta de evaluación del proyecto.\r\n',59,70,'INVERS'),(1659,'Cumple',NULL,'Dentro de la carta de solicitud de financiamiento, el municipio se compromete a garantizar la futura operación y mantenimiento del proyecto, para que esto sea posible se comprometen a incorporar el presupuesto y las actividades de operación y mantenimiento en los POAs futuros.\r\n',55,70,'INVERS'),(1660,'Cumple',NULL,'Respecto a los indicadores socioeconómicos y financieros: VANS, VANP, TIRS y TIRP, el proyecto es factible tanto social como financieramente, ya que todos los resultados son positivos, según el estudio la evaluación consideró magnitudes sociales para evaluar las finalidades sociales y privadas, ya que el proyecto tendrá una incidencia positiva en la economía de los beneficiarios y permitirá disminuir sus costos e incrementar sus ingresos, volúmenes y condiciones de participación en el mercado. En uno de los anexos se presentan las planillas parametrizadas donde se indica que el costo de inversión por hectárea incremental es de 24,287.36 bs, menor a $us 5.000,00, por lo tanto el análisis costo - beneficio es positivo.\r\n',57,70,'INVERS'),(1661,'Cumple',NULL,'La comunidad Corral Pampa no fue incluida en el proyecto inicial, lo que motivo a que sean incluidos, sin incremento del presupuesto de obra, pero si se mejoro la cobertura de riego.\r\n',58,70,'INVERS'),(1662,'Cumple',NULL,'Respecto a los indicadores socioeconómicos y financieros: VANS, TIRS y TIRP, el proyecto es factible tanto social como financieramente, ya que todos los resultados muestran valores positivos, según el estudio la evaluación consideró magnitudes sociales para evaluar las finalidades sociales y privadas, ya que el proyecto tendrá una incidencia positiva en la economía de los beneficiarios y permitirá disminuir sus costos e incrementar sus ingresos, volúmenes y condiciones de participación en el mercado. Los resultados fueron obtenidos de planillas parametrizadas presentadas en los anexos del TESA.',57,167,'INVERS'),(1663,'Cumple',NULL,'Es preciso mencionar que el presente proyecto fue aprobado por FPS Santa Cruz bajo compromiso del Gobierno Municipal de San Rafael de refaccionar y habilitar el mercado municipal con el que actualmente cuenta el municipio (actualmente deteriorado y abandonado), esto con la finalidad de garantizar el efectivo uso y aprovechamiento de las instalaciones que se vienen construyendo. Al momento de la visita en fecha 21 de noviembre de 2013 se verificó que el mercado municipal, al cual se hace referencia, aún no ha tenido trabajos de refacción, se menciona que los trabajos inicien los próximos días.',58,167,'INVERS'),(1664,'No Cumple',NULL,'No se encuentra dentro de la carpeta de evaluación',59,183,'INVERS'),(1665,'Cumple',NULL,'Respecto a los indicadores socioeconómicos y financieros: VANS, TIRS y TIRP, el proyecto es factible tanto social como financieramente, ya que todos los resultados muestran valores positivos, según el estudio la evaluación consideró magnitudes sociales para evaluar las finalidades sociales y privadas, ya que el proyecto tendrá una incidencia positiva en la economía de los beneficiarios y permitirá disminuir sus costos e incrementar sus ingresos, volúmenes y condiciones de participación en el mercado.',57,183,'INVERS'),(1666,'No Corresponde',NULL,'',58,183,'INVERS'),(1667,'Cumple',NULL,'Resolución municipal Nº 176/2012\r\n',59,182,'INVERS'),(1668,'Cumple',NULL,'El proyecto maneja distintos valores entre la evaluación presentada dentro del documento TESA , como la presentada en las planillas parametrizadas, ubicadas en los anexos del mismo documento.  Se debería unificar criterios para realizar una evaluación financiera y económica real, aunque ambos de los resultados presentados muestran  un proyecto socialmente rentable, y que garantiza a sostenibilidad del mismo a nivel financiero.',57,182,'INVERS'),(1669,'No Corresponde',NULL,'',58,182,'INVERS'),(1670,'No Cumple',NULL,'No se encuentra presente en la carpeta de evaluacion',59,169,'INVERS'),(1671,'Cumple',NULL,'Según la planilla parametrizada el frejol es el único producto que se comerciará en la zona, lo que la convierte en la única fuente de ingreso de los beneficiarios; cosa que difiere de lo presentado en el diagnóstico y estudio socioeconómico. Respecto a los indicadores socioeconómicos y financieros: VANS, VANP, TIRS y TIRP, el proyecto es factible tanto social como financieramente, ya que todos los resultados son positivos, según el estudio la evaluación consideró magnitudes sociales para evaluar las finalidades sociales y privadas, ya que el proyecto tendrá una incidencia positiva en la economía de los beneficiarios y permitirá disminuir sus costos e incrementar sus ingresos, volúmenes y condiciones de participación en el mercado. En uno de los anexos se presentan las planillas parame trizadas donde se indica que el costo de inversión por hectárea incremental es de 32.904,16 bs, lo que estaría de acuerdo con los parámetros del Plan Vida en este tipo de construcciones.',57,169,'INVERS'),(1672,'No Corresponde',NULL,'',58,169,'INVERS'),(1673,'Cumple',NULL,'El proyecto consiste en realizar la construcción de un puente vehicular de 50 m de longitud y un ancho de calzada de 4 m. de una sola vía desviado sobre el rio Challamayu y Laya Pampa.\r\n',56,156,'PRE-INV'),(1674,'Cumple',NULL,'consiste en la construcción  de una obra de toma tipo lateral, cámara desarenadora, conducción por tubería, distribuidor por tubería y cámaras de distribución.\r\n',56,143,'PRE-INV'),(1675,'No Corresponde',NULL,'dsdsdsd',1,156,'INVERS');
/*!40000 ALTER TABLE `t_evaluacion_documentos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_evaluacion_presupuesto`
--

DROP TABLE IF EXISTS `t_evaluacion_presupuesto`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_evaluacion_presupuesto` (
  `evaluacion_codigo` int(11) NOT NULL AUTO_INCREMENT,
  `proyecto_id` int(11) DEFAULT NULL,
  `evaluacion_infraestructura_bs` varchar(10) DEFAULT NULL,
  `evaluacion_infraestructura_sus` varchar(10) DEFAULT NULL,
  `evaluacion_supervision_bs` varchar(10) DEFAULT NULL,
  `evaluacion_supervision_sus` varchar(10) DEFAULT NULL,
  `evaluacion_capacitacion_bs` varchar(10) DEFAULT NULL,
  `evaluacion_capacitacon_sus` varchar(10) DEFAULT NULL,
  `evaluacion_total_bs` varchar(10) DEFAULT NULL,
  `evaluacion_total_sus` varchar(10) DEFAULT NULL,
  `evaluacion_fecha_inicio` date DEFAULT NULL,
  `evaluacion_fecha_fin_programada` date DEFAULT NULL,
  `evaluacion_fecha_final` date DEFAULT NULL,
  `evaluacion_duracion_dias` varchar(10) DEFAULT NULL,
  `e_id_reponsable_evaluacion` int(10) DEFAULT NULL,
  `eval_id_user` int(11) DEFAULT NULL,
  `eval_fcha_ult_modif` datetime DEFAULT NULL,
  `eval_tipo_proyecto` varchar(15) DEFAULT NULL,
  PRIMARY KEY (`evaluacion_codigo`),
  KEY `fk_eval_pres_proy` (`proyecto_id`),
  KEY `fk_eval_resp_eval` (`e_id_reponsable_evaluacion`),
  KEY `fk_eval_user` (`eval_id_user`),
  CONSTRAINT `fk_eval_pres_proy` FOREIGN KEY (`proyecto_id`) REFERENCES `t_proyecto` (`proyecto_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=191 DEFAULT CHARSET=latin2;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_evaluacion_presupuesto`
--

LOCK TABLES `t_evaluacion_presupuesto` WRITE;
/*!40000 ALTER TABLE `t_evaluacion_presupuesto` DISABLE KEYS */;
INSERT INTO `t_evaluacion_presupuesto` VALUES (1,1,'1000.00','6710.00','200000.00','1342000.00','0.00','0.00','201000.00','1348710.00','2011-05-26','0000-00-00','2014-05-26','1097',14,7,'2014-12-15 23:13:26','INVERS'),(5,5,'825487.54','5662844.52','142226.41','975673.17','0.01','0.07','967713.95','6638517.70','0000-00-00','2013-10-09','2013-10-09','0',19,NULL,NULL,'INVERS'),(9,9,'1.00','5.50','1.00','5.50','0.01','0.06','2.00','11.00','2014-02-04','2014-03-04','2014-10-04','9',18,NULL,NULL,'INVERS'),(13,13,'754043.29','5172736.97','133066.46','912835.92','0.01','0.07','887109.75','6085572.89','2012-04-04','2012-09-13','2012-09-13','163',22,8,'2014-08-14 16:32:23','INVERS'),(16,16,'2141705.68','14692100.9','377948.06','2592723.69','0.01','0.07','2519653.74','17284824.6','2012-04-04','2013-03-06','2013-03-06','337',22,8,'2014-08-14 16:31:42','INVERS'),(22,22,'1501905.89','10303074.4','265042.22','1818189.63','0.01','0.07','1766948.11','12121264.0','2012-04-20','2012-09-13','2012-09-13','147',21,8,'2014-08-14 16:33:00','INVERS'),(24,24,'','','','','','','','','0000-00-00','0000-00-00','0000-00-00','349',NULL,NULL,NULL,'INVERS'),(26,26,'','','','','','','','','0000-00-00','0000-00-00','0000-00-00','0',NULL,NULL,NULL,'INVERS'),(27,27,'','','','','','','','','0000-00-00','0000-00-00','0000-00-00','1',NULL,NULL,NULL,'INVERS'),(28,28,'','','','','','','','','0000-00-00','0000-00-00','0000-00-00','0',NULL,NULL,NULL,'INVERS'),(29,29,'','','','','','','','','0000-00-00','0000-00-00','0000-00-00','0',NULL,NULL,NULL,'INVERS'),(30,30,'','','','','','','','','0000-00-00','0000-00-00','0000-00-00','0',NULL,NULL,NULL,'INVERS'),(31,31,'','','','','','','','','0000-00-00','0000-00-00','0000-00-00','203',NULL,NULL,NULL,'INVERS'),(33,33,'','','','','','','','','0000-00-00','0000-00-00','0000-00-00','50',NULL,NULL,NULL,'INVERS'),(35,35,'569362.04','3905823.59','431802.08','2962162.27','0.01','0.07','1001164.12','6867985.86','2012-08-10','2012-10-02','2012-10-02','54',32,8,'2014-08-14 16:58:14','INVERS'),(37,37,'','','','','','','','','0000-00-00','0000-00-00','0000-00-00','37',NULL,NULL,NULL,'INVERS'),(39,39,'','','','','','','','','0000-00-00','0000-00-00','0000-00-00','51',NULL,NULL,NULL,'INVERS'),(41,41,'','','','','','','','','0000-00-00','0000-00-00','0000-00-00','50',NULL,NULL,NULL,'INVERS'),(43,43,'','','','','','','','','0000-00-00','0000-00-00','0000-00-00','29',NULL,NULL,NULL,'INVERS'),(46,46,'','','','','','','','','0000-00-00','0000-00-00','0000-00-00','92',NULL,NULL,NULL,'INVERS'),(53,53,'','','','','','','','','0000-00-00','0000-00-00','0000-00-00','70',NULL,NULL,NULL,'INVERS'),(56,56,'','','','','','','','','0000-00-00','0000-00-00','0000-00-00','85',NULL,NULL,NULL,'INVERS'),(59,59,'','','','','','','','','0000-00-00','0000-00-00','0000-00-00','90',NULL,NULL,NULL,'INVERS'),(62,62,'','','','','','','','','0000-00-00','0000-00-00','0000-00-00','169',NULL,NULL,NULL,'INVERS'),(64,64,'1234662.66','8469785.85','217881.65','1494668.12','0.01','0.07','1452544.31','9964453.97','2012-05-10','2012-08-14','2012-08-14','97',3,8,'2014-08-14 16:56:46','INVERS'),(68,68,'','','','','','','','','0000-00-00','0000-00-00','0000-00-00','98',NULL,NULL,NULL,'INVERS'),(73,73,'','','','','','','','','0000-00-00','0000-00-00','0000-00-00','97',NULL,NULL,NULL,'INVERS'),(75,75,'','','','','','','','','0000-00-00','0000-00-00','0000-00-00','97',NULL,NULL,NULL,'INVERS'),(77,77,'','','','','','','','','0000-00-00','0000-00-00','0000-00-00','97',NULL,NULL,NULL,'INVERS'),(79,79,'','','','','','','','','0000-00-00','0000-00-00','0000-00-00','95',NULL,NULL,NULL,'INVERS'),(81,81,'','','','','','','','','0000-00-00','0000-00-00','0000-00-00','86',NULL,NULL,NULL,'INVERS'),(84,84,'','','','','','','','','0000-00-00','0000-00-00','0000-00-00','113',NULL,NULL,NULL,'INVERS'),(87,87,'','','','','','','','','0000-00-00','0000-00-00','0000-00-00','113',NULL,NULL,NULL,'INVERS'),(90,90,'828597.25','5684177.14','146223.04','1003090.05','0.01','0.07','974820.29','6687267.19','2012-03-16','2012-05-25','2012-05-25','71',10,8,'2014-08-14 16:50:20','INVERS'),(93,93,'','','','','','','','','0000-00-00','0000-00-00','0000-00-00','86',NULL,NULL,NULL,'INVERS'),(97,97,'','','','','','','','','0000-00-00','0000-00-00','0000-00-00','113',NULL,NULL,NULL,'INVERS'),(99,99,'','','','','','','','','0000-00-00','0000-00-00','0000-00-00','71',NULL,NULL,NULL,'INVERS'),(102,102,'1004092.63','6888075.44','177192.82','1215542.75','0.01','0.07','1181285.45','8103618.19','2012-03-20','2012-09-20','2012-09-20','185',6,8,'2014-08-14 16:42:09','INVERS'),(104,104,'','','','','','','','','0000-00-00','0000-00-00','0000-00-00','183',NULL,NULL,NULL,'INVERS'),(106,106,'504707.94','3462296.47','89066.11','610993.51','0.01','0.07','593774.05','4073289.98','2012-03-22','2012-08-07','2012-08-07','139',7,8,'2014-08-14 16:41:11','INVERS'),(108,108,'','','','','','','','','0000-00-00','0000-00-00','0000-00-00','168',NULL,NULL,NULL,'INVERS'),(110,110,'914525.96','6273648.09','161386.93','1107114.34','0.01','0.07','1075912.89','7380762.43','2012-03-22','2012-08-09','2012-08-09','141',6,8,'2014-08-14 16:40:35','INVERS'),(112,112,'494217.75','3390333.77','2.00','13.72','0.01','0.07','494217.77','3390333.90','2012-03-22','2012-08-03','2012-08-03','135',6,8,'2014-08-14 16:39:13','INVERS'),(115,115,'723564.12','4963649.86','127687.79','875938.24','0.01','0.07','851251.91','5839588.10','2012-03-26','2012-08-07','2012-08-07','135',10,8,'2014-08-14 16:39:39','INVERS'),(118,118,'','','','','','','','','0000-00-00','0000-00-00','0000-00-00','85',NULL,NULL,NULL,'INVERS'),(121,121,'824753.72','5657810.52','145544.77','998437.12','0.01','0.07','970298.49','6656247.64','2012-05-09','2012-08-08','2012-08-08','92',31,8,'2014-08-14 16:56:21','INVERS'),(122,122,'920775.13','6316517.39','162489.73','1114679.55','0.01','0.07','1083264.86','7431196.94','2012-03-02','2012-05-25','2012-05-25','85',4,8,'2014-08-14 16:37:56','INVERS'),(125,125,'','','','','','','','','0000-00-00','0000-00-00','0000-00-00','80',NULL,NULL,NULL,'INVERS'),(127,127,'801036.15','5495107.99','141359.32','969724.94','0.01','0.07','942395.47','6464832.92','2012-03-12','2012-06-19','2012-06-19','100',11,8,'2014-08-14 16:37:23','INVERS'),(130,130,'','','','','','','','','0000-00-00','0000-00-00','0000-00-00','74',NULL,NULL,NULL,'INVERS'),(133,133,'','','','','','','','','0000-00-00','0000-00-00','0000-00-00','73',NULL,NULL,NULL,'INVERS'),(136,136,'1278003.21','8767102.02','225529.98','1547135.66','0.01','0.07','1503533.19','10314237.6','2012-02-10','2012-06-09','2012-06-09','121',7,8,'2014-08-08 12:25:09','INVERS'),(137,137,'979611.28','6720133.38','172872.58','1185905.90','0.01','0.07','1152483.86','7906039.28','2013-02-04','2013-04-01','2013-04-01','57',30,8,'2014-08-14 16:34:21','PRE-INV'),(140,140,'','','','','','','','','0000-00-00','0000-00-00','0000-00-00','',NULL,NULL,NULL,'INVERS'),(143,143,'113935.76','781599.31','1.00','6.86','0.01','0.07','113935.77','781599.38','2012-03-02','0000-00-00','2012-06-26','117',38,9,'2014-10-31 15:59:55','PRE-INV'),(146,146,'','','','','','','','','0000-00-00','0000-00-00','0000-00-00','154',NULL,NULL,NULL,'INVERS'),(152,152,'','','','','','','','','0000-00-00','0000-00-00','0000-00-00','',NULL,NULL,NULL,'INVERS'),(154,154,'','','','','','','','','0000-00-00','0000-00-00','0000-00-00','54',NULL,NULL,NULL,'INVERS'),(156,156,'235798.28','1617576.20','1.00','6.86','0.01','0.07','235798.29','1617576.27','2012-04-10','0000-00-00','2012-04-10','1',37,9,'2014-10-31 15:15:06','PRE-INV'),(167,167,'883746.25','6062499.28','155955.25','1069853.02','0.01','0.07','1039701.50','7132352.29','2012-09-07','2012-11-12','2012-11-12','67',29,8,'2014-08-14 16:35:54','INVERS'),(169,169,'1952003.83','13390746.2','344471.26','2363072.84','0.01','0.07','2296475.09','15753819.1','2012-09-07','2012-11-20','2012-11-20','75',29,8,'2014-08-14 16:34:59','INVERS'),(180,180,'','','','','','','','','0000-00-00','0000-00-00','0000-00-00','27',NULL,NULL,NULL,'INVERS'),(182,182,'1952003.83','13390746.2','344471.26','2363072.84','0.01','0.07','2296475.09','15753819.1','2012-09-07','2012-10-05','2012-10-05','29',29,8,'2014-08-14 16:36:30','INVERS'),(187,70,'1607468.92','11027236.7','283670.99','1945982.99','0.01','0.07','1891139.91','12973219.7','2012-05-12','2012-08-03','2012-08-03','84',3,8,'2014-08-14 16:57:42','INVERS'),(188,183,'1501905.89','10303074.4','53000.00','363580.00','0.01','0.07','1554905.89','10666654.4','2012-09-07','2012-11-12','2012-11-12','67',29,8,'2014-08-14 16:35:31','INVERS'),(189,184,'99545.37','682881.24','0.01','0.07','0.01','0.07','99545.38','682881.31','2012-09-17','2012-09-24','2012-09-24','8',18,8,'2014-06-23 13:35:11','PRE-INV'),(190,156,'1682173.29','11539708.7','296854.11','2036419.19','0.00','0.00','1979027.40','13576127.9','2013-03-20','0000-00-00','2013-03-25','6',18,7,'2014-12-10 13:49:15','INVERS');
/*!40000 ALTER TABLE `t_evaluacion_presupuesto` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_indicador_periodo`
--

DROP TABLE IF EXISTS `t_indicador_periodo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_indicador_periodo` (
  `id_indicador_periodo` int(11) NOT NULL AUTO_INCREMENT,
  `ind_per_id_indicador_proyecto` int(11) DEFAULT NULL,
  `ind_per_id_proyecto` int(11) DEFAULT NULL,
  `ind_per_periodo` varchar(8) DEFAULT NULL,
  `ind_per_tipo_indicador` varchar(30) DEFAULT NULL,
  `ind_per_observacion` varchar(800) DEFAULT NULL,
  PRIMARY KEY (`id_indicador_periodo`),
  KEY `fk_ipr_id_ind_proy` (`ind_per_id_indicador_proyecto`),
  KEY `fk_ipr_id_proyecto` (`ind_per_id_proyecto`),
  CONSTRAINT `t_indicador_periodo_ibfk_2` FOREIGN KEY (`ind_per_id_proyecto`) REFERENCES `t_proyecto` (`proyecto_id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=latin2;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_indicador_periodo`
--

LOCK TABLES `t_indicador_periodo` WRITE;
/*!40000 ALTER TABLE `t_indicador_periodo` DISABLE KEYS */;
INSERT INTO `t_indicador_periodo` VALUES (1,1,13,'03-2013','linea_base','ninguna'),(2,2,16,'03-2013','linea_base','ninguna'),(3,3,22,'03-2013','linea_base','ninguna'),(4,4,24,'03-2013','linea_base','ninguna'),(5,5,35,'03-2013','linea_base','ninguna'),(6,6,102,'03-2013','linea_base','ninguna'),(7,7,90,'03-2013','linea_base','ninguna'),(8,8,121,'03-2013','linea_base','ninguna'),(9,9,122,'03-2013','linea_base','ninguna'),(10,10,64,'03-2013','linea_base','ninguna'),(11,11,106,'03-2013','linea_base','ninguna'),(12,12,127,'03-2013','linea_base','ninguna'),(13,13,70,'03-2013','linea_base','ninguna'),(14,14,112,'03-2013','linea_base','ninguna'),(15,15,110,'03-2013','linea_base','ninguna'),(16,16,136,'03-2013','linea_base','ninguna'),(17,17,115,'03-2013','linea_base','ninguna'),(18,18,137,'03-2013','linea_base','ninguna'),(19,19,156,'03-2013','linea_base','ninguna'),(20,20,143,'03-2013','linea_base','ninguna'),(21,21,183,'03-2013','linea_base','ninguna'),(22,22,169,'03-2013','linea_base','ninguna'),(23,23,182,'03-2013','linea_base','ninguna'),(24,24,184,'03-2013','linea_base','ninguna'),(25,25,167,'03-2013','linea_base','ninguna'),(26,26,1,'04-2003','linea_base','fav rty'),(27,1,1,'05-2003','monitoreo','1er'),(28,1,1,'06-2003','monitoreo','3er'),(29,1,1,'07-2003','monitoreo','dfd'),(30,1,1,'08-2003','monitoreo','ss'),(31,1,13,'05-2014','monitoreo','fdgfg'),(32,1,13,'06-2014','monitoreo','cc');
/*!40000 ALTER TABLE `t_indicador_periodo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_indicador_proyecto`
--

DROP TABLE IF EXISTS `t_indicador_proyecto`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_indicador_proyecto` (
  `id_indicador_proyecto` int(11) NOT NULL AUTO_INCREMENT,
  `ind_pry_id_proyecto` int(11) DEFAULT NULL,
  `ind_pry_usuario` int(11) DEFAULT NULL,
  `ind_pry_fecha_actualiza` datetime DEFAULT NULL,
  PRIMARY KEY (`id_indicador_proyecto`),
  KEY `fk_ip_id_user` (`ind_pry_usuario`),
  KEY `fk_ip_id_proyecto` (`ind_pry_id_proyecto`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_indicador_proyecto`
--

LOCK TABLES `t_indicador_proyecto` WRITE;
/*!40000 ALTER TABLE `t_indicador_proyecto` DISABLE KEYS */;
INSERT INTO `t_indicador_proyecto` VALUES (1,13,6,'2014-05-01 00:00:00'),(2,16,6,'2014-05-01 00:00:00'),(3,22,6,'2014-05-01 00:00:00'),(4,24,6,'2014-05-01 00:00:00'),(5,35,6,'2014-05-01 00:00:00'),(6,102,6,'2014-05-01 00:00:00'),(7,90,6,'2014-05-01 00:00:00'),(8,121,6,'2014-05-01 00:00:00'),(9,122,6,'2014-05-01 00:00:00'),(10,64,6,'2014-05-01 00:00:00'),(11,106,6,'2014-05-01 00:00:00'),(12,127,6,'2014-05-01 00:00:00'),(13,70,6,'2014-05-01 00:00:00'),(14,112,6,'2014-05-01 00:00:00'),(15,110,6,'2014-05-01 00:00:00'),(16,136,6,'2014-05-01 00:00:00'),(17,115,6,'2014-05-01 00:00:00'),(18,137,6,'2014-05-01 00:00:00'),(19,156,6,'2014-05-01 00:00:00'),(20,143,6,'2014-05-01 00:00:00'),(21,183,6,'2014-05-01 00:00:00'),(22,169,6,'2014-05-01 00:00:00'),(23,182,6,'2014-05-01 00:00:00'),(24,184,6,'2014-05-01 00:00:00'),(25,167,6,'2014-05-01 00:00:00'),(26,1,7,'2014-07-10 21:12:15');
/*!40000 ALTER TABLE `t_indicador_proyecto` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_indicador_valor`
--

DROP TABLE IF EXISTS `t_indicador_valor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_indicador_valor` (
  `id_indicador_valor` int(11) NOT NULL AUTO_INCREMENT,
  `ind_ppv_id_indicador_proyecto` int(11) DEFAULT NULL,
  `ind_ppv_id_proyecto` int(11) DEFAULT NULL,
  `ind_ppv_id_indicador_parametro` int(11) DEFAULT NULL,
  `ind_ppv_id_periodo` int(11) DEFAULT NULL,
  `ind_ppv_valor` varchar(50) DEFAULT NULL,
  `ind_ppv_obsevacion` varchar(150) DEFAULT NULL,
  `ind_ppv_tipo_indicador` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`id_indicador_valor`),
  KEY `fk_ippv_ipry` (`ind_ppv_id_indicador_proyecto`),
  KEY `fk_ippv_proy` (`ind_ppv_id_proyecto`),
  KEY `fk_p_ind` (`ind_ppv_id_indicador_parametro`),
  KEY `fk_periodo` (`ind_ppv_id_periodo`),
  CONSTRAINT `t_indicador_valor_ibfk_2` FOREIGN KEY (`ind_ppv_id_proyecto`) REFERENCES `t_proyecto` (`proyecto_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `t_indicador_valor_ibfk_3` FOREIGN KEY (`ind_ppv_id_periodo`) REFERENCES `t_indicador_periodo` (`id_indicador_periodo`) ON DELETE CASCADE ON UPDATE NO ACTION,
  CONSTRAINT `t_indicador_valor_ibfk_4` FOREIGN KEY (`ind_ppv_id_indicador_parametro`) REFERENCES `p_indicador` (`id_indicador`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=3236 DEFAULT CHARSET=latin2;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_indicador_valor`
--

LOCK TABLES `t_indicador_valor` WRITE;
/*!40000 ALTER TABLE `t_indicador_valor` DISABLE KEYS */;
INSERT INTO `t_indicador_valor` VALUES (1,1,13,2,1,'1','ninguna','numerico'),(2,1,13,3,1,'1','ninguna','numerico'),(3,1,13,4,1,'2','ninguna','numerico'),(4,1,13,5,1,'2','ninguna','numerico'),(5,1,13,6,1,'2','ninguna','numerico'),(6,1,13,7,1,'2','ninguna','numerico'),(7,1,13,8,1,'2','ninguna','numerico'),(8,1,13,9,1,'72','ninguna','numerico-estatico'),(9,1,13,10,1,'184','ninguna','numerico-estatico'),(10,1,13,11,1,'5,4','ninguna','numerico'),(11,1,13,12,1,'0','ninguna','numerico'),(12,1,13,13,1,'0','ninguna','numerico'),(13,1,13,14,1,'0','ninguna','numerico'),(14,1,13,15,1,'0','ninguna','numerico'),(15,1,13,16,1,'0','ninguna','numerico'),(16,1,13,17,1,'0,2','ninguna','numerico'),(17,1,13,18,1,'0','ninguna','numerico'),(18,1,13,19,1,'0','ninguna','numerico'),(19,1,13,20,1,'0','ninguna','numerico'),(20,1,13,21,1,'0','ninguna','numerico'),(21,1,13,22,1,'0','ninguna','numerico'),(22,1,13,23,1,'0','ninguna','numerico'),(23,1,13,24,1,'0','ninguna','numerico'),(24,1,13,25,1,'0','ninguna','numerico'),(25,1,13,26,1,'0','ninguna','numerico'),(26,1,13,27,1,'0','ninguna','numerico'),(27,1,13,28,1,'0','ninguna','numerico'),(28,1,13,29,1,'0','ninguna','numerico'),(29,1,13,30,1,'0,2','ninguna','numerico'),(30,1,13,31,1,'0','ninguna','numerico'),(31,1,13,32,1,'0','ninguna','numerico'),(32,1,13,33,1,'0','ninguna','numerico'),(33,1,13,34,1,'3','ninguna','numerico'),(34,1,13,35,1,'0','ninguna','numerico'),(35,1,13,36,1,'0','ninguna','numerico'),(36,1,13,37,1,'0','ninguna','numerico'),(37,1,13,38,1,'2','ninguna','numerico'),(38,1,13,39,1,'0','ninguna','numerico'),(39,1,13,40,1,'0','ninguna','numerico'),(40,1,13,41,1,'0','ninguna','numerico'),(41,1,13,42,1,'0','ninguna','numerico'),(42,1,13,43,1,'0','ninguna','numerico'),(43,1,13,44,1,'0','ninguna','numerico'),(44,1,13,45,1,'0','ninguna','numerico'),(45,1,13,46,1,'0','ninguna','numerico'),(46,1,13,47,1,'0,9','ninguna','numerico'),(47,1,13,48,1,'0','ninguna','numerico'),(48,1,13,49,1,'0','ninguna','numerico'),(49,1,13,50,1,'0,45','ninguna','numerico'),(50,1,13,51,1,'0','ninguna','numerico'),(51,1,13,52,1,'0','ninguna','numerico'),(52,1,13,53,1,'0','ninguna','numerico'),(53,1,13,54,1,'1,1','ninguna','numerico'),(54,1,13,55,1,'0','ninguna','numerico'),(55,1,13,56,1,'0','ninguna','numerico'),(56,1,13,57,1,'0','ninguna','numerico'),(57,1,13,58,1,'0','ninguna','numerico'),(58,1,13,59,1,'0','ninguna','numerico'),(59,1,13,60,1,'0','ninguna','numerico'),(60,1,13,61,1,'0','ninguna','numerico'),(61,1,13,62,1,'0','ninguna','numerico'),(62,1,13,63,1,'0','ninguna','numerico'),(63,1,13,64,1,'0','ninguna','numerico'),(64,1,13,65,1,'0','ninguna','numerico'),(65,1,13,66,1,'0','ninguna','numerico'),(66,1,13,67,1,'1,2','ninguna','numerico'),(67,1,13,68,1,'0','ninguna','numerico'),(68,1,13,69,1,'0','ninguna','numerico'),(69,1,13,70,1,'0','ninguna','numerico'),(70,1,13,71,1,'0','ninguna','numerico'),(71,1,13,72,1,'2,3','ninguna','numerico'),(72,1,13,73,1,'0','ninguna','numerico'),(73,1,13,74,1,'0','ninguna','numerico'),(74,1,13,75,1,'6,8','ninguna','numerico'),(75,1,13,76,1,'0','ninguna','numerico'),(76,1,13,77,1,'0','ninguna','numerico'),(77,1,13,78,1,'0','ninguna','numerico'),(78,1,13,79,1,'0','ninguna','numerico'),(79,1,13,80,1,'0','ninguna','numerico'),(80,1,13,81,1,'0','ninguna','numerico'),(81,1,13,82,1,'0','ninguna','numerico'),(82,1,13,83,1,'1,1','ninguna','numerico'),(83,1,13,84,1,'0','ninguna','numerico'),(84,1,13,85,1,'0','ninguna','numerico'),(85,1,13,86,1,'0','ninguna','numerico'),(86,1,13,87,1,'0','ninguna','numerico'),(87,1,13,88,1,'0','ninguna','numerico'),(88,1,13,89,1,'0','ninguna','numerico'),(89,1,13,90,1,'1261','ninguna','numerico'),(90,1,13,91,1,'0','ninguna','numerico'),(91,1,13,92,1,'0','ninguna','numerico'),(92,1,13,93,1,'0','ninguna','numerico'),(93,1,13,94,1,'0','ninguna','numerico'),(94,1,13,95,1,'0','ninguna','numerico'),(95,1,13,96,1,'0','ninguna','numerico'),(96,1,13,97,1,'0','ninguna','numerico'),(97,1,13,98,1,'0','ninguna','numerico'),(98,1,13,99,1,'0','ninguna','numerico'),(99,1,13,100,1,'0','ninguna','numerico'),(100,1,13,101,1,'0','ninguna','numerico'),(101,1,13,102,1,'0','ninguna','numerico'),(102,1,13,103,1,'1505','ninguna','numerico'),(103,1,13,104,1,'0','ninguna','numerico'),(104,1,13,105,1,'0','ninguna','numerico'),(105,1,13,106,1,'0','ninguna','numerico'),(106,1,13,107,1,'0','ninguna','numerico'),(107,1,13,108,1,'220','ninguna','numerico'),(108,1,13,109,1,'0','ninguna','numerico'),(109,1,13,110,1,'0','ninguna','numerico'),(110,1,13,111,1,'745','ninguna','numerico'),(111,1,13,112,1,'0','ninguna','numerico'),(112,1,13,113,1,'0','ninguna','numerico'),(113,1,13,114,1,'0','ninguna','numerico'),(114,1,13,115,1,'0','ninguna','numerico'),(115,1,13,116,1,'0','ninguna','numerico'),(116,1,13,117,1,'0','ninguna','numerico'),(117,1,13,118,1,'0','ninguna','numerico'),(118,1,13,119,1,'190','ninguna','numerico'),(119,1,13,120,1,'0','ninguna','numerico'),(120,1,13,121,1,'0','ninguna','numerico'),(121,1,13,122,1,'52182,926','ninguna','numerico'),(122,1,13,123,1,'9346,20806378992','ninguna','numerico'),(123,1,13,124,1,'0','ninguna','numerico'),(124,1,13,133,1,'0.4','ninguna','numerico'),(125,1,13,134,1,'-312903,406','ninguna','numerico'),(126,1,13,135,1,'-312903,406','ninguna','numerico'),(127,1,13,136,1,'-282377,06','ninguna','numerico'),(128,1,13,137,1,'0,03709','ninguna','numerico'),(129,1,13,138,1,'0,0438','ninguna','numerico'),(130,1,13,139,1,'0,684','ninguna','numerico'),(131,2,16,1,2,'1','ninguna','numerico'),(132,2,16,2,2,'1','ninguna','numerico'),(133,2,16,3,2,'1','ninguna','numerico'),(134,2,16,4,2,'2','ninguna','numerico'),(135,2,16,5,2,'2','ninguna','numerico'),(136,2,16,6,2,'2','ninguna','numerico'),(137,2,16,7,2,'2','ninguna','numerico'),(138,2,16,8,2,'2','ninguna','numerico'),(139,2,16,9,2,'12','ninguna','numerico-estatico'),(140,2,16,10,2,'62','ninguna','numerico-estatico'),(141,2,16,11,2,'115','ninguna','numerico'),(142,2,16,12,2,'15','ninguna','numerico'),(143,2,16,13,2,'0','ninguna','numerico'),(144,2,16,14,2,'0','ninguna','numerico'),(145,2,16,15,2,'0','ninguna','numerico'),(146,2,16,16,2,'0','ninguna','numerico'),(147,2,16,17,2,'0','ninguna','numerico'),(148,2,16,18,2,'0','ninguna','numerico'),(149,2,16,19,2,'0','ninguna','numerico'),(150,2,16,20,2,'0','ninguna','numerico'),(151,2,16,21,2,'0','ninguna','numerico'),(152,2,16,22,2,'0','ninguna','numerico'),(153,2,16,23,2,'0','ninguna','numerico'),(154,2,16,24,2,'0','ninguna','numerico'),(155,2,16,25,2,'0','ninguna','numerico'),(156,2,16,26,2,'0','ninguna','numerico'),(157,2,16,27,2,'0','ninguna','numerico'),(158,2,16,28,2,'0','ninguna','numerico'),(159,2,16,29,2,'0','ninguna','numerico'),(160,2,16,30,2,'0','ninguna','numerico'),(161,2,16,31,2,'0','ninguna','numerico'),(162,2,16,32,2,'0','ninguna','numerico'),(163,2,16,33,2,'10','ninguna','numerico'),(164,2,16,34,2,'0','ninguna','numerico'),(165,2,16,35,2,'48','ninguna','numerico'),(166,2,16,36,2,'14','ninguna','numerico'),(167,2,16,37,2,'0','ninguna','numerico'),(168,2,16,38,2,'32','ninguna','numerico'),(169,2,16,39,2,'0','ninguna','numerico'),(170,2,16,40,2,'0','ninguna','numerico'),(171,2,16,41,2,'0','ninguna','numerico'),(172,2,16,42,2,'0','ninguna','numerico'),(173,2,16,43,2,'0','ninguna','numerico'),(174,2,16,44,2,'0','ninguna','numerico'),(175,2,16,45,2,'0','ninguna','numerico'),(176,2,16,46,2,'0','ninguna','numerico'),(177,2,16,47,2,'6','ninguna','numerico'),(178,2,16,48,2,'0','ninguna','numerico'),(179,2,16,49,2,'0','ninguna','numerico'),(180,2,16,50,2,'0,45','ninguna','numerico'),(181,2,16,51,2,'0','ninguna','numerico'),(182,2,16,52,2,'0','ninguna','numerico'),(183,2,16,53,2,'0','ninguna','numerico'),(184,2,16,54,2,'0','ninguna','numerico'),(185,2,16,55,2,'0','ninguna','numerico'),(186,2,16,56,2,'0','ninguna','numerico'),(187,2,16,57,2,'0','ninguna','numerico'),(188,2,16,58,2,'0','ninguna','numerico'),(189,2,16,59,2,'0','ninguna','numerico'),(190,2,16,60,2,'0','ninguna','numerico'),(191,2,16,61,2,'0','ninguna','numerico'),(192,2,16,62,2,'0','ninguna','numerico'),(193,2,16,63,2,'0','ninguna','numerico'),(194,2,16,64,2,'0','ninguna','numerico'),(195,2,16,65,2,'0','ninguna','numerico'),(196,2,16,66,2,'0','ninguna','numerico'),(197,2,16,67,2,'0','ninguna','numerico'),(198,2,16,68,2,'0','ninguna','numerico'),(199,2,16,69,2,'0','ninguna','numerico'),(200,2,16,70,2,'2,2','ninguna','numerico'),(201,2,16,71,2,'0','ninguna','numerico'),(202,2,16,72,2,'0','ninguna','numerico'),(203,2,16,73,2,'0,8','ninguna','numerico'),(204,2,16,74,2,'0','ninguna','numerico'),(205,2,16,75,2,'5,5','ninguna','numerico'),(206,2,16,76,2,'0','ninguna','numerico'),(207,2,16,77,2,'0','ninguna','numerico'),(208,2,16,78,2,'0','ninguna','numerico'),(209,2,16,79,2,'0','ninguna','numerico'),(210,2,16,80,2,'0','ninguna','numerico'),(211,2,16,81,2,'0','ninguna','numerico'),(212,2,16,82,2,'0','ninguna','numerico'),(213,2,16,83,2,'0,8','ninguna','numerico'),(214,2,16,84,2,'0','ninguna','numerico'),(215,2,16,85,2,'0','ninguna','numerico'),(216,2,16,86,2,'1490','ninguna','numerico'),(217,2,16,87,2,'0','ninguna','numerico'),(218,2,16,88,2,'0','ninguna','numerico'),(219,2,16,89,2,'0','ninguna','numerico'),(220,2,16,90,2,'0','ninguna','numerico'),(221,2,16,91,2,'0','ninguna','numerico'),(222,2,16,92,2,'0','ninguna','numerico'),(223,2,16,93,2,'0','ninguna','numerico'),(224,2,16,94,2,'0','ninguna','numerico'),(225,2,16,95,2,'0','ninguna','numerico'),(226,2,16,96,2,'0','ninguna','numerico'),(227,2,16,97,2,'0','ninguna','numerico'),(228,2,16,98,2,'0','ninguna','numerico'),(229,2,16,99,2,'0','ninguna','numerico'),(230,2,16,100,2,'0','ninguna','numerico'),(231,2,16,101,2,'0','ninguna','numerico'),(232,2,16,102,2,'0','ninguna','numerico'),(233,2,16,103,2,'0','ninguna','numerico'),(234,2,16,104,2,'0','ninguna','numerico'),(235,2,16,105,2,'0','ninguna','numerico'),(236,2,16,106,2,'1650','ninguna','numerico'),(237,2,16,107,2,'0','ninguna','numerico'),(238,2,16,108,2,'0','ninguna','numerico'),(239,2,16,109,2,'1860','ninguna','numerico'),(240,2,16,110,2,'0','ninguna','numerico'),(241,2,16,111,2,'5610','ninguna','numerico'),(242,2,16,112,2,'0','ninguna','numerico'),(243,2,16,113,2,'0','ninguna','numerico'),(244,2,16,114,2,'0','ninguna','numerico'),(245,2,16,115,2,'0','ninguna','numerico'),(246,2,16,116,2,'0','ninguna','numerico'),(247,2,16,117,2,'0','ninguna','numerico'),(248,2,16,118,2,'0','ninguna','numerico'),(249,2,16,119,2,'3685','ninguna','numerico'),(250,2,16,120,2,'0','ninguna','numerico'),(251,2,16,121,2,'0','ninguna','numerico'),(252,2,16,122,2,'35995,053','ninguna','numerico'),(253,2,16,123,2,'62616,057','ninguna','numerico'),(254,2,16,124,2,'0','ninguna','numerico'),(255,2,16,133,2,'0.4','ninguna','numerico'),(256,2,16,134,2,'1101451,48293846','ninguna','numerico'),(257,2,16,135,2,'1101451,48293846','ninguna','numerico'),(258,2,16,136,2,'1335997,625','ninguna','numerico'),(259,2,16,137,2,'0,2203','ninguna','numerico'),(260,2,16,138,2,'0,2462','ninguna','numerico'),(261,2,16,139,2,'1,52','ninguna','numerico'),(262,3,22,2,3,'1','ninguna','numerico'),(263,3,22,3,3,'1','ninguna','numerico'),(264,3,22,4,3,'2','ninguna','numerico'),(265,3,22,5,3,'2','ninguna','numerico'),(266,3,22,6,3,'2','ninguna','numerico'),(267,3,22,7,3,'2','ninguna','numerico'),(268,3,22,8,3,'2','ninguna','numerico'),(269,3,22,9,3,'49','ninguna','numerico-estatico'),(270,3,22,10,3,'137','ninguna','numerico-estatico'),(271,3,22,12,3,'0','ninguna','numerico'),(272,3,22,13,3,'0','ninguna','numerico'),(273,3,22,14,3,'0','ninguna','numerico'),(274,3,22,15,3,'0','ninguna','numerico'),(275,3,22,16,3,'0','ninguna','numerico'),(276,3,22,17,3,'0','ninguna','numerico'),(277,3,22,18,3,'0','ninguna','numerico'),(278,3,22,19,3,'0','ninguna','numerico'),(279,3,22,20,3,'0','ninguna','numerico'),(280,3,22,21,3,'22','ninguna','numerico'),(281,3,22,22,3,'0','ninguna','numerico'),(282,3,22,23,3,'0','ninguna','numerico'),(283,3,22,24,3,'4','ninguna','numerico'),(284,3,22,25,3,'50','ninguna','numerico'),(285,3,22,26,3,'0','ninguna','numerico'),(286,3,22,27,3,'0','ninguna','numerico'),(287,3,22,28,3,'0','ninguna','numerico'),(288,3,22,29,3,'0','ninguna','numerico'),(289,3,22,30,3,'0','ninguna','numerico'),(290,3,22,31,3,'0','ninguna','numerico'),(291,3,22,32,3,'0','ninguna','numerico'),(292,3,22,33,3,'55','ninguna','numerico'),(293,3,22,34,3,'0','ninguna','numerico'),(294,3,22,35,3,'0','ninguna','numerico'),(295,3,22,36,3,'0','ninguna','numerico'),(296,3,22,37,3,'0','ninguna','numerico'),(297,3,22,38,3,'67,5','ninguna','numerico'),(298,3,22,39,3,'0','ninguna','numerico'),(299,3,22,40,3,'0','ninguna','numerico'),(300,3,22,41,3,'0','ninguna','numerico'),(301,3,22,42,3,'0','ninguna','numerico'),(302,3,22,43,3,'0','ninguna','numerico'),(303,3,22,44,3,'0','ninguna','numerico'),(304,3,22,45,3,'0','ninguna','numerico'),(305,3,22,46,3,'0','ninguna','numerico'),(306,3,22,47,3,'27,5','ninguna','numerico'),(307,3,22,48,3,'0','ninguna','numerico'),(308,3,22,49,3,'0','ninguna','numerico'),(309,3,22,50,3,'0','ninguna','numerico'),(310,3,22,51,3,'0','ninguna','numerico'),(311,3,22,52,3,'0','ninguna','numerico'),(312,3,22,53,3,'0','ninguna','numerico'),(313,3,22,54,3,'0','ninguna','numerico'),(314,3,22,55,3,'0','ninguna','numerico'),(315,3,22,56,3,'0','ninguna','numerico'),(316,3,22,57,3,'0','ninguna','numerico'),(317,3,22,58,3,'1,38','ninguna','numerico'),(318,3,22,59,3,'0','ninguna','numerico'),(319,3,22,60,3,'0','ninguna','numerico'),(320,3,22,61,3,'0,81647','ninguna','numerico'),(321,3,22,62,3,'2,03','ninguna','numerico'),(322,3,22,63,3,'0','ninguna','numerico'),(323,3,22,64,3,'0','ninguna','numerico'),(324,3,22,65,3,'0','ninguna','numerico'),(325,3,22,66,3,'0','ninguna','numerico'),(326,3,22,67,3,'0','ninguna','numerico'),(327,3,22,68,3,'0','ninguna','numerico'),(328,3,22,69,3,'0','ninguna','numerico'),(329,3,22,70,3,'1,53','ninguna','numerico'),(330,3,22,71,3,'0','ninguna','numerico'),(331,3,22,72,3,'0','ninguna','numerico'),(332,3,22,73,3,'0','ninguna','numerico'),(333,3,22,74,3,'0','ninguna','numerico'),(334,3,22,75,3,'5,102','ninguna','numerico'),(335,3,22,76,3,'0','ninguna','numerico'),(336,3,22,77,3,'0','ninguna','numerico'),(337,3,22,78,3,'0','ninguna','numerico'),(338,3,22,79,3,'0','ninguna','numerico'),(339,3,22,80,3,'0','ninguna','numerico'),(340,3,22,81,3,'0','ninguna','numerico'),(341,3,22,82,3,'0','ninguna','numerico'),(342,3,22,83,3,'1,53','ninguna','numerico'),(343,3,22,84,3,'0','ninguna','numerico'),(344,3,22,85,3,'0','ninguna','numerico'),(345,3,22,86,3,'0','ninguna','numerico'),(346,3,22,87,3,'0','ninguna','numerico'),(347,3,22,88,3,'0','ninguna','numerico'),(348,3,22,89,3,'0','ninguna','numerico'),(349,3,22,90,3,'0','ninguna','numerico'),(350,3,22,91,3,'0','ninguna','numerico'),(351,3,22,92,3,'0','ninguna','numerico'),(352,3,22,93,3,'0','ninguna','numerico'),(353,3,22,94,3,'142','ninguna','numerico'),(354,3,22,95,3,'0','ninguna','numerico'),(355,3,22,96,3,'0','ninguna','numerico'),(356,3,22,97,3,'34','ninguna','numerico'),(357,3,22,98,3,'71','ninguna','numerico'),(358,3,22,99,3,'0','ninguna','numerico'),(359,3,22,100,3,'0','ninguna','numerico'),(360,3,22,101,3,'0','ninguna','numerico'),(361,3,22,102,3,'0','ninguna','numerico'),(362,3,22,103,3,'0','ninguna','numerico'),(363,3,22,104,3,'0','ninguna','numerico'),(364,3,22,105,3,'0','ninguna','numerico'),(365,3,22,106,3,'85','ninguna','numerico'),(366,3,22,107,3,'0','ninguna','numerico'),(367,3,22,108,3,'0','ninguna','numerico'),(368,3,22,109,3,'0','ninguna','numerico'),(369,3,22,110,3,'0','ninguna','numerico'),(370,3,22,111,3,'580','ninguna','numerico'),(371,3,22,112,3,'0','ninguna','numerico'),(372,3,22,113,3,'0','ninguna','numerico'),(373,3,22,114,3,'0','ninguna','numerico'),(374,3,22,115,3,'0','ninguna','numerico'),(375,3,22,116,3,'0','ninguna','numerico'),(376,3,22,117,3,'0','ninguna','numerico'),(377,3,22,118,3,'0','ninguna','numerico'),(378,3,22,119,3,'135','ninguna','numerico'),(379,3,22,120,3,'0','ninguna','numerico'),(380,3,22,121,3,'0','ninguna','numerico'),(381,3,22,122,3,'64463,63','ninguna','numerico'),(382,3,22,123,3,'6544,252','ninguna','numerico'),(383,3,22,125,3,'0','ninguna','numerico'),(384,3,22,126,3,'1','ninguna','cadena'),(385,3,22,127,3,'27896,351','ninguna','numerico'),(386,3,22,134,3,'-948377,558698867','ninguna','numerico'),(387,3,22,135,3,'-948377,558698867','ninguna','numerico'),(388,3,22,136,3,'-685674,165','ninguna','numerico'),(389,3,22,137,3,'0,0312','ninguna','numerico'),(390,3,22,138,3,'0,0479','ninguna','numerico'),(391,3,22,139,3,'0,538','ninguna','numerico'),(392,4,24,2,4,'1','ninguna','numerico'),(393,4,24,3,4,'2','ninguna','numerico'),(394,4,24,4,4,'2','ninguna','numerico'),(395,4,24,5,4,'2','ninguna','numerico'),(396,4,24,6,4,'2','ninguna','numerico'),(397,4,24,7,4,'2','ninguna','numerico'),(398,4,24,8,4,'2','ninguna','numerico'),(399,4,24,12,4,'0','ninguna','numerico'),(400,4,24,13,4,'0','ninguna','numerico'),(401,4,24,14,4,'0','ninguna','numerico'),(402,4,24,15,4,'98,4','ninguna','numerico'),(403,4,24,16,4,'0','ninguna','numerico'),(404,4,24,17,4,'0','ninguna','numerico'),(405,4,24,18,4,'0','ninguna','numerico'),(406,4,24,19,4,'150','ninguna','numerico'),(407,4,24,20,4,'0','ninguna','numerico'),(408,4,24,21,4,'0','ninguna','numerico'),(409,4,24,22,4,'0','ninguna','numerico'),(410,4,24,23,4,'0','ninguna','numerico'),(411,4,24,24,4,'0','ninguna','numerico'),(412,4,24,25,4,'0','ninguna','numerico'),(413,4,24,26,4,'15,5','ninguna','numerico'),(414,4,24,27,4,'0','ninguna','numerico'),(415,4,24,28,4,'0','ninguna','numerico'),(416,4,24,29,4,'0','ninguna','numerico'),(417,4,24,30,4,'0','ninguna','numerico'),(418,4,24,31,4,'0','ninguna','numerico'),(419,4,24,32,4,'0','ninguna','numerico'),(420,4,24,33,4,'25','ninguna','numerico'),(421,4,24,34,4,'0','ninguna','numerico'),(422,4,24,35,4,'0','ninguna','numerico'),(423,4,24,36,4,'22,3','ninguna','numerico'),(424,4,24,37,4,'0','ninguna','numerico'),(425,4,24,38,4,'0','ninguna','numerico'),(426,4,24,39,4,'0','ninguna','numerico'),(427,4,24,40,4,'0','ninguna','numerico'),(428,4,24,41,4,'0','ninguna','numerico'),(429,4,24,42,4,'73,5','ninguna','numerico'),(430,4,24,43,4,'0','ninguna','numerico'),(431,4,24,44,4,'0','ninguna','numerico'),(432,4,24,45,4,'0','ninguna','numerico'),(433,4,24,46,4,'0','ninguna','numerico'),(434,4,24,47,4,'0','ninguna','numerico'),(435,4,24,48,4,'58,2','ninguna','numerico'),(436,4,24,49,4,'0','ninguna','numerico'),(437,4,24,50,4,'0','ninguna','numerico'),(438,4,24,51,4,'0','ninguna','numerico'),(439,4,24,52,4,'0','ninguna','numerico'),(440,4,24,53,4,'1,8','ninguna','numerico'),(441,4,24,54,4,'0','ninguna','numerico'),(442,4,24,55,4,'0','ninguna','numerico'),(443,4,24,56,4,'0,9','ninguna','numerico'),(444,4,24,57,4,'0','ninguna','numerico'),(445,4,24,58,4,'0','ninguna','numerico'),(446,4,24,59,4,'0','ninguna','numerico'),(447,4,24,60,4,'0','ninguna','numerico'),(448,4,24,61,4,'0','ninguna','numerico'),(449,4,24,62,4,'0','ninguna','numerico'),(450,4,24,63,4,'0,1','ninguna','numerico'),(451,4,24,64,4,'0','ninguna','numerico'),(452,4,24,65,4,'0','ninguna','numerico'),(453,4,24,66,4,'0','ninguna','numerico'),(454,4,24,67,4,'0','ninguna','numerico'),(455,4,24,68,4,'0','ninguna','numerico'),(456,4,24,69,4,'0','ninguna','numerico'),(457,4,24,70,4,'0,75','ninguna','numerico'),(458,4,24,71,4,'0','ninguna','numerico'),(459,4,24,72,4,'0','ninguna','numerico'),(460,4,24,73,4,'0,9','ninguna','numerico'),(461,4,24,74,4,'0','ninguna','numerico'),(462,4,24,75,4,'0','ninguna','numerico'),(463,4,24,76,4,'0','ninguna','numerico'),(464,4,24,77,4,'0','ninguna','numerico'),(465,4,24,78,4,'0','ninguna','numerico'),(466,4,24,79,4,'56,2','ninguna','numerico'),(467,4,24,80,4,'0','ninguna','numerico'),(468,4,24,81,4,'0','ninguna','numerico'),(469,4,24,82,4,'0','ninguna','numerico'),(470,4,24,83,4,'0','ninguna','numerico'),(471,4,24,84,4,'2,1','ninguna','numerico'),(472,4,24,85,4,'0','ninguna','numerico'),(473,4,24,86,4,'0','ninguna','numerico'),(474,4,24,87,4,'0','ninguna','numerico'),(475,4,24,88,4,'0','ninguna','numerico'),(476,4,24,89,4,'4660','ninguna','numerico'),(477,4,24,90,4,'0','ninguna','numerico'),(478,4,24,91,4,'0','ninguna','numerico'),(479,4,24,92,4,'15050','ninguna','numerico'),(480,4,24,93,4,'0','ninguna','numerico'),(481,4,24,94,4,'0','ninguna','numerico'),(482,4,24,95,4,'0','ninguna','numerico'),(483,4,24,96,4,'0','ninguna','numerico'),(484,4,24,97,4,'0','ninguna','numerico'),(485,4,24,98,4,'0','ninguna','numerico'),(486,4,24,99,4,'24000','ninguna','numerico'),(487,4,24,100,4,'0','ninguna','numerico'),(488,4,24,101,4,'0','ninguna','numerico'),(489,4,24,102,4,'0','ninguna','numerico'),(490,4,24,103,4,'0','ninguna','numerico'),(491,4,24,104,4,'0','ninguna','numerico'),(492,4,24,105,4,'0','ninguna','numerico'),(493,4,24,106,4,'4900','ninguna','numerico'),(494,4,24,107,4,'0','ninguna','numerico'),(495,4,24,108,4,'0','ninguna','numerico'),(496,4,24,109,4,'2950','ninguna','numerico'),(497,4,24,110,4,'0','ninguna','numerico'),(498,4,24,111,4,'0','ninguna','numerico'),(499,4,24,112,4,'0','ninguna','numerico'),(500,4,24,113,4,'0','ninguna','numerico'),(501,4,24,114,4,'4710','ninguna','numerico'),(502,4,24,115,4,'0','ninguna','numerico'),(503,4,24,116,4,'0','ninguna','numerico'),(504,4,24,117,4,'0','ninguna','numerico'),(505,4,24,118,4,'0','ninguna','numerico'),(506,4,24,119,4,'0','ninguna','numerico'),(507,4,24,120,4,'2965','ninguna','numerico'),(508,4,24,121,4,'0','ninguna','numerico'),(509,4,24,128,4,'1','ninguna','numerico'),(510,4,24,129,4,'3317091,379','ninguna','numerico'),(511,4,24,130,4,'1698,331','ninguna','numerico'),(512,4,24,132,4,'0,24','ninguna','numerico'),(513,4,24,134,4,'-982396,81','ninguna','numerico'),(514,4,24,135,4,'-982396,81','ninguna','numerico'),(515,4,24,136,4,'248035,69','ninguna','numerico'),(516,4,24,137,4,'0,0935','ninguna','numerico'),(517,4,24,138,4,'0,135','ninguna','numerico'),(518,4,24,139,4,'0,999','ninguna','numerico'),(519,5,35,2,5,'1','ninguna','numerico'),(520,5,35,3,5,'2','ninguna','numerico'),(521,5,35,4,5,'2','ninguna','numerico'),(522,5,35,5,5,'2','ninguna','numerico'),(523,5,35,6,5,'1','ninguna','numerico'),(524,5,35,7,5,'2','ninguna','numerico'),(525,5,35,8,5,'2','ninguna','numerico'),(526,5,35,9,5,'92','ninguna','numerico-estatico'),(527,5,35,12,5,'0','ninguna','numerico'),(528,5,35,13,5,'0','ninguna','numerico'),(529,5,35,14,5,'0','ninguna','numerico'),(530,5,35,15,5,'8','ninguna','numerico'),(531,5,35,16,5,'0','ninguna','numerico'),(532,5,35,17,5,'0','ninguna','numerico'),(533,5,35,18,5,'0','ninguna','numerico'),(534,5,35,19,5,'0','ninguna','numerico'),(535,5,35,20,5,'0','ninguna','numerico'),(536,5,35,21,5,'0','ninguna','numerico'),(537,5,35,22,5,'0','ninguna','numerico'),(538,5,35,23,5,'0','ninguna','numerico'),(539,5,35,24,5,'0','ninguna','numerico'),(540,5,35,25,5,'0','ninguna','numerico'),(541,5,35,26,5,'0','ninguna','numerico'),(542,5,35,27,5,'0','ninguna','numerico'),(543,5,35,28,5,'0','ninguna','numerico'),(544,5,35,29,5,'0','ninguna','numerico'),(545,5,35,30,5,'0','ninguna','numerico'),(546,5,35,31,5,'0','ninguna','numerico'),(547,5,35,32,5,'0','ninguna','numerico'),(548,5,35,33,5,'1,7','ninguna','numerico'),(549,5,35,34,5,'0','ninguna','numerico'),(550,5,35,35,5,'0','ninguna','numerico'),(551,5,35,36,5,'0','ninguna','numerico'),(552,5,35,37,5,'0','ninguna','numerico'),(553,5,35,38,5,'0','ninguna','numerico'),(554,5,35,39,5,'0','ninguna','numerico'),(555,5,35,40,5,'0','ninguna','numerico'),(556,5,35,41,5,'0','ninguna','numerico'),(557,5,35,42,5,'3,5','ninguna','numerico'),(558,5,35,43,5,'4','ninguna','numerico'),(559,5,35,44,5,'0','ninguna','numerico'),(560,5,35,45,5,'0','ninguna','numerico'),(561,5,35,46,5,'0','ninguna','numerico'),(562,5,35,47,5,'0','ninguna','numerico'),(563,5,35,48,5,'4,2','ninguna','numerico'),(564,5,35,49,5,'0','ninguna','numerico'),(565,5,35,50,5,'0','ninguna','numerico'),(566,5,35,51,5,'0','ninguna','numerico'),(567,5,35,52,5,'0','ninguna','numerico'),(568,5,35,53,5,'1,7','ninguna','numerico'),(569,5,35,54,5,'0','ninguna','numerico'),(570,5,35,55,5,'0','ninguna','numerico'),(571,5,35,56,5,'0','ninguna','numerico'),(572,5,35,57,5,'0','ninguna','numerico'),(573,5,35,58,5,'0','ninguna','numerico'),(574,5,35,59,5,'0','ninguna','numerico'),(575,5,35,60,5,'0','ninguna','numerico'),(576,5,35,61,5,'0','ninguna','numerico'),(577,5,35,62,5,'0','ninguna','numerico'),(578,5,35,63,5,'0','ninguna','numerico'),(579,5,35,64,5,'0','ninguna','numerico'),(580,5,35,65,5,'0','ninguna','numerico'),(581,5,35,66,5,'0','ninguna','numerico'),(582,5,35,67,5,'0','ninguna','numerico'),(583,5,35,68,5,'0','ninguna','numerico'),(584,5,35,69,5,'0','ninguna','numerico'),(585,5,35,70,5,'0,27','ninguna','numerico'),(586,5,35,71,5,'0','ninguna','numerico'),(587,5,35,72,5,'0','ninguna','numerico'),(588,5,35,73,5,'0','ninguna','numerico'),(589,5,35,74,5,'0','ninguna','numerico'),(590,5,35,75,5,'0','ninguna','numerico'),(591,5,35,76,5,'0','ninguna','numerico'),(592,5,35,77,5,'0','ninguna','numerico'),(593,5,35,78,5,'3,75','ninguna','numerico'),(594,5,35,79,5,'0,8','ninguna','numerico'),(595,5,35,80,5,'0','ninguna','numerico'),(596,5,35,81,5,'0','ninguna','numerico'),(597,5,35,82,5,'0','ninguna','numerico'),(598,5,35,83,5,'0','ninguna','numerico'),(599,5,35,84,5,'2,04','ninguna','numerico'),(600,5,35,85,5,'0','ninguna','numerico'),(601,5,35,86,5,'0','ninguna','numerico'),(602,5,35,87,5,'0','ninguna','numerico'),(603,5,35,88,5,'0','ninguna','numerico'),(604,5,35,89,5,'1660','ninguna','numerico'),(605,5,35,90,5,'0','ninguna','numerico'),(606,5,35,91,5,'0','ninguna','numerico'),(607,5,35,92,5,'0','ninguna','numerico'),(608,5,35,93,5,'0','ninguna','numerico'),(609,5,35,94,5,'0','ninguna','numerico'),(610,5,35,95,5,'0','ninguna','numerico'),(611,5,35,96,5,'0','ninguna','numerico'),(612,5,35,97,5,'0','ninguna','numerico'),(613,5,35,98,5,'0','ninguna','numerico'),(614,5,35,99,5,'1925','ninguna','numerico'),(615,5,35,100,5,'0','ninguna','numerico'),(616,5,35,101,5,'0','ninguna','numerico'),(617,5,35,102,5,'0','ninguna','numerico'),(618,5,35,103,5,'0','ninguna','numerico'),(619,5,35,104,5,'0','ninguna','numerico'),(620,5,35,105,5,'0','ninguna','numerico'),(621,5,35,106,5,'121','ninguna','numerico'),(622,5,35,107,5,'0','ninguna','numerico'),(623,5,35,108,5,'0','ninguna','numerico'),(624,5,35,109,5,'0','ninguna','numerico'),(625,5,35,110,5,'0','ninguna','numerico'),(626,5,35,111,5,'0','ninguna','numerico'),(627,5,35,112,5,'0','ninguna','numerico'),(628,5,35,113,5,'0','ninguna','numerico'),(629,5,35,114,5,'1725','ninguna','numerico'),(630,5,35,115,5,'6450','ninguna','numerico'),(631,5,35,116,5,'0','ninguna','numerico'),(632,5,35,117,5,'0','ninguna','numerico'),(633,5,35,118,5,'0','ninguna','numerico'),(634,5,35,119,5,'0','ninguna','numerico'),(635,5,35,120,5,'810','ninguna','numerico'),(636,5,35,121,5,'0','ninguna','numerico'),(637,5,35,123,5,'2374,146','ninguna','numerico'),(638,5,35,125,5,'364','ninguna','numerico'),(639,5,35,126,5,'1,2','ninguna','cadena'),(640,5,35,131,5,'34319,088','ninguna','numerico'),(641,5,35,134,5,'63108,77','ninguna','numerico'),(642,5,35,135,5,'63108,77','ninguna','numerico'),(643,5,35,136,5,'181663,93','ninguna','numerico'),(644,5,35,137,5,'0,1368','ninguna','numerico'),(645,5,35,138,5,'0,1534','ninguna','numerico'),(646,5,35,139,5,'1,11','ninguna','numerico'),(647,10,64,2,10,'1','ninguna','numerico'),(648,10,64,3,10,'1','ninguna','numerico'),(649,10,64,4,10,'2','ninguna','numerico'),(650,10,64,5,10,'2','ninguna','numerico'),(651,10,64,6,10,'2','ninguna','numerico'),(652,10,64,7,10,'2','ninguna','numerico'),(653,10,64,8,10,'2','ninguna','numerico'),(654,10,64,9,10,'122','ninguna','numerico-estatico'),(655,10,64,10,10,'140','ninguna','numerico-estatico'),(656,10,64,12,10,'0','ninguna','numerico'),(657,10,64,13,10,'0','ninguna','numerico'),(658,10,64,14,10,'0','ninguna','numerico'),(659,10,64,15,10,'0','ninguna','numerico'),(660,10,64,16,10,'2,5','ninguna','numerico'),(661,10,64,17,10,'0','ninguna','numerico'),(662,10,64,18,10,'0','ninguna','numerico'),(663,10,64,19,10,'0','ninguna','numerico'),(664,10,64,20,10,'0','ninguna','numerico'),(665,10,64,21,10,'0','ninguna','numerico'),(666,10,64,22,10,'0','ninguna','numerico'),(667,10,64,23,10,'0','ninguna','numerico'),(668,10,64,24,10,'2,9','ninguna','numerico'),(669,10,64,25,10,'0','ninguna','numerico'),(670,10,64,26,10,'0','ninguna','numerico'),(671,10,64,27,10,'0','ninguna','numerico'),(672,10,64,28,10,'0','ninguna','numerico'),(673,10,64,29,10,'0','ninguna','numerico'),(674,10,64,30,10,'3,12','ninguna','numerico'),(675,10,64,31,10,'0','ninguna','numerico'),(676,10,64,32,10,'0','ninguna','numerico'),(677,10,64,33,10,'13','ninguna','numerico'),(678,10,64,34,10,'0','ninguna','numerico'),(679,10,64,35,10,'0','ninguna','numerico'),(680,10,64,36,10,'0','ninguna','numerico'),(681,10,64,37,10,'0','ninguna','numerico'),(682,10,64,38,10,'56,7','ninguna','numerico'),(683,10,64,39,10,'0','ninguna','numerico'),(684,10,64,40,10,'0','ninguna','numerico'),(685,10,64,41,10,'0','ninguna','numerico'),(686,10,64,42,10,'0','ninguna','numerico'),(687,10,64,43,10,'0','ninguna','numerico'),(688,10,64,44,10,'0','ninguna','numerico'),(689,10,64,45,10,'12,5','ninguna','numerico'),(690,10,64,46,10,'0','ninguna','numerico'),(691,10,64,47,10,'2,2','ninguna','numerico'),(692,10,64,48,10,'0','ninguna','numerico'),(693,10,64,49,10,'14','ninguna','numerico'),(694,10,64,50,10,'0','ninguna','numerico'),(695,10,64,51,10,'0','ninguna','numerico'),(696,10,64,52,10,'0','ninguna','numerico'),(697,10,64,53,10,'0','ninguna','numerico'),(698,10,64,54,10,'2,75','ninguna','numerico'),(699,10,64,55,10,'0','ninguna','numerico'),(700,10,64,56,10,'0','ninguna','numerico'),(701,10,64,57,10,'0','ninguna','numerico'),(702,10,64,58,10,'0','ninguna','numerico'),(703,10,64,59,10,'0','ninguna','numerico'),(704,10,64,60,10,'0','ninguna','numerico'),(705,10,64,61,10,'1,95','ninguna','numerico'),(706,10,64,62,10,'0','ninguna','numerico'),(707,10,64,63,10,'0','ninguna','numerico'),(708,10,64,64,10,'0','ninguna','numerico'),(709,10,64,65,10,'0','ninguna','numerico'),(710,10,64,66,10,'0','ninguna','numerico'),(711,10,64,67,10,'2,4','ninguna','numerico'),(712,10,64,68,10,'0','ninguna','numerico'),(713,10,64,69,10,'0','ninguna','numerico'),(714,10,64,70,10,'3,1','ninguna','numerico'),(715,10,64,71,10,'0','ninguna','numerico'),(716,10,64,72,10,'0','ninguna','numerico'),(717,10,64,73,10,'0','ninguna','numerico'),(718,10,64,74,10,'0','ninguna','numerico'),(719,10,64,75,10,'7,6','ninguna','numerico'),(720,10,64,76,10,'0','ninguna','numerico'),(721,10,64,77,10,'0','ninguna','numerico'),(722,10,64,78,10,'0','ninguna','numerico'),(723,10,64,79,10,'0','ninguna','numerico'),(724,10,64,80,10,'0','ninguna','numerico'),(725,10,64,81,10,'5,1','ninguna','numerico'),(726,10,64,82,10,'0','ninguna','numerico'),(727,10,64,83,10,'4,14','ninguna','numerico'),(728,10,64,84,10,'0','ninguna','numerico'),(729,10,64,85,10,'6,3','ninguna','numerico'),(730,10,64,86,10,'0','ninguna','numerico'),(731,10,64,87,10,'14120','ninguna','numerico'),(732,10,64,88,10,'0','ninguna','numerico'),(733,10,64,89,10,'0','ninguna','numerico'),(734,10,64,90,10,'12603','ninguna','numerico'),(735,10,64,91,10,'0','ninguna','numerico'),(736,10,64,92,10,'0','ninguna','numerico'),(737,10,64,93,10,'0','ninguna','numerico'),(738,10,64,94,10,'0','ninguna','numerico'),(739,10,64,95,10,'0','ninguna','numerico'),(740,10,64,96,10,'0','ninguna','numerico'),(741,10,64,97,10,'1382','ninguna','numerico'),(742,10,64,98,10,'0','ninguna','numerico'),(743,10,64,99,10,'0','ninguna','numerico'),(744,10,64,100,10,'0','ninguna','numerico'),(745,10,64,101,10,'0','ninguna','numerico'),(746,10,64,102,10,'0','ninguna','numerico'),(747,10,64,103,10,'2919','ninguna','numerico'),(748,10,64,104,10,'0','ninguna','numerico'),(749,10,64,105,10,'0','ninguna','numerico'),(750,10,64,106,10,'2240','ninguna','numerico'),(751,10,64,107,10,'0','ninguna','numerico'),(752,10,64,108,10,'0','ninguna','numerico'),(753,10,64,109,10,'0','ninguna','numerico'),(754,10,64,110,10,'0','ninguna','numerico'),(755,10,64,111,10,'16720','ninguna','numerico'),(756,10,64,112,10,'0','ninguna','numerico'),(757,10,64,113,10,'0','ninguna','numerico'),(758,10,64,114,10,'0','ninguna','numerico'),(759,10,64,115,10,'0','ninguna','numerico'),(760,10,64,116,10,'0','ninguna','numerico'),(761,10,64,117,10,'7250','ninguna','numerico'),(762,10,64,118,10,'0','ninguna','numerico'),(763,10,64,119,10,'12535','ninguna','numerico'),(764,10,64,120,10,'0','ninguna','numerico'),(765,10,64,121,10,'3750','ninguna','numerico'),(766,10,64,130,10,'173,536983369663','ninguna','numerico'),(767,10,64,132,10,'0,24','ninguna','numerico'),(768,10,64,134,10,'-208684,736069878','ninguna','numerico'),(769,10,64,135,10,'-208684,736069878','ninguna','numerico'),(770,10,64,136,10,'1053779,45541644','ninguna','numerico'),(771,10,64,137,10,'0,0946245217438668','ninguna','numerico'),(772,10,64,138,10,'1,8178010589085','ninguna','numerico'),(773,10,64,139,10,'2,01367063014333','ninguna','numerico'),(774,13,70,2,13,'1','ninguna','numerico'),(775,13,70,3,13,'1','ninguna','numerico'),(776,13,70,4,13,'2','ninguna','numerico'),(777,13,70,5,13,'2','ninguna','numerico'),(778,13,70,6,13,'1','ninguna','numerico'),(779,13,70,7,13,'2','ninguna','numerico'),(780,13,70,8,13,'2','ninguna','numerico'),(781,13,70,9,13,'99','ninguna','numerico-estatico'),(782,13,70,10,13,'9','ninguna','numerico-estatico'),(783,13,70,11,13,'0','ninguna','numerico'),(784,13,70,12,13,'0','ninguna','numerico'),(785,13,70,13,13,'0','ninguna','numerico'),(786,13,70,14,13,'0','ninguna','numerico'),(787,13,70,15,13,'0','ninguna','numerico'),(788,13,70,16,13,'2','ninguna','numerico'),(789,13,70,17,13,'0','ninguna','numerico'),(790,13,70,18,13,'0','ninguna','numerico'),(791,13,70,19,13,'0','ninguna','numerico'),(792,13,70,20,13,'0','ninguna','numerico'),(793,13,70,21,13,'0','ninguna','numerico'),(794,13,70,22,13,'0','ninguna','numerico'),(795,13,70,23,13,'0','ninguna','numerico'),(796,13,70,24,13,'0','ninguna','numerico'),(797,13,70,25,13,'0','ninguna','numerico'),(798,13,70,26,13,'0','ninguna','numerico'),(799,13,70,27,13,'0','ninguna','numerico'),(800,13,70,28,13,'0','ninguna','numerico'),(801,13,70,29,13,'0','ninguna','numerico'),(802,13,70,30,13,'2','ninguna','numerico'),(803,13,70,31,13,'0','ninguna','numerico'),(804,13,70,32,13,'0','ninguna','numerico'),(805,13,70,33,13,'0','ninguna','numerico'),(806,13,70,34,13,'0','ninguna','numerico'),(807,13,70,35,13,'0','ninguna','numerico'),(808,13,70,36,13,'0','ninguna','numerico'),(809,13,70,37,13,'0','ninguna','numerico'),(810,13,70,38,13,'4,5','ninguna','numerico'),(811,13,70,39,13,'0','ninguna','numerico'),(812,13,70,40,13,'0','ninguna','numerico'),(813,13,70,41,13,'0','ninguna','numerico'),(814,13,70,42,13,'0','ninguna','numerico'),(815,13,70,43,13,'0','ninguna','numerico'),(816,13,70,44,13,'0','ninguna','numerico'),(817,13,70,45,13,'0','ninguna','numerico'),(818,13,70,46,13,'0','ninguna','numerico'),(819,13,70,47,13,'0,8','ninguna','numerico'),(820,13,70,48,13,'0','ninguna','numerico'),(821,13,70,49,13,'0','ninguna','numerico'),(822,13,70,50,13,'0','ninguna','numerico'),(823,13,70,51,13,'0','ninguna','numerico'),(824,13,70,52,13,'0','ninguna','numerico'),(825,13,70,53,13,'0','ninguna','numerico'),(826,13,70,54,13,'0,5','ninguna','numerico'),(827,13,70,55,13,'0','ninguna','numerico'),(828,13,70,56,13,'0','ninguna','numerico'),(829,13,70,57,13,'0','ninguna','numerico'),(830,13,70,58,13,'0','ninguna','numerico'),(831,13,70,59,13,'0','ninguna','numerico'),(832,13,70,60,13,'0','ninguna','numerico'),(833,13,70,61,13,'0','ninguna','numerico'),(834,13,70,62,13,'0','ninguna','numerico'),(835,13,70,63,13,'0','ninguna','numerico'),(836,13,70,64,13,'0','ninguna','numerico'),(837,13,70,65,13,'0','ninguna','numerico'),(838,13,70,66,13,'0','ninguna','numerico'),(839,13,70,67,13,'1','ninguna','numerico'),(840,13,70,68,13,'0','ninguna','numerico'),(841,13,70,69,13,'0','ninguna','numerico'),(842,13,70,70,13,'0','ninguna','numerico'),(843,13,70,71,13,'0','ninguna','numerico'),(844,13,70,72,13,'0','ninguna','numerico'),(845,13,70,73,13,'0','ninguna','numerico'),(846,13,70,74,13,'0','ninguna','numerico'),(847,13,70,75,13,'5','ninguna','numerico'),(848,13,70,76,13,'0','ninguna','numerico'),(849,13,70,77,13,'0','ninguna','numerico'),(850,13,70,78,13,'0','ninguna','numerico'),(851,13,70,79,13,'0','ninguna','numerico'),(852,13,70,80,13,'0','ninguna','numerico'),(853,13,70,81,13,'0','ninguna','numerico'),(854,13,70,82,13,'0','ninguna','numerico'),(855,13,70,83,13,'0,5','ninguna','numerico'),(856,13,70,84,13,'0','ninguna','numerico'),(857,13,70,85,13,'0','ninguna','numerico'),(858,13,70,86,13,'0','ninguna','numerico'),(859,13,70,87,13,'0','ninguna','numerico'),(860,13,70,88,13,'0','ninguna','numerico'),(861,13,70,89,13,'0','ninguna','numerico'),(862,13,70,90,13,'4575','ninguna','numerico'),(863,13,70,91,13,'0','ninguna','numerico'),(864,13,70,92,13,'0','ninguna','numerico'),(865,13,70,93,13,'0','ninguna','numerico'),(866,13,70,94,13,'0','ninguna','numerico'),(867,13,70,95,13,'0','ninguna','numerico'),(868,13,70,96,13,'0','ninguna','numerico'),(869,13,70,97,13,'0','ninguna','numerico'),(870,13,70,98,13,'0','ninguna','numerico'),(871,13,70,99,13,'0','ninguna','numerico'),(872,13,70,100,13,'0','ninguna','numerico'),(873,13,70,101,13,'0','ninguna','numerico'),(874,13,70,102,13,'0','ninguna','numerico'),(875,13,70,103,13,'1390','ninguna','numerico'),(876,13,70,104,13,'0','ninguna','numerico'),(877,13,70,105,13,'0','ninguna','numerico'),(878,13,70,106,13,'1670','ninguna','numerico'),(879,13,70,107,13,'0','ninguna','numerico'),(880,13,70,108,13,'0','ninguna','numerico'),(881,13,70,109,13,'0','ninguna','numerico'),(882,13,70,110,13,'0','ninguna','numerico'),(883,13,70,111,13,'5750','ninguna','numerico'),(884,13,70,112,13,'0','ninguna','numerico'),(885,13,70,113,13,'0','ninguna','numerico'),(886,13,70,114,13,'0','ninguna','numerico'),(887,13,70,115,13,'0','ninguna','numerico'),(888,13,70,116,13,'0','ninguna','numerico'),(889,13,70,117,13,'0','ninguna','numerico'),(890,13,70,118,13,'0','ninguna','numerico'),(891,13,70,119,13,'4365','ninguna','numerico'),(892,13,70,120,13,'0','ninguna','numerico'),(893,13,70,121,13,'0','ninguna','numerico'),(894,13,70,122,13,'26635,7732394366','ninguna','numerico'),(895,13,70,123,13,'20506,8568457096','ninguna','numerico'),(896,13,70,124,13,'0','ninguna','numerico'),(897,13,70,133,13,'0.4','ninguna','numerico'),(898,13,70,134,13,'1466492,52739619','ninguna','numerico'),(899,13,70,135,13,'1466492,52739619','ninguna','numerico'),(900,13,70,136,13,'1857034,5873643','ninguna','numerico'),(901,13,70,137,13,'0,277376343599565','ninguna','numerico'),(902,13,70,138,13,'0,328440327816624','ninguna','numerico'),(903,13,70,139,13,'1,605177139265','ninguna','numerico'),(904,7,90,2,7,'1','ninguna','numerico'),(905,7,90,3,7,'1','ninguna','numerico'),(906,7,90,4,7,'2','ninguna','numerico'),(907,7,90,5,7,'2','ninguna','numerico'),(908,7,90,6,7,'1','ninguna','numerico'),(909,7,90,7,7,'2','ninguna','numerico'),(910,7,90,8,7,'2','ninguna','numerico'),(911,7,90,9,7,'109','ninguna','numerico-estatico'),(912,7,90,10,7,'7','ninguna','numerico-estatico'),(913,7,90,11,7,'7,035','ninguna','numerico'),(914,7,90,12,7,'0','ninguna','numerico'),(915,7,90,13,7,'0','ninguna','numerico'),(916,7,90,14,7,'0','ninguna','numerico'),(917,7,90,15,7,'0','ninguna','numerico'),(918,7,90,16,7,'0','ninguna','numerico'),(919,7,90,17,7,'0','ninguna','numerico'),(920,7,90,18,7,'1,5','ninguna','numerico'),(921,7,90,19,7,'0','ninguna','numerico'),(922,7,90,20,7,'0','ninguna','numerico'),(923,7,90,21,7,'0','ninguna','numerico'),(924,7,90,22,7,'0','ninguna','numerico'),(925,7,90,23,7,'0','ninguna','numerico'),(926,7,90,24,7,'0','ninguna','numerico'),(927,7,90,25,7,'0','ninguna','numerico'),(928,7,90,26,7,'0','ninguna','numerico'),(929,7,90,27,7,'0','ninguna','numerico'),(930,7,90,28,7,'0','ninguna','numerico'),(931,7,90,29,7,'0','ninguna','numerico'),(932,7,90,30,7,'1,5','ninguna','numerico'),(933,7,90,31,7,'0','ninguna','numerico'),(934,7,90,32,7,'0','ninguna','numerico'),(935,7,90,33,7,'0','ninguna','numerico'),(936,7,90,34,7,'0','ninguna','numerico'),(937,7,90,35,7,'0','ninguna','numerico'),(938,7,90,36,7,'0','ninguna','numerico'),(939,7,90,37,7,'1,5','ninguna','numerico'),(940,7,90,38,7,'1,34','ninguna','numerico'),(941,7,90,39,7,'0','ninguna','numerico'),(942,7,90,40,7,'1,2','ninguna','numerico'),(943,7,90,41,7,'0','ninguna','numerico'),(944,7,90,42,7,'0','ninguna','numerico'),(945,7,90,43,7,'0','ninguna','numerico'),(946,7,90,44,7,'0','ninguna','numerico'),(947,7,90,45,7,'0','ninguna','numerico'),(948,7,90,46,7,'0','ninguna','numerico'),(949,7,90,47,7,'0','ninguna','numerico'),(950,7,90,48,7,'0','ninguna','numerico'),(951,7,90,49,7,'0','ninguna','numerico'),(952,7,90,50,7,'0','ninguna','numerico'),(953,7,90,51,7,'0','ninguna','numerico'),(954,7,90,52,7,'0','ninguna','numerico'),(955,7,90,53,7,'0','ninguna','numerico'),(956,7,90,54,7,'0,81','ninguna','numerico'),(957,7,90,55,7,'0,48','ninguna','numerico'),(958,7,90,56,7,'0','ninguna','numerico'),(959,7,90,57,7,'0','ninguna','numerico'),(960,7,90,58,7,'2,26','ninguna','numerico'),(961,7,90,59,7,'0','ninguna','numerico'),(962,7,90,60,7,'0','ninguna','numerico'),(963,7,90,61,7,'0','ninguna','numerico'),(964,7,90,62,7,'0','ninguna','numerico'),(965,7,90,63,7,'0','ninguna','numerico'),(966,7,90,64,7,'0','ninguna','numerico'),(967,7,90,65,7,'0','ninguna','numerico'),(968,7,90,66,7,'0','ninguna','numerico'),(969,7,90,67,7,'5,61','ninguna','numerico'),(970,7,90,68,7,'0','ninguna','numerico'),(971,7,90,69,7,'0','ninguna','numerico'),(972,7,90,70,7,'0','ninguna','numerico'),(973,7,90,71,7,'0','ninguna','numerico'),(974,7,90,72,7,'0','ninguna','numerico'),(975,7,90,73,7,'0','ninguna','numerico'),(976,7,90,74,7,'8,16','ninguna','numerico'),(977,7,90,75,7,'8,16','ninguna','numerico'),(978,7,90,76,7,'4,76','ninguna','numerico'),(979,7,90,77,7,'0','ninguna','numerico'),(980,7,90,78,7,'0','ninguna','numerico'),(981,7,90,79,7,'0','ninguna','numerico'),(982,7,90,80,7,'0','ninguna','numerico'),(983,7,90,81,7,'0','ninguna','numerico'),(984,7,90,82,7,'0','ninguna','numerico'),(985,7,90,83,7,'0','ninguna','numerico'),(986,7,90,84,7,'0','ninguna','numerico'),(987,7,90,85,7,'0','ninguna','numerico'),(988,7,90,86,7,'0','ninguna','numerico'),(989,7,90,87,7,'0','ninguna','numerico'),(990,7,90,88,7,'0','ninguna','numerico'),(991,7,90,89,7,'0','ninguna','numerico'),(992,7,90,90,7,'3830','ninguna','numerico'),(993,7,90,91,7,'1370','ninguna','numerico'),(994,7,90,92,7,'0','ninguna','numerico'),(995,7,90,93,7,'0','ninguna','numerico'),(996,7,90,94,7,'930','ninguna','numerico'),(997,7,90,95,7,'0','ninguna','numerico'),(998,7,90,96,7,'0','ninguna','numerico'),(999,7,90,97,7,'0','ninguna','numerico'),(1000,7,90,98,7,'0','ninguna','numerico'),(1001,7,90,99,7,'0','ninguna','numerico'),(1002,7,90,100,7,'0','ninguna','numerico'),(1003,7,90,101,7,'0','ninguna','numerico'),(1004,7,90,102,7,'0','ninguna','numerico'),(1005,7,90,103,7,'3900','ninguna','numerico'),(1006,7,90,104,7,'0','ninguna','numerico'),(1007,7,90,105,7,'0','ninguna','numerico'),(1008,7,90,106,7,'0','ninguna','numerico'),(1009,7,90,107,7,'0','ninguna','numerico'),(1010,7,90,108,7,'0','ninguna','numerico'),(1011,7,90,109,7,'0','ninguna','numerico'),(1012,7,90,110,7,'1590','ninguna','numerico'),(1013,7,90,111,7,'5290','ninguna','numerico'),(1014,7,90,112,7,'1352','ninguna','numerico'),(1015,7,90,113,7,'0','ninguna','numerico'),(1016,7,90,114,7,'0','ninguna','numerico'),(1017,7,90,115,7,'0','ninguna','numerico'),(1018,7,90,116,7,'0','ninguna','numerico'),(1019,7,90,117,7,'0','ninguna','numerico'),(1020,7,90,118,7,'0','ninguna','numerico'),(1021,7,90,119,7,'0','ninguna','numerico'),(1022,7,90,120,7,'0','ninguna','numerico'),(1023,7,90,121,7,'0','ninguna','numerico'),(1024,7,90,122,7,'24638,4503980791','ninguna','numerico'),(1025,7,90,123,7,'5602,41555594316','ninguna','numerico'),(1026,7,90,124,7,'960,166849315069','ninguna','numerico'),(1027,7,90,132,7,'0.4','ninguna','numerico'),(1028,7,90,134,7,'1807582,56636662','ninguna','numerico'),(1029,7,90,135,7,'1807582,56636662','ninguna','numerico'),(1030,7,90,136,7,'1922902,7827202','ninguna','numerico'),(1031,7,90,137,7,'0,457926601112706','ninguna','numerico'),(1032,7,90,138,7,'0,501122625968742','ninguna','numerico'),(1033,7,90,139,7,'2,38665643681871','ninguna','numerico'),(1034,6,102,2,6,'1','ninguna','numerico'),(1035,6,102,3,6,'2','ninguna','numerico'),(1036,6,102,4,6,'2','ninguna','numerico'),(1037,6,102,5,6,'2','ninguna','numerico'),(1038,6,102,6,6,'2','ninguna','numerico'),(1039,6,102,7,6,'2','ninguna','numerico'),(1040,6,102,8,6,'2','ninguna','numerico'),(1041,6,102,9,6,'225','ninguna','numerico-estatico'),(1042,6,102,12,6,'0','ninguna','numerico'),(1043,6,102,13,6,'0','ninguna','numerico'),(1044,6,102,14,6,'0','ninguna','numerico'),(1045,6,102,15,6,'0','ninguna','numerico'),(1046,6,102,16,6,'40','ninguna','numerico'),(1047,6,102,17,6,'0','ninguna','numerico'),(1048,6,102,18,6,'0','ninguna','numerico'),(1049,6,102,19,6,'0','ninguna','numerico'),(1050,6,102,20,6,'0','ninguna','numerico'),(1051,6,102,21,6,'39','ninguna','numerico'),(1052,6,102,22,6,'0','ninguna','numerico'),(1053,6,102,23,6,'0','ninguna','numerico'),(1054,6,102,24,6,'0','ninguna','numerico'),(1055,6,102,25,6,'0','ninguna','numerico'),(1056,6,102,26,6,'0','ninguna','numerico'),(1057,6,102,27,6,'50','ninguna','numerico'),(1058,6,102,28,6,'0','ninguna','numerico'),(1059,6,102,29,6,'0','ninguna','numerico'),(1060,6,102,30,6,'34','ninguna','numerico'),(1061,6,102,31,6,'0','ninguna','numerico'),(1062,6,102,32,6,'0','ninguna','numerico'),(1063,6,102,33,6,'40','ninguna','numerico'),(1064,6,102,34,6,'0','ninguna','numerico'),(1065,6,102,35,6,'0','ninguna','numerico'),(1066,6,102,36,6,'0','ninguna','numerico'),(1067,6,102,37,6,'0','ninguna','numerico'),(1068,6,102,38,6,'45','ninguna','numerico'),(1069,6,102,39,6,'0','ninguna','numerico'),(1070,6,102,40,6,'0','ninguna','numerico'),(1071,6,102,41,6,'0','ninguna','numerico'),(1072,6,102,42,6,'0','ninguna','numerico'),(1073,6,102,43,6,'0','ninguna','numerico'),(1074,6,102,44,6,'0','ninguna','numerico'),(1075,6,102,45,6,'0','ninguna','numerico'),(1076,6,102,46,6,'0','ninguna','numerico'),(1077,6,102,47,6,'50','ninguna','numerico'),(1078,6,102,48,6,'0','ninguna','numerico'),(1079,6,102,49,6,'0','ninguna','numerico'),(1080,6,102,50,6,'0','ninguna','numerico'),(1081,6,102,51,6,'0','ninguna','numerico'),(1082,6,102,52,6,'0','ninguna','numerico'),(1083,6,102,53,6,'0','ninguna','numerico'),(1084,6,102,54,6,'0,9','ninguna','numerico'),(1085,6,102,55,6,'0','ninguna','numerico'),(1086,6,102,56,6,'0','ninguna','numerico'),(1087,6,102,57,6,'0','ninguna','numerico'),(1088,6,102,58,6,'2,3','ninguna','numerico'),(1089,6,102,59,6,'0','ninguna','numerico'),(1090,6,102,60,6,'0','ninguna','numerico'),(1091,6,102,61,6,'0','ninguna','numerico'),(1092,6,102,62,6,'0','ninguna','numerico'),(1093,6,102,63,6,'0','ninguna','numerico'),(1094,6,102,64,6,'5,7','ninguna','numerico'),(1095,6,102,65,6,'0','ninguna','numerico'),(1096,6,102,66,6,'0','ninguna','numerico'),(1097,6,102,67,6,'2,5','ninguna','numerico'),(1098,6,102,68,6,'0','ninguna','numerico'),(1099,6,102,69,6,'0','ninguna','numerico'),(1100,6,102,70,6,'2','ninguna','numerico'),(1101,6,102,71,6,'0','ninguna','numerico'),(1102,6,102,72,6,'0','ninguna','numerico'),(1103,6,102,73,6,'0','ninguna','numerico'),(1104,6,102,74,6,'0','ninguna','numerico'),(1105,6,102,75,6,'2','ninguna','numerico'),(1106,6,102,76,6,'0','ninguna','numerico'),(1107,6,102,77,6,'0','ninguna','numerico'),(1108,6,102,78,6,'0','ninguna','numerico'),(1109,6,102,79,6,'0','ninguna','numerico'),(1110,6,102,80,6,'0','ninguna','numerico'),(1111,6,102,81,6,'0','ninguna','numerico'),(1112,6,102,82,6,'0','ninguna','numerico'),(1113,6,102,83,6,'2','ninguna','numerico'),(1114,6,102,84,6,'0','ninguna','numerico'),(1115,6,102,85,6,'0','ninguna','numerico'),(1116,6,102,86,6,'0','ninguna','numerico'),(1117,6,102,87,6,'0','ninguna','numerico'),(1118,6,102,88,6,'0','ninguna','numerico'),(1119,6,102,89,6,'0','ninguna','numerico'),(1120,6,102,90,6,'101','ninguna','numerico'),(1121,6,102,91,6,'0','ninguna','numerico'),(1122,6,102,92,6,'0','ninguna','numerico'),(1123,6,102,93,6,'0','ninguna','numerico'),(1124,6,102,94,6,'31','ninguna','numerico'),(1125,6,102,95,6,'0','ninguna','numerico'),(1126,6,102,96,6,'0','ninguna','numerico'),(1127,6,102,97,6,'0','ninguna','numerico'),(1128,6,102,98,6,'0','ninguna','numerico'),(1129,6,102,99,6,'0','ninguna','numerico'),(1130,6,102,100,6,'316','ninguna','numerico'),(1131,6,102,101,6,'0','ninguna','numerico'),(1132,6,102,102,6,'0','ninguna','numerico'),(1133,6,102,103,6,'50','ninguna','numerico'),(1134,6,102,104,6,'0','ninguna','numerico'),(1135,6,102,105,6,'0','ninguna','numerico'),(1136,6,102,106,6,'105','ninguna','numerico'),(1137,6,102,107,6,'0','ninguna','numerico'),(1138,6,102,108,6,'0','ninguna','numerico'),(1139,6,102,109,6,'0','ninguna','numerico'),(1140,6,102,110,6,'0','ninguna','numerico'),(1141,6,102,111,6,'105','ninguna','numerico'),(1142,6,102,112,6,'0','ninguna','numerico'),(1143,6,102,113,6,'0','ninguna','numerico'),(1144,6,102,114,6,'0','ninguna','numerico'),(1145,6,102,115,6,'0','ninguna','numerico'),(1146,6,102,116,6,'0','ninguna','numerico'),(1147,6,102,117,6,'0','ninguna','numerico'),(1148,6,102,118,6,'0','ninguna','numerico'),(1149,6,102,119,6,'50','ninguna','numerico'),(1150,6,102,120,6,'0','ninguna','numerico'),(1151,6,102,121,6,'0','ninguna','numerico'),(1152,6,102,123,6,'31641,566','ninguna','numerico'),(1153,6,102,125,6,'260','ninguna','numerico'),(1154,6,102,126,6,'1,2,3','ninguna','cadena'),(1155,6,102,131,6,'27729,698','ninguna','numerico'),(1156,6,102,134,6,'1573427,86','ninguna','numerico'),(1157,6,102,135,6,'1573427,86','ninguna','numerico'),(1158,6,102,136,6,'1930796,97','ninguna','numerico'),(1159,6,102,137,6,'0,3051','ninguna','numerico'),(1160,6,102,138,6,'0,3424','ninguna','numerico'),(1161,6,102,139,6,'2,649','ninguna','numerico'),(1162,11,106,2,11,'1','ninguna','numerico'),(1163,11,106,3,11,'1','ninguna','numerico'),(1164,11,106,4,11,'2','ninguna','numerico'),(1165,11,106,5,11,'2','ninguna','numerico'),(1166,11,106,6,11,'1','ninguna','numerico'),(1167,11,106,7,11,'2','ninguna','numerico'),(1168,11,106,8,11,'2','ninguna','numerico'),(1169,11,106,9,11,'25','ninguna','numerico-estatico'),(1170,11,106,10,11,'93','ninguna','numerico-estatico'),(1171,11,106,12,11,'0','ninguna','numerico'),(1172,11,106,13,11,'0','ninguna','numerico'),(1173,11,106,14,11,'0','ninguna','numerico'),(1174,11,106,15,11,'0','ninguna','numerico'),(1175,11,106,16,11,'0','ninguna','numerico'),(1176,11,106,17,11,'0','ninguna','numerico'),(1177,11,106,18,11,'0','ninguna','numerico'),(1178,11,106,19,11,'0','ninguna','numerico'),(1179,11,106,20,11,'0','ninguna','numerico'),(1180,11,106,21,11,'0','ninguna','numerico'),(1181,11,106,22,11,'0','ninguna','numerico'),(1182,11,106,23,11,'0','ninguna','numerico'),(1183,11,106,24,11,'0','ninguna','numerico'),(1184,11,106,25,11,'0','ninguna','numerico'),(1185,11,106,26,11,'0','ninguna','numerico'),(1186,11,106,27,11,'0','ninguna','numerico'),(1187,11,106,28,11,'0','ninguna','numerico'),(1188,11,106,29,11,'0','ninguna','numerico'),(1189,11,106,30,11,'0','ninguna','numerico'),(1190,11,106,31,11,'0','ninguna','numerico'),(1191,11,106,32,11,'0','ninguna','numerico'),(1192,11,106,33,11,'39,65','ninguna','numerico'),(1193,11,106,34,11,'0','ninguna','numerico'),(1194,11,106,35,11,'0','ninguna','numerico'),(1195,11,106,36,11,'0','ninguna','numerico'),(1196,11,106,37,11,'0','ninguna','numerico'),(1197,11,106,38,11,'34,81','ninguna','numerico'),(1198,11,106,39,11,'0','ninguna','numerico'),(1199,11,106,40,11,'0','ninguna','numerico'),(1200,11,106,41,11,'0','ninguna','numerico'),(1201,11,106,42,11,'0','ninguna','numerico'),(1202,11,106,43,11,'0','ninguna','numerico'),(1203,11,106,44,11,'0','ninguna','numerico'),(1204,11,106,45,11,'0','ninguna','numerico'),(1205,11,106,46,11,'0','ninguna','numerico'),(1206,11,106,47,11,'0','ninguna','numerico'),(1207,11,106,48,11,'0','ninguna','numerico'),(1208,11,106,49,11,'0','ninguna','numerico'),(1209,11,106,50,11,'0','ninguna','numerico'),(1210,11,106,51,11,'0','ninguna','numerico'),(1211,11,106,52,11,'0','ninguna','numerico'),(1212,11,106,53,11,'0','ninguna','numerico'),(1213,11,106,54,11,'0','ninguna','numerico'),(1214,11,106,55,11,'0','ninguna','numerico'),(1215,11,106,56,11,'0','ninguna','numerico'),(1216,11,106,57,11,'0','ninguna','numerico'),(1217,11,106,58,11,'0','ninguna','numerico'),(1218,11,106,59,11,'0','ninguna','numerico'),(1219,11,106,60,11,'0','ninguna','numerico'),(1220,11,106,61,11,'0','ninguna','numerico'),(1221,11,106,62,11,'0','ninguna','numerico'),(1222,11,106,63,11,'0','ninguna','numerico'),(1223,11,106,64,11,'0','ninguna','numerico'),(1224,11,106,65,11,'0','ninguna','numerico'),(1225,11,106,66,11,'0','ninguna','numerico'),(1226,11,106,67,11,'0','ninguna','numerico'),(1227,11,106,68,11,'0','ninguna','numerico'),(1228,11,106,69,11,'0','ninguna','numerico'),(1229,11,106,70,11,'2,5','ninguna','numerico'),(1230,11,106,71,11,'0','ninguna','numerico'),(1231,11,106,72,11,'0','ninguna','numerico'),(1232,11,106,73,11,'0','ninguna','numerico'),(1233,11,106,74,11,'0','ninguna','numerico'),(1234,11,106,75,11,'9,3','ninguna','numerico'),(1235,11,106,76,11,'0','ninguna','numerico'),(1236,11,106,77,11,'0','ninguna','numerico'),(1237,11,106,78,11,'0','ninguna','numerico'),(1238,11,106,79,11,'0','ninguna','numerico'),(1239,11,106,80,11,'0','ninguna','numerico'),(1240,11,106,81,11,'0','ninguna','numerico'),(1241,11,106,82,11,'0','ninguna','numerico'),(1242,11,106,83,11,'0','ninguna','numerico'),(1243,11,106,84,11,'0','ninguna','numerico'),(1244,11,106,85,11,'0','ninguna','numerico'),(1245,11,106,86,11,'0','ninguna','numerico'),(1246,11,106,87,11,'0','ninguna','numerico'),(1247,11,106,88,11,'0','ninguna','numerico'),(1248,11,106,89,11,'0','ninguna','numerico'),(1249,11,106,90,11,'3540','ninguna','numerico'),(1250,11,106,91,11,'0','ninguna','numerico'),(1251,11,106,92,11,'0','ninguna','numerico'),(1252,11,106,93,11,'0','ninguna','numerico'),(1253,11,106,94,11,'0','ninguna','numerico'),(1254,11,106,95,11,'0','ninguna','numerico'),(1255,11,106,96,11,'0','ninguna','numerico'),(1256,11,106,97,11,'0','ninguna','numerico'),(1257,11,106,98,11,'0','ninguna','numerico'),(1258,11,106,99,11,'0','ninguna','numerico'),(1259,11,106,100,11,'0','ninguna','numerico'),(1260,11,106,101,11,'0','ninguna','numerico'),(1261,11,106,102,11,'0','ninguna','numerico'),(1262,11,106,103,11,'0','ninguna','numerico'),(1263,11,106,104,11,'0','ninguna','numerico'),(1264,11,106,105,11,'0','ninguna','numerico'),(1265,11,106,106,11,'3370','ninguna','numerico'),(1266,11,106,107,11,'0','ninguna','numerico'),(1267,11,106,108,11,'0','ninguna','numerico'),(1268,11,106,109,11,'0','ninguna','numerico'),(1269,11,106,110,11,'0','ninguna','numerico'),(1270,11,106,111,11,'6550','ninguna','numerico'),(1271,11,106,112,11,'0','ninguna','numerico'),(1272,11,106,113,11,'0','ninguna','numerico'),(1273,11,106,114,11,'0','ninguna','numerico'),(1274,11,106,115,11,'0','ninguna','numerico'),(1275,11,106,116,11,'0','ninguna','numerico'),(1276,11,106,117,11,'0','ninguna','numerico'),(1277,11,106,118,11,'0','ninguna','numerico'),(1278,11,106,119,11,'0','ninguna','numerico'),(1279,11,106,120,11,'0','ninguna','numerico'),(1280,11,106,121,11,'0','ninguna','numerico'),(1281,11,106,123,11,'2474,05850772896','ninguna','numerico'),(1282,11,106,125,11,'8684','ninguna','numerico'),(1283,11,106,126,11,'1','ninguna','cadena'),(1284,11,106,131,11,'29688,7025','ninguna','numerico'),(1285,11,106,134,11,'1053792,70937414','ninguna','numerico'),(1286,11,106,135,11,'1053792,70937414','ninguna','numerico'),(1287,11,106,136,11,'747552,340643915','ninguna','numerico'),(1288,11,106,137,11,'0,368858312919854','ninguna','numerico'),(1289,11,106,138,11,'0,296728787338965','ninguna','numerico'),(1290,11,106,139,11,'2,85192343794741','ninguna','numerico'),(1291,15,110,2,15,'1','ninguna','numerico'),(1292,15,110,3,15,'1','ninguna','numerico'),(1293,15,110,4,15,'2','ninguna','numerico'),(1294,15,110,5,15,'2','ninguna','numerico'),(1295,15,110,6,15,'1','ninguna','numerico'),(1296,15,110,7,15,'2','ninguna','numerico'),(1297,15,110,8,15,'2','ninguna','numerico'),(1298,15,110,9,15,'47','ninguna','numerico-estatico'),(1299,15,110,10,15,'28','ninguna','numerico-estatico'),(1300,15,110,12,15,'0','ninguna','numerico'),(1301,15,110,13,15,'0','ninguna','numerico'),(1302,15,110,14,15,'0','ninguna','numerico'),(1303,15,110,15,15,'0','ninguna','numerico'),(1304,15,110,16,15,'0','ninguna','numerico'),(1305,15,110,17,15,'0','ninguna','numerico'),(1306,15,110,18,15,'0','ninguna','numerico'),(1307,15,110,19,15,'0','ninguna','numerico'),(1308,15,110,20,15,'0','ninguna','numerico'),(1309,15,110,21,15,'0','ninguna','numerico'),(1310,15,110,22,15,'0','ninguna','numerico'),(1311,15,110,23,15,'0','ninguna','numerico'),(1312,15,110,24,15,'26','ninguna','numerico'),(1313,15,110,25,15,'0','ninguna','numerico'),(1314,15,110,26,15,'0','ninguna','numerico'),(1315,15,110,27,15,'0','ninguna','numerico'),(1316,15,110,28,15,'0','ninguna','numerico'),(1317,15,110,29,15,'0','ninguna','numerico'),(1318,15,110,30,15,'7','ninguna','numerico'),(1319,15,110,31,15,'0','ninguna','numerico'),(1320,15,110,32,15,'0','ninguna','numerico'),(1321,15,110,33,15,'35','ninguna','numerico'),(1322,15,110,34,15,'0','ninguna','numerico'),(1323,15,110,35,15,'0','ninguna','numerico'),(1324,15,110,36,15,'0','ninguna','numerico'),(1325,15,110,37,15,'0','ninguna','numerico'),(1326,15,110,38,15,'38','ninguna','numerico'),(1327,15,110,39,15,'0','ninguna','numerico'),(1328,15,110,40,15,'0','ninguna','numerico'),(1329,15,110,41,15,'0','ninguna','numerico'),(1330,15,110,42,15,'0','ninguna','numerico'),(1331,15,110,43,15,'0','ninguna','numerico'),(1332,15,110,44,15,'0','ninguna','numerico'),(1333,15,110,45,15,'0','ninguna','numerico'),(1334,15,110,46,15,'0','ninguna','numerico'),(1335,15,110,47,15,'42','ninguna','numerico'),(1336,15,110,48,15,'0','ninguna','numerico'),(1337,15,110,49,15,'0','ninguna','numerico'),(1338,15,110,50,15,'0','ninguna','numerico'),(1339,15,110,51,15,'0','ninguna','numerico'),(1340,15,110,52,15,'0','ninguna','numerico'),(1341,15,110,53,15,'0','ninguna','numerico'),(1342,15,110,54,15,'0','ninguna','numerico'),(1343,15,110,55,15,'0','ninguna','numerico'),(1344,15,110,56,15,'0','ninguna','numerico'),(1345,15,110,57,15,'0','ninguna','numerico'),(1346,15,110,58,15,'0','ninguna','numerico'),(1347,15,110,59,15,'0','ninguna','numerico'),(1348,15,110,60,15,'0','ninguna','numerico'),(1349,15,110,61,15,'10','ninguna','numerico'),(1350,15,110,62,15,'0','ninguna','numerico'),(1351,15,110,63,15,'0','ninguna','numerico'),(1352,15,110,64,15,'0','ninguna','numerico'),(1353,15,110,65,15,'0','ninguna','numerico'),(1354,15,110,66,15,'0','ninguna','numerico'),(1355,15,110,67,15,'1,2','ninguna','numerico'),(1356,15,110,68,15,'0','ninguna','numerico'),(1357,15,110,69,15,'0','ninguna','numerico'),(1358,15,110,70,15,'1,2','ninguna','numerico'),(1359,15,110,71,15,'0','ninguna','numerico'),(1360,15,110,72,15,'0','ninguna','numerico'),(1361,15,110,73,15,'0','ninguna','numerico'),(1362,15,110,74,15,'0','ninguna','numerico'),(1363,15,110,75,15,'8','ninguna','numerico'),(1364,15,110,76,15,'0','ninguna','numerico'),(1365,15,110,77,15,'0','ninguna','numerico'),(1366,15,110,78,15,'0','ninguna','numerico'),(1367,15,110,79,15,'0','ninguna','numerico'),(1368,15,110,80,15,'0','ninguna','numerico'),(1369,15,110,81,15,'0','ninguna','numerico'),(1370,15,110,82,15,'0','ninguna','numerico'),(1371,15,110,83,15,'1,5','ninguna','numerico'),(1372,15,110,84,15,'0','ninguna','numerico'),(1373,15,110,85,15,'0','ninguna','numerico'),(1374,15,110,86,15,'0','ninguna','numerico'),(1375,15,110,87,15,'0','ninguna','numerico'),(1376,15,110,88,15,'0','ninguna','numerico'),(1377,15,110,89,15,'0','ninguna','numerico'),(1378,15,110,90,15,'0','ninguna','numerico'),(1379,15,110,91,15,'0','ninguna','numerico'),(1380,15,110,92,15,'0','ninguna','numerico'),(1381,15,110,93,15,'0','ninguna','numerico'),(1382,15,110,94,15,'0','ninguna','numerico'),(1383,15,110,95,15,'0','ninguna','numerico'),(1384,15,110,96,15,'0','ninguna','numerico'),(1385,15,110,97,15,'6750','ninguna','numerico'),(1386,15,110,98,15,'0','ninguna','numerico'),(1387,15,110,99,15,'0','ninguna','numerico'),(1388,15,110,100,15,'0','ninguna','numerico'),(1389,15,110,101,15,'0','ninguna','numerico'),(1390,15,110,102,15,'0','ninguna','numerico'),(1391,15,110,103,15,'1390','ninguna','numerico'),(1392,15,110,104,15,'0','ninguna','numerico'),(1393,15,110,105,15,'0','ninguna','numerico'),(1394,15,110,106,15,'1775','ninguna','numerico'),(1395,15,110,107,15,'0','ninguna','numerico'),(1396,15,110,108,15,'0','ninguna','numerico'),(1397,15,110,109,15,'0','ninguna','numerico'),(1398,15,110,110,15,'0','ninguna','numerico'),(1399,15,110,111,15,'6720','ninguna','numerico'),(1400,15,110,112,15,'0','ninguna','numerico'),(1401,15,110,113,15,'0','ninguna','numerico'),(1402,15,110,114,15,'0','ninguna','numerico'),(1403,15,110,115,15,'0','ninguna','numerico'),(1404,15,110,116,15,'0','ninguna','numerico'),(1405,15,110,117,15,'0','ninguna','numerico'),(1406,15,110,118,15,'0','ninguna','numerico'),(1407,15,110,119,15,'3267,5','ninguna','numerico'),(1408,15,110,120,15,'0','ninguna','numerico'),(1409,15,110,121,15,'0','ninguna','numerico'),(1410,15,110,123,15,'5248,35556097561','ninguna','numerico'),(1411,15,110,125,15,'8060','ninguna','numerico'),(1412,15,110,126,15,'2','ninguna','cadena'),(1413,15,110,131,15,'30740,3682857143','ninguna','numerico'),(1414,15,110,134,15,'139260,460104694','ninguna','numerico'),(1415,15,110,135,15,'139260,460104694','ninguna','numerico'),(1416,15,110,136,15,'93315,2076641608','ninguna','numerico'),(1417,15,110,137,15,'0,14792791034103','ninguna','numerico'),(1418,15,110,138,15,'0,140312809111462','ninguna','numerico'),(1419,15,110,139,15,'1,08882489726177','ninguna','numerico'),(1420,14,112,2,14,'1','ninguna','numerico'),(1421,14,112,3,14,'1','ninguna','numerico'),(1422,14,112,4,14,'1','ninguna','numerico'),(1423,14,112,5,14,'1','ninguna','numerico'),(1424,14,112,6,14,'1','ninguna','numerico'),(1425,14,112,7,14,'2','ninguna','numerico'),(1426,14,112,8,14,'2','ninguna','numerico'),(1427,14,112,9,14,'15','ninguna','numerico-estatico'),(1428,14,112,10,14,'146','ninguna','numerico-estatico'),(1429,14,112,11,14,'0','ninguna','numerico'),(1430,14,112,12,14,'0','ninguna','numerico'),(1431,14,112,13,14,'0','ninguna','numerico'),(1432,14,112,14,14,'0','ninguna','numerico'),(1433,14,112,15,14,'0','ninguna','numerico'),(1434,14,112,16,14,'0','ninguna','numerico'),(1435,14,112,17,14,'0','ninguna','numerico'),(1436,14,112,18,14,'0','ninguna','numerico'),(1437,14,112,19,14,'0','ninguna','numerico'),(1438,14,112,20,14,'0','ninguna','numerico'),(1439,14,112,21,14,'0','ninguna','numerico'),(1440,14,112,22,14,'0','ninguna','numerico'),(1441,14,112,23,14,'0','ninguna','numerico'),(1442,14,112,24,14,'0','ninguna','numerico'),(1443,14,112,25,14,'0','ninguna','numerico'),(1444,14,112,26,14,'0','ninguna','numerico'),(1445,14,112,27,14,'0','ninguna','numerico'),(1446,14,112,28,14,'0','ninguna','numerico'),(1447,14,112,29,14,'0','ninguna','numerico'),(1448,14,112,30,14,'0','ninguna','numerico'),(1449,14,112,31,14,'0','ninguna','numerico'),(1450,14,112,32,14,'0','ninguna','numerico'),(1451,14,112,33,14,'0','ninguna','numerico'),(1452,14,112,34,14,'0','ninguna','numerico'),(1453,14,112,35,14,'0','ninguna','numerico'),(1454,14,112,36,14,'0','ninguna','numerico'),(1455,14,112,37,14,'0','ninguna','numerico'),(1456,14,112,38,14,'0','ninguna','numerico'),(1457,14,112,39,14,'0','ninguna','numerico'),(1458,14,112,40,14,'0','ninguna','numerico'),(1459,14,112,41,14,'0','ninguna','numerico'),(1460,14,112,42,14,'0','ninguna','numerico'),(1461,14,112,43,14,'0','ninguna','numerico'),(1462,14,112,44,14,'0','ninguna','numerico'),(1463,14,112,45,14,'0','ninguna','numerico'),(1464,14,112,46,14,'0','ninguna','numerico'),(1465,14,112,47,14,'0','ninguna','numerico'),(1466,14,112,48,14,'0','ninguna','numerico'),(1467,14,112,49,14,'0','ninguna','numerico'),(1468,14,112,50,14,'0','ninguna','numerico'),(1469,14,112,51,14,'0','ninguna','numerico'),(1470,14,112,52,14,'0','ninguna','numerico'),(1471,14,112,53,14,'0','ninguna','numerico'),(1472,14,112,54,14,'2,22','ninguna','numerico'),(1473,14,112,55,14,'0','ninguna','numerico'),(1474,14,112,56,14,'0','ninguna','numerico'),(1475,14,112,57,14,'0','ninguna','numerico'),(1476,14,112,58,14,'0','ninguna','numerico'),(1477,14,112,59,14,'0','ninguna','numerico'),(1478,14,112,60,14,'0','ninguna','numerico'),(1479,14,112,61,14,'2,68','ninguna','numerico'),(1480,14,112,62,14,'0','ninguna','numerico'),(1481,14,112,63,14,'0','ninguna','numerico'),(1482,14,112,64,14,'0','ninguna','numerico'),(1483,14,112,65,14,'0','ninguna','numerico'),(1484,14,112,66,14,'0','ninguna','numerico'),(1485,14,112,67,14,'0','ninguna','numerico'),(1486,14,112,68,14,'0','ninguna','numerico'),(1487,14,112,69,14,'0','ninguna','numerico'),(1488,14,112,70,14,'0,75','ninguna','numerico'),(1489,14,112,71,14,'0','ninguna','numerico'),(1490,14,112,72,14,'0','ninguna','numerico'),(1491,14,112,73,14,'0','ninguna','numerico'),(1492,14,112,74,14,'0','ninguna','numerico'),(1493,14,112,75,14,'3,06','ninguna','numerico'),(1494,14,112,76,14,'0','ninguna','numerico'),(1495,14,112,77,14,'0','ninguna','numerico'),(1496,14,112,78,14,'0','ninguna','numerico'),(1497,14,112,79,14,'0','ninguna','numerico'),(1498,14,112,80,14,'0','ninguna','numerico'),(1499,14,112,81,14,'0','ninguna','numerico'),(1500,14,112,82,14,'0','ninguna','numerico'),(1501,14,112,83,14,'0,91','ninguna','numerico'),(1502,14,112,84,14,'0','ninguna','numerico'),(1503,14,112,85,14,'0','ninguna','numerico'),(1504,14,112,86,14,'0','ninguna','numerico'),(1505,14,112,87,14,'0','ninguna','numerico'),(1506,14,112,88,14,'0','ninguna','numerico'),(1507,14,112,89,14,'0','ninguna','numerico'),(1508,14,112,90,14,'475','ninguna','numerico'),(1509,14,112,91,14,'0','ninguna','numerico'),(1510,14,112,92,14,'0','ninguna','numerico'),(1511,14,112,93,14,'0','ninguna','numerico'),(1512,14,112,94,14,'0','ninguna','numerico'),(1513,14,112,95,14,'0','ninguna','numerico'),(1514,14,112,96,14,'0','ninguna','numerico'),(1515,14,112,97,14,'1694','ninguna','numerico'),(1516,14,112,98,14,'0','ninguna','numerico'),(1517,14,112,99,14,'0','ninguna','numerico'),(1518,14,112,100,14,'0','ninguna','numerico'),(1519,14,112,101,14,'0','ninguna','numerico'),(1520,14,112,102,14,'0','ninguna','numerico'),(1521,14,112,103,14,'0','ninguna','numerico'),(1522,14,112,104,14,'0','ninguna','numerico'),(1523,14,112,105,14,'0','ninguna','numerico'),(1524,14,112,106,14,'1710','ninguna','numerico'),(1525,14,112,107,14,'0','ninguna','numerico'),(1526,14,112,108,14,'0','ninguna','numerico'),(1527,14,112,109,14,'0','ninguna','numerico'),(1528,14,112,110,14,'0','ninguna','numerico'),(1529,14,112,111,14,'2230','ninguna','numerico'),(1530,14,112,112,14,'0','ninguna','numerico'),(1531,14,112,113,14,'0','ninguna','numerico'),(1532,14,112,114,14,'0','ninguna','numerico'),(1533,14,112,115,14,'0','ninguna','numerico'),(1534,14,112,116,14,'0','ninguna','numerico'),(1535,14,112,117,14,'0','ninguna','numerico'),(1536,14,112,118,14,'0','ninguna','numerico'),(1537,14,112,119,14,'825','ninguna','numerico'),(1538,14,112,120,14,'0','ninguna','numerico'),(1539,14,112,121,14,'0','ninguna','numerico'),(1540,14,112,122,14,'21534,5422222222','ninguna','numerico'),(1541,14,112,123,14,'21717,9890935661','ninguna','numerico'),(1542,14,112,124,14,'0','ninguna','numerico'),(1543,14,112,133,14,'0.4','ninguna','numerico'),(1544,14,112,134,14,'1341523,95219256','ninguna','numerico'),(1545,14,112,135,14,'1341523,95219256','ninguna','numerico'),(1546,14,112,136,14,'1572367,4464266','ninguna','numerico'),(1547,14,112,137,14,'0,495471195482977','ninguna','numerico'),(1548,14,112,138,14,'0,541548982427683','ninguna','numerico'),(1549,14,112,139,14,'2,03983204899506','ninguna','numerico'),(1550,17,115,2,17,'1','ninguna','numerico'),(1551,17,115,3,17,'1','ninguna','numerico'),(1552,17,115,4,17,'2','ninguna','numerico'),(1553,17,115,5,17,'2','ninguna','numerico'),(1554,17,115,6,17,'1','ninguna','numerico'),(1555,17,115,7,17,'2','ninguna','numerico'),(1556,17,115,8,17,'2','ninguna','numerico'),(1557,17,115,9,17,'20','ninguna','numerico-estatico'),(1558,17,115,10,17,'164','ninguna','numerico-estatico'),(1559,17,115,11,17,'22,6','ninguna','numerico'),(1560,17,115,12,17,'0','ninguna','numerico'),(1561,17,115,13,17,'0','ninguna','numerico'),(1562,17,115,14,17,'1','ninguna','numerico'),(1563,17,115,15,17,'0','ninguna','numerico'),(1564,17,115,16,17,'0','ninguna','numerico'),(1565,17,115,17,17,'0','ninguna','numerico'),(1566,17,115,18,17,'0','ninguna','numerico'),(1567,17,115,19,17,'0','ninguna','numerico'),(1568,17,115,20,17,'0','ninguna','numerico'),(1569,17,115,21,17,'0','ninguna','numerico'),(1570,17,115,22,17,'0','ninguna','numerico'),(1571,17,115,23,17,'0','ninguna','numerico'),(1572,17,115,24,17,'2,4','ninguna','numerico'),(1573,17,115,25,17,'0','ninguna','numerico'),(1574,17,115,26,17,'0','ninguna','numerico'),(1575,17,115,27,17,'0','ninguna','numerico'),(1576,17,115,28,17,'0','ninguna','numerico'),(1577,17,115,29,17,'0','ninguna','numerico'),(1578,17,115,30,17,'2,5','ninguna','numerico'),(1579,17,115,31,17,'0','ninguna','numerico'),(1580,17,115,32,17,'0','ninguna','numerico'),(1581,17,115,33,17,'5,6','ninguna','numerico'),(1582,17,115,34,17,'0','ninguna','numerico'),(1583,17,115,35,17,'0','ninguna','numerico'),(1584,17,115,36,17,'0','ninguna','numerico'),(1585,17,115,37,17,'0','ninguna','numerico'),(1586,17,115,38,17,'5,6','ninguna','numerico'),(1587,17,115,39,17,'0','ninguna','numerico'),(1588,17,115,40,17,'0','ninguna','numerico'),(1589,17,115,41,17,'0','ninguna','numerico'),(1590,17,115,42,17,'0','ninguna','numerico'),(1591,17,115,43,17,'0','ninguna','numerico'),(1592,17,115,44,17,'0','ninguna','numerico'),(1593,17,115,45,17,'1,1','ninguna','numerico'),(1594,17,115,46,17,'0','ninguna','numerico'),(1595,17,115,47,17,'0','ninguna','numerico'),(1596,17,115,48,17,'0','ninguna','numerico'),(1597,17,115,49,17,'4,4','ninguna','numerico'),(1598,17,115,50,17,'0','ninguna','numerico'),(1599,17,115,51,17,'0','ninguna','numerico'),(1600,17,115,52,17,'0','ninguna','numerico'),(1601,17,115,53,17,'0','ninguna','numerico'),(1602,17,115,54,17,'0','ninguna','numerico'),(1603,17,115,55,17,'0','ninguna','numerico'),(1604,17,115,56,17,'0','ninguna','numerico'),(1605,17,115,57,17,'0','ninguna','numerico'),(1606,17,115,58,17,'0','ninguna','numerico'),(1607,17,115,59,17,'0','ninguna','numerico'),(1608,17,115,60,17,'0','ninguna','numerico'),(1609,17,115,61,17,'2,4','ninguna','numerico'),(1610,17,115,62,17,'0','ninguna','numerico'),(1611,17,115,63,17,'0','ninguna','numerico'),(1612,17,115,64,17,'0','ninguna','numerico'),(1613,17,115,65,17,'0','ninguna','numerico'),(1614,17,115,66,17,'0','ninguna','numerico'),(1615,17,115,67,17,'0,85','ninguna','numerico'),(1616,17,115,68,17,'0','ninguna','numerico'),(1617,17,115,69,17,'0','ninguna','numerico'),(1618,17,115,70,17,'1,13','ninguna','numerico'),(1619,17,115,71,17,'0','ninguna','numerico'),(1620,17,115,72,17,'0','ninguna','numerico'),(1621,17,115,73,17,'0','ninguna','numerico'),(1622,17,115,74,17,'0','ninguna','numerico'),(1623,17,115,75,17,'1,8','ninguna','numerico'),(1624,17,115,76,17,'0','ninguna','numerico'),(1625,17,115,77,17,'0','ninguna','numerico'),(1626,17,115,78,17,'0','ninguna','numerico'),(1627,17,115,79,17,'0','ninguna','numerico'),(1628,17,115,80,17,'0','ninguna','numerico'),(1629,17,115,81,17,'0','ninguna','numerico'),(1630,17,115,82,17,'0','ninguna','numerico'),(1631,17,115,83,17,'0','ninguna','numerico'),(1632,17,115,84,17,'0','ninguna','numerico'),(1633,17,115,85,17,'2,26','ninguna','numerico'),(1634,17,115,86,17,'0','ninguna','numerico'),(1635,17,115,87,17,'0','ninguna','numerico'),(1636,17,115,88,17,'0','ninguna','numerico'),(1637,17,115,89,17,'0','ninguna','numerico'),(1638,17,115,90,17,'0','ninguna','numerico'),(1639,17,115,91,17,'0','ninguna','numerico'),(1640,17,115,92,17,'0','ninguna','numerico'),(1641,17,115,93,17,'0','ninguna','numerico'),(1642,17,115,94,17,'0','ninguna','numerico'),(1643,17,115,95,17,'0','ninguna','numerico'),(1644,17,115,96,17,'0','ninguna','numerico'),(1645,17,115,97,17,'1809','ninguna','numerico'),(1646,17,115,98,17,'0','ninguna','numerico'),(1647,17,115,99,17,'0','ninguna','numerico'),(1648,17,115,100,17,'0','ninguna','numerico'),(1649,17,115,101,17,'0','ninguna','numerico'),(1650,17,115,102,17,'0','ninguna','numerico'),(1651,17,115,103,17,'1510','ninguna','numerico'),(1652,17,115,104,17,'0','ninguna','numerico'),(1653,17,115,105,17,'0','ninguna','numerico'),(1654,17,115,106,17,'4075','ninguna','numerico'),(1655,17,115,107,17,'0','ninguna','numerico'),(1656,17,115,108,17,'0','ninguna','numerico'),(1657,17,115,109,17,'0','ninguna','numerico'),(1658,17,115,110,17,'0','ninguna','numerico'),(1659,17,115,111,17,'880','ninguna','numerico'),(1660,17,115,112,17,'0','ninguna','numerico'),(1661,17,115,113,17,'0','ninguna','numerico'),(1662,17,115,114,17,'0','ninguna','numerico'),(1663,17,115,115,17,'0','ninguna','numerico'),(1664,17,115,116,17,'0','ninguna','numerico'),(1665,17,115,117,17,'1545','ninguna','numerico'),(1666,17,115,118,17,'0','ninguna','numerico'),(1667,17,115,119,17,'0','ninguna','numerico'),(1668,17,115,120,17,'0','ninguna','numerico'),(1669,17,115,121,17,'3227','ninguna','numerico'),(1670,17,115,122,17,'17025,0382','ninguna','numerico'),(1671,17,115,123,17,'17025,0382','ninguna','numerico'),(1672,17,115,124,17,'0','ninguna','numerico'),(1673,17,115,133,17,'0.4','ninguna','numerico'),(1674,17,115,134,17,'-326278,992498082','ninguna','numerico'),(1675,17,115,135,17,'-326278,992498082','ninguna','numerico'),(1676,17,115,136,17,'-274681,5707067','ninguna','numerico'),(1677,17,115,137,17,'0,0261425593809084','ninguna','numerico'),(1678,17,115,138,17,'0,0388789109458107','ninguna','numerico'),(1679,17,115,139,17,'0,569201363955057','ninguna','numerico'),(1680,8,121,2,8,'1','ninguna','numerico'),(1681,8,121,3,8,'1','ninguna','numerico'),(1682,8,121,4,8,'2','ninguna','numerico'),(1683,8,121,5,8,'2','ninguna','numerico'),(1684,8,121,6,8,'1','ninguna','numerico'),(1685,8,121,7,8,'2','ninguna','numerico'),(1686,8,121,8,8,'2','ninguna','numerico'),(1687,8,121,9,8,'25','ninguna','numerico-estatico'),(1688,8,121,10,8,'9','ninguna','numerico-estatico'),(1689,8,121,12,8,'0','ninguna','numerico'),(1690,8,121,13,8,'0','ninguna','numerico'),(1691,8,121,14,8,'0','ninguna','numerico'),(1692,8,121,15,8,'0','ninguna','numerico'),(1693,8,121,16,8,'3','ninguna','numerico'),(1694,8,121,17,8,'0','ninguna','numerico'),(1695,8,121,18,8,'15','ninguna','numerico'),(1696,8,121,19,8,'0','ninguna','numerico'),(1697,8,121,20,8,'0','ninguna','numerico'),(1698,8,121,21,8,'10','ninguna','numerico'),(1699,8,121,22,8,'0','ninguna','numerico'),(1700,8,121,23,8,'0','ninguna','numerico'),(1701,8,121,24,8,'0','ninguna','numerico'),(1702,8,121,25,8,'0','ninguna','numerico'),(1703,8,121,26,8,'0','ninguna','numerico'),(1704,8,121,27,8,'0','ninguna','numerico'),(1705,8,121,28,8,'0','ninguna','numerico'),(1706,8,121,29,8,'0','ninguna','numerico'),(1707,8,121,30,8,'51,2','ninguna','numerico'),(1708,8,121,31,8,'0','ninguna','numerico'),(1709,8,121,32,8,'0','ninguna','numerico'),(1710,8,121,33,8,'0','ninguna','numerico'),(1711,8,121,34,8,'0','ninguna','numerico'),(1712,8,121,35,8,'0','ninguna','numerico'),(1713,8,121,36,8,'0','ninguna','numerico'),(1714,8,121,37,8,'0','ninguna','numerico'),(1715,8,121,38,8,'80','ninguna','numerico'),(1716,8,121,39,8,'0','ninguna','numerico'),(1717,8,121,40,8,'0','ninguna','numerico'),(1718,8,121,41,8,'0','ninguna','numerico'),(1719,8,121,42,8,'0','ninguna','numerico'),(1720,8,121,43,8,'0','ninguna','numerico'),(1721,8,121,44,8,'0','ninguna','numerico'),(1722,8,121,45,8,'0','ninguna','numerico'),(1723,8,121,46,8,'0','ninguna','numerico'),(1724,8,121,47,8,'0','ninguna','numerico'),(1725,8,121,48,8,'0','ninguna','numerico'),(1726,8,121,49,8,'0','ninguna','numerico'),(1727,8,121,50,8,'0','ninguna','numerico'),(1728,8,121,51,8,'0','ninguna','numerico'),(1729,8,121,52,8,'0','ninguna','numerico'),(1730,8,121,53,8,'0','ninguna','numerico'),(1731,8,121,54,8,'1,02','ninguna','numerico'),(1732,8,121,55,8,'5','ninguna','numerico'),(1733,8,121,56,8,'0','ninguna','numerico'),(1734,8,121,57,8,'0','ninguna','numerico'),(1735,8,121,58,8,'0,567','ninguna','numerico'),(1736,8,121,59,8,'0','ninguna','numerico'),(1737,8,121,60,8,'0','ninguna','numerico'),(1738,8,121,61,8,'0','ninguna','numerico'),(1739,8,121,62,8,'0','ninguna','numerico'),(1740,8,121,63,8,'0','ninguna','numerico'),(1741,8,121,64,8,'0','ninguna','numerico'),(1742,8,121,65,8,'0','ninguna','numerico'),(1743,8,121,66,8,'0','ninguna','numerico'),(1744,8,121,67,8,'2','ninguna','numerico'),(1745,8,121,68,8,'0','ninguna','numerico'),(1746,8,121,69,8,'0','ninguna','numerico'),(1747,8,121,70,8,'0','ninguna','numerico'),(1748,8,121,71,8,'0','ninguna','numerico'),(1749,8,121,72,8,'0','ninguna','numerico'),(1750,8,121,73,8,'0','ninguna','numerico'),(1751,8,121,74,8,'0','ninguna','numerico'),(1752,8,121,75,8,'2,04','ninguna','numerico'),(1753,8,121,76,8,'0','ninguna','numerico'),(1754,8,121,77,8,'0','ninguna','numerico'),(1755,8,121,78,8,'0','ninguna','numerico'),(1756,8,121,79,8,'0','ninguna','numerico'),(1757,8,121,80,8,'0','ninguna','numerico'),(1758,8,121,81,8,'0','ninguna','numerico'),(1759,8,121,82,8,'0','ninguna','numerico'),(1760,8,121,83,8,'0','ninguna','numerico'),(1761,8,121,84,8,'0','ninguna','numerico'),(1762,8,121,85,8,'0','ninguna','numerico'),(1763,8,121,86,8,'0','ninguna','numerico'),(1764,8,121,87,8,'0','ninguna','numerico'),(1765,8,121,88,8,'0','ninguna','numerico'),(1766,8,121,89,8,'0','ninguna','numerico'),(1767,8,121,90,8,'3115','ninguna','numerico'),(1768,8,121,91,8,'1820','ninguna','numerico'),(1769,8,121,92,8,'0','ninguna','numerico'),(1770,8,121,93,8,'0','ninguna','numerico'),(1771,8,121,94,8,'2600','ninguna','numerico'),(1772,8,121,95,8,'0','ninguna','numerico'),(1773,8,121,96,8,'0','ninguna','numerico'),(1774,8,121,97,8,'0','ninguna','numerico'),(1775,8,121,98,8,'0','ninguna','numerico'),(1776,8,121,99,8,'0','ninguna','numerico'),(1777,8,121,100,8,'0','ninguna','numerico'),(1778,8,121,101,8,'0','ninguna','numerico'),(1779,8,121,102,8,'0','ninguna','numerico'),(1780,8,121,103,8,'3440','ninguna','numerico'),(1781,8,121,104,8,'0','ninguna','numerico'),(1782,8,121,105,8,'0','ninguna','numerico'),(1783,8,121,106,8,'0','ninguna','numerico'),(1784,8,121,107,8,'0','ninguna','numerico'),(1785,8,121,108,8,'0','ninguna','numerico'),(1786,8,121,109,8,'0','ninguna','numerico'),(1787,8,121,110,8,'0','ninguna','numerico'),(1788,8,121,111,8,'7044','ninguna','numerico'),(1789,8,121,112,8,'0','ninguna','numerico'),(1790,8,121,113,8,'0','ninguna','numerico'),(1791,8,121,114,8,'0','ninguna','numerico'),(1792,8,121,115,8,'0','ninguna','numerico'),(1793,8,121,116,8,'0','ninguna','numerico'),(1794,8,121,117,8,'0','ninguna','numerico'),(1795,8,121,118,8,'0','ninguna','numerico'),(1796,8,121,119,8,'0','ninguna','numerico'),(1797,8,121,120,8,'0','ninguna','numerico'),(1798,8,121,121,8,'0','ninguna','numerico'),(1799,8,121,128,8,'1','ninguna','numerico'),(1800,8,121,129,8,'970298,49','ninguna','numerico'),(1801,8,121,130,8,'261,380620572328','ninguna','numerico'),(1802,8,121,132,8,'0,24','ninguna','numerico'),(1803,8,121,134,8,'717125,873041343','ninguna','numerico'),(1804,8,121,135,8,'717125,873041343','ninguna','numerico'),(1805,8,121,136,8,'958756,446699024','ninguna','numerico'),(1806,8,121,137,8,'0,233635505277752','ninguna','numerico'),(1807,8,121,138,8,'0,280803901290917','ninguna','numerico'),(1808,8,121,139,8,'2,05952144984651','ninguna','numerico'),(1809,9,122,2,9,'1','ninguna','numerico'),(1810,9,122,3,9,'1','ninguna','numerico'),(1811,9,122,4,9,'1','ninguna','numerico'),(1812,9,122,5,9,'1','ninguna','numerico'),(1813,9,122,6,9,'1','ninguna','numerico'),(1814,9,122,7,9,'2','ninguna','numerico'),(1815,9,122,8,9,'2','ninguna','numerico'),(1816,9,122,9,9,'35','ninguna','numerico-estatico'),(1817,9,122,10,9,'31','ninguna','numerico-estatico'),(1818,9,122,11,9,'37','ninguna','numerico'),(1819,9,122,12,9,'0','ninguna','numerico'),(1820,9,122,13,9,'0','ninguna','numerico'),(1821,9,122,14,9,'0','ninguna','numerico'),(1822,9,122,15,9,'0','ninguna','numerico'),(1823,9,122,16,9,'0','ninguna','numerico'),(1824,9,122,17,9,'0','ninguna','numerico'),(1825,9,122,18,9,'0','ninguna','numerico'),(1826,9,122,19,9,'0','ninguna','numerico'),(1827,9,122,20,9,'0','ninguna','numerico'),(1828,9,122,21,9,'0','ninguna','numerico'),(1829,9,122,22,9,'0','ninguna','numerico'),(1830,9,122,23,9,'0','ninguna','numerico'),(1831,9,122,24,9,'0','ninguna','numerico'),(1832,9,122,25,9,'0','ninguna','numerico'),(1833,9,122,26,9,'0','ninguna','numerico'),(1834,9,122,27,9,'0','ninguna','numerico'),(1835,9,122,28,9,'0','ninguna','numerico'),(1836,9,122,29,9,'0','ninguna','numerico'),(1837,9,122,30,9,'5','ninguna','numerico'),(1838,9,122,31,9,'0','ninguna','numerico'),(1839,9,122,32,9,'0','ninguna','numerico'),(1840,9,122,33,9,'0','ninguna','numerico'),(1841,9,122,34,9,'0','ninguna','numerico'),(1842,9,122,35,9,'0','ninguna','numerico'),(1843,9,122,36,9,'0','ninguna','numerico'),(1844,9,122,37,9,'0','ninguna','numerico'),(1845,9,122,38,9,'32','ninguna','numerico'),(1846,9,122,39,9,'0','ninguna','numerico'),(1847,9,122,40,9,'0','ninguna','numerico'),(1848,9,122,41,9,'0','ninguna','numerico'),(1849,9,122,42,9,'0','ninguna','numerico'),(1850,9,122,43,9,'0','ninguna','numerico'),(1851,9,122,44,9,'0','ninguna','numerico'),(1852,9,122,45,9,'0','ninguna','numerico'),(1853,9,122,46,9,'0','ninguna','numerico'),(1854,9,122,47,9,'25','ninguna','numerico'),(1855,9,122,48,9,'0','ninguna','numerico'),(1856,9,122,49,9,'0','ninguna','numerico'),(1857,9,122,50,9,'0','ninguna','numerico'),(1858,9,122,51,9,'0','ninguna','numerico'),(1859,9,122,52,9,'0','ninguna','numerico'),(1860,9,122,53,9,'0','ninguna','numerico'),(1861,9,122,54,9,'0','ninguna','numerico'),(1862,9,122,55,9,'0','ninguna','numerico'),(1863,9,122,56,9,'0','ninguna','numerico'),(1864,9,122,57,9,'0','ninguna','numerico'),(1865,9,122,58,9,'0','ninguna','numerico'),(1866,9,122,59,9,'0','ninguna','numerico'),(1867,9,122,60,9,'0','ninguna','numerico'),(1868,9,122,61,9,'0','ninguna','numerico'),(1869,9,122,62,9,'0','ninguna','numerico'),(1870,9,122,63,9,'0','ninguna','numerico'),(1871,9,122,64,9,'0','ninguna','numerico'),(1872,9,122,65,9,'0','ninguna','numerico'),(1873,9,122,66,9,'0','ninguna','numerico'),(1874,9,122,67,9,'1,4','ninguna','numerico'),(1875,9,122,68,9,'0','ninguna','numerico'),(1876,9,122,69,9,'0','ninguna','numerico'),(1877,9,122,70,9,'0','ninguna','numerico'),(1878,9,122,71,9,'0','ninguna','numerico'),(1879,9,122,72,9,'0','ninguna','numerico'),(1880,9,122,73,9,'0','ninguna','numerico'),(1881,9,122,74,9,'0','ninguna','numerico'),(1882,9,122,75,9,'7,2','ninguna','numerico'),(1883,9,122,76,9,'0','ninguna','numerico'),(1884,9,122,77,9,'0','ninguna','numerico'),(1885,9,122,78,9,'0','ninguna','numerico'),(1886,9,122,79,9,'0','ninguna','numerico'),(1887,9,122,80,9,'0','ninguna','numerico'),(1888,9,122,81,9,'0','ninguna','numerico'),(1889,9,122,82,9,'0','ninguna','numerico'),(1890,9,122,83,9,'3,7','ninguna','numerico'),(1891,9,122,84,9,'0','ninguna','numerico'),(1892,9,122,85,9,'0','ninguna','numerico'),(1893,9,122,86,9,'0','ninguna','numerico'),(1894,9,122,87,9,'0','ninguna','numerico'),(1895,9,122,88,9,'0','ninguna','numerico'),(1896,9,122,89,9,'800','ninguna','numerico'),(1897,9,122,90,9,'0','ninguna','numerico'),(1898,9,122,91,9,'0','ninguna','numerico'),(1899,9,122,92,9,'0','ninguna','numerico'),(1900,9,122,93,9,'0','ninguna','numerico'),(1901,9,122,94,9,'0','ninguna','numerico'),(1902,9,122,95,9,'0','ninguna','numerico'),(1903,9,122,96,9,'0','ninguna','numerico'),(1904,9,122,97,9,'0','ninguna','numerico'),(1905,9,122,98,9,'0','ninguna','numerico'),(1906,9,122,99,9,'0','ninguna','numerico'),(1907,9,122,100,9,'0','ninguna','numerico'),(1908,9,122,101,9,'0','ninguna','numerico'),(1909,9,122,102,9,'0','ninguna','numerico'),(1910,9,122,103,9,'4376','ninguna','numerico'),(1911,9,122,104,9,'0','ninguna','numerico'),(1912,9,122,105,9,'0','ninguna','numerico'),(1913,9,122,106,9,'1708','ninguna','numerico'),(1914,9,122,107,9,'0','ninguna','numerico'),(1915,9,122,108,9,'0','ninguna','numerico'),(1916,9,122,109,9,'0','ninguna','numerico'),(1917,9,122,110,9,'0','ninguna','numerico'),(1918,9,122,111,9,'3922','ninguna','numerico'),(1919,9,122,112,9,'0','ninguna','numerico'),(1920,9,122,113,9,'0','ninguna','numerico'),(1921,9,122,114,9,'0','ninguna','numerico'),(1922,9,122,115,9,'0','ninguna','numerico'),(1923,9,122,116,9,'0','ninguna','numerico'),(1924,9,122,117,9,'0','ninguna','numerico'),(1925,9,122,118,9,'0','ninguna','numerico'),(1926,9,122,119,9,'3242','ninguna','numerico'),(1927,9,122,120,9,'1200','ninguna','numerico'),(1928,9,122,121,9,'0','ninguna','numerico'),(1929,9,122,122,9,'28506,9697368421','ninguna','numerico'),(1930,9,122,123,9,'12792,7275476274','ninguna','numerico'),(1931,9,122,124,9,'0','ninguna','numerico'),(1932,9,122,133,9,'0.4','ninguna','numerico'),(1933,9,122,134,9,'640374,557899131','ninguna','numerico'),(1934,9,122,135,9,'640374,557899131','ninguna','numerico'),(1935,9,122,136,9,'744331,924566218','ninguna','numerico'),(1936,9,122,137,9,'0,245769738282578','ninguna','numerico'),(1937,9,122,138,9,'0,264834640888427','ninguna','numerico'),(1938,9,122,139,9,'1,38015944766462','ninguna','numerico'),(1939,12,127,2,12,'1','ninguna','numerico'),(1940,12,127,3,12,'1','ninguna','numerico'),(1941,12,127,4,12,'2','ninguna','numerico'),(1942,12,127,5,12,'2','ninguna','numerico'),(1943,12,127,6,12,'1','ninguna','numerico'),(1944,12,127,7,12,'2','ninguna','numerico'),(1945,12,127,8,12,'2','ninguna','numerico'),(1946,12,127,9,12,'82','ninguna','numerico-estatico'),(1947,12,127,10,12,'120','ninguna','numerico-estatico'),(1948,12,127,11,12,'0','ninguna','numerico'),(1949,12,127,12,12,'0','ninguna','numerico'),(1950,12,127,13,12,'0','ninguna','numerico'),(1951,12,127,14,12,'0','ninguna','numerico'),(1952,12,127,15,12,'0','ninguna','numerico'),(1953,12,127,16,12,'7','ninguna','numerico'),(1954,12,127,17,12,'0','ninguna','numerico'),(1955,12,127,18,12,'0','ninguna','numerico'),(1956,12,127,19,12,'0','ninguna','numerico'),(1957,12,127,20,12,'0','ninguna','numerico'),(1958,12,127,21,12,'0','ninguna','numerico'),(1959,12,127,22,12,'0','ninguna','numerico'),(1960,12,127,23,12,'0','ninguna','numerico'),(1961,12,127,24,12,'0','ninguna','numerico'),(1962,12,127,25,12,'0','ninguna','numerico'),(1963,12,127,26,12,'0','ninguna','numerico'),(1964,12,127,27,12,'0','ninguna','numerico'),(1965,12,127,28,12,'0','ninguna','numerico'),(1966,12,127,29,12,'0','ninguna','numerico'),(1967,12,127,30,12,'0','ninguna','numerico'),(1968,12,127,31,12,'0','ninguna','numerico'),(1969,12,127,32,12,'0','ninguna','numerico'),(1970,12,127,33,12,'10,2','ninguna','numerico'),(1971,12,127,34,12,'0','ninguna','numerico'),(1972,12,127,35,12,'0','ninguna','numerico'),(1973,12,127,36,12,'0','ninguna','numerico'),(1974,12,127,37,12,'0','ninguna','numerico'),(1975,12,127,38,12,'0','ninguna','numerico'),(1976,12,127,39,12,'0','ninguna','numerico'),(1977,12,127,40,12,'0','ninguna','numerico'),(1978,12,127,41,12,'0','ninguna','numerico'),(1979,12,127,42,12,'0','ninguna','numerico'),(1980,12,127,43,12,'0','ninguna','numerico'),(1981,12,127,44,12,'0','ninguna','numerico'),(1982,12,127,45,12,'0','ninguna','numerico'),(1983,12,127,46,12,'7,5','ninguna','numerico'),(1984,12,127,47,12,'18','ninguna','numerico'),(1985,12,127,48,12,'0','ninguna','numerico'),(1986,12,127,49,12,'0','ninguna','numerico'),(1987,12,127,50,12,'0','ninguna','numerico'),(1988,12,127,51,12,'0','ninguna','numerico'),(1989,12,127,52,12,'0','ninguna','numerico'),(1990,12,127,53,12,'0','ninguna','numerico'),(1991,12,127,54,12,'1,18','ninguna','numerico'),(1992,12,127,55,12,'0','ninguna','numerico'),(1993,12,127,56,12,'0','ninguna','numerico'),(1994,12,127,57,12,'0','ninguna','numerico'),(1995,12,127,58,12,'0','ninguna','numerico'),(1996,12,127,59,12,'0','ninguna','numerico'),(1997,12,127,60,12,'0','ninguna','numerico'),(1998,12,127,61,12,'0','ninguna','numerico'),(1999,12,127,62,12,'0','ninguna','numerico'),(2000,12,127,63,12,'0','ninguna','numerico'),(2001,12,127,64,12,'0','ninguna','numerico'),(2002,12,127,65,12,'0','ninguna','numerico'),(2003,12,127,66,12,'0','ninguna','numerico'),(2004,12,127,67,12,'1,4','ninguna','numerico'),(2005,12,127,68,12,'0','ninguna','numerico'),(2006,12,127,69,12,'0','ninguna','numerico'),(2007,12,127,70,12,'1,7','ninguna','numerico'),(2008,12,127,71,12,'0','ninguna','numerico'),(2009,12,127,72,12,'0','ninguna','numerico'),(2010,12,127,73,12,'0','ninguna','numerico'),(2011,12,127,74,12,'0','ninguna','numerico'),(2012,12,127,75,12,'0','ninguna','numerico'),(2013,12,127,76,12,'0','ninguna','numerico'),(2014,12,127,77,12,'0','ninguna','numerico'),(2015,12,127,78,12,'0','ninguna','numerico'),(2016,12,127,79,12,'0','ninguna','numerico'),(2017,12,127,80,12,'0','ninguna','numerico'),(2018,12,127,81,12,'0','ninguna','numerico'),(2019,12,127,82,12,'6,1','ninguna','numerico'),(2020,12,127,83,12,'1,5','ninguna','numerico'),(2021,12,127,84,12,'0','ninguna','numerico'),(2022,12,127,85,12,'0','ninguna','numerico'),(2023,12,127,86,12,'0','ninguna','numerico'),(2024,12,127,87,12,'0','ninguna','numerico'),(2025,12,127,88,12,'0','ninguna','numerico'),(2026,12,127,89,12,'0','ninguna','numerico'),(2027,12,127,90,12,'4575','ninguna','numerico'),(2028,12,127,91,12,'0','ninguna','numerico'),(2029,12,127,92,12,'0','ninguna','numerico'),(2030,12,127,93,12,'0','ninguna','numerico'),(2031,12,127,94,12,'570','ninguna','numerico'),(2032,12,127,95,12,'0','ninguna','numerico'),(2033,12,127,96,12,'0','ninguna','numerico'),(2034,12,127,97,12,'0','ninguna','numerico'),(2035,12,127,98,12,'0','ninguna','numerico'),(2036,12,127,99,12,'0','ninguna','numerico'),(2037,12,127,100,12,'0','ninguna','numerico'),(2038,12,127,101,12,'0','ninguna','numerico'),(2039,12,127,102,12,'0','ninguna','numerico'),(2040,12,127,103,12,'0','ninguna','numerico'),(2041,12,127,104,12,'0','ninguna','numerico'),(2042,12,127,105,12,'0','ninguna','numerico'),(2043,12,127,106,12,'1840','ninguna','numerico'),(2044,12,127,107,12,'0','ninguna','numerico'),(2045,12,127,108,12,'0','ninguna','numerico'),(2046,12,127,109,12,'0','ninguna','numerico'),(2047,12,127,110,12,'0','ninguna','numerico'),(2048,12,127,111,12,'0','ninguna','numerico'),(2049,12,127,112,12,'0','ninguna','numerico'),(2050,12,127,113,12,'0','ninguna','numerico'),(2051,12,127,114,12,'0','ninguna','numerico'),(2052,12,127,115,12,'0','ninguna','numerico'),(2053,12,127,116,12,'0','ninguna','numerico'),(2054,12,127,117,12,'0','ninguna','numerico'),(2055,12,127,118,12,'4900','ninguna','numerico'),(2056,12,127,119,12,'4365','ninguna','numerico'),(2057,12,127,120,12,'0','ninguna','numerico'),(2058,12,127,121,12,'0','ninguna','numerico'),(2059,12,127,122,12,'28453,9695048309','ninguna','numerico'),(2060,12,127,123,12,'26686,4496703974','ninguna','numerico'),(2061,12,127,124,12,'0','ninguna','numerico'),(2062,12,127,133,12,'0.4','ninguna','numerico'),(2063,12,127,134,12,'25037,9162797218','ninguna','numerico'),(2064,12,127,135,12,'25037,9162797218','ninguna','numerico'),(2065,12,127,136,12,'353361,856332197','ninguna','numerico'),(2066,12,127,137,12,'0,133708843675339','ninguna','numerico'),(2067,12,127,138,12,'0,209315358457788','ninguna','numerico'),(2068,12,127,139,12,'1,19061065178933','ninguna','numerico'),(2069,16,136,2,16,'1','ninguna','numerico'),(2070,16,136,3,16,'1','ninguna','numerico'),(2071,16,136,4,16,'1','ninguna','numerico'),(2072,16,136,5,16,'1','ninguna','numerico'),(2073,16,136,6,16,'1','ninguna','numerico'),(2074,16,136,7,16,'2','ninguna','numerico'),(2075,16,136,8,16,'2','ninguna','numerico'),(2076,16,136,9,16,'7','ninguna','numerico-estatico'),(2077,16,136,10,16,'120','ninguna','numerico-estatico'),(2078,16,136,12,16,'0','ninguna','numerico'),(2079,16,136,13,16,'0','ninguna','numerico'),(2080,16,136,14,16,'0','ninguna','numerico'),(2081,16,136,15,16,'0','ninguna','numerico'),(2082,16,136,16,16,'0','ninguna','numerico'),(2083,16,136,17,16,'0','ninguna','numerico'),(2084,16,136,18,16,'287','ninguna','numerico'),(2085,16,136,19,16,'0','ninguna','numerico'),(2086,16,136,20,16,'91','ninguna','numerico'),(2087,16,136,21,16,'296','ninguna','numerico'),(2088,16,136,22,16,'0','ninguna','numerico'),(2089,16,136,23,16,'0','ninguna','numerico'),(2090,16,136,24,16,'0','ninguna','numerico'),(2091,16,136,25,16,'0','ninguna','numerico'),(2092,16,136,26,16,'0','ninguna','numerico'),(2093,16,136,27,16,'0','ninguna','numerico'),(2094,16,136,28,16,'0','ninguna','numerico'),(2095,16,136,29,16,'0','ninguna','numerico'),(2096,16,136,30,16,'78','ninguna','numerico'),(2097,16,136,31,16,'0','ninguna','numerico'),(2098,16,136,32,16,'0','ninguna','numerico'),(2099,16,136,33,16,'0','ninguna','numerico'),(2100,16,136,34,16,'0','ninguna','numerico'),(2101,16,136,35,16,'0','ninguna','numerico'),(2102,16,136,36,16,'0','ninguna','numerico'),(2103,16,136,37,16,'0','ninguna','numerico'),(2104,16,136,38,16,'425','ninguna','numerico'),(2105,16,136,39,16,'0','ninguna','numerico'),(2106,16,136,40,16,'0','ninguna','numerico'),(2107,16,136,41,16,'0','ninguna','numerico'),(2108,16,136,42,16,'0','ninguna','numerico'),(2109,16,136,43,16,'0','ninguna','numerico'),(2110,16,136,44,16,'0','ninguna','numerico'),(2111,16,136,45,16,'0','ninguna','numerico'),(2112,16,136,46,16,'0','ninguna','numerico'),(2113,16,136,47,16,'0','ninguna','numerico'),(2114,16,136,48,16,'0','ninguna','numerico'),(2115,16,136,49,16,'0','ninguna','numerico'),(2116,16,136,50,16,'0','ninguna','numerico'),(2117,16,136,51,16,'0','ninguna','numerico'),(2118,16,136,52,16,'0','ninguna','numerico'),(2119,16,136,53,16,'0','ninguna','numerico'),(2120,16,136,54,16,'0','ninguna','numerico'),(2121,16,136,55,16,'4,29','ninguna','numerico'),(2122,16,136,56,16,'0','ninguna','numerico'),(2123,16,136,57,16,'0,53','ninguna','numerico'),(2124,16,136,58,16,'0','ninguna','numerico'),(2125,16,136,59,16,'0','ninguna','numerico'),(2126,16,136,60,16,'0,88','ninguna','numerico'),(2127,16,136,61,16,'0','ninguna','numerico'),(2128,16,136,62,16,'0','ninguna','numerico'),(2129,16,136,63,16,'0','ninguna','numerico'),(2130,16,136,64,16,'0','ninguna','numerico'),(2131,16,136,65,16,'0','ninguna','numerico'),(2132,16,136,66,16,'0','ninguna','numerico'),(2133,16,136,67,16,'1,21','ninguna','numerico'),(2134,16,136,68,16,'0','ninguna','numerico'),(2135,16,136,69,16,'0','ninguna','numerico'),(2136,16,136,70,16,'0','ninguna','numerico'),(2137,16,136,71,16,'0','ninguna','numerico'),(2138,16,136,72,16,'0','ninguna','numerico'),(2139,16,136,73,16,'0','ninguna','numerico'),(2140,16,136,74,16,'0','ninguna','numerico'),(2141,16,136,75,16,'4,79','ninguna','numerico'),(2142,16,136,76,16,'0','ninguna','numerico'),(2143,16,136,77,16,'0','ninguna','numerico'),(2144,16,136,78,16,'0','ninguna','numerico'),(2145,16,136,79,16,'0','ninguna','numerico'),(2146,16,136,80,16,'0','ninguna','numerico'),(2147,16,136,81,16,'0','ninguna','numerico'),(2148,16,136,82,16,'0','ninguna','numerico'),(2149,16,136,83,16,'0','ninguna','numerico'),(2150,16,136,84,16,'0','ninguna','numerico'),(2151,16,136,85,16,'0','ninguna','numerico'),(2152,16,136,86,16,'0','ninguna','numerico'),(2153,16,136,87,16,'0','ninguna','numerico'),(2154,16,136,88,16,'0','ninguna','numerico'),(2155,16,136,89,16,'0','ninguna','numerico'),(2156,16,136,90,16,'0','ninguna','numerico'),(2157,16,136,91,16,'5100','ninguna','numerico'),(2158,16,136,92,16,'0','ninguna','numerico'),(2159,16,136,93,16,'1609','ninguna','numerico'),(2160,16,136,94,16,'0','ninguna','numerico'),(2161,16,136,95,16,'0','ninguna','numerico'),(2162,16,136,96,16,'1350','ninguna','numerico'),(2163,16,136,97,16,'0','ninguna','numerico'),(2164,16,136,98,16,'0','ninguna','numerico'),(2165,16,136,99,16,'0','ninguna','numerico'),(2166,16,136,100,16,'0','ninguna','numerico'),(2167,16,136,101,16,'0','ninguna','numerico'),(2168,16,136,102,16,'0','ninguna','numerico'),(2169,16,136,103,16,'1408','ninguna','numerico'),(2170,16,136,104,16,'0','ninguna','numerico'),(2171,16,136,105,16,'0','ninguna','numerico'),(2172,16,136,106,16,'0','ninguna','numerico'),(2173,16,136,107,16,'0','ninguna','numerico'),(2174,16,136,108,16,'0','ninguna','numerico'),(2175,16,136,109,16,'0','ninguna','numerico'),(2176,16,136,110,16,'0','ninguna','numerico'),(2177,16,136,111,16,'3400','ninguna','numerico'),(2178,16,136,112,16,'0','ninguna','numerico'),(2179,16,136,113,16,'0','ninguna','numerico'),(2180,16,136,114,16,'0','ninguna','numerico'),(2181,16,136,115,16,'0','ninguna','numerico'),(2182,16,136,116,16,'0','ninguna','numerico'),(2183,16,136,117,16,'0','ninguna','numerico'),(2184,16,136,118,16,'0','ninguna','numerico'),(2185,16,136,119,16,'0','ninguna','numerico'),(2186,16,136,120,16,'0','ninguna','numerico'),(2187,16,136,121,16,'0','ninguna','numerico'),(2188,16,136,123,16,'3492,52773519164','ninguna','numerico'),(2189,16,136,125,16,'676','ninguna','numerico'),(2190,16,136,126,16,'1','ninguna','cadena'),(2191,16,136,127,16,'65371,0082608696','ninguna','numerico'),(2192,16,136,134,16,'3113105,727118','ninguna','numerico'),(2193,16,136,135,16,'3113105,727118','ninguna','numerico'),(2194,16,136,136,16,'3470900,67584811','ninguna','numerico'),(2195,16,136,137,16,'0,339122267516522','ninguna','numerico'),(2196,16,136,138,16,'0,365386599826301','ninguna','numerico'),(2197,16,136,139,16,'1,54510827928405','ninguna','numerico'),(2198,18,137,2,18,'1','ninguna','numerico'),(2199,18,137,3,18,'2','ninguna','numerico'),(2200,18,137,4,18,'2','ninguna','numerico'),(2201,18,137,5,18,'2','ninguna','numerico'),(2202,18,137,6,18,'2','ninguna','numerico'),(2203,18,137,7,18,'2','ninguna','numerico'),(2204,18,137,8,18,'2','ninguna','numerico'),(2205,18,137,9,18,'0','ninguna','numerico-estatico'),(2206,18,137,10,18,'28','ninguna','numerico-estatico'),(2207,18,137,12,18,'0','ninguna','numerico'),(2208,18,137,13,18,'25','ninguna','numerico'),(2209,18,137,14,18,'0','ninguna','numerico'),(2210,18,137,15,18,'0','ninguna','numerico'),(2211,18,137,16,18,'0','ninguna','numerico'),(2212,18,137,17,18,'0','ninguna','numerico'),(2213,18,137,18,18,'0','ninguna','numerico'),(2214,18,137,19,18,'0','ninguna','numerico'),(2215,18,137,20,18,'0','ninguna','numerico'),(2216,18,137,21,18,'0,5','ninguna','numerico'),(2217,18,137,22,18,'0','ninguna','numerico'),(2218,18,137,23,18,'0','ninguna','numerico'),(2219,18,137,24,18,'9','ninguna','numerico'),(2220,18,137,25,18,'0','ninguna','numerico'),(2221,18,137,26,18,'0','ninguna','numerico'),(2222,18,137,27,18,'0','ninguna','numerico'),(2223,18,137,28,18,'0','ninguna','numerico'),(2224,18,137,29,18,'0','ninguna','numerico'),(2225,18,137,30,18,'0,5','ninguna','numerico'),(2226,18,137,31,18,'0','ninguna','numerico'),(2227,18,137,32,18,'0','ninguna','numerico'),(2228,18,137,33,18,'0','ninguna','numerico'),(2229,18,137,34,18,'0','ninguna','numerico'),(2230,18,137,35,18,'0','ninguna','numerico'),(2231,18,137,36,18,'0','ninguna','numerico'),(2232,18,137,37,18,'0','ninguna','numerico'),(2233,18,137,38,18,'32','ninguna','numerico'),(2234,18,137,39,18,'0','ninguna','numerico'),(2235,18,137,40,18,'0','ninguna','numerico'),(2236,18,137,41,18,'0','ninguna','numerico'),(2237,18,137,42,18,'0','ninguna','numerico'),(2238,18,137,43,18,'0','ninguna','numerico'),(2239,18,137,44,18,'10','ninguna','numerico'),(2240,18,137,45,18,'0','ninguna','numerico'),(2241,18,137,46,18,'0','ninguna','numerico'),(2242,18,137,47,18,'0','ninguna','numerico'),(2243,18,137,48,18,'0','ninguna','numerico'),(2244,18,137,49,18,'0','ninguna','numerico'),(2245,18,137,50,18,'0','ninguna','numerico'),(2246,18,137,51,18,'0,22','ninguna','numerico'),(2247,18,137,52,18,'0','ninguna','numerico'),(2248,18,137,53,18,'0','ninguna','numerico'),(2249,18,137,54,18,'0','ninguna','numerico'),(2250,18,137,55,18,'0','ninguna','numerico'),(2251,18,137,56,18,'0','ninguna','numerico'),(2252,18,137,57,18,'0','ninguna','numerico'),(2253,18,137,58,18,'4','ninguna','numerico'),(2254,18,137,59,18,'0','ninguna','numerico'),(2255,18,137,60,18,'0','ninguna','numerico'),(2256,18,137,61,18,'0,13','ninguna','numerico'),(2257,18,137,62,18,'0','ninguna','numerico'),(2258,18,137,63,18,'0','ninguna','numerico'),(2259,18,137,64,18,'0','ninguna','numerico'),(2260,18,137,65,18,'0','ninguna','numerico'),(2261,18,137,66,18,'0','ninguna','numerico'),(2262,18,137,67,18,'0,13','ninguna','numerico'),(2263,18,137,68,18,'0','ninguna','numerico'),(2264,18,137,69,18,'0','ninguna','numerico'),(2265,18,137,70,18,'0','ninguna','numerico'),(2266,18,137,71,18,'0','ninguna','numerico'),(2267,18,137,72,18,'0','ninguna','numerico'),(2268,18,137,73,18,'0','ninguna','numerico'),(2269,18,137,74,18,'0','ninguna','numerico'),(2270,18,137,75,18,'2,26','ninguna','numerico'),(2271,18,137,76,18,'0','ninguna','numerico'),(2272,18,137,77,18,'0','ninguna','numerico'),(2273,18,137,78,18,'0','ninguna','numerico'),(2274,18,137,79,18,'0','ninguna','numerico'),(2275,18,137,80,18,'0,45','ninguna','numerico'),(2276,18,137,81,18,'0','ninguna','numerico'),(2277,18,137,82,18,'0','ninguna','numerico'),(2278,18,137,83,18,'0','ninguna','numerico'),(2279,18,137,84,18,'0','ninguna','numerico'),(2280,18,137,85,18,'0','ninguna','numerico'),(2281,18,137,86,18,'0','ninguna','numerico'),(2282,18,137,87,18,'68','ninguna','numerico'),(2283,18,137,88,18,'0','ninguna','numerico'),(2284,18,137,89,18,'0','ninguna','numerico'),(2285,18,137,90,18,'0','ninguna','numerico'),(2286,18,137,91,18,'0','ninguna','numerico'),(2287,18,137,92,18,'0','ninguna','numerico'),(2288,18,137,93,18,'0','ninguna','numerico'),(2289,18,137,94,18,'316','ninguna','numerico'),(2290,18,137,95,18,'0','ninguna','numerico'),(2291,18,137,96,18,'0','ninguna','numerico'),(2292,18,137,97,18,'240','ninguna','numerico'),(2293,18,137,98,18,'0','ninguna','numerico'),(2294,18,137,99,18,'0','ninguna','numerico'),(2295,18,137,100,18,'0','ninguna','numerico'),(2296,18,137,101,18,'0','ninguna','numerico'),(2297,18,137,102,18,'0','ninguna','numerico'),(2298,18,137,103,18,'1000','ninguna','numerico'),(2299,18,137,104,18,'0','ninguna','numerico'),(2300,18,137,105,18,'0','ninguna','numerico'),(2301,18,137,106,18,'0','ninguna','numerico'),(2302,18,137,107,18,'0','ninguna','numerico'),(2303,18,137,108,18,'0','ninguna','numerico'),(2304,18,137,109,18,'0','ninguna','numerico'),(2305,18,137,110,18,'0','ninguna','numerico'),(2306,18,137,111,18,'2200','ninguna','numerico'),(2307,18,137,112,18,'0','ninguna','numerico'),(2308,18,137,113,18,'0','ninguna','numerico'),(2309,18,137,114,18,'0','ninguna','numerico'),(2310,18,137,115,18,'0','ninguna','numerico'),(2311,18,137,116,18,'409','ninguna','numerico'),(2312,18,137,117,18,'0','ninguna','numerico'),(2313,18,137,118,18,'0','ninguna','numerico'),(2314,18,137,119,18,'1980','ninguna','numerico'),(2315,18,137,120,18,'0','ninguna','numerico'),(2316,18,137,121,18,'250','ninguna','numerico'),(2317,18,137,130,18,'507,164238647021','ninguna','numerico'),(2318,18,137,132,18,'0,24','ninguna','numerico'),(2319,18,137,134,18,'-995016,336231557','ninguna','numerico'),(2320,18,137,135,18,'-995016,336231557','ninguna','numerico'),(2321,18,137,136,18,'-872958,893280104','ninguna','numerico'),(2322,18,137,137,18,'0','ninguna','numerico'),(2323,18,137,138,18,'0','ninguna','numerico'),(2324,18,137,139,18,'0,224285528248316','ninguna','numerico'),(2325,20,143,1,20,'1','ninguna','numerico'),(2326,20,143,2,20,'1','ninguna','numerico'),(2327,20,143,3,20,'2','ninguna','numerico'),(2328,20,143,4,20,'2','ninguna','numerico'),(2329,20,143,5,20,'2','ninguna','numerico'),(2330,20,143,6,20,'2','ninguna','numerico'),(2331,20,143,7,20,'2','ninguna','numerico'),(2332,20,143,8,20,'2','ninguna','numerico'),(2333,20,143,9,20,'37','ninguna','numerico-estatico'),(2334,20,143,10,20,'61','ninguna','numerico-estatico'),(2335,20,143,11,20,'0','ninguna','numerico'),(2336,20,143,12,20,'0','ninguna','numerico'),(2337,20,143,13,20,'0','ninguna','numerico'),(2338,20,143,14,20,'0','ninguna','numerico'),(2339,20,143,15,20,'0','ninguna','numerico'),(2340,20,143,16,20,'0','ninguna','numerico'),(2341,20,143,17,20,'0','ninguna','numerico'),(2342,20,143,18,20,'0','ninguna','numerico'),(2343,20,143,19,20,'0','ninguna','numerico'),(2344,20,143,20,20,'0','ninguna','numerico'),(2345,20,143,21,20,'3,2','ninguna','numerico'),(2346,20,143,22,20,'0','ninguna','numerico'),(2347,20,143,23,20,'0','ninguna','numerico'),(2348,20,143,24,20,'0','ninguna','numerico'),(2349,20,143,25,20,'0','ninguna','numerico'),(2350,20,143,26,20,'0','ninguna','numerico'),(2351,20,143,27,20,'0','ninguna','numerico'),(2352,20,143,28,20,'0','ninguna','numerico'),(2353,20,143,29,20,'0','ninguna','numerico'),(2354,20,143,30,20,'5,3','ninguna','numerico'),(2355,20,143,31,20,'0','ninguna','numerico'),(2356,20,143,32,20,'0','ninguna','numerico'),(2357,20,143,33,20,'2,12','ninguna','numerico'),(2358,20,143,34,20,'0','ninguna','numerico'),(2359,20,143,35,20,'0','ninguna','numerico'),(2360,20,143,36,20,'0','ninguna','numerico'),(2361,20,143,37,20,'0','ninguna','numerico'),(2362,20,143,38,20,'2,65','ninguna','numerico'),(2363,20,143,39,20,'0','ninguna','numerico'),(2364,20,143,40,20,'0','ninguna','numerico'),(2365,20,143,41,20,'0','ninguna','numerico'),(2366,20,143,42,20,'0','ninguna','numerico'),(2367,20,143,43,20,'0','ninguna','numerico'),(2368,20,143,44,20,'0','ninguna','numerico'),(2369,20,143,45,20,'0','ninguna','numerico'),(2370,20,143,46,20,'0','ninguna','numerico'),(2371,20,143,47,20,'1,8','ninguna','numerico'),(2372,20,143,48,20,'0','ninguna','numerico'),(2373,20,143,49,20,'0','ninguna','numerico'),(2374,20,143,50,20,'0','ninguna','numerico'),(2375,20,143,51,20,'0','ninguna','numerico'),(2376,20,143,52,20,'15,75','ninguna','numerico'),(2377,20,143,53,20,'0','ninguna','numerico'),(2378,20,143,54,20,'0','ninguna','numerico'),(2379,20,143,55,20,'0','ninguna','numerico'),(2380,20,143,56,20,'0','ninguna','numerico'),(2381,20,143,57,20,'0','ninguna','numerico'),(2382,20,143,58,20,'15','ninguna','numerico'),(2383,20,143,59,20,'0','ninguna','numerico'),(2384,20,143,60,20,'0','ninguna','numerico'),(2385,20,143,61,20,'0','ninguna','numerico'),(2386,20,143,62,20,'0','ninguna','numerico'),(2387,20,143,63,20,'0','ninguna','numerico'),(2388,20,143,64,20,'0','ninguna','numerico'),(2389,20,143,65,20,'0','ninguna','numerico'),(2390,20,143,66,20,'0','ninguna','numerico'),(2391,20,143,67,20,'6','ninguna','numerico'),(2392,20,143,68,20,'0','ninguna','numerico'),(2393,20,143,69,20,'0','ninguna','numerico'),(2394,20,143,70,20,'4,5','ninguna','numerico'),(2395,20,143,71,20,'0','ninguna','numerico'),(2396,20,143,72,20,'0','ninguna','numerico'),(2397,20,143,73,20,'0','ninguna','numerico'),(2398,20,143,74,20,'0','ninguna','numerico'),(2399,20,143,75,20,'18,75','ninguna','numerico'),(2400,20,143,76,20,'0','ninguna','numerico'),(2401,20,143,77,20,'0','ninguna','numerico'),(2402,20,143,78,20,'0','ninguna','numerico'),(2403,20,143,79,20,'0','ninguna','numerico'),(2404,20,143,80,20,'0','ninguna','numerico'),(2405,20,143,81,20,'0','ninguna','numerico'),(2406,20,143,82,20,'0','ninguna','numerico'),(2407,20,143,83,20,'3,56','ninguna','numerico'),(2408,20,143,84,20,'0','ninguna','numerico'),(2409,20,143,85,20,'0','ninguna','numerico'),(2410,20,143,86,20,'0','ninguna','numerico'),(2411,20,143,87,20,'0','ninguna','numerico'),(2412,20,143,88,20,'0','ninguna','numerico'),(2413,20,143,89,20,'0','ninguna','numerico'),(2414,20,143,90,20,'0','ninguna','numerico'),(2415,20,143,91,20,'0','ninguna','numerico'),(2416,20,143,92,20,'0','ninguna','numerico'),(2417,20,143,93,20,'0','ninguna','numerico'),(2418,20,143,94,20,'25','ninguna','numerico'),(2419,20,143,95,20,'0','ninguna','numerico'),(2420,20,143,96,20,'0','ninguna','numerico'),(2421,20,143,97,20,'240','ninguna','numerico'),(2422,20,143,98,20,'0','ninguna','numerico'),(2423,20,143,99,20,'0','ninguna','numerico'),(2424,20,143,100,20,'0','ninguna','numerico'),(2425,20,143,101,20,'0','ninguna','numerico'),(2426,20,143,102,20,'0','ninguna','numerico'),(2427,20,143,103,20,'1200','ninguna','numerico'),(2428,20,143,104,20,'0','ninguna','numerico'),(2429,20,143,105,20,'0','ninguna','numerico'),(2430,20,143,106,20,'3603','ninguna','numerico'),(2431,20,143,107,20,'0','ninguna','numerico'),(2432,20,143,108,20,'0','ninguna','numerico'),(2433,20,143,109,20,'0','ninguna','numerico'),(2434,20,143,110,20,'0','ninguna','numerico'),(2435,20,143,111,20,'1800','ninguna','numerico'),(2436,20,143,112,20,'0','ninguna','numerico'),(2437,20,143,113,20,'0','ninguna','numerico'),(2438,20,143,114,20,'0','ninguna','numerico'),(2439,20,143,115,20,'0','ninguna','numerico'),(2440,20,143,116,20,'0','ninguna','numerico'),(2441,20,143,117,20,'0','ninguna','numerico'),(2442,20,143,118,20,'0','ninguna','numerico'),(2443,20,143,119,20,'1600','ninguna','numerico'),(2444,20,143,120,20,'0','ninguna','numerico'),(2445,20,143,121,20,'250','ninguna','numerico'),(2446,20,143,122,20,'32197,6536666667','ninguna','numerico'),(2447,20,143,123,20,'31670,0047917386','ninguna','numerico'),(2448,20,143,124,20,'0','ninguna','numerico'),(2449,20,143,133,20,'0.4','ninguna','numerico'),(2450,20,143,134,20,'1547084,33653331','ninguna','numerico'),(2451,20,143,135,20,'1547084,33653331','ninguna','numerico'),(2452,20,143,136,20,'1804865,62069676','ninguna','numerico'),(2453,20,143,137,20,'0,290659218188713','ninguna','numerico'),(2454,20,143,138,20,'0,330605080396882','ninguna','numerico'),(2455,20,143,139,20,'1,80105974402682','ninguna','numerico'),(2456,19,156,1,19,'1','ninguna','numerico'),(2457,19,156,2,19,'1','ninguna','numerico'),(2458,19,156,3,19,'2','ninguna','numerico'),(2459,19,156,4,19,'2','ninguna','numerico'),(2460,19,156,5,19,'2','ninguna','numerico'),(2461,19,156,6,19,'2','ninguna','numerico'),(2462,19,156,7,19,'2','ninguna','numerico'),(2463,19,156,8,19,'2','ninguna','numerico'),(2464,19,156,9,19,'93','ninguna','numerico-estatico'),(2465,19,156,10,19,'73','ninguna','numerico-estatico'),(2466,19,156,12,19,'0','ninguna','numerico'),(2467,19,156,13,19,'0','ninguna','numerico'),(2468,19,156,14,19,'0','ninguna','numerico'),(2469,19,156,15,19,'0','ninguna','numerico'),(2470,19,156,16,19,'0','ninguna','numerico'),(2471,19,156,17,19,'0','ninguna','numerico'),(2472,19,156,18,19,'0','ninguna','numerico'),(2473,19,156,19,19,'0','ninguna','numerico'),(2474,19,156,20,19,'0','ninguna','numerico'),(2475,19,156,21,19,'1,5','ninguna','numerico'),(2476,19,156,22,19,'0','ninguna','numerico'),(2477,19,156,23,19,'0','ninguna','numerico'),(2478,19,156,24,19,'0','ninguna','numerico'),(2479,19,156,25,19,'0','ninguna','numerico'),(2480,19,156,26,19,'0','ninguna','numerico'),(2481,19,156,27,19,'0','ninguna','numerico'),(2482,19,156,28,19,'0','ninguna','numerico'),(2483,19,156,29,19,'0','ninguna','numerico'),(2484,19,156,30,19,'0','ninguna','numerico'),(2485,19,156,31,19,'0','ninguna','numerico'),(2486,19,156,32,19,'0','ninguna','numerico'),(2487,19,156,33,19,'1','ninguna','numerico'),(2488,19,156,34,19,'0','ninguna','numerico'),(2489,19,156,35,19,'0','ninguna','numerico'),(2490,19,156,36,19,'0','ninguna','numerico'),(2491,19,156,37,19,'0','ninguna','numerico'),(2492,19,156,38,19,'5','ninguna','numerico'),(2493,19,156,39,19,'0','ninguna','numerico'),(2494,19,156,40,19,'0','ninguna','numerico'),(2495,19,156,41,19,'0','ninguna','numerico'),(2496,19,156,42,19,'0','ninguna','numerico'),(2497,19,156,43,19,'0','ninguna','numerico'),(2498,19,156,44,19,'0','ninguna','numerico'),(2499,19,156,45,19,'0','ninguna','numerico'),(2500,19,156,46,19,'0','ninguna','numerico'),(2501,19,156,47,19,'0','ninguna','numerico'),(2502,19,156,48,19,'0','ninguna','numerico'),(2503,19,156,49,19,'0','ninguna','numerico'),(2504,19,156,50,19,'0','ninguna','numerico'),(2505,19,156,51,19,'0','ninguna','numerico'),(2506,19,156,52,19,'0','ninguna','numerico'),(2507,19,156,53,19,'0','ninguna','numerico'),(2508,19,156,54,19,'0','ninguna','numerico'),(2509,19,156,55,19,'0','ninguna','numerico'),(2510,19,156,56,19,'0','ninguna','numerico'),(2511,19,156,57,19,'0','ninguna','numerico'),(2512,19,156,58,19,'0,68','ninguna','numerico'),(2513,19,156,59,19,'0','ninguna','numerico'),(2514,19,156,60,19,'0','ninguna','numerico'),(2515,19,156,61,19,'0','ninguna','numerico'),(2516,19,156,62,19,'0','ninguna','numerico'),(2517,19,156,63,19,'0','ninguna','numerico'),(2518,19,156,64,19,'0','ninguna','numerico'),(2519,19,156,65,19,'0','ninguna','numerico'),(2520,19,156,66,19,'0','ninguna','numerico'),(2521,19,156,67,19,'0','ninguna','numerico'),(2522,19,156,68,19,'0','ninguna','numerico'),(2523,19,156,69,19,'0','ninguna','numerico'),(2524,19,156,70,19,'0,91','ninguna','numerico'),(2525,19,156,71,19,'0','ninguna','numerico'),(2526,19,156,72,19,'0','ninguna','numerico'),(2527,19,156,73,19,'0','ninguna','numerico'),(2528,19,156,74,19,'0','ninguna','numerico'),(2529,19,156,75,19,'2,7','ninguna','numerico'),(2530,19,156,76,19,'0','ninguna','numerico'),(2531,19,156,77,19,'0','ninguna','numerico'),(2532,19,156,78,19,'0','ninguna','numerico'),(2533,19,156,79,19,'0','ninguna','numerico'),(2534,19,156,80,19,'0','ninguna','numerico'),(2535,19,156,81,19,'0','ninguna','numerico'),(2536,19,156,82,19,'0','ninguna','numerico'),(2537,19,156,83,19,'0','ninguna','numerico'),(2538,19,156,84,19,'0','ninguna','numerico'),(2539,19,156,85,19,'0','ninguna','numerico'),(2540,19,156,86,19,'0','ninguna','numerico'),(2541,19,156,87,19,'0','ninguna','numerico'),(2542,19,156,88,19,'0','ninguna','numerico'),(2543,19,156,89,19,'0','ninguna','numerico'),(2544,19,156,90,19,'0','ninguna','numerico'),(2545,19,156,91,19,'0','ninguna','numerico'),(2546,19,156,92,19,'0','ninguna','numerico'),(2547,19,156,93,19,'0','ninguna','numerico'),(2548,19,156,94,19,'1190','ninguna','numerico'),(2549,19,156,95,19,'0','ninguna','numerico'),(2550,19,156,96,19,'0','ninguna','numerico'),(2551,19,156,97,19,'0','ninguna','numerico'),(2552,19,156,98,19,'0','ninguna','numerico'),(2553,19,156,99,19,'0','ninguna','numerico'),(2554,19,156,100,19,'0','ninguna','numerico'),(2555,19,156,101,19,'0','ninguna','numerico'),(2556,19,156,102,19,'0','ninguna','numerico'),(2557,19,156,103,19,'0','ninguna','numerico'),(2558,19,156,104,19,'0','ninguna','numerico'),(2559,19,156,105,19,'0','ninguna','numerico'),(2560,19,156,106,19,'1800','ninguna','numerico'),(2561,19,156,107,19,'0','ninguna','numerico'),(2562,19,156,108,19,'0','ninguna','numerico'),(2563,19,156,109,19,'0','ninguna','numerico'),(2564,19,156,110,19,'0','ninguna','numerico'),(2565,19,156,111,19,'1320','ninguna','numerico'),(2566,19,156,112,19,'0','ninguna','numerico'),(2567,19,156,113,19,'0','ninguna','numerico'),(2568,19,156,114,19,'0','ninguna','numerico'),(2569,19,156,115,19,'0','ninguna','numerico'),(2570,19,156,116,19,'0','ninguna','numerico'),(2571,19,156,117,19,'0','ninguna','numerico'),(2572,19,156,118,19,'0','ninguna','numerico'),(2573,19,156,119,19,'1240','ninguna','numerico'),(2574,19,156,120,19,'0','ninguna','numerico'),(2575,19,156,121,19,'0','ninguna','numerico'),(2576,19,156,123,19,'854,871442604447','ninguna','numerico'),(2577,19,156,125,19,'260','ninguna','numerico'),(2578,19,156,126,19,'1, 2','ninguna','cadena'),(2579,19,156,131,19,'39580,548','ninguna','numerico'),(2580,19,156,134,19,'-135624,431511869','ninguna','numerico'),(2581,19,156,135,19,'-135624,431511869','ninguna','numerico'),(2582,19,156,136,19,'717,797850520117','ninguna','numerico'),(2583,19,156,137,19,'0,11733367112457','ninguna','numerico'),(2584,19,156,138,19,'0,126759456743663','ninguna','numerico'),(2585,19,156,139,19,'1,00033330016549','ninguna','numerico'),(2586,25,167,2,25,'1','ninguna','numerico'),(2587,25,167,3,25,'1','ninguna','numerico'),(2588,25,167,4,25,'2','ninguna','numerico'),(2589,25,167,5,25,'2','ninguna','numerico'),(2590,25,167,6,25,'2','ninguna','numerico'),(2591,25,167,7,25,'2','ninguna','numerico'),(2592,25,167,8,25,'2','ninguna','numerico'),(2593,25,167,9,25,'48','ninguna','numerico-estatico'),(2594,25,167,10,25,'78','ninguna','numerico-estatico'),(2595,25,167,12,25,'0','ninguna','numerico'),(2596,25,167,13,25,'0','ninguna','numerico'),(2597,25,167,14,25,'0','ninguna','numerico'),(2598,25,167,15,25,'66','ninguna','numerico'),(2599,25,167,16,25,'0','ninguna','numerico'),(2600,25,167,17,25,'0','ninguna','numerico'),(2601,25,167,18,25,'0','ninguna','numerico'),(2602,25,167,19,25,'0','ninguna','numerico'),(2603,25,167,20,25,'0','ninguna','numerico'),(2604,25,167,21,25,'0','ninguna','numerico'),(2605,25,167,22,25,'0','ninguna','numerico'),(2606,25,167,23,25,'0','ninguna','numerico'),(2607,25,167,24,25,'0','ninguna','numerico'),(2608,25,167,25,25,'0','ninguna','numerico'),(2609,25,167,26,25,'0','ninguna','numerico'),(2610,25,167,27,25,'0','ninguna','numerico'),(2611,25,167,28,25,'0','ninguna','numerico'),(2612,25,167,29,25,'0','ninguna','numerico'),(2613,25,167,30,25,'0','ninguna','numerico'),(2614,25,167,31,25,'0','ninguna','numerico'),(2615,25,167,32,25,'0','ninguna','numerico'),(2616,25,167,33,25,'53','ninguna','numerico'),(2617,25,167,34,25,'0','ninguna','numerico'),(2618,25,167,35,25,'0','ninguna','numerico'),(2619,25,167,36,25,'24','ninguna','numerico'),(2620,25,167,37,25,'0','ninguna','numerico'),(2621,25,167,38,25,'0','ninguna','numerico'),(2622,25,167,39,25,'0','ninguna','numerico'),(2623,25,167,40,25,'0','ninguna','numerico'),(2624,25,167,41,25,'0','ninguna','numerico'),(2625,25,167,42,25,'45','ninguna','numerico'),(2626,25,167,43,25,'0','ninguna','numerico'),(2627,25,167,44,25,'0','ninguna','numerico'),(2628,25,167,45,25,'0','ninguna','numerico'),(2629,25,167,46,25,'0','ninguna','numerico'),(2630,25,167,47,25,'0','ninguna','numerico'),(2631,25,167,48,25,'59','ninguna','numerico'),(2632,25,167,49,25,'0','ninguna','numerico'),(2633,25,167,50,25,'0','ninguna','numerico'),(2634,25,167,51,25,'0','ninguna','numerico'),(2635,25,167,52,25,'0','ninguna','numerico'),(2636,25,167,53,25,'3,5','ninguna','numerico'),(2637,25,167,54,25,'0','ninguna','numerico'),(2638,25,167,55,25,'0','ninguna','numerico'),(2639,25,167,56,25,'0','ninguna','numerico'),(2640,25,167,57,25,'0','ninguna','numerico'),(2641,25,167,58,25,'0','ninguna','numerico'),(2642,25,167,59,25,'0','ninguna','numerico'),(2643,25,167,60,25,'0','ninguna','numerico'),(2644,25,167,61,25,'0','ninguna','numerico'),(2645,25,167,62,25,'0','ninguna','numerico'),(2646,25,167,63,25,'0','ninguna','numerico'),(2647,25,167,64,25,'0','ninguna','numerico'),(2648,25,167,65,25,'0','ninguna','numerico'),(2649,25,167,66,25,'0','ninguna','numerico'),(2650,25,167,67,25,'0','ninguna','numerico'),(2651,25,167,68,25,'0','ninguna','numerico'),(2652,25,167,69,25,'0','ninguna','numerico'),(2653,25,167,70,25,'4,5','ninguna','numerico'),(2654,25,167,71,25,'0','ninguna','numerico'),(2655,25,167,72,25,'0','ninguna','numerico'),(2656,25,167,73,25,'3,6','ninguna','numerico'),(2657,25,167,74,25,'0','ninguna','numerico'),(2658,25,167,75,25,'0','ninguna','numerico'),(2659,25,167,76,25,'0','ninguna','numerico'),(2660,25,167,77,25,'0','ninguna','numerico'),(2661,25,167,78,25,'0','ninguna','numerico'),(2662,25,167,79,25,'5,1','ninguna','numerico'),(2663,25,167,80,25,'0','ninguna','numerico'),(2664,25,167,81,25,'0','ninguna','numerico'),(2665,25,167,82,25,'0','ninguna','numerico'),(2666,25,167,83,25,'0','ninguna','numerico'),(2667,25,167,84,25,'1,4','ninguna','numerico'),(2668,25,167,85,25,'0','ninguna','numerico'),(2669,25,167,86,25,'0','ninguna','numerico'),(2670,25,167,87,25,'0','ninguna','numerico'),(2671,25,167,88,25,'0','ninguna','numerico'),(2672,25,167,89,25,'2100','ninguna','numerico'),(2673,25,167,90,25,'0','ninguna','numerico'),(2674,25,167,91,25,'0','ninguna','numerico'),(2675,25,167,92,25,'0','ninguna','numerico'),(2676,25,167,93,25,'0','ninguna','numerico'),(2677,25,167,94,25,'0','ninguna','numerico'),(2678,25,167,95,25,'0','ninguna','numerico'),(2679,25,167,96,25,'0','ninguna','numerico'),(2680,25,167,97,25,'0','ninguna','numerico'),(2681,25,167,98,25,'0','ninguna','numerico'),(2682,25,167,99,25,'0','ninguna','numerico'),(2683,25,167,100,25,'0','ninguna','numerico'),(2684,25,167,101,25,'1190','ninguna','numerico'),(2685,25,167,102,25,'0','ninguna','numerico'),(2686,25,167,103,25,'0','ninguna','numerico'),(2687,25,167,104,25,'0','ninguna','numerico'),(2688,25,167,105,25,'0','ninguna','numerico'),(2689,25,167,106,25,'8750','ninguna','numerico'),(2690,25,167,107,25,'0','ninguna','numerico'),(2691,25,167,108,25,'0','ninguna','numerico'),(2692,25,167,109,25,'681','ninguna','numerico'),(2693,25,167,110,25,'0','ninguna','numerico'),(2694,25,167,111,25,'0','ninguna','numerico'),(2695,25,167,112,25,'0','ninguna','numerico'),(2696,25,167,113,25,'0','ninguna','numerico'),(2697,25,167,114,25,'6620','ninguna','numerico'),(2698,25,167,115,25,'0','ninguna','numerico'),(2699,25,167,116,25,'0','ninguna','numerico'),(2700,25,167,117,25,'0','ninguna','numerico'),(2701,25,167,118,25,'0','ninguna','numerico'),(2702,25,167,119,25,'0','ninguna','numerico'),(2703,25,167,120,25,'3380','ninguna','numerico'),(2704,25,167,121,25,'0','ninguna','numerico'),(2705,25,167,128,25,'1','ninguna','numerico'),(2706,25,167,129,25,'1014125,74','ninguna','numerico'),(2707,25,167,130,25,'281,990303263833','ninguna','numerico'),(2708,25,167,132,25,'0,24','ninguna','numerico'),(2709,25,167,134,25,'681102,018452789','ninguna','numerico'),(2710,25,167,135,25,'681102,018452789','ninguna','numerico'),(2711,25,167,136,25,'502336,738700648','ninguna','numerico'),(2712,25,167,137,25,'0,267410587928858','ninguna','numerico'),(2713,25,167,138,25,'0,240809325566649','ninguna','numerico'),(2714,25,167,139,25,'1,5149735262251','ninguna','numerico'),(2715,22,169,2,22,'1','ninguna','numerico'),(2716,22,169,3,22,'1','ninguna','numerico'),(2717,22,169,4,22,'2','ninguna','numerico'),(2718,22,169,5,22,'2','ninguna','numerico'),(2719,22,169,6,22,'2','ninguna','numerico'),(2720,22,169,7,22,'2','ninguna','numerico'),(2721,22,169,8,22,'2','ninguna','numerico'),(2722,22,169,9,22,'23','ninguna','numerico-estatico'),(2723,22,169,10,22,'85','ninguna','numerico-estatico'),(2724,22,169,11,22,'0','ninguna','numerico'),(2725,22,169,12,22,'0','ninguna','numerico'),(2726,22,169,13,22,'0','ninguna','numerico'),(2727,22,169,14,22,'0','ninguna','numerico'),(2728,22,169,15,22,'0','ninguna','numerico'),(2729,24,169,15,24,'60','ninguna','numerico'),(2730,22,169,16,22,'0','ninguna','numerico'),(2731,22,169,17,22,'0','ninguna','numerico'),(2732,22,169,18,22,'0','ninguna','numerico'),(2733,22,169,19,22,'0','ninguna','numerico'),(2734,22,169,20,22,'0','ninguna','numerico'),(2735,22,169,21,22,'0','ninguna','numerico'),(2736,22,169,22,22,'0','ninguna','numerico'),(2737,22,169,23,22,'0','ninguna','numerico'),(2738,22,169,24,22,'0','ninguna','numerico'),(2739,22,169,25,22,'0','ninguna','numerico'),(2740,22,169,26,22,'0','ninguna','numerico'),(2741,22,169,27,22,'0','ninguna','numerico'),(2742,22,169,28,22,'0','ninguna','numerico'),(2743,22,169,29,22,'0','ninguna','numerico'),(2744,22,169,30,22,'0','ninguna','numerico'),(2745,22,169,31,22,'0','ninguna','numerico'),(2746,22,169,32,22,'0','ninguna','numerico'),(2747,22,169,33,22,'0','ninguna','numerico'),(2748,22,169,34,22,'0','ninguna','numerico'),(2749,22,169,35,22,'0','ninguna','numerico'),(2750,22,169,36,22,'0','ninguna','numerico'),(2751,22,169,37,22,'0','ninguna','numerico'),(2752,22,169,38,22,'0','ninguna','numerico'),(2753,22,169,39,22,'0','ninguna','numerico'),(2754,22,169,40,22,'0','ninguna','numerico'),(2755,22,169,41,22,'0','ninguna','numerico'),(2756,22,169,42,22,'0','ninguna','numerico'),(2757,22,169,43,22,'0','ninguna','numerico'),(2758,22,169,44,22,'0','ninguna','numerico'),(2759,22,169,45,22,'0','ninguna','numerico'),(2760,22,169,46,22,'0','ninguna','numerico'),(2761,22,169,47,22,'0','ninguna','numerico'),(2762,22,169,48,22,'0','ninguna','numerico'),(2763,22,169,49,22,'0','ninguna','numerico'),(2764,22,169,50,22,'0','ninguna','numerico'),(2765,22,169,51,22,'0','ninguna','numerico'),(2766,22,169,52,22,'0','ninguna','numerico'),(2767,22,169,53,22,'0','ninguna','numerico'),(2768,22,169,54,22,'0','ninguna','numerico'),(2769,22,169,55,22,'0','ninguna','numerico'),(2770,22,169,56,22,'0','ninguna','numerico'),(2771,22,169,57,22,'0','ninguna','numerico'),(2772,22,169,58,22,'0','ninguna','numerico'),(2773,22,169,59,22,'0','ninguna','numerico'),(2774,22,169,60,22,'0','ninguna','numerico'),(2775,22,169,61,22,'0','ninguna','numerico'),(2776,22,169,62,22,'0','ninguna','numerico'),(2777,22,169,63,22,'0','ninguna','numerico'),(2778,22,169,64,22,'0','ninguna','numerico'),(2779,22,169,65,22,'5','ninguna','numerico'),(2780,22,169,66,22,'0','ninguna','numerico'),(2781,22,169,67,22,'0','ninguna','numerico'),(2782,22,169,68,22,'0','ninguna','numerico'),(2783,22,169,69,22,'0','ninguna','numerico'),(2784,22,169,70,22,'0','ninguna','numerico'),(2785,22,169,71,22,'0','ninguna','numerico'),(2786,22,169,72,22,'0','ninguna','numerico'),(2787,22,169,73,22,'0','ninguna','numerico'),(2788,22,169,74,22,'0','ninguna','numerico'),(2789,22,169,75,22,'0','ninguna','numerico'),(2790,22,169,76,22,'0','ninguna','numerico'),(2791,22,169,77,22,'0','ninguna','numerico'),(2792,22,169,78,22,'0','ninguna','numerico'),(2793,22,169,79,22,'0','ninguna','numerico'),(2794,22,169,80,22,'0','ninguna','numerico'),(2795,22,169,81,22,'0','ninguna','numerico'),(2796,22,169,82,22,'0','ninguna','numerico'),(2797,22,169,83,22,'0','ninguna','numerico'),(2798,22,169,84,22,'0','ninguna','numerico'),(2799,22,169,85,22,'0','ninguna','numerico'),(2800,22,169,86,22,'0','ninguna','numerico'),(2801,22,169,87,22,'0','ninguna','numerico'),(2802,22,169,88,22,'0','ninguna','numerico'),(2803,22,169,89,22,'740','ninguna','numerico'),(2804,22,169,90,22,'0','ninguna','numerico'),(2805,22,169,91,22,'0','ninguna','numerico'),(2806,22,169,92,22,'0','ninguna','numerico'),(2807,22,169,93,22,'0','ninguna','numerico'),(2808,22,169,94,22,'0','ninguna','numerico'),(2809,22,169,95,22,'0','ninguna','numerico'),(2810,22,169,96,22,'0','ninguna','numerico'),(2811,22,169,97,22,'0','ninguna','numerico'),(2812,22,169,98,22,'0','ninguna','numerico'),(2813,22,169,99,22,'0','ninguna','numerico'),(2814,22,169,100,22,'0','ninguna','numerico'),(2815,22,169,101,22,'0','ninguna','numerico'),(2816,22,169,102,22,'0','ninguna','numerico'),(2817,22,169,103,22,'0','ninguna','numerico'),(2818,22,169,104,22,'0','ninguna','numerico'),(2819,22,169,105,22,'0','ninguna','numerico'),(2820,22,169,106,22,'5367,35','ninguna','numerico'),(2821,22,169,107,22,'0','ninguna','numerico'),(2822,22,169,108,22,'0','ninguna','numerico'),(2823,22,169,109,22,'0','ninguna','numerico'),(2824,22,169,110,22,'0','ninguna','numerico'),(2825,22,169,111,22,'0','ninguna','numerico'),(2826,22,169,112,22,'0','ninguna','numerico'),(2827,22,169,113,22,'0','ninguna','numerico'),(2828,22,169,114,22,'12880','ninguna','numerico'),(2829,22,169,115,22,'0','ninguna','numerico'),(2830,22,169,116,22,'0','ninguna','numerico'),(2831,22,169,117,22,'0','ninguna','numerico'),(2832,22,169,118,22,'0','ninguna','numerico'),(2833,22,169,119,22,'0','ninguna','numerico'),(2834,22,169,120,22,'5420','ninguna','numerico'),(2835,22,169,121,22,'0','ninguna','numerico'),(2836,22,169,122,22,'41325,8069102033','ninguna','numerico'),(2837,22,169,123,22,'26359,4869727714','ninguna','numerico'),(2838,22,169,124,22,'0','ninguna','numerico'),(2839,22,169,133,22,'0.4','ninguna','numerico'),(2840,22,169,134,22,'-1845275,46840358','ninguna','numerico'),(2841,22,169,135,22,'-1845275,46840358','ninguna','numerico'),(2842,22,169,136,22,'-804076,828386356','ninguna','numerico'),(2843,22,169,137,22,'-0,128836964502825','ninguna','numerico'),(2844,22,169,138,22,'-0,0421978668404652','ninguna','numerico'),(2845,22,169,139,22,'0,651941509665108','ninguna','numerico'),(2846,23,182,2,23,'1','ninguna','numerico'),(2847,23,182,3,23,'1','ninguna','numerico'),(2848,23,182,4,23,'2','ninguna','numerico'),(2849,23,182,5,23,'2','ninguna','numerico'),(2850,23,182,6,23,'2','ninguna','numerico'),(2851,23,182,7,23,'2','ninguna','numerico'),(2852,23,182,8,23,'2','ninguna','numerico'),(2853,23,182,9,23,'45','ninguna','numerico-estatico'),(2854,23,182,10,23,'88','ninguna','numerico-estatico'),(2855,23,182,12,23,'0','ninguna','numerico'),(2856,23,182,13,23,'0','ninguna','numerico'),(2857,23,182,14,23,'0','ninguna','numerico'),(2858,23,182,15,23,'81','ninguna','numerico'),(2859,23,182,16,23,'0','ninguna','numerico'),(2860,23,182,17,23,'0','ninguna','numerico'),(2861,23,182,18,23,'0','ninguna','numerico'),(2862,23,182,19,23,'0','ninguna','numerico'),(2863,23,182,20,23,'0','ninguna','numerico'),(2864,23,182,21,23,'0','ninguna','numerico'),(2865,23,182,22,23,'0','ninguna','numerico'),(2866,23,182,23,23,'0','ninguna','numerico'),(2867,23,182,24,23,'0','ninguna','numerico'),(2868,23,182,25,23,'0','ninguna','numerico'),(2869,23,182,26,23,'0','ninguna','numerico'),(2870,23,182,27,23,'0','ninguna','numerico'),(2871,23,182,28,23,'0','ninguna','numerico'),(2872,23,182,29,23,'0','ninguna','numerico'),(2873,23,182,30,23,'0','ninguna','numerico'),(2874,23,182,31,23,'0','ninguna','numerico'),(2875,23,182,32,23,'0','ninguna','numerico'),(2876,23,182,33,23,'95','ninguna','numerico'),(2877,23,182,34,23,'0','ninguna','numerico'),(2878,23,182,35,23,'0','ninguna','numerico'),(2879,23,182,36,23,'0','ninguna','numerico'),(2880,23,182,37,23,'0','ninguna','numerico'),(2881,23,182,38,23,'0','ninguna','numerico'),(2882,23,182,39,23,'0','ninguna','numerico'),(2883,23,182,40,23,'0','ninguna','numerico'),(2884,23,182,41,23,'0','ninguna','numerico'),(2885,23,182,42,23,'47','ninguna','numerico'),(2886,23,182,43,23,'0','ninguna','numerico'),(2887,23,182,44,23,'0','ninguna','numerico'),(2888,23,182,45,23,'0','ninguna','numerico'),(2889,23,182,46,23,'0','ninguna','numerico'),(2890,23,182,47,23,'0','ninguna','numerico'),(2891,23,182,48,23,'68','ninguna','numerico'),(2892,23,182,49,23,'0','ninguna','numerico'),(2893,23,182,50,23,'0','ninguna','numerico'),(2894,23,182,51,23,'0','ninguna','numerico'),(2895,23,182,52,23,'0','ninguna','numerico'),(2896,23,182,53,23,'3,402','ninguna','numerico'),(2897,23,182,54,23,'0','ninguna','numerico'),(2898,23,182,55,23,'0','ninguna','numerico'),(2899,23,182,56,23,'0','ninguna','numerico'),(2900,23,182,57,23,'0','ninguna','numerico'),(2901,23,182,58,23,'0','ninguna','numerico'),(2902,23,182,59,23,'0','ninguna','numerico'),(2903,23,182,60,23,'0','ninguna','numerico'),(2904,23,182,61,23,'0','ninguna','numerico'),(2905,23,182,62,23,'0','ninguna','numerico'),(2906,23,182,63,23,'0','ninguna','numerico'),(2907,23,182,64,23,'0','ninguna','numerico'),(2908,23,182,65,23,'0','ninguna','numerico'),(2909,23,182,66,23,'0','ninguna','numerico'),(2910,23,182,67,23,'0','ninguna','numerico'),(2911,23,182,68,23,'0','ninguna','numerico'),(2912,23,182,69,23,'0','ninguna','numerico'),(2913,23,182,70,23,'2,225','ninguna','numerico'),(2914,23,182,71,23,'0','ninguna','numerico'),(2915,23,182,72,23,'0','ninguna','numerico'),(2916,23,182,73,23,'0','ninguna','numerico'),(2917,23,182,74,23,'0','ninguna','numerico'),(2918,23,182,75,23,'0','ninguna','numerico'),(2919,23,182,76,23,'0','ninguna','numerico'),(2920,23,182,77,23,'0','ninguna','numerico'),(2921,23,182,78,23,'0','ninguna','numerico'),(2922,23,182,79,23,'2,267','ninguna','numerico'),(2923,23,182,80,23,'0','ninguna','numerico'),(2924,23,182,81,23,'0','ninguna','numerico'),(2925,23,182,82,23,'0','ninguna','numerico'),(2926,23,182,83,23,'0','ninguna','numerico'),(2927,23,182,84,23,'5,443','ninguna','numerico'),(2928,23,182,85,23,'0','ninguna','numerico'),(2929,23,182,86,23,'0','ninguna','numerico'),(2930,23,182,87,23,'0','ninguna','numerico'),(2931,23,182,88,23,'0','ninguna','numerico'),(2932,23,182,89,23,'2740','ninguna','numerico'),(2933,23,182,90,23,'0','ninguna','numerico'),(2934,23,182,91,23,'0','ninguna','numerico'),(2935,23,182,92,23,'0','ninguna','numerico'),(2936,23,182,93,23,'0','ninguna','numerico'),(2937,23,182,94,23,'0','ninguna','numerico'),(2938,23,182,95,23,'0','ninguna','numerico'),(2939,23,182,96,23,'0','ninguna','numerico'),(2940,23,182,97,23,'0','ninguna','numerico'),(2941,23,182,98,23,'0','ninguna','numerico'),(2942,23,182,99,23,'0','ninguna','numerico'),(2943,23,182,100,23,'0','ninguna','numerico'),(2944,23,182,101,23,'0','ninguna','numerico'),(2945,23,182,102,23,'0','ninguna','numerico'),(2946,23,182,103,23,'0','ninguna','numerico'),(2947,23,182,104,23,'0','ninguna','numerico'),(2948,23,182,105,23,'0','ninguna','numerico'),(2949,23,182,106,23,'2350','ninguna','numerico'),(2950,23,182,107,23,'0','ninguna','numerico'),(2951,23,182,108,23,'0','ninguna','numerico'),(2952,23,182,109,23,'0','ninguna','numerico'),(2953,23,182,110,23,'0','ninguna','numerico'),(2954,23,182,111,23,'0','ninguna','numerico'),(2955,23,182,112,23,'0','ninguna','numerico'),(2956,23,182,113,23,'0','ninguna','numerico'),(2957,23,182,114,23,'6620','ninguna','numerico'),(2958,23,182,115,23,'0','ninguna','numerico'),(2959,23,182,116,23,'0','ninguna','numerico'),(2960,23,182,117,23,'0','ninguna','numerico'),(2961,23,182,118,23,'0','ninguna','numerico'),(2962,23,182,119,23,'0','ninguna','numerico'),(2963,23,182,120,23,'4220','ninguna','numerico'),(2964,23,182,121,23,'0','ninguna','numerico'),(2965,23,182,123,23,'14501,6907428571','ninguna','numerico'),(2966,23,182,131,23,'16696,0255263158','ninguna','numerico'),(2967,23,182,134,23,'1310969,62430148','ninguna','numerico'),(2968,23,182,135,23,'1310969,62430148','ninguna','numerico'),(2969,23,182,136,23,'332527,820163469','ninguna','numerico'),(2970,23,182,137,23,'0,267802974536649','ninguna','numerico'),(2971,23,182,138,23,'0,150665354793991','ninguna','numerico'),(2972,23,182,139,23,'1,12077037490783','ninguna','numerico'),(2973,21,183,1,21,'2','ninguna','numerico'),(2974,21,183,2,21,'2','ninguna','numerico'),(2975,21,183,3,21,'2','ninguna','numerico'),(2976,21,183,4,21,'2','ninguna','numerico'),(2977,21,183,5,21,'2','ninguna','numerico'),(2978,21,183,6,21,'2','ninguna','numerico'),(2979,21,183,7,21,'2','ninguna','numerico'),(2980,21,183,8,21,'2','ninguna','numerico'),(2981,21,183,9,21,'74','ninguna','numerico-estatico'),(2982,21,183,10,21,'87','ninguna','numerico-estatico'),(2983,21,183,12,21,'0','ninguna','numerico'),(2984,21,183,13,21,'0','ninguna','numerico'),(2985,21,183,14,21,'0','ninguna','numerico'),(2986,21,183,15,21,'0','ninguna','numerico'),(2987,21,183,16,21,'0','ninguna','numerico'),(2988,21,183,17,21,'0','ninguna','numerico'),(2989,21,183,18,21,'0','ninguna','numerico'),(2990,21,183,19,21,'0','ninguna','numerico'),(2991,21,183,20,21,'0','ninguna','numerico'),(2992,21,183,21,21,'0','ninguna','numerico'),(2993,21,183,22,21,'0','ninguna','numerico'),(2994,21,183,23,21,'0','ninguna','numerico'),(2995,21,183,24,21,'0','ninguna','numerico'),(2996,21,183,25,21,'0','ninguna','numerico'),(2997,21,183,26,21,'0','ninguna','numerico'),(2998,21,183,27,21,'0','ninguna','numerico'),(2999,21,183,28,21,'0','ninguna','numerico'),(3000,21,183,29,21,'0','ninguna','numerico'),(3001,21,183,30,21,'0','ninguna','numerico'),(3002,21,183,31,21,'0','ninguna','numerico'),(3003,21,183,32,21,'0','ninguna','numerico'),(3004,21,183,33,21,'0','ninguna','numerico'),(3005,21,183,34,21,'0','ninguna','numerico'),(3006,21,183,35,21,'0','ninguna','numerico'),(3007,21,183,36,21,'0','ninguna','numerico'),(3008,21,183,37,21,'0','ninguna','numerico'),(3009,21,183,38,21,'0','ninguna','numerico'),(3010,21,183,39,21,'0','ninguna','numerico'),(3011,21,183,40,21,'0','ninguna','numerico'),(3012,21,183,41,21,'0','ninguna','numerico'),(3013,21,183,42,21,'0','ninguna','numerico'),(3014,21,183,43,21,'0','ninguna','numerico'),(3015,21,183,44,21,'0','ninguna','numerico'),(3016,21,183,45,21,'0','ninguna','numerico'),(3017,21,183,46,21,'0','ninguna','numerico'),(3018,21,183,47,21,'0','ninguna','numerico'),(3019,21,183,48,21,'0','ninguna','numerico'),(3020,21,183,49,21,'0','ninguna','numerico'),(3021,21,183,50,21,'0','ninguna','numerico'),(3022,21,183,51,21,'0','ninguna','numerico'),(3023,21,183,52,21,'0','ninguna','numerico'),(3024,21,183,53,21,'0','ninguna','numerico'),(3025,21,183,54,21,'0','ninguna','numerico'),(3026,21,183,55,21,'0','ninguna','numerico'),(3027,21,183,56,21,'0','ninguna','numerico'),(3028,21,183,57,21,'0','ninguna','numerico'),(3029,21,183,58,21,'0','ninguna','numerico'),(3030,21,183,59,21,'0','ninguna','numerico'),(3031,21,183,60,21,'0','ninguna','numerico'),(3032,21,183,61,21,'0','ninguna','numerico'),(3033,21,183,62,21,'0','ninguna','numerico'),(3034,21,183,63,21,'0','ninguna','numerico'),(3035,21,183,64,21,'0','ninguna','numerico'),(3036,21,183,65,21,'0','ninguna','numerico'),(3037,21,183,66,21,'0','ninguna','numerico'),(3038,21,183,67,21,'0','ninguna','numerico'),(3039,21,183,68,21,'0','ninguna','numerico'),(3040,21,183,69,21,'0','ninguna','numerico'),(3041,21,183,70,21,'0','ninguna','numerico'),(3042,21,183,71,21,'0','ninguna','numerico'),(3043,21,183,72,21,'0','ninguna','numerico'),(3044,21,183,73,21,'0','ninguna','numerico'),(3045,21,183,74,21,'0','ninguna','numerico'),(3046,21,183,75,21,'0','ninguna','numerico'),(3047,21,183,76,21,'0','ninguna','numerico'),(3048,21,183,77,21,'0','ninguna','numerico'),(3049,21,183,78,21,'0','ninguna','numerico'),(3050,21,183,79,21,'0','ninguna','numerico'),(3051,21,183,80,21,'0','ninguna','numerico'),(3052,21,183,81,21,'0','ninguna','numerico'),(3053,21,183,82,21,'0','ninguna','numerico'),(3054,21,183,83,21,'0','ninguna','numerico'),(3055,21,183,84,21,'0','ninguna','numerico'),(3056,21,183,85,21,'0','ninguna','numerico'),(3057,21,183,86,21,'0','ninguna','numerico'),(3058,21,183,87,21,'0','ninguna','numerico'),(3059,21,183,88,21,'0','ninguna','numerico'),(3060,21,183,89,21,'0','ninguna','numerico'),(3061,21,183,90,21,'0','ninguna','numerico'),(3062,21,183,91,21,'0','ninguna','numerico'),(3063,21,183,92,21,'0','ninguna','numerico'),(3064,21,183,93,21,'0','ninguna','numerico'),(3065,21,183,94,21,'0','ninguna','numerico'),(3066,21,183,95,21,'0','ninguna','numerico'),(3067,21,183,96,21,'0','ninguna','numerico'),(3068,21,183,97,21,'0','ninguna','numerico'),(3069,21,183,98,21,'0','ninguna','numerico'),(3070,21,183,99,21,'0','ninguna','numerico'),(3071,21,183,100,21,'0','ninguna','numerico'),(3072,21,183,101,21,'0','ninguna','numerico'),(3073,21,183,102,21,'0','ninguna','numerico'),(3074,21,183,103,21,'0','ninguna','numerico'),(3075,21,183,104,21,'0','ninguna','numerico'),(3076,21,183,105,21,'0','ninguna','numerico'),(3077,21,183,106,21,'1750','ninguna','numerico'),(3078,21,183,107,21,'0','ninguna','numerico'),(3079,21,183,108,21,'0','ninguna','numerico'),(3080,21,183,109,21,'0','ninguna','numerico'),(3081,21,183,110,21,'0','ninguna','numerico'),(3082,21,183,111,21,'6880','ninguna','numerico'),(3083,21,183,112,21,'0','ninguna','numerico'),(3084,21,183,113,21,'0','ninguna','numerico'),(3085,21,183,114,21,'0','ninguna','numerico'),(3086,21,183,115,21,'0','ninguna','numerico'),(3087,21,183,116,21,'0','ninguna','numerico'),(3088,21,183,117,21,'0','ninguna','numerico'),(3089,21,183,118,21,'0','ninguna','numerico'),(3090,21,183,119,21,'1480','ninguna','numerico'),(3091,21,183,120,21,'0','ninguna','numerico'),(3092,21,183,121,21,'250','ninguna','numerico'),(3093,24,184,2,24,'1','ninguna','numerico'),(3094,24,184,3,24,'1','ninguna','numerico'),(3095,24,184,4,24,'2','ninguna','numerico'),(3096,24,184,5,24,'2','ninguna','numerico'),(3097,24,184,6,24,'2','ninguna','numerico'),(3098,24,184,7,24,'2','ninguna','numerico'),(3099,24,184,8,24,'2','ninguna','numerico'),(3100,24,184,9,24,'29','ninguna','numerico-estatico'),(3101,24,184,10,24,'78','ninguna','numerico-estatico'),(3102,24,184,12,24,'0','ninguna','numerico'),(3103,24,184,13,24,'0','ninguna','numerico'),(3104,24,184,14,24,'0','ninguna','numerico'),(3105,24,184,16,24,'0','ninguna','numerico'),(3106,24,184,17,24,'0','ninguna','numerico'),(3107,24,184,18,24,'0','ninguna','numerico'),(3108,24,184,19,24,'0','ninguna','numerico'),(3109,24,184,20,24,'0','ninguna','numerico'),(3110,24,184,21,24,'0','ninguna','numerico'),(3111,24,184,22,24,'0','ninguna','numerico'),(3112,24,184,23,24,'0','ninguna','numerico'),(3113,24,184,24,24,'0','ninguna','numerico'),(3114,24,184,25,24,'0','ninguna','numerico'),(3115,24,184,26,24,'0','ninguna','numerico'),(3116,24,184,27,24,'0','ninguna','numerico'),(3117,24,184,28,24,'0','ninguna','numerico'),(3118,24,184,29,24,'0','ninguna','numerico'),(3119,24,184,30,24,'0','ninguna','numerico'),(3120,24,184,31,24,'0','ninguna','numerico'),(3121,24,184,32,24,'0','ninguna','numerico'),(3122,24,184,33,24,'23','ninguna','numerico'),(3123,24,184,34,24,'0','ninguna','numerico'),(3124,24,184,35,24,'0','ninguna','numerico'),(3125,24,184,36,24,'0','ninguna','numerico'),(3126,24,184,37,24,'0','ninguna','numerico'),(3127,24,184,38,24,'0','ninguna','numerico'),(3128,24,184,39,24,'0','ninguna','numerico'),(3129,24,184,40,24,'0','ninguna','numerico'),(3130,24,184,41,24,'0','ninguna','numerico'),(3131,24,184,42,24,'66','ninguna','numerico'),(3132,24,184,43,24,'0','ninguna','numerico'),(3133,24,184,44,24,'0','ninguna','numerico'),(3134,24,184,45,24,'0','ninguna','numerico'),(3135,24,184,46,24,'0','ninguna','numerico'),(3136,24,184,47,24,'0','ninguna','numerico'),(3137,24,184,48,24,'45','ninguna','numerico'),(3138,24,184,49,24,'0','ninguna','numerico'),(3139,24,184,50,24,'0','ninguna','numerico'),(3140,24,184,51,24,'0','ninguna','numerico'),(3141,24,184,52,24,'0','ninguna','numerico'),(3142,24,184,53,24,'21','ninguna','numerico'),(3143,24,184,54,24,'0','ninguna','numerico'),(3144,24,184,55,24,'0','ninguna','numerico'),(3145,24,184,56,24,'0','ninguna','numerico'),(3146,24,184,57,24,'0','ninguna','numerico'),(3147,24,184,58,24,'0','ninguna','numerico'),(3148,24,184,59,24,'0','ninguna','numerico'),(3149,24,184,60,24,'0','ninguna','numerico'),(3150,24,184,61,24,'0','ninguna','numerico'),(3151,24,184,62,24,'0','ninguna','numerico'),(3152,24,184,63,24,'0','ninguna','numerico'),(3153,24,184,64,24,'0','ninguna','numerico'),(3154,24,184,65,24,'0','ninguna','numerico'),(3155,24,184,66,24,'0','ninguna','numerico'),(3156,24,184,67,24,'0','ninguna','numerico'),(3157,24,184,68,24,'0','ninguna','numerico'),(3158,24,184,69,24,'0','ninguna','numerico'),(3159,24,184,70,24,'3,06','ninguna','numerico'),(3160,24,184,71,24,'0','ninguna','numerico'),(3161,24,184,72,24,'0','ninguna','numerico'),(3162,24,184,73,24,'0','ninguna','numerico'),(3163,24,184,74,24,'0','ninguna','numerico'),(3164,24,184,75,24,'0','ninguna','numerico'),(3165,24,184,76,24,'0','ninguna','numerico'),(3166,24,184,77,24,'0','ninguna','numerico'),(3167,24,184,78,24,'0','ninguna','numerico'),(3168,24,184,79,24,'60','ninguna','numerico'),(3169,24,184,80,24,'0','ninguna','numerico'),(3170,24,184,81,24,'0','ninguna','numerico'),(3171,24,184,82,24,'0','ninguna','numerico'),(3172,24,184,83,24,'0','ninguna','numerico'),(3173,24,184,84,24,'122','ninguna','numerico'),(3174,24,184,85,24,'0','ninguna','numerico'),(3175,24,184,86,24,'0','ninguna','numerico'),(3176,24,184,87,24,'0','ninguna','numerico'),(3177,24,184,88,24,'0','ninguna','numerico'),(3178,24,184,89,24,'2100','ninguna','numerico'),(3179,24,184,90,24,'0','ninguna','numerico'),(3180,24,184,91,24,'0','ninguna','numerico'),(3181,24,184,92,24,'0','ninguna','numerico'),(3182,24,184,93,24,'0','ninguna','numerico'),(3183,24,184,94,24,'0','ninguna','numerico'),(3184,24,184,95,24,'0','ninguna','numerico'),(3185,24,184,96,24,'0','ninguna','numerico'),(3186,24,184,97,24,'0','ninguna','numerico'),(3187,24,184,98,24,'0','ninguna','numerico'),(3188,24,184,99,24,'0','ninguna','numerico'),(3189,24,184,100,24,'0','ninguna','numerico'),(3190,24,184,101,24,'1190','ninguna','numerico'),(3191,24,184,102,24,'0','ninguna','numerico'),(3192,24,184,103,24,'0','ninguna','numerico'),(3193,24,184,104,24,'0','ninguna','numerico'),(3194,24,184,105,24,'0','ninguna','numerico'),(3195,24,184,106,24,'8750','ninguna','numerico'),(3196,24,184,107,24,'0','ninguna','numerico'),(3197,24,184,108,24,'0','ninguna','numerico'),(3198,24,184,109,24,'0','ninguna','numerico'),(3199,24,184,110,24,'0','ninguna','numerico'),(3200,24,184,111,24,'0','ninguna','numerico'),(3201,24,184,112,24,'0','ninguna','numerico'),(3202,24,184,113,24,'0','ninguna','numerico'),(3203,24,184,114,24,'6620','ninguna','numerico'),(3204,24,184,115,24,'0','ninguna','numerico'),(3205,24,184,116,24,'0','ninguna','numerico'),(3206,24,184,117,24,'0','ninguna','numerico'),(3207,24,184,118,24,'0','ninguna','numerico'),(3208,24,184,119,24,'0','ninguna','numerico'),(3209,24,184,120,24,'3380','ninguna','numerico'),(3210,24,184,121,24,'0','ninguna','numerico'),(3211,24,184,123,24,'6716,41905684755','ninguna','numerico'),(3212,24,184,125,24,'624','ninguna','numerico'),(3213,24,184,126,24,'1, 2','ninguna','cadena'),(3214,24,184,127,24,'9120,1900877193','ninguna','numerico'),(3215,24,184,134,24,'-74947,4958786827','ninguna','numerico'),(3216,24,184,135,24,'-74947,4958786827','ninguna','numerico'),(3217,24,184,136,24,'182738,72016456','ninguna','numerico'),(3218,24,184,137,24,'0,117313939189866','ninguna','numerico'),(3219,24,184,138,24,'0,153923018049612','ninguna','numerico'),(3220,24,184,139,24,'1,12178813886017','ninguna','numerico'),(3221,26,1,1,26,'12','1212','dd'),(3222,26,1,2,26,'2','vcv','dd'),(3223,26,1,1,27,'3','dfdf','dd'),(3224,26,1,2,27,'4','bvb','dd'),(3225,26,1,1,28,'45','defd','dd'),(3226,26,1,6,28,'1','ff','dd'),(3227,26,1,12,29,'1','','dd'),(3228,26,1,8,29,'2','ss','dd'),(3229,26,1,1,30,'1','aa','dd'),(3230,26,1,2,30,'2','qq','dd'),(3231,26,1,10,30,'2','ww','dd'),(3232,26,1,126,26,'1,2,3','indicador estatico','dd'),(3233,26,1,126,30,'1','','dd'),(3234,1,13,5,31,'545','dfg','dd'),(3235,1,13,5,32,'343','df','dd');
/*!40000 ALTER TABLE `t_indicador_valor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_lac_estacion_adjudicacion`
--

DROP TABLE IF EXISTS `t_lac_estacion_adjudicacion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_lac_estacion_adjudicacion` (
  `lac_adjudicacion_id` int(10) NOT NULL AUTO_INCREMENT,
  `licitacion_adjudicacion_contratacion_id` int(10) DEFAULT NULL,
  `lac_adj_proy_id` int(10) DEFAULT NULL,
  `lac_adj_estacion_id` int(10) DEFAULT NULL,
  `lac_adj_tipo_estacion_id` int(10) DEFAULT NULL,
  `lac_adj_boleta_seriedad` varchar(300) COLLATE utf8_spanish_ci DEFAULT NULL,
  `lac_adj_fecha_propuestas` date DEFAULT NULL,
  `lac_adj_fecha_recomendacion` date DEFAULT NULL,
  `lac_adj_fecha_no_objecion` date DEFAULT NULL,
  `lac_adj_fecha_inicio` date DEFAULT NULL,
  `lac_adj_fecha_finalizacion` date DEFAULT NULL,
  `lac_adj_tiempo_duracion` varchar(30) COLLATE utf8_spanish_ci DEFAULT NULL,
  `lac_adj_fecha_programada_fin` date DEFAULT NULL,
  `lac_adj_observacion` varchar(800) COLLATE utf8_spanish_ci DEFAULT NULL,
  `lac_adj_tipo_proy` varchar(20) COLLATE utf8_spanish_ci DEFAULT NULL,
  PRIMARY KEY (`lac_adjudicacion_id`),
  KEY `fk_lac_a_lac` (`licitacion_adjudicacion_contratacion_id`),
  KEY `fk_lac_a_proy` (`lac_adj_proy_id`),
  KEY `fk_lac_a_estacion` (`lac_adj_estacion_id`),
  KEY `fk_lac-a_tipo_estacion` (`lac_adj_tipo_estacion_id`),
  CONSTRAINT `fk_lac_a_estacion` FOREIGN KEY (`lac_adj_estacion_id`) REFERENCES `t_licitacion_adjudicacion_cotratacion_proyecto_estacion` (`lac_estacion_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_lac_a_lac` FOREIGN KEY (`licitacion_adjudicacion_contratacion_id`) REFERENCES `t_licitacion_adjudicacion_contratacion_proyecto` (`lac_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_lac_a_proy` FOREIGN KEY (`lac_adj_proy_id`) REFERENCES `t_proyecto` (`proyecto_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=235 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_lac_estacion_adjudicacion`
--

LOCK TABLES `t_lac_estacion_adjudicacion` WRITE;
/*!40000 ALTER TABLE `t_lac_estacion_adjudicacion` DISABLE KEYS */;
INSERT INTO `t_lac_estacion_adjudicacion` VALUES (1,1,1,1,1,'1',NULL,NULL,NULL,'2014-12-01','2014-12-02','2','2014-12-03','ert','INVERSION'),(5,5,5,5,1,'','0000-00-00','0000-00-00','0000-00-00','0000-00-00','0000-00-00','0','0000-00-00','','INVERSION'),(9,9,9,9,1,'','0000-00-00','0000-00-00','0000-00-00','0000-00-00','0000-00-00','0','0000-00-00','','INVERSION'),(13,13,13,13,1,'FORTALEZA SEGUROS Y REASEGUROS  Nº 56455 por Bs.350 de fecha 8/3/2013','2013-03-12','2013-03-15','2013-03-18','2012-11-19','2013-03-21','123','2013-03-21','','INVERSION'),(16,16,16,16,1,'Banco Nacional de Bolivia Nº0075575 de 25/4/2013 por Bs.22.000','2013-04-30','2013-05-02',NULL,'2013-04-12','2013-05-02','21','2013-05-02','','INVERSION'),(22,22,22,22,1,'BANCO BISA S.A. BG-005932-0400','2012-11-29','2012-08-03','2012-08-07','2012-10-19','2012-12-07','50','2012-12-07','','INVERSION'),(24,24,24,24,1,'','0000-00-00','0000-00-00','0000-00-00','0000-00-00','0000-00-00','0','0000-00-00','','INVERSION'),(26,26,26,26,1,'','0000-00-00','0000-00-00','0000-00-00','0000-00-00','0000-00-00','0','0000-00-00','','INVERSION'),(27,27,27,27,1,'','0000-00-00','0000-00-00','0000-00-00','0000-00-00','0000-00-00','0','0000-00-00','','INVERSION'),(28,28,28,28,1,'','0000-00-00','0000-00-00','0000-00-00','0000-00-00','0000-00-00','0','0000-00-00','','INVERSION'),(29,29,29,29,1,'','0000-00-00','0000-00-00','0000-00-00','0000-00-00','0000-00-00','0','0000-00-00','','INVERSION'),(30,30,30,30,1,'','0000-00-00','0000-00-00','0000-00-00','0000-00-00','0000-00-00','0','0000-00-00','','INVERSION'),(31,31,31,31,1,'','0000-00-00','0000-00-00','0000-00-00','0000-00-00','0000-00-00','0','0000-00-00','','INVERSION'),(33,33,33,33,1,'','0000-00-00','0000-00-00','0000-00-00','0000-00-00','0000-00-00','0','0000-00-00','','INVERSION'),(35,35,35,35,1,'NO APLICA','2013-12-06','2013-12-06','2014-01-30','2012-10-31','2014-01-30','457','2014-01-30','','INVERSION'),(37,37,37,37,1,'','0000-00-00','0000-00-00','0000-00-00','0000-00-00','0000-00-00','0','0000-00-00','','INVERSION'),(39,39,39,39,1,'','0000-00-00','0000-00-00','0000-00-00','0000-00-00','0000-00-00','0','0000-00-00','','INVERSION'),(41,41,41,41,1,'','0000-00-00','0000-00-00','0000-00-00','0000-00-00','0000-00-00','0','0000-00-00','','INVERSION'),(43,43,43,43,1,'','0000-00-00','0000-00-00','0000-00-00','0000-00-00','0000-00-00','0','0000-00-00','','INVERSION'),(46,46,46,46,1,'','0000-00-00','0000-00-00','0000-00-00','0000-00-00','0000-00-00','0','0000-00-00','','INVERSION'),(53,53,53,53,1,'','0000-00-00','0000-00-00','0000-00-00','0000-00-00','0000-00-00','0','0000-00-00','','INVERSION'),(56,56,56,56,1,'','0000-00-00','0000-00-00','0000-00-00','0000-00-00','0000-00-00','0','0000-00-00','','INVERSION'),(59,59,59,59,1,'','0000-00-00','0000-00-00','0000-00-00','0000-00-00','0000-00-00','0','0000-00-00','','INVERSION'),(62,62,62,62,1,'','0000-00-00','0000-00-00','0000-00-00','0000-00-00','0000-00-00','0','0000-00-00','','INVERSION'),(64,64,64,64,1,'NO APLICA','2012-12-20','2012-12-24','2012-12-26','2012-08-28','2012-12-28','123','2012-12-28','','INVERSION'),(68,68,68,68,1,'','0000-00-00','0000-00-00','0000-00-00','0000-00-00','0000-00-00','0','0000-00-00','','INVERSION'),(70,70,70,186,1,'BG N°D301-18633 Bs.17.450.20 BANCO DE CRÉDITO','2012-08-10','2012-08-10','2012-10-15','2012-09-12','2012-10-11','30','2012-10-11','','INVERSION'),(73,73,73,73,1,'','0000-00-00','0000-00-00','0000-00-00','0000-00-00','0000-00-00','0','0000-00-00','','INVERSION'),(75,75,75,75,1,'','0000-00-00','0000-00-00','0000-00-00','0000-00-00','0000-00-00','0','0000-00-00','','INVERSION'),(77,77,77,77,1,'','0000-00-00','0000-00-00','0000-00-00','0000-00-00','0000-00-00','0','0000-00-00','','INVERSION'),(79,79,79,79,1,'','0000-00-00','0000-00-00','0000-00-00','0000-00-00','0000-00-00','0','0000-00-00','','INVERSION'),(81,81,81,81,1,'','0000-00-00','0000-00-00','0000-00-00','0000-00-00','0000-00-00','0','0000-00-00','','INVERSION'),(84,84,84,84,1,'','0000-00-00','0000-00-00','0000-00-00','0000-00-00','0000-00-00','0','0000-00-00','','INVERSION'),(87,87,87,87,1,'','0000-00-00','0000-00-00','0000-00-00','0000-00-00','0000-00-00','0','0000-00-00','','INVERSION'),(90,90,90,90,1,'NO APLICA','2012-07-31','2012-08-21','2012-08-21','2012-06-22','2012-09-11','82','2012-09-11','','INVERSION'),(93,93,93,93,1,'','0000-00-00','0000-00-00','0000-00-00','0000-00-00','0000-00-00','0','0000-00-00','','INVERSION'),(97,97,97,97,1,'','0000-00-00','0000-00-00','0000-00-00','0000-00-00','0000-00-00','0','0000-00-00','','INVERSION'),(99,99,99,99,1,'','0000-00-00','0000-00-00','0000-00-00','0000-00-00','0000-00-00','0','0000-00-00','','INVERSION'),(102,102,102,102,1,'','0000-00-00','0000-00-00','0000-00-00','0000-00-00','0000-00-00','0','0000-00-00','','INVERSION'),(104,104,104,104,1,'','0000-00-00','0000-00-00','0000-00-00','0000-00-00','0000-00-00','0','0000-00-00','','INVERSION'),(106,106,106,106,1,'s','2012-10-16','2012-10-25','2012-10-25','2012-09-27','2012-10-29','33','2012-10-29','','INVERSION'),(108,108,108,108,1,'','0000-00-00','0000-00-00','0000-00-00','0000-00-00','0000-00-00','0','0000-00-00','','INVERSION'),(110,110,110,110,1,'BANCO LOS ANDES N°02101965639 Bs.10.290','2012-10-30','2012-05-11','2012-07-11','2012-10-04','2012-11-20','48','2012-11-20','','INVERSION'),(112,112,112,112,1,'Latina de Seguros NºSP2-CB-00492-00-2012','2012-10-18','2012-10-19','2012-10-29','2012-10-03','2012-10-29','27','2012-10-29','','INVERSION'),(115,115,115,115,1,'BANCO BISA Nº BG-018962-0300','2012-12-05','2012-12-05','2012-12-21','2012-10-12','2012-12-12','62','2012-12-12','','INVERSION'),(118,118,118,118,1,'','0000-00-00','0000-00-00','0000-00-00','0000-00-00','0000-00-00','0','0000-00-00','','INVERSION'),(121,121,121,121,1,'BG-018918-0300 BANCO BISA','2012-11-22','2012-11-22','2012-11-29','2012-11-08','2012-12-03','26','2012-12-03','','INVERSION'),(122,122,122,122,1,'BG-018918-0300 BANCO BISA','2012-07-04','2012-07-04','2012-07-09','2012-06-22','2012-07-27','36','2012-07-27','','INVERSION'),(125,125,125,125,1,'','0000-00-00','0000-00-00','0000-00-00','0000-00-00','0000-00-00','0','0000-00-00','','INVERSION'),(127,127,127,127,1,'Latina Seguros N°SP2-CB-00464-00-2012 (94 días)','2012-09-17','2012-09-20','2012-09-21','2012-07-11','2012-10-29','111','2012-10-29','cite: GAMP/N°409/2012','INVERSION'),(130,130,130,130,1,'','0000-00-00','0000-00-00','0000-00-00','0000-00-00','0000-00-00','0','0000-00-00','','INVERSION'),(133,133,133,133,1,'','0000-00-00','0000-00-00','0000-00-00','0000-00-00','0000-00-00','0','0000-00-00','','INVERSION'),(136,136,136,136,1,'PRODEM Nº17626','2012-08-13','2012-09-20','2012-09-21','2012-06-14','2012-09-21','100','2012-09-21','','INVERSION'),(137,137,137,137,1,'','0000-00-00','0000-00-00','0000-00-00','0000-00-00','0000-00-00','0','0000-00-00','','INVERSION'),(140,140,140,140,1,'','0000-00-00','0000-00-00','0000-00-00','0000-00-00','0000-00-00','0','0000-00-00','','INVERSION'),(143,143,143,143,1,'NO APLICA','2013-09-04','2013-09-13','2013-09-13','2013-09-04','2013-09-13','10','2013-09-13','','INVERSION'),(146,146,146,146,1,'','0000-00-00','0000-00-00','0000-00-00','0000-00-00','0000-00-00','0','0000-00-00','','INVERSION'),(152,152,152,152,1,'','0000-00-00','0000-00-00','0000-00-00','0000-00-00','0000-00-00','0','0000-00-00','','INVERSION'),(154,154,154,154,1,'','0000-00-00','0000-00-00','0000-00-00','0000-00-00','0000-00-00','0','0000-00-00','','INVERSION'),(167,167,167,167,1,'BGN-1000074535      Bs.19.900,00    BANCO MERCANTIL SANTA CRUZ S.A.','2013-01-28','2013-04-02','2013-04-02','2013-01-04','2013-02-22','50','2013-02-22','','INVERSION'),(169,169,169,169,1,'SP2-SC-01614-00-2013      Bs.21.264,75     LATINA SEGUROS PATRIMONIALES S.A.','2013-01-21','2013-01-25','2013-01-25','2012-12-28','2013-01-25','29','2013-01-25','','INVERSION'),(180,180,180,180,1,'','0000-00-00','0000-00-00','0000-00-00','0000-00-00','0000-00-00','0','0000-00-00','','INVERSION'),(182,182,182,182,1,'PRP-B03081  Bs.19.200,00 SEGUROS Y REASEGUROS CREDINFORM INTERNATIONAL S.A.','2012-12-14','2012-12-31','2012-12-31','2012-11-19','2012-12-31','43','2012-12-31','','INVERSION'),(186,70,70,187,3,'n/a','2012-08-10','2012-08-10','2012-10-15','2012-09-12','2012-10-11','30','2012-10-11','','INVERSION'),(190,1,1,279,1,'1','2014-03-01','2014-03-02','2014-03-03','2014-03-04','2014-03-05','11','2014-03-06','sddfdf','INVERSION'),(200,1,1,282,1,'ddd','2014-03-09','2014-03-10','2014-03-11','2014-03-12','2014-03-13','111','2014-03-14','vcxv','INVERSION'),(201,1,1,280,2,'dfdf','2014-03-02','2014-03-03','2014-03-04','2014-03-05','2014-03-06','11ddd','2014-03-07','dfdf','INVERSION'),(203,22,22,289,3,'NO APLICA','2013-07-12','2012-04-19','2013-04-19','2012-12-03','2013-04-19','138','2013-04-19','','INVERSION'),(204,16,16,290,3,'NO APLICA','2013-04-26','2013-04-29',NULL,'2013-04-18','2013-04-30','13','2013-04-30','','INVERSION'),(205,16,16,291,4,'NO APLICA','2013-04-26','2013-04-29',NULL,'2013-04-18','2013-05-02','15','2013-05-02','','INVERSION'),(206,13,13,292,3,'NO APLICA','2013-03-28','2013-04-05','2013-04-09','2013-03-05','2013-04-10','37','2013-04-10','','INVERSION'),(207,13,13,293,4,'NO APLICA','2013-04-05','2013-04-08','2013-04-08','2013-02-19','2013-04-10','51','2013-04-10','','INVERSION'),(208,110,110,294,3,'NO APLICA','2013-01-24','2013-01-24','2013-01-28','2012-10-30','2013-02-06','100','2013-02-06','','INVERSION'),(209,121,121,295,3,'NO APLICA','2012-11-15','2012-11-19','2012-11-23','2012-11-08','2012-11-28','21','2012-11-28','','INVERSION'),(210,122,122,296,3,'NO APLICA','2012-07-27','2012-07-27','2012-08-01','2012-06-22','2012-08-03','43','2012-08-03','Error en el informe de la consultora del FPS, menciona 3 proponentes y son 4','INVERSION'),(211,122,122,297,4,'NO APLICA','2012-06-29','2012-07-20','2012-07-20','2012-06-22','2012-07-24','33','2012-07-24','','INVERSION'),(212,115,115,298,3,'NO APLICA','2012-11-29','2012-11-29','2012-12-03','2012-11-23','2012-12-03','11','2012-12-03','','INVERSION'),(213,115,115,299,4,'NO APLICA','2012-11-29','2012-11-29','2012-12-03','2012-11-23','2012-12-03','11','2012-12-03','','INVERSION'),(214,112,112,300,3,'NO APLICA','2012-11-06','2012-11-07','2013-01-28','2012-10-04','2012-11-23','51','2012-11-23','','INVERSION'),(215,112,112,301,4,'NO APLICA','2012-12-06','2012-12-07','2012-12-11','2012-10-05','2012-12-12','69','2012-12-12','','INVERSION'),(216,64,64,303,3,'NO APLICA','2012-09-04','2012-09-12','2012-10-01','2012-08-28','2012-09-12','16','2012-09-12','','INVERSION'),(217,64,64,304,4,'NO APLICA','2012-09-04','2012-09-12','2012-10-01','2012-06-18','2012-08-27','71','2012-08-27','','INVERSION'),(218,90,90,305,3,'NO APLICA','2012-08-20','2012-08-22','2012-09-04','2012-06-07','2012-09-11','97','2012-09-11','','INVERSION'),(219,136,136,307,3,'NO APLICA','2012-06-26','2012-06-27','2012-07-02','2012-06-14','2012-07-24','41','2012-07-24','','INVERSION'),(220,127,127,308,3,'NO APLICA','2012-09-17','2012-09-18','2012-09-28','2012-07-11','2012-12-03','146','2012-12-03','','INVERSION'),(221,127,127,309,4,'NO APLICA','2012-08-20','2012-08-22','2012-09-07','2012-08-13','2012-12-03','113','2012-12-03','','INVERSION'),(222,167,167,311,4,'NO APLICA','2013-02-01','2013-02-06','2013-02-06','2013-01-21','2013-02-06','17','2013-02-06','','INVERSION'),(223,184,183,312,1,'BGN-1000074535      Bs.19.900,00    BANCO MERCANTIL SANTA CRUZ S.A.','2013-01-28','2013-04-02','2013-04-02','2013-01-04','2013-02-22','50','2013-02-22','','INVERSION'),(224,184,183,313,3,'NO APLICA','2013-02-01','2013-02-06','2013-02-06','2013-01-21','2013-02-06','17','2013-02-06','','INVERSION'),(225,182,182,314,3,'NO APLICA','2013-01-31','2013-02-04','2013-02-04','2013-01-18','2013-02-05','19','2013-02-05','','INVERSION'),(226,169,169,315,3,'NO APLICA','2013-02-01','2013-02-06','2013-02-06','2013-01-21','2013-02-06','17','2013-02-06','','INVERSION'),(228,183,184,287,3,'NO APLICA','2013-04-12','2013-04-30','2013-05-03','2013-04-08','2013-05-03','26','2013-05-03','','INVERSION'),(229,156,156,318,3,'NO APLICA','2012-08-24','2012-08-24','2012-08-29','2012-08-08','2012-09-07','31','2012-09-07','','INVERSION'),(230,35,35,319,3,'NO APLICA','2014-04-28','2014-04-28','2014-04-28','2013-05-13','2014-04-28','351','2014-04-28','','INVERSION'),(231,106,106,302,3,'ffttuu','2014-10-11','1970-01-01','1970-01-01','2014-10-06','2014-10-11','6','2014-10-13','','INVERSION'),(232,1,1,278,2,'2',NULL,NULL,NULL,'2014-12-01','2014-12-02','2','2014-12-03','DDFDF','INVERSION'),(233,1,1,278,2,'2',NULL,NULL,NULL,'2014-12-01','2014-12-02','2','2014-12-03','DDFDF','INVERSION'),(234,137,137,137,1,'wer',NULL,NULL,NULL,'2014-12-01','2014-12-02','2','2014-12-03','wer','PRE-INVERS');
/*!40000 ALTER TABLE `t_lac_estacion_adjudicacion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_lac_estacion_contrato`
--

DROP TABLE IF EXISTS `t_lac_estacion_contrato`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_lac_estacion_contrato` (
  `lac_contratacion_id` int(10) NOT NULL AUTO_INCREMENT,
  `lac_cont_proy_id` int(10) DEFAULT NULL,
  `licitacion_adjudicacion_contratacion_id` int(10) DEFAULT NULL,
  `lac_cont_estacion_id` int(10) DEFAULT NULL,
  `lac_cont_tipo_estacion` int(10) DEFAULT NULL,
  `lac_cont_codigo_contrato` varchar(800) COLLATE utf8_spanish_ci DEFAULT NULL,
  `lac_cont_monto_contrato` decimal(10,2) DEFAULT NULL,
  `lac_cont_empresa_id` int(11) DEFAULT NULL,
  `lac_cont_consultor` int(10) DEFAULT NULL,
  `lac_cont_anticipo_inversion` varchar(150) COLLATE utf8_spanish_ci DEFAULT NULL,
  `lac_cont_anticipo_monto` decimal(10,2) unsigned zerofill DEFAULT '00000000.00',
  `lac_cont_cumplimiento_contrato` varchar(800) COLLATE utf8_spanish_ci DEFAULT NULL,
  `lac_cont_plazo_ejecucion` varchar(100) COLLATE utf8_spanish_ci DEFAULT NULL,
  `lac_cont_fecha_inicio` date DEFAULT NULL,
  `lac_cont_fecha_fin` date DEFAULT NULL,
  `lac_cont_duracion` int(5) DEFAULT NULL,
  `lac_cont_fecha_prog_fin` date DEFAULT NULL,
  `lac_cont_observacion` varchar(800) COLLATE utf8_spanish_ci DEFAULT NULL,
  `lac_cont_tipo_proy` varchar(20) COLLATE utf8_spanish_ci DEFAULT NULL,
  PRIMARY KEY (`lac_contratacion_id`),
  KEY `fk_lac_c_licitacion` (`licitacion_adjudicacion_contratacion_id`),
  KEY `fk_lac_c_proyecto` (`lac_cont_proy_id`),
  KEY `fk_lac_c_tipo_est` (`lac_cont_tipo_estacion`),
  KEY `fk_lac_c_empresa` (`lac_cont_empresa_id`),
  KEY `fk_lac_c_consultor` (`lac_cont_consultor`),
  KEY `fk_lac_c_estacion` (`lac_cont_estacion_id`),
  CONSTRAINT `fk_lac_c_estacion` FOREIGN KEY (`lac_cont_estacion_id`) REFERENCES `t_licitacion_adjudicacion_cotratacion_proyecto_estacion` (`lac_estacion_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_lac_c_licitacion` FOREIGN KEY (`licitacion_adjudicacion_contratacion_id`) REFERENCES `t_licitacion_adjudicacion_contratacion_proyecto` (`lac_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_lac_c_proyecto` FOREIGN KEY (`lac_cont_proy_id`) REFERENCES `t_proyecto` (`proyecto_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=233 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_lac_estacion_contrato`
--

LOCK TABLES `t_lac_estacion_contrato` WRITE;
/*!40000 ALTER TABLE `t_lac_estacion_contrato` DISABLE KEYS */;
INSERT INTO `t_lac_estacion_contrato` VALUES (1,1,1,1,1,'C-FPS-01-002801',539888.32,53,NULL,'aa',00000000.00,'222','bb','2014-09-01','2014-09-02',2,'2014-09-03','','INVERSION'),(5,5,5,5,1,'N/A',869886.24,0,0,'',00000000.00,'','','0000-00-00','0000-00-00',0,'0000-00-00','','INVERSION'),(9,9,9,9,1,'N/A',999397.11,0,0,'',00000000.00,'','','0000-00-00','0000-00-00',0,'0000-00-00','','INVERSION'),(13,13,13,13,1,'C-FPS-01-002798',781574.55,42,NULL,'NO APLICA',00000000.00,'Retención del 7%','210','2013-04-10','2013-04-30',21,'2013-04-30','','INVERSION'),(16,16,16,16,1,'C-FPS-01-002802',978528.95,107,NULL,'Banco Nacional de Bolivia Nº0075653 de fecha 10/5/2013 por Bs.171.500.-',00000000.00,'Banco Nacional de Bolivia Nº0075652 de fecha 10/5/2013por Bs.148.720,54','180','2013-05-02','2013-05-13',12,'2013-05-13','','INVERSION'),(22,22,22,22,1,'C-FPS-01-002794',1600253.40,106,NULL,'BANCO BISA S.A. BG-006023-0400 Bs.320.051.-',00000000.00,'BANCO BISA S.A. BG-006123-0400 Bs.112.018.-','120','2012-12-07','2013-04-19',134,'2013-04-19','','INVERSION'),(24,24,24,24,1,'N/A',3132608.80,0,0,'',00000000.00,'','','0000-00-00','0000-00-00',0,'0000-00-00','','INVERSION'),(26,26,26,26,1,'N/A',244121.94,0,0,'',00000000.00,'','','0000-00-00','0000-00-00',0,'0000-00-00','','INVERSION'),(27,27,27,27,1,'N/A',72831.29,0,0,'',00000000.00,'','','0000-00-00','0000-00-00',0,'0000-00-00','','INVERSION'),(28,28,28,28,1,'N/A',77738.12,0,0,'',00000000.00,'','','0000-00-00','0000-00-00',0,'0000-00-00','','INVERSION'),(29,29,29,29,1,'N/A',146727.27,0,0,'',00000000.00,'','','0000-00-00','0000-00-00',0,'0000-00-00','','INVERSION'),(30,30,30,30,1,'N/A',515387.73,0,0,'',00000000.00,'','','0000-00-00','0000-00-00',0,'0000-00-00','','INVERSION'),(31,31,31,31,1,'C-FPS-03-003160',890193.88,63,0,'',00000000.00,'','','0000-00-00','0000-00-00',0,'0000-00-00','','INVERSION'),(33,33,33,33,1,'C-FPS-03-003111',515742.85,68,0,'',00000000.00,'','','0000-00-00','0000-00-00',0,'0000-00-00','','INVERSION'),(35,35,35,35,1,'C-FPS-03-003422',1000835.30,113,NULL,'NO APLICA',00000000.00,'No aplica','185','2014-01-30','2014-05-02',93,'2014-05-02','','INVERSION'),(37,37,37,37,1,'C-FPS-03-003126',971226.75,60,0,'',00000000.00,'','','0000-00-00','0000-00-00',0,'0000-00-00','','INVERSION'),(39,39,39,39,1,'C-FPS-03-003119',515387.73,65,0,'',00000000.00,'','','0000-00-00','0000-00-00',0,'0000-00-00','','INVERSION'),(41,41,41,41,1,'C-FPS-03-003114',562066.52,68,0,'',00000000.00,'','','0000-00-00','0000-00-00',0,'0000-00-00','','INVERSION'),(43,43,43,43,1,'C-FPS-03-003077',1392649.45,37,0,'',00000000.00,'','','0000-00-00','0000-00-00',0,'0000-00-00','','INVERSION'),(46,46,46,46,1,'C-FPS-03-003122',531229.37,75,0,'',00000000.00,'','','0000-00-00','0000-00-00',0,'0000-00-00','','INVERSION'),(53,53,53,53,1,'C-FPS-03-003038',397675.89,66,0,'',00000000.00,'','','0000-00-00','0000-00-00',0,'0000-00-00','','INVERSION'),(56,56,56,56,1,'C-FPS-03-003039',496028.75,72,0,'',00000000.00,'','','0000-00-00','0000-00-00',0,'0000-00-00','','INVERSION'),(59,59,59,59,1,'C-FPS-03-003102',351115.13,45,0,'',00000000.00,'','','0000-00-00','0000-00-00',0,'0000-00-00','','INVERSION'),(62,62,62,62,1,'N/A',1386874.46,0,0,'',00000000.00,'','','0000-00-00','0000-00-00',0,'0000-00-00','','INVERSION'),(64,64,64,64,1,'C-FPS-03-002762',1327780.52,28,NULL,'NO SOLICITA',00000011.00,'BG N° D301-19247 Bs.92.944.64 Banco de Crédito','120','2012-12-28','2013-05-17',141,'2013-05-17','','INVERSION'),(68,68,68,68,1,'C-FPS-03-003119',146820.95,65,0,'',00000000.00,'','','0000-00-00','0000-00-00',0,'0000-00-00','','INVERSION'),(70,70,70,186,1,'C-FPS-03-0022955',1475018.58,21,NULL,'NO SOLICITA',NULL,'BG N°15280 Bs122.151.30 FONDO DE LA COMUNIDAD','150','2012-10-11','2012-11-19',40,'2012-11-19','','INVERSION'),(73,73,73,73,1,'C-FPS-03-003111',146988.00,68,0,'',00000000.00,'','','0000-00-00','0000-00-00',0,'0000-00-00','','INVERSION'),(75,75,75,75,1,'C-FPS-03-003119',110661.66,65,0,'',00000000.00,'','','0000-00-00','0000-00-00',0,'0000-00-00','','INVERSION'),(77,77,77,77,1,'C-FPS-03-003114',145984.12,68,0,'',00000000.00,'','','0000-00-00','0000-00-00',0,'0000-00-00','','INVERSION'),(79,79,79,79,1,'C-FPS-03-003119',105952.72,65,0,'',00000000.00,'','','0000-00-00','0000-00-00',0,'0000-00-00','','INVERSION'),(81,81,81,81,1,'N/A',1193222.33,0,0,'',00000000.00,'','','0000-00-00','0000-00-00',0,'0000-00-00','','INVERSION'),(84,84,84,84,1,'C-FPS-03-003070',1825447.81,27,0,'',00000000.00,'','','0000-00-00','0000-00-00',0,'0000-00-00','','INVERSION'),(87,87,87,87,1,'C-FPS-03-003010',484310.55,79,0,'',00000000.00,'','','0000-00-00','0000-00-00',0,'0000-00-00','','INVERSION'),(90,90,90,90,1,'C-FPS-03-002906',892099.26,23,NULL,'NO SOLICITA',00000000.00,'No aplica','160','2012-09-11','2012-09-18',8,'2012-09-18','','INVERSION'),(93,93,93,93,1,'C-FPS-03-003177',561504.31,95,0,'',00000000.00,'','','0000-00-00','0000-00-00',0,'0000-00-00','','INVERSION'),(97,97,97,97,1,'C-FPS-03-002933',987884.44,22,0,'',00000000.00,'','','0000-00-00','0000-00-00',0,'0000-00-00','','INVERSION'),(99,99,99,99,1,'C-FPS-03-002905',497924.76,23,0,'',00000000.00,'','','0000-00-00','0000-00-00',0,'0000-00-00','','INVERSION'),(102,102,102,102,1,'C-FPS-03-003166',1126285.45,26,0,'',00000000.00,'','','0000-00-00','0000-00-00',0,'0000-00-00','','INVERSION'),(104,104,104,104,1,'C-FPS-03-003123',466400.01,54,0,'',00000000.00,'','','0000-00-00','0000-00-00',0,'0000-00-00','','INVERSION'),(106,106,106,106,1,'C-FPS-03-002939',550039.31,24,NULL,'NO SOLICITA',00000000.00,'No aplica','150','2012-10-29','2012-12-03',36,'2012-12-03','','INVERSION'),(108,108,108,108,1,'C-FPS-03-003042',872531.57,44,0,'',00000000.00,'','','0000-00-00','0000-00-00',0,'0000-00-00','','INVERSION'),(110,110,110,110,1,'C-FPS-03-003036',1026540.72,44,NULL,'NO SOLICITA',00000000.00,'BANCO LOS ANDES N°0014905 Bs.71.860.-','210','2012-11-28','2012-12-18',21,'2012-12-18','','INVERSION'),(112,112,112,112,1,'C-FPS-03-002997',523118.55,110,NULL,'NO SOLICITA',00000000.00,'PRODEM Nº18890 POR Bs.36.618,30','120','2012-10-29','2012-12-05',38,'2012-12-05','','INVERSION'),(115,115,115,115,1,'C-FPS-03-003009',780965.06,109,NULL,'NO SOLICITA',00000000.00,'BANCO BISA Nº BG-019141-0300','160','2012-12-12','2012-12-28',17,'2012-12-28','','INVERSION'),(118,118,118,118,1,'C-FPS-03-003007',663716.90,84,0,'',00000000.00,'','','0000-00-00','0000-00-00',0,'0000-00-00','','INVERSION'),(121,121,121,121,1,'DD.SS.BB. N°23/2012',854181.78,29,NULL,'BG-019084-0300 Bs.59.792.72',00000000.00,'BG-019085-0300 Bs.170.836,36','150','2012-12-03','2012-12-12',10,'2012-12-12','','INVERSION'),(122,122,122,122,1,'GAMC/C-ANPE-RP/N°011/2012',978528.95,108,NULL,'BG-N°14923 serie N°000753 Bs.195.705.79',00000000.00,'BG-N°14922 serie N°000753 Bs.68.497.03','90','2012-07-27','2012-08-27',32,'2012-08-27','','INVERSION'),(125,125,125,125,1,'C-FPS-03-003165',124274.78,34,0,'',00000000.00,'','','0000-00-00','0000-00-00',0,'0000-00-00','','INVERSION'),(127,127,127,127,1,'C-FPS-03-002939',734991.74,17,NULL,'Latina Seguros Vigencia 16/10/12 al 13/4/13 Bs.146.998,39',00000000.00,'Latina Seguros Vigencia 16/10/12 al 13/4/13 Bs.51.449.44','120','2012-10-29','2012-12-03',36,'2012-12-03','','INVERSION'),(130,130,130,130,1,'C-FPS-03-002879',965366.92,13,0,'',00000000.00,'','','0000-00-00','0000-00-00',0,'0000-00-00','','INVERSION'),(133,133,133,133,1,'C-FPS-03-002767',1786053.43,37,0,'',00000000.00,'','','0000-00-00','0000-00-00',0,'0000-00-00','','INVERSION'),(136,136,136,136,1,'C-FPS-03-002820',1348893.50,111,NULL,'NO SOLICITA',00000000.00,'Banco Nacional de Bolivia No.0068141','160','2012-09-21','2012-10-09',19,'2012-10-09','','INVERSION'),(137,137,137,137,1,'C-FPS-04-002755',1099483.86,46,0,'',00000000.00,'','','0000-00-00','0000-00-00',0,'0000-00-00','','INVERSION'),(140,140,140,140,1,'N/A',1142936.96,0,0,'',00000000.00,'','','0000-00-00','0000-00-00',0,'0000-00-00','','INVERSION'),(143,143,143,143,1,'050903-12P00115',113935.76,103,NULL,'NO SOLICITA',00000000.00,'Retención del 7% en cada pago','70','2013-09-13','2013-10-03',21,'2013-10-03','','INVERSION'),(146,146,146,146,1,'N/A',1356787.26,0,0,'',00000000.00,'','','0000-00-00','0000-00-00',0,'0000-00-00','','INVERSION'),(152,152,152,152,1,'N/A',205800.00,0,0,'',00000000.00,'','','0000-00-00','0000-00-00',0,'0000-00-00','','INVERSION'),(154,154,154,154,1,'C-FPS-05-002997',581040.87,43,0,'',00000000.00,'','','0000-00-00','0000-00-00',0,'0000-00-00','','INVERSION'),(167,167,167,167,1,'C-FPS-07-002868',1981890.96,41,NULL,'NO SOLICITA',00000000.00,'BGN-1000075724 Bs.138.732,36 BANCO MERCANTIL SANTA CRUZ S.A.','150','2013-02-22','2013-03-15',22,'2013-03-15','','INVERSION'),(169,169,169,169,1,'C-FPS-07-002822',2042620.79,92,NULL,'Nº 10200935/13 (M00069981) Bs. 265.540,70  BNB S.A.',00000000.00,'Nº 10200936/13 (M00069982)   Bs. 143.000,00  BNB S.A.','148','2013-01-25','2013-03-07',42,'2013-03-07','','INVERSION'),(180,180,180,180,1,'C-FPS-07-002807',700667.80,89,0,'',00000000.00,'','','0000-00-00','0000-00-00',0,'0000-00-00','','INVERSION'),(182,182,182,182,1,'C-FPS-07-002807',1889687.06,112,NULL,'CIP-B01496  Bs. 377.937,41 SEGUROS Y REASEGUROS CREDINFORM INTERNATIONAL S.A.',00000000.00,'COP-B01359   Bs. 132.278,09   SEGUROS Y REASEGUROS CREDINFORM INTERNATIONAL S.A. ','180','2012-12-31','2013-02-18',50,'2013-02-18','','INVERSION'),(186,70,70,188,4,'N°19/2012 ',65000.00,NULL,77,'NO APLICA',NULL,'Retención del 7% en cada pago','240 ','2012-09-21','2012-11-08',47,'2012-11-08','RES.MPAL.N°.116/2012','INVERSION'),(188,1,1,279,1,'1',1.00,41,12,'1',00000020.00,'1','1','2014-03-01','2014-03-02',1,'2014-03-03','sdfdf','INVERSION'),(189,1,1,280,2,'dfdf',3.00,1,1,'1',00000020.00,'1','1','2014-03-07','2014-03-08',11,'2014-03-14','sdfdf','INVERSION'),(191,22,22,289,3,'C-FPS-01-002795',100016.00,8,1,'NO APLICA',00000020.00,'Retención del 7% en cada pago ','210','2013-04-19','2013-04-29',11,'2013-04-29','Contrato Administrativo Modalidad ANPE N°1-74-12/2013','INVERSION'),(192,16,16,290,3,'C-FPS-01-002803',114529.70,98,NULL,'NO APLICA',00000020.00,'retención de 7% en cada pago','180','2013-04-30','2013-05-13',14,'2013-05-13','','INVERSION'),(193,16,16,291,4,'C-FPS-01-002804',114529.70,62,NULL,'NO APLICA',00000020.00,'Retención del 7% en cada pago ','270','2013-05-02','2013-05-09',8,'2013-05-09','','INVERSION'),(194,13,13,292,3,'C-FPS-01-002797',40323.10,NULL,90,'NO SOLICITA',00000020.00,'Retención del 7%','210','2013-04-10','2013-04-30',21,'2013-04-30','','INVERSION'),(195,13,13,293,4,'C-FPS-01-002822',40323.10,NULL,19,'NO SOLICITA',00000020.00,'Retención del 7%','210','2013-04-10','2013-04-30',21,'2013-04-30','','INVERSION'),(196,110,110,294,3,'C-FPS-03-003037',47000.00,NULL,74,'NO APLICA',00000020.00,'Retencion del 7% de cada pago','210','2013-02-06','2013-02-13',8,'2013-02-13','','INVERSION'),(197,121,121,295,3,'OO.PP. N°45/2012 de 30/11/2012',46200.00,NULL,4,'NO APLICA',00000020.00,'Retención del 7%','240','2012-11-28','2012-11-30',3,'2012-11-30','','INVERSION'),(198,122,122,296,3,'GAMC/C-ANPE-COT/N°047/2012',49694.10,NULL,7,'NO APLICA',00000020.00,'Retención del 7%','180','2012-08-03','2012-08-27',25,'2012-08-27','','INVERSION'),(199,122,122,297,4,'GAMC/C-ANPE-COT/N°049/2012',39752.49,NULL,33,'NO SOLICITA',00000020.00,'Retención del 7%','180','2012-07-24','2012-08-27',35,'2012-08-27','','INVERSION'),(200,115,115,298,3,'C-FPS-03-03012',39048.25,NULL,64,'NO SOLICITA',00000020.00,'retención de 7% en cada pago','250','2012-12-03','2012-12-28',26,'2012-12-28','','INVERSION'),(201,115,115,299,4,'C-FPS-03-003012',31238.60,NULL,20,'NO SOLICITA',00000020.00,'Retención del 7% en cada pago','160','2012-12-03','2012-12-28',26,'2012-12-28','','INVERSION'),(202,112,112,300,3,'G.A.M.S/C/N|016/2013',25500.00,NULL,14,'NO SOLICITA',00000020.00,'Retencion del 7% de cada pago','120','2012-11-23','2012-12-03',11,'2012-12-03','G.A.M.S/C/Nº104/2012','INVERSION'),(203,112,112,301,4,'G.A.M.S/C/Nº122/12 31/12/12	',21272.96,NULL,81,'NO SOLICITA',00000020.00,'Retención del 7% en cada pago','Hasta recepción definitiva de la obra','2012-12-12','2012-12-31',20,'2012-12-31','','INVERSION'),(204,106,106,302,3,'C-FPS-03-002991',28275.00,NULL,3,'NO SOLICITA',00000020.00,'Retención del 7% en cada pago','240','2012-10-01','2012-10-30',30,'2012-10-30','','INVERSION'),(205,64,64,303,3,'C-FPS-03-002763',60000.00,NULL,55,'NO APLICA',00000020.00,'Retención del 7%','210','2012-09-12','2012-10-12',31,'2012-10-12','','INVERSION'),(206,64,64,304,4,'C-FPS-03-002764',50000.00,NULL,96,'NO APLICA',00000020.00,'Retención del 7% en cada pago','150','2012-08-27','2012-09-07',12,'2012-09-07','','INVERSION'),(207,90,90,305,3,'C-FPS-03-0029078',69612.75,NULL,87,'NO APLICA',00000020.00,'Retención del 7%','250','2012-09-11','2012-09-24',14,'2012-09-24','','INVERSION'),(208,90,90,306,4,'C-FPS-03-0029078',55690.21,NULL,49,'NO SOLICITA',00000020.00,'Retención del 7% en cada pago','250','2012-10-02','2012-10-09',8,'2012-10-09','','INVERSION'),(209,136,136,307,3,'C-FPS-03-002821',77809.00,NULL,16,'NO SOLICITA',00000020.00,'Retención del 7% en cada pago','250','2012-07-24','2012-08-30',38,'2012-08-30','','INVERSION'),(210,127,127,308,3,'C-FPS-03-0029191',43200.00,NULL,86,'NO SOLICITA',00000020.00,'Retención del 7% en cada pago','240','2012-12-03','2012-12-07',5,'2012-12-07','','INVERSION'),(211,127,127,309,4,'C-FPS-03-002962',34500.00,NULL,80,'NO SOLICITA',00000020.00,'Retención del 7% en cada pago','210','2012-12-03','2012-12-07',5,'2012-12-07','','INVERSION'),(212,102,102,310,3,'C-FPS-03-003125',55000.00,14,NULL,'NO APLICA',00000020.00,'Retención del 7% en cada pago','230','2013-04-09','2013-07-04',87,'2013-07-04','','INVERSION'),(213,70,70,187,3,'C-FPS-03-002956',80000.00,NULL,9,'NO APLICA',00000020.00,'Retención del 7%','240','2012-10-11','2012-11-19',40,'2012-11-19','','INVERSION'),(214,167,167,311,4,'C-FPS-07-002819',70000.00,NULL,67,'NO APLICA',00000020.00,'Retención del 7%','240','2013-01-21','2013-02-28',39,'2013-02-28','','INVERSION'),(215,167,167,311,4,'C-FPS-07-002819',70000.00,67,NULL,'NO APLICA',00000020.00,'Retención del 7%','240','2013-01-21','2013-02-28',39,'2013-02-28','','INVERSION'),(216,183,184,313,3,'C-FPS-07-002819',70000.00,NULL,67,'NO APLICA',00000020.00,'Retención del 7%','240','2013-01-21','2013-02-28',39,'2013-02-28','','INVERSION'),(217,182,182,314,3,'C-FPS-07-002808',68000.00,NULL,57,'NO APLICA',00000020.00,'Retención del 7%','270','2013-01-18','2013-02-18',32,'2013-02-18','','INVERSION'),(218,169,169,315,3,'C-FPS-07-002823',75000.00,NULL,47,'NO APLICA',00000020.00,'Retención del 7%','240','2013-01-21','2013-03-08',47,'2013-03-08','','INVERSION'),(219,169,169,316,4,'C-FPS-07-002826 ',95000.00,70,NULL,'NO APLICA',00000020.00,'Retención del 7% en cada pago','240','2013-02-07','2013-02-27',21,'2013-02-27','','INVERSION'),(220,184,183,287,3,'C-FPS-05-002914',99545.37,31,NULL,'NO SOLICITA',00000020.00,'Banco de Crédito Nº D501-3460 emitida en fecha 13/5/2013 por Bs.6.969.-','70','2013-05-03','2013-05-15',13,'2013-05-15','Contrato Administrativo FPS/PTS/KFW/ANPE Nº 01/13 de fecha 15/5/2013','INVERSION'),(221,156,156,318,3,'C-FPS-05-002674',235698.28,10,NULL,'NO SOLICITA',00000020.00,'Retención del 7% en cada pago','70','2012-09-07','2012-09-24',18,'2012-09-24','','INVERSION'),(222,183,184,312,1,'C-FPS-07-002868',1981890.96,41,NULL,'NO SOLICITA',00000020.00,'BGN-1000075724 Bs.138.732,36 BANCO MERCANTIL SANTA CRUZ S.A.','150','2013-02-22','2013-03-15',22,'2013-03-15','','INVERSION'),(223,183,184,312,1,'C-FPS-07-002868',1981890.96,41,NULL,'NO SOLICITA',00000020.00,'BGN-1000075724 Bs.138.732,36 BANCO MERCANTIL SANTA CRUZ S.A.','150','2013-02-22','2013-03-15',22,'2013-03-15','','INVERSION'),(224,183,184,312,1,'C-FPS-07-002868',1981890.96,41,NULL,'NO SOLICITA',00000020.00,'BGN-1000075724 Bs.138.732,36 BANCO MERCANTIL SANTA CRUZ S.A.','150','2013-02-22','2013-03-15',22,'2013-03-15','','INVERSION'),(225,183,184,312,1,'C-FPS-07-002868',1981890.96,41,NULL,'NO SOLICITA',00000020.00,'BGN-1000075724 Bs.138.732,36 BANCO MERCANTIL SANTA CRUZ S.A.','150','2013-02-22','2013-03-15',22,'2013-03-15','','INVERSION'),(226,35,35,319,3,'C-FPS-03-003469',49000.00,NULL,115,'NO APLICA',00000020.00,'Retención del 7% en cada pago','185','2014-04-28','2014-05-14',17,'2014-05-14','','INVERSION'),(227,35,35,319,3,'C-FPS-03-003469',49000.00,NULL,1,'NO APLICA',00000020.00,'Retención del 7% en cada pago','185','2014-04-28','2014-05-14',17,'2014-05-14','','INVERSION'),(228,35,35,319,3,'C-FPS-03-003469',49000.00,NULL,1,'NO APLICA',00000020.00,'Retención del 7% en cada pago','185','2014-04-28','2014-05-14',17,'2014-05-14','','INVERSION'),(229,35,35,319,3,'C-FPS-03-003469',49000.00,NULL,1,'NO APLICA',00000020.00,'Retención del 7% en cada pago','185','2014-04-28','2014-05-14',17,'2014-05-14','','INVERSION'),(230,1,1,278,2,'contr cod',12.00,NULL,NULL,'13',00000020.00,'gjk','rtfg','2014-09-01','2014-09-03',3,'2014-09-04','','INVERSION'),(231,1,1,281,2,'RT',111.00,NULL,NULL,'BIA',00000020.00,'CC','PE','2014-10-01','2014-11-01',32,'2014-11-20','CV','INVERSION'),(232,137,137,137,1,'wer',999.00,NULL,NULL,'ert',00000020.00,'wer','wer','2014-12-01','2014-12-17',17,'2014-12-13','wer','PRE-INVERS');
/*!40000 ALTER TABLE `t_lac_estacion_contrato` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_lac_estacion_licitacion`
--

DROP TABLE IF EXISTS `t_lac_estacion_licitacion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_lac_estacion_licitacion` (
  `lac_licitacion_id` int(10) NOT NULL AUTO_INCREMENT,
  `licitacion_adjudicacion_contratacion_id` int(10) DEFAULT NULL,
  `lac_lic_proy_id` int(10) DEFAULT NULL,
  `lac_lic_estacion_id` int(10) DEFAULT NULL,
  `lac_lic_tipo_estacion_id` int(10) DEFAULT NULL,
  `lac_lic_numero_convocatoria` int(5) DEFAULT NULL,
  `lac_lic_modalidad` varchar(800) COLLATE utf8_spanish_ci DEFAULT NULL,
  `lac_lic_codigo_convocatoria` varchar(20) COLLATE utf8_spanish_ci DEFAULT NULL,
  `lac_lic_codigo_cuce` varchar(30) COLLATE utf8_spanish_ci DEFAULT NULL,
  `lac_lic_institucion_id` varchar(10) COLLATE utf8_spanish_ci DEFAULT NULL,
  `lac_lic_fecha_registro_sistema` date DEFAULT NULL,
  `lac_lic_observacion` varchar(1500) COLLATE utf8_spanish_ci DEFAULT NULL,
  `lac_lic_fecha_inicio` date DEFAULT NULL,
  `lac_lic_fecha_fin` date DEFAULT NULL,
  `lac_lic_fecha_prog_fin` date DEFAULT NULL,
  `lac_lic_tiempo_duracion` int(10) DEFAULT NULL,
  `lac_lic_tipo_proy` varchar(20) COLLATE utf8_spanish_ci DEFAULT NULL,
  PRIMARY KEY (`lac_licitacion_id`),
  KEY `fk_lac_l_lac_id` (`licitacion_adjudicacion_contratacion_id`),
  KEY `fk_lac_l_proy` (`lac_lic_proy_id`),
  KEY `fk_lac_l_estacion` (`lac_lic_estacion_id`),
  KEY `fk_lac_l_tipo_estacion` (`lac_lic_tipo_estacion_id`),
  CONSTRAINT `fk_lac_l_estacion` FOREIGN KEY (`lac_lic_estacion_id`) REFERENCES `t_licitacion_adjudicacion_cotratacion_proyecto_estacion` (`lac_estacion_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_lac_l_lac_id` FOREIGN KEY (`licitacion_adjudicacion_contratacion_id`) REFERENCES `t_licitacion_adjudicacion_contratacion_proyecto` (`lac_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_lac_l_proy` FOREIGN KEY (`lac_lic_proy_id`) REFERENCES `t_proyecto` (`proyecto_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=316 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_lac_estacion_licitacion`
--

LOCK TABLES `t_lac_estacion_licitacion` WRITE;
/*!40000 ALTER TABLE `t_lac_estacion_licitacion` DISABLE KEYS */;
INSERT INTO `t_lac_estacion_licitacion` VALUES (1,1,1,1,1,1,'ANPE  PRECIO EVALUADO MAS BAJO','010103-12P07001','12-1103-00-347335-1-1','010103',NULL,'',NULL,NULL,NULL,NULL,'INVERSION'),(5,5,5,5,1,1,'ANPE  PRECIO EVALUADO MAS BAJO','','','010304',NULL,'',NULL,NULL,NULL,NULL,'INVERSION'),(9,9,9,9,1,1,'ANPE  PRECIO EVALUADO MAS BAJO','','','010304',NULL,'',NULL,NULL,NULL,NULL,'INVERSION'),(13,13,13,13,1,1,'ANPE  PRECIO EVALUADO MAS BAJO','010302-12P03401','12-1107-00-352133-1-1','1107','2012-12-17','Resolución Administrativa Declaratoria Desierta RPC - RPA Nº 160/2012 de 17/12/2012','2012-11-19',NULL,NULL,NULL,'INVERSION'),(16,16,16,16,1,1,'ANPE  PRECIO EVALUADO MAS BAJO','010202-13P02201','13-0287-04-376258-1-1','1990','2013-05-15','','2013-04-12','2013-05-02','2013-05-02',21,'INVERSION'),(22,22,22,22,1,1,'ANPE  PRECIO EVALUADO MAS BAJO','FPS-01-0000-3651','12-1103-00-347174-1-1','1103','2012-11-06','RESOLUCIÓN ADM ANULACION DE PROCESO Nº 03A/2012 ERROR EN DBC','2012-10-19',NULL,NULL,NULL,'INVERSION'),(24,24,24,24,1,1,'ANPE  PRECIO EVALUADO MAS BAJO','021201-13P09501','13-0287-02-      -1-1','021201',NULL,'',NULL,NULL,NULL,NULL,'INVERSION'),(26,26,26,26,1,1,'ANPE  PRECIO EVALUADO MAS BAJO','','','031301',NULL,'',NULL,NULL,NULL,NULL,'INVERSION'),(27,27,27,27,1,1,'ANPE  PRECIO EVALUADO MAS BAJO','030503-13P09901','13-0287-03-      -1-1','030503',NULL,'',NULL,NULL,NULL,NULL,'INVERSION'),(28,28,28,28,1,1,'ANPE  PRECIO EVALUADO MAS BAJO','030503-13P09901','13-0287-03-      -1-1','030503',NULL,'',NULL,NULL,NULL,NULL,'INVERSION'),(29,29,29,29,1,1,'ANPE  PRECIO EVALUADO MAS BAJO','030503-13P09901','13-0287-03-      -1-1','030503',NULL,'',NULL,NULL,NULL,NULL,'INVERSION'),(30,30,30,30,1,1,'ANPE  PRECIO EVALUADO MAS BAJO','030503-13P09901','13-0287-03-      -1-1','030503',NULL,'',NULL,NULL,NULL,NULL,'INVERSION'),(31,31,31,31,1,1,'ANPE  PRECIO EVALUADO MAS BAJO','031501-13P05201','13-1341-00-396988-1-1','031501',NULL,'',NULL,NULL,NULL,NULL,'INVERSION'),(33,33,33,33,1,1,'ANPE  PRECIO EVALUADO MAS BAJO','030503-12P32801','12-1314-00-348303-2-1','030503',NULL,'',NULL,NULL,NULL,NULL,'INVERSION'),(35,35,35,35,1,1,'ANPE  PRECIO EVALUADO MAS BAJO','030503-12P33701','12-1314-00-348312-2-1','1314','2012-12-06','RES. DECLARATORIA DESIERTA R- RPA N° 0238/2012 No se presentaron proponentes de 30/11/2012','2012-10-31',NULL,NULL,NULL,'INVERSION'),(37,37,37,37,1,1,'ANPE  PRECIO EVALUADO MAS BAJO','031001-12P34001','12-1330-00-349561-1-1','031001',NULL,'',NULL,NULL,NULL,NULL,'INVERSION'),(39,39,39,39,1,1,'ANPE  PRECIO EVALUADO MAS BAJO','030503-12P32401','12-1314-00-348243-2-1','030503',NULL,'',NULL,NULL,NULL,NULL,'INVERSION'),(41,41,41,41,1,1,'ANPE  PRECIO EVALUADO MAS BAJO','030503-12P32601','12-1314-00-348288-2-1','030503',NULL,'',NULL,NULL,NULL,NULL,'INVERSION'),(43,43,43,43,1,1,'ANPE  PRECIO EVALUADO MAS BAJO','031603-12P28001','12-1344-00-335912-1-1','031603',NULL,'',NULL,NULL,NULL,NULL,'INVERSION'),(46,46,46,46,1,1,'ANPE  PRECIO EVALUADO MAS BAJO','030702-12P33401','12-1321-00-348289-1-1','030702',NULL,'',NULL,NULL,NULL,NULL,'INVERSION'),(53,53,53,53,1,1,'ANPE  PRECIO EVALUADO MAS BAJO','031301-12P23501','12-1338-00-332738-1-1','031301',NULL,'',NULL,NULL,NULL,NULL,'INVERSION'),(56,56,56,56,1,1,'ANPE  PRECIO EVALUADO MAS BAJO','031301-12P29201','12-1338-00-337999-1-1','031301',NULL,'',NULL,NULL,NULL,NULL,'INVERSION'),(59,59,59,59,1,1,'ANPE  PRECIO EVALUADO MAS BAJO','031602-12P16601','12-1343-00-338557-1-1','031602',NULL,'',NULL,NULL,NULL,NULL,'INVERSION'),(62,62,62,62,1,1,'ANPE  PRECIO EVALUADO MAS BAJO','030402-12P34201','12-1311-00-348769-1-1','030402',NULL,'',NULL,NULL,NULL,NULL,'INVERSION'),(64,64,64,64,1,1,'LICITACIÓN PÚBLICA','030903-12P15901','12-1329-00-331009-1-1','1329','2012-10-26','RES.TEC.ADM. N°24/2012 DE ANULACIÓN (No existen registros de ítems)','2012-08-28',NULL,NULL,NULL,'INVERSION'),(68,68,68,68,1,1,'ANPE  PRECIO EVALUADO MAS BAJO','030503-12P32401','12-1314-00-348243-2-1','030503',NULL,'',NULL,NULL,NULL,NULL,'INVERSION'),(73,73,73,73,1,1,'ANPE  PRECIO EVALUADO MAS BAJO','030503-12P32801','12-1314-00-348303-2-1','030503',NULL,'',NULL,NULL,NULL,NULL,'INVERSION'),(75,75,75,75,1,1,'ANPE  PRECIO EVALUADO MAS BAJO','030503-12P32401','12-1314-00-348243-2-1','030503',NULL,'',NULL,NULL,NULL,NULL,'INVERSION'),(77,77,77,77,1,1,'ANPE  PRECIO EVALUADO MAS BAJO','030503-12P32601','12-1314-00-348288-2-1','030503',NULL,'',NULL,NULL,NULL,NULL,'INVERSION'),(79,79,79,79,1,1,'ANPE  PRECIO EVALUADO MAS BAJO','030503-12P32401','12-1314-00-348243-2-1','030503',NULL,'',NULL,NULL,NULL,NULL,'INVERSION'),(81,81,81,81,1,1,'ANPE  PRECIO EVALUADO MAS BAJO','030402-12P29801','CUCE : 12-1311-00-338762-1-1 ','030402',NULL,'',NULL,NULL,NULL,NULL,'INVERSION'),(84,84,84,84,1,1,'ANPE  PRECIO EVALUADO MAS BAJO','030401-12P12201','12-1310-00-335659-1-1','030401',NULL,'',NULL,NULL,NULL,NULL,'INVERSION'),(87,87,87,87,1,1,'ANPE  PRECIO EVALUADO MAS BAJO','031001-12P28301','12-1330-00-337561-1-1','031001',NULL,'',NULL,NULL,NULL,NULL,'INVERSION'),(90,90,90,90,1,1,'ANPE  PRECIO EVALUADO MAS BAJO','031501-12P02301','12-1341-00-317669-1-1','1341','2012-06-28','RES.TEC.ADM. RPA-ANPE N°02/2012 DE ANULACIÓN (error en el DBC)','2012-06-22',NULL,NULL,NULL,'INVERSION'),(93,93,93,93,1,1,'ANPE  PRECIO EVALUADO MAS BAJO','030402-12P13101','12-1311-00-327961-1-1','030402',NULL,'',NULL,NULL,NULL,NULL,'INVERSION'),(97,97,97,97,1,1,'ANPE  PRECIO EVALUADO MAS BAJO','030401-12P12801','12-1310-00-330199-1-1','030401',NULL,'',NULL,NULL,NULL,NULL,'INVERSION'),(99,99,99,99,1,1,'ANPE  PRECIO EVALUADO MAS BAJO','031501-12P02601','12-0287-03-      -1-1','031501',NULL,'',NULL,NULL,NULL,NULL,'INVERSION'),(102,102,102,102,1,1,'ANPE  PRECIO EVALUADO MAS BAJO','030702-13P03401','12-1321-00-347512-1-1','1321','2012-12-03','RES.ADM.Nº148/2012 - Declaratoria desierta de 30/11/2012','2012-10-12',NULL,NULL,NULL,'INVERSION'),(104,104,104,104,1,1,'ANPE  PRECIO EVALUADO MAS BAJO','030702-13P03501','13-0287-03-      -1-1','030702',NULL,'',NULL,NULL,NULL,NULL,'INVERSION'),(106,106,106,106,1,1,'ANPE  PRECIO EVALUADO MAS BAJO','031102-12P31401','12-1332-00-339498-1-1','1332','2012-11-27','Resolución Técnica Administrativa RPA-RPC/N°06/2012 - DE ADJUDICACIÓN','2012-09-27','2012-10-29','2012-10-29',33,'INVERSION'),(108,108,108,108,1,1,'ANPE  PRECIO EVALUADO MAS BAJO','031602-12P32101','12-1343-00-341421-1-1','031602',NULL,'',NULL,NULL,NULL,NULL,'INVERSION'),(110,110,110,110,1,1,'ANPE  PRECIO EVALUADO MAS BAJO','030704-12P2950','12-1323-00-340263-1-1','1323','2012-12-18','','2012-10-04','2012-11-20','2012-11-20',48,'INVERSION'),(112,112,112,112,1,1,'ANPE  PRECIO EVALUADO MAS BAJO','030704-12P16301','12-1323-00-339863-1-1','1323','2013-05-07','Resolución de Adjudicación Nº 38/2012 de fecha 8/11/2012','2012-10-03','2012-10-29','2012-10-29',27,'INVERSION'),(115,115,115,115,1,1,'ANPE  PRECIO EVALUADO MAS BAJO','031001-12P28301','031001-12P28301','-338881','2012-09-20','RES.ADM.Radd/040/2012 - Declaratoria desierta No presento BG','2012-10-12',NULL,NULL,NULL,'INVERSION'),(118,118,118,118,1,1,'ANPE  PRECIO EVALUADO MAS BAJO','031102-12P28901','12-1332-00-339534-1-1','031102',NULL,'',NULL,NULL,NULL,NULL,'INVERSION'),(121,121,121,121,1,1,'ANPE  PRECIO EVALUADO MAS BAJO','031501-12P31901','1-2-1341-00-348299-1-1','1341','2012-12-20','RES.TEC.ADM. RPA-MGT.-28/2012','2012-11-08','2012-12-03','2012-12-03',26,'INVERSION'),(122,122,122,122,1,1,'ANPE  PRECIO EVALUADO MAS BAJO','FPS-03-00003485','12-1346-00-317841-1-2','1346','2012-08-28','RES. ADM. R.P.A N° 92/2012','2012-06-22','2012-07-27','2012-07-27',36,'INVERSION'),(125,125,125,125,1,1,'ANPE  PRECIO EVALUADO MAS BAJO','031401-12P01301','12-0287-03-      -1-1','031401',NULL,'',NULL,NULL,NULL,NULL,'INVERSION'),(127,127,127,127,1,1,'ANPE  PRECIO EVALUADO MAS BAJO','031102-12P04301','12-1332-00-321525-1-1','1332','2012-07-17','1ra. Convocatoria - RES.TEC.ADM. RPA/N°21/2012 Declarada desierta Errores en el DBC','2012-07-11',NULL,NULL,NULL,'INVERSION'),(130,130,130,130,1,1,'ANPE  PRECIO EVALUADO MAS BAJO','031001-12P04801','12-1330-00-323203-1-1','031001',NULL,'',NULL,NULL,NULL,NULL,'INVERSION'),(133,133,133,133,1,1,'ANPE  PRECIO EVALUADO MAS BAJO','030403-12P02001','12-1346-00-317882-1-2','030403',NULL,'',NULL,NULL,NULL,NULL,'INVERSION'),(136,136,136,136,1,1,'ANPE  PRECIO EVALUADO MAS BAJO','031401-12P01401','12-1340-00-317340-1-1','1340','2012-06-25','RES.ADM N°001/2012 Anulación Proceso de Licitación (errores en DBC)','2012-06-14',NULL,NULL,NULL,'INVERSION'),(137,137,137,137,1,1,'ANPE  PRECIO EVALUADO MAS BAJO','041403-13P02001','13-1430-00-378031-2-1','041403',NULL,'',NULL,NULL,NULL,NULL,'INVERSION'),(140,140,140,140,1,1,'ANPE  PRECIO EVALUADO MAS BAJO','','','051601',NULL,'',NULL,NULL,NULL,NULL,'INVERSION'),(143,143,143,143,1,1,'ANPE  PRECIO EVALUADO MAS BAJO','050903-12P00115','12-0287-05-332481-1-1','1990','2012-12-12','','2013-09-04','2013-09-13','2013-09-13',10,'INVERSION'),(146,146,146,146,1,1,'ANPE  PRECIO EVALUADO MAS BAJO','050303-13P00101','13-0287-05-      -1-1','050303',NULL,'',NULL,NULL,NULL,NULL,'INVERSION'),(152,152,152,152,1,1,'ANPE  PRECIO EVALUADO MAS BAJO','','','050104',NULL,'',NULL,NULL,NULL,NULL,'INVERSION'),(154,154,154,154,1,1,'ANPE  PRECIO EVALUADO MAS BAJO','050104-13P00101','13-0287-05-      -1-1','050104',NULL,'',NULL,NULL,NULL,NULL,'INVERSION'),(167,167,167,167,1,1,'ANPE  PRECIO EVALUADO MAS BAJO','070303-12P00101','07-0303-002-12','1990','2012-03-15','','2013-01-04','2013-02-22','2013-02-22',50,'INVERSION'),(169,169,169,169,1,1,'ANPE  PRECIO EVALUADO MAS BAJO','071104-12P00401     ','12-0287-06-358993-1-1','1990','2013-03-07','','2012-12-28','2013-01-25','2013-01-25',29,'INVERSION'),(180,180,180,180,1,1,'ANPE  PRECIO EVALUADO MAS BAJO','071502-12P00401','12-0287-07-      -1-1','071502',NULL,'',NULL,NULL,NULL,NULL,'INVERSION'),(182,182,182,182,1,1,'ANPE  PRECIO EVALUADO MAS BAJO','071502-12P00401','071502-12P00401  ','1990','2013-02-18','','2012-11-19','2012-12-31','2012-12-31',43,'INVERSION'),(186,70,70,186,1,1,'ANPE  PRECIO EVALUADO MAS BAJO','FPS-03-00003505','12-1393-00-333949-1-1','1339','2012-09-20','RES. ADM. 087/2012 de Adjudicación a empresa CODAPI SRL.				','2012-09-12','2012-10-11','2012-10-11',30,'INVERSION'),(219,1,1,278,2,1,'mod','cod','hjhkj','1534','2014-03-05','jhkjh','2014-03-07','2014-03-08','2014-03-09',8,'INVERSION'),(220,1,1,278,2,2,'mod','viou','lkjlkj','1224','2014-05-16','kljlkj','2014-07-20','2014-08-24','2014-09-30',78,'INVERSION'),(221,1,1,280,2,1,'1','1','1','1534','2014-03-01','dcvcv','2014-03-02','2014-03-03','2014-03-04',1,'INVERSION'),(222,1,1,280,2,1,'1','1','1',NULL,'2014-01-03','',NULL,NULL,NULL,NULL,'INVERSION'),(227,22,22,22,1,2,'ANPE  PRECIO EVALUADO MAS BAJO','FPS-01-0000-3651','12-1103-00-347184-1-1','1103','2012-12-20','Res. Adm Adjudicación N°071/2012 - Empresa MATERSA','2012-10-19','2012-12-07','2012-12-07',50,'INVERSION'),(228,22,22,289,3,1,'ANPE  PRECIO EVALUADO MAS BAJO','FPS-01-0000-3651','13-113-00-353465-1-1','1103','2013-02-04','Res. Municipal N°074A/2012 - Desierta por Falta de proponentes','2012-12-03',NULL,NULL,NULL,'INVERSION'),(229,22,22,289,3,2,'ANPE  PRECIO EVALUADO MAS BAJO','FPS-01-0000-3651','13-113-00-353465-2-1','1103','2013-04-29','Res. Municipal N°74/2012 - Adjudica a Armando Rojas Durán','2012-12-03','2013-04-19','2013-04-19',138,'INVERSION'),(230,16,16,290,3,1,'Presupuesto fijo','010202-13P02103','13-0287-04-379274-1-1','1990','2013-05-16','','2013-04-18','2013-04-30','2013-04-30',13,'INVERSION'),(231,16,16,291,4,1,'Presupuesto fijo','010202-13P02103',' 13-0287-04-379269-1-1','1990','2013-05-16','','2013-04-18','2013-05-02','2013-05-02',15,'INVERSION'),(232,13,13,13,1,2,'ANPE  PRECIO EVALUADO MAS BAJO','010302-12P03401','12-1107-00-352133-2-1','1107','2013-02-26','Resolución Administrativa Declaratoria Desierta RPC-RPS Nº006/2013 de 20/2/2013','2012-11-19',NULL,NULL,0,'INVERSION'),(233,13,13,13,1,3,'ANPE  PRECIO EVALUADO MAS BAJO','010302-12P03401','12-1107-00-352133-3-1','1107','2013-05-02','Resolución Administrativa  de Adjudicación (RPA) Nº024/2013','2012-11-19','2013-03-21','2013-03-21',123,'INVERSION'),(234,13,13,292,3,1,'Presupuesto fijo','C-FPS-01-002797','13-1107-00-369626-1-1','1107','2013-03-05','','2013-03-05',NULL,NULL,NULL,'INVERSION'),(235,13,13,292,3,2,'Presupuesto fijo','C-FPS-01-002797','13-1107-00-369626-2-1','1107','2013-04-10','Resolución Administrativa  de Declaratoria Desierta RPC-RPA Nº035/2013 de 2 de abril de 2013','2013-03-05',NULL,NULL,0,'INVERSION'),(236,13,13,292,3,3,'POR EXCEPCIÓN','C-FPS-01-002797','NO APLICA','1107','2013-05-02','Resolución Administrativa  Por Excepción RPC-RPA Nº 41/2013 de 10 de abril de 201','2013-03-05','2013-04-10','2013-04-10',37,'INVERSION'),(237,13,13,293,4,1,'Presupuesto fijo','010302-13P00403','13-1107-00-369675-1-1','1107','2013-03-21','Resolución Administrativa Declaratoria Desierta RPC-RPA Nº 22/2013 de 13 de marzo de 2013 Proponentes no cumplen con el DBC','2013-02-19',NULL,NULL,0,'INVERSION'),(238,13,13,293,4,2,'Presupuesto fijo','010302-13P00403','13-1107-00-369626-2-1','1107','2013-04-10','Resolución Administrativa Declaratoria Desierta RPC-RPA Nº 36/2013 de 2 de abril de 2013, proponente no cumple con el DBC','2013-02-19',NULL,NULL,0,'INVERSION'),(239,13,13,293,4,3,'POR EXCEPCIÓN','010302-13P00403','13-1107-00-381668-0-E','1107','2013-05-02','Resolución Administrativa Adjudicación por Excepción RPC-RPA Nº 42/2013 de 10 de abril de 2013','2013-02-19','2013-04-10','2013-04-10',51,'INVERSION'),(240,110,110,294,3,1,'Presupuesto fijo','030704-12P2950','12-1323-00-345451-1-1','1323','2013-01-07','','2012-10-30',NULL,NULL,0,'INVERSION'),(241,110,110,294,3,2,'Presupuesto fijo','030704-12P2950','12-1323-00-345451-2-1','1323','2013-05-09','DECLARATORIA DESIERTA 001/2013 el proponente ya tiene contrato con otro proyecto de Mi Agua','2012-05-30',NULL,NULL,NULL,'INVERSION'),(242,110,110,294,3,3,'POR EXCEPCIÓN','030704-12P2950','RES.ADM.EJECUTIVA G.A.M.S/R.A.','1323','2013-07-01','RESOLUCIÓN MUNICIPAL N°006/2013 ','2012-10-30','2013-02-06','2013-02-06',100,'INVERSION'),(243,121,121,295,3,1,'Presupuesto fijo','031501-12P32007','1-2-1341-00-348306-1-1','1341','2012-12-03','RES.TEC.ADM. RPA-MGT.-27/2012','2012-11-08','2012-11-28','2012-12-28',21,'INVERSION'),(244,122,122,296,3,1,'Presupuesto fijo','FPS-03-00003485','12-1346-00-317895-1-1','1346','2012-07-23','RES. ADM. R.P.A N° 75/2012 de Declaratoria Desierta por falta de proponentes','2012-06-22',NULL,NULL,0,'INVERSION'),(245,122,122,296,3,2,'Presupuesto fijo','FPS-03-00003485','12-1346-00-317895-2-1','1346','2012-08-28','RES. ADM. R.P.A N° 95/2012','2012-06-22','2012-08-03','2012-08-03',43,'INVERSION'),(246,122,122,297,4,1,'Presupuesto fijo','FPS-03-00003505 / 34','12-1341-00-317705-1-1','1346','2012-06-25','RES. ADM. N° 005/2012 DE ANULACIÓN (error en el DBC)','2012-06-22',NULL,NULL,0,'INVERSION'),(247,122,122,297,4,2,'Presupuesto fijo','FPS-03-00003505 / 34','12-1341-00-317705-1-2','1346','2012-08-31','','2012-06-22','2012-07-24','2012-07-24',33,'INVERSION'),(248,115,115,115,1,2,'ANPE  PRECIO EVALUADO MAS BAJO','031001-12P28301','12-1330-00-337561-2-1','1330','2012-09-20','RES.ADM.Radd/047/2012 - Declaratoria desierta No cumple DBC','2012-10-12',NULL,NULL,0,'INVERSION'),(249,115,115,115,1,3,'POR EXCEPCIÓN','031001-12P28301','NO APLICA','1330','2012-09-20','Resolucion Administrativa Nº116/2012 - Adjudicación','2012-10-12','2012-12-12','2012-12-12',62,'INVERSION'),(250,115,115,298,3,1,'Presupuesto fijo','031001-12P28407','12-1330-00-351396-1-1','1330','2013-02-22','Res. Adm. Adj.N°116/2012','2012-11-23','2012-12-03','2012-12-03',11,'INVERSION'),(251,115,115,299,4,1,'Presupuesto fijo','031001-12P28503','12-1330-00-351380-1-1','1330','2012-11-05','RES.ADM.Nº110/2012 DE ADJUDICACIÓN','2012-11-23','2012-12-03','2012-12-03',11,'INVERSION'),(252,112,112,300,3,1,'Presupuesto fijo','030704-12P16407','12-1323-00-340057-1-1','1323','2012-10-29','Res.Declaratoria desierta s/n 25/10/12','2012-10-04',NULL,NULL,0,'INVERSION'),(253,112,112,300,3,2,'Presupuesto fijo','030704-12P16407','12-1323-00-340057-2-1','1323','2013-06-05','','2012-10-04','2012-11-23','2012-11-23',51,'INVERSION'),(254,112,112,301,4,1,'Presupuesto fijo','030704-12P16503','12-1323-00-340066-1-1','1323','2012-11-30','Resolución declaratoria desierta s/n 25/10/2012 - Sin proponentes','2012-10-05',NULL,NULL,0,'INVERSION'),(255,112,112,301,4,2,'Presupuesto fijo','030704-12P16503','12-1323-00-340066-2-1','1323','2013-05-13','Resolución adjudicación de proyecto s/n 12/12/2012','2012-10-05','2012-12-12','2012-12-12',69,'INVERSION'),(256,106,106,302,3,1,'Presupuesto fijo','031102-12P31507','12-1332-00-339527-1-1','1332','2012-11-08','Declarada desierta - ningún proponente\r\nRES.TEC.ADM RPA-RPC/N°83/012','2012-07-11',NULL,NULL,0,'INVERSION'),(257,106,106,302,3,2,'Presupuesto fijo','031102-12P31507','12-1332-00-339527-2-1','1332','2012-11-29','Declarada desierta RES.TEC.ADM RPA-RPC/N°97/012 - Propuestas no cumplen aspectos tecnicos/administrativo.','2012-07-11',NULL,NULL,0,'INVERSION'),(258,106,106,302,3,3,'POR EXCEPCIÓN','031102-12P31507','No asignado','1332','2012-11-13','','2012-07-11','2012-10-01','2012-10-01',83,'INVERSION'),(259,64,64,64,1,2,'LICITACIÓN PÚBLICA','030303-12901701','12-1329-00-331009-2-1','1329','2012-11-27','RES.TEC.ADM. N°30/2012 DE ANULACIÓN (No existen registros de ítems)','2012-08-28',NULL,NULL,0,'INVERSION'),(260,64,64,64,1,3,'LICITACIÓN PÚBLICA','030303-12901701','12-1329-00-331009-3-1','1329','2012-11-27','','2012-08-28','2012-12-28','2012-12-28',123,'INVERSION'),(261,64,64,303,3,1,'Presupuesto fijo','030403-12C01807','12-1329-00-331097-1-1','1329','2012-11-27','RES.TEC.ADM. N°26/2012 DE ADJUDICACIÓN','2012-08-28','2012-09-12','2012-09-12',16,'INVERSION'),(262,64,64,304,4,1,'Presupuesto fijo','030403-12C1903','12-1329-00-331105-1-1','1329','2012-11-27','RES.TEC.ADM. N°27/2012 DE ADJUDICACIÓN','2012-06-18','2012-08-27','2012-08-27',71,'INVERSION'),(263,90,90,90,1,2,'ANPE  PRECIO EVALUADO MAS BAJO','031501-12P02301','12-1341-00-317669-1-2','1341','2012-07-20','RES.TEC.ADM. RPA-ANPE N°07/2012 DE ANULACIÓN (error en el DBC)','2012-06-22',NULL,NULL,0,'INVERSION'),(264,90,90,90,1,3,'POR EXCEPCIÓN','031501-12P02301','12-1344-00-335912-3-1','1341','2012-09-10','RES.TEC.ADM. RPA-MGT.-12/2012','2012-06-22','2012-09-11','2012-09-11',82,'INVERSION'),(265,90,90,305,3,1,'Presupuesto fijo','031501-12C02407','12-1341-00-317686-1-1','1341','2012-06-27','RES.TEC.ADM. RPA-ANPE N°04/2012 DE ANULACIÓN (Error en el DBC)','2012-06-07',NULL,NULL,0,'INVERSION'),(266,90,90,305,3,2,'Presupuesto fijo','031501-12C02407','12-1341-00-317686-1-2','1341','2012-07-23','RES.TEC.ADM. RPA-ANPE N°09/2012 DE ANULACIÓN (error en el objeto de la contratación)','2012-06-07',NULL,NULL,0,'INVERSION'),(267,90,90,305,3,3,'Presupuesto fijo','031501-12C02407','12-1341-00-327742-1-1','1341','2012-09-28','','2012-06-07','2012-09-11','2012-09-11',97,'INVERSION'),(268,90,90,306,4,1,'Presupuesto fijo','031501-12C02503','12-1341-00-317705-1-1','1341','2012-06-27','RES.TEC.ADM. RPA-ANPE N°03/2012 DE ANULACIÓN (error en el DBC)','2012-05-25',NULL,NULL,0,'INVERSION'),(269,90,90,306,4,2,'Presupuesto fijo','031501-12C02503','12-1341-00-317705-1-2','1341','2012-07-20','RES.TEC.ADM. RPA-ANPE N°08/2012 DE ANULACIÓN (error en eL DBC)','2012-05-25',NULL,NULL,0,'INVERSION'),(270,90,90,306,4,3,'Presupuesto fijo','031501-12C02503','12-1341-00-327691-1-1','1341','2012-10-18','RES.TEC.ADM. MGT.- RPA-OMT. N°05/2012 Declaratoria Desierta (ningún proponente)','2012-05-25',NULL,NULL,0,'INVERSION'),(271,90,90,306,4,4,'Presupuesto fijo','031501-12C02503','12-1341-00-327691-2-1','1341','2012-11-15','','2012-05-25','2012-10-02','2012-10-02',131,'INVERSION'),(272,136,136,136,1,2,'ANPE  PRECIO EVALUADO MAS BAJO','031102-12P04301','12-1340-00-317340-1-2','1340','2012-07-27','RES.ADM N°004/2012 Declaratoria Desierta - Errores de presentación de Boletas de Garantìa','2012-06-14',NULL,NULL,0,'INVERSION'),(273,136,136,136,1,3,'ANPE  PRECIO EVALUADO MAS BAJO','031102-12P04301','12-1340-00-317340-2-2','1340','2012-11-20','RES.ADM N°045/2012 de adjudicación','2012-06-14','2012-09-21','2012-09-21',100,'INVERSION'),(274,136,136,307,3,1,'Presupuesto fijo','031401-12C01507','12-1340-00-317357-1-1','1340','2012-09-18','Resolución Municipal Nº 028/2012','2012-06-14','2012-07-24','2012-07-24',41,'INVERSION'),(275,127,127,127,1,2,'ANPE  PRECIO EVALUADO MAS BAJO','031102-12P04301','12-1332-00-321525-2-1','1332','2012-09-04',' Convocatoria - RES.TEC.ADM. RPA/N°37/2012 Declarada desierta Propuestas no cumplen aspectos técnicos - adm','2012-07-11',NULL,NULL,NULL,'INVERSION'),(276,127,127,127,1,3,'ANPE  PRECIO EVALUADO MAS BAJO','031102-12P04301-12 (','12-1332-00-321525-2-2','1332','2012-11-12','','2012-07-11','2012-10-29','2012-10-29',111,'INVERSION'),(277,127,127,308,3,1,'Presupuesto fijo','031102-12P4407 (03-1','12-1332-00-321501-1-1','1332','2012-08-13','Declarada desierta - ningún proponente\r\nRES.TEC.ADM RPA-RPC/N°30/012','2012-07-11',NULL,NULL,0,'INVERSION'),(278,127,127,308,3,2,'Presupuesto fijo','031102-12P4407 (03-1','12-1332-00-321501-2-1','1332','2012-09-04','Declarada desierta - ningún proponente\r\nRES.TEC.ADM RPA-RPC/N°40/012','2012-07-11',NULL,NULL,0,'INVERSION'),(279,127,127,308,3,3,'Presupuesto fijo','031102-12P4407 (03-1','12-1332-00-341418-1-1','1332','2012-11-07','3ra. Convocatoria - RES.TEC.ADM. RPA/N°85/2012 Declaratoria desierta no se presentaron proponentes ','2012-07-11',NULL,NULL,0,'INVERSION'),(280,127,127,308,3,4,'Presupuesto fijo','031102-12P4407 (03-1','12-1332-00-341418-2-1','1332','2012-12-03','4Ta. Convocatoria - RES.TEC.ADM. RPA/N°98/2012 DE ADJUDICACIÓN','2012-07-11','2012-12-03','2012-12-03',146,'INVERSION'),(281,127,127,309,4,1,'Presupuesto fijo','031102-12C04503 (03-','12-1332-00-321463-1-1','1332','2012-08-13','1ra. Convocatoria - Se presenta un proponente, el informe de evaluación califica y sugiere adjudicar, pero se la declara desierta porque no tiene contrato con otro proyecto. RES.TEC.ADM. RPA-RPC/N°19/2012','2012-08-13',NULL,NULL,0,'INVERSION'),(282,127,127,309,4,2,'Presupuesto fijo','031102-12C04503 (03-','12-1332-00-321463-2-1','1332','2012-11-12','','2012-08-13','2012-12-03','2012-12-03',113,'INVERSION'),(283,102,102,102,1,2,'ANPE  PRECIO EVALUADO MAS BAJO','030702-13P03401 ','12-1321-00-347512-1-1','1321','2013-03-13','RES.ADM.Nº171/2012 - Declaratoria desierta de 26/12/2012','2012-10-12',NULL,NULL,0,'INVERSION'),(284,102,102,102,1,3,'ANPE  PRECIO EVALUADO MAS BAJO','030702-13P03401 ','12-1321-00-347512-1-1','1321','2013-07-15','','2012-10-12',NULL,NULL,0,'INVERSION'),(285,102,102,310,3,1,'Presupuesto fijo','030702-12P33307','12-1321-00-347544-1-1','1321','2012-12-03','Res. Adm. Declaratoria Desierta N°144/2012 de fecha 16/11/2012','2012-11-07',NULL,NULL,0,'INVERSION'),(286,102,102,310,3,2,'Presupuesto fijo','030702-12P33307','12-1321-00-347544-2-1','1321','2013-02-07','Res. Adm. Declaratoria Desierta N°144/2012 de fecha 16/11/2013','2012-11-07',NULL,NULL,0,'INVERSION'),(287,102,102,310,3,3,'Presupuesto fijo','030702-12P33307','12-1321-00-347544-3-1','1321','2013-05-09','Res. Adm. Declaratoria Desierta N°16/2013 de fecha 15/3/2013','2012-11-07',NULL,NULL,0,'INVERSION'),(288,102,102,310,3,4,'POR EXCEPCIÓN','030702-12P33307','No asignado','1321','2014-08-25','','2012-11-07','2013-04-09','2013-04-09',154,'INVERSION'),(291,167,167,311,4,1,'ANPE - Presupuesto fijo','07-0303-001-13','13-0287-06-361609-1-1','1990','2013-01-21','','2013-01-21','2013-02-06','2013-02-06',17,'INVERSION'),(292,184,183,312,1,1,'ANPE  PRECIO EVALUADO MAS BAJO','070303-12P00101   ','13-0287-06-355512-2-1','1990','2013-03-15','','2013-01-04','2013-02-22','2013-02-22',50,'INVERSION'),(293,184,183,313,3,1,'ANPE - Presupuesto fijo','070303-13P00107 ','13-0287-06-361609-1-1','1990','2013-01-21','','2013-01-21','2013-02-06','2013-02-06',17,'INVERSION'),(294,182,182,314,3,1,'ANPE - Presupuesto fijo','071502-12P00507  ','13-0287-06-357025-1-1 ','1990','2013-01-02','GD/SCZ/002-A/2013 Declaratoria Desierta','2013-01-18',NULL,NULL,NULL,'INVERSION'),(295,182,182,314,3,2,'ANPE - Presupuesto fijo','031302-12P23207','13-0287-06-357025-2-1','1990','2013-02-05','','2013-01-18','2013-02-05','2013-02-05',19,'INVERSION'),(296,169,169,315,3,1,'ANPE - Presupuesto fijo','071104-13P00107     ','13-0287-06-361654-1-1','1990','2013-03-08','','2013-01-21','2013-02-06','2013-02-06',17,'INVERSION'),(297,169,169,316,4,1,'ANPE - Presupuesto fijo','071104-13P00203     ','13-0287-06-361663-2-1','1990','2013-03-12','','2013-02-07','2013-02-27','2013-02-27',21,'INVERSION'),(299,183,184,287,3,1,'ANPE - Presupuesto fijo','050903-12P00115','13-0287-05-377493-1-1','1990','2013-08-23','Resolución de Adjudicación CITE: PREINVERSIÓN/RPA/PLANVIDAKFW/PI/02/13 de fecha 03/5/2013','2013-04-08','2013-05-03','2013-05-03',26,'INVERSION'),(300,156,156,318,3,1,'Presupuesto fijo','050104-12P00515','12-1502-00-326760-1-1','1304','2012-12-21','Resolución de Adjudicación GAM/TINGUIPAYA/RPA/OPEC/0207/12 de fecha 7/9/2012 ','2012-08-08','2012-09-07','2012-09-07',31,'INVERSION'),(301,35,35,35,1,2,'ANPE  PRECIO EVALUADO MAS BAJO','030503-12P33701','12-1314-00-348312-2-1','1314','2013-03-12','RES. DECLARATORIA DESIERTA R- RPA N° 0007/2013 de 31/1/2013 No se presentaron ofertas','2012-10-31',NULL,NULL,0,'INVERSION'),(302,35,35,35,1,3,'ANPE  PRECIO EVALUADO MAS BAJO','030503-12P33701','13-1314-00-348312-3-1','1314','2013-08-15','RES. DECLARATORIA DESIERTA R- RPA N° 0116/2013 de fecha 19/7/2013 No se presentaron ofertas','2012-10-31',NULL,NULL,0,'INVERSION'),(303,35,35,35,1,4,'ANPE  PRECIO EVALUADO MAS BAJO','030503-12P33701','13-1314-00-348312-4-1','1314','2013-11-29','RES. DE ANULACIÓN (Error en el DBC) R-RPA N¡ 023/2013 de 30/11/2012','2012-10-31',NULL,NULL,0,'INVERSION'),(304,35,35,35,1,5,'ANPE  PRECIO EVALUADO MAS BAJO','030503-12P33701','13-1314-00-348312-4-1','1314','2013-10-09','En proceso de calificación','2012-10-31',NULL,NULL,0,'INVERSION'),(305,35,35,319,3,1,'Presupuesto fijo','030503-12P33807','13-1314-00-374080-1-1','1314','2013-05-13','RES. DECLARATORIA DESIERTA R- RPA N° 074/2012 de 13/5/2013 Propuestas no cumplieron el DBC','2013-05-13',NULL,NULL,NULL,'INVERSION'),(306,35,35,319,3,2,'Presupuesto fijo','030503-12P33807','13-1314-00-374080-2-1','1314','2013-07-11','RES. DECLARATORIA DESIERTA R- RPA N° 088/2013 de 23/5/2013 No se presentaron proponentes','2013-03-26',NULL,NULL,0,'INVERSION'),(307,70,70,188,3,1,'ANPE - Presupuesto fijo','031302-12P23303					','12-1339-00-333997-1-1						','1339','2014-09-25','RES. ADM. No.075/2012 de adjudicación 				','2012-09-12','2012-09-21','2012-09-21',10,'INVERSION'),(310,70,70,187,3,1,'ANPE - Presupuesto fijo						','031302-12P23207					','12-1339-00-333987-1-1						','1339','2012-09-19','RES. ADM. G.A.M.T. No.078/2012 Declaratoria Desierta.				','2012-09-12',NULL,NULL,NULL,'INVERSION'),(311,70,70,187,3,2,'ANPE - Presupuesto fijo						','031302-12P23207					','12-1339-00-333987-2-1						','1339','2012-09-19','RES. ADM. No.085/2012 de adjudicación - Res Municipal no.128/2012 Aprobación CM				\r\n','2012-09-12','2012-10-11','2012-10-11',30,'INVERSION'),(312,35,35,35,1,6,'POR EXCEPCIÓN','030503-12P33701					','13-1314-00-348312-4-2						','1314','2014-02-25','RES. DECLARATORIA DESIERTA R- RPA N° 028-A/2013 de fecha 7/11/2013 No se presentaron ofertas				','2012-10-31','2014-01-30',NULL,457,'INVERSION'),(313,35,35,319,3,3,'COMPRA MENOR','NO APLICA','NO APLICA','1314','2014-10-08','','2013-05-13','2014-04-28',NULL,351,'INVERSION'),(314,1,1,1,1,2,'1','1','1','1','2014-12-01','','2014-12-02','2014-12-03',NULL,2,'INVERSION'),(315,137,137,137,1,1,'ere','er','rer',NULL,'2014-12-01','erer',NULL,NULL,NULL,0,'PRE-INVERS');
/*!40000 ALTER TABLE `t_lac_estacion_licitacion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_licitacion_adjudicacion_contratacion_proyecto`
--

DROP TABLE IF EXISTS `t_licitacion_adjudicacion_contratacion_proyecto`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_licitacion_adjudicacion_contratacion_proyecto` (
  `lac_id` int(10) NOT NULL AUTO_INCREMENT,
  `lac_proyecto_id` int(10) NOT NULL,
  `lac_funcionario_llenado` int(10) DEFAULT NULL,
  `lac_modalidad_licitacion` int(10) DEFAULT NULL,
  `lac_correlativo` varchar(20) COLLATE utf8_spanish_ci DEFAULT NULL,
  `lac_id_user` int(11) DEFAULT NULL,
  `lac_fcha_ult_modif` datetime DEFAULT NULL,
  PRIMARY KEY (`lac_id`),
  KEY `fk_lac_proy` (`lac_proyecto_id`),
  KEY `fk_lac_persona` (`lac_funcionario_llenado`),
  KEY `fk_lac_modalidad` (`lac_modalidad_licitacion`),
  KEY `fk_lac_user` (`lac_id_user`),
  CONSTRAINT `fk_lac_modalidad` FOREIGN KEY (`lac_modalidad_licitacion`) REFERENCES `p_estado_etapa` (`estado_codigo`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_lac_proy` FOREIGN KEY (`lac_proyecto_id`) REFERENCES `t_proyecto` (`proyecto_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=185 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_licitacion_adjudicacion_contratacion_proyecto`
--

LOCK TABLES `t_licitacion_adjudicacion_contratacion_proyecto` WRITE;
/*!40000 ALTER TABLE `t_licitacion_adjudicacion_contratacion_proyecto` DISABLE KEYS */;
INSERT INTO `t_licitacion_adjudicacion_contratacion_proyecto` VALUES (1,1,18,2,'1',7,'2014-12-15 23:18:09'),(5,5,1,2,'2',NULL,NULL),(9,9,1,2,'',NULL,NULL),(13,13,1,2,'3646',8,'2014-08-21 10:17:16'),(16,16,1,2,'3647',8,'2014-08-20 11:57:06'),(22,22,1,2,'3651',8,'2014-08-19 16:54:27'),(24,24,1,2,'3499',8,'2014-08-26 15:18:03'),(26,26,1,2,'',NULL,NULL),(27,27,1,2,'',NULL,NULL),(28,28,1,2,'',NULL,NULL),(29,29,1,2,'',NULL,NULL),(30,30,1,2,'',NULL,NULL),(31,31,1,2,'',NULL,NULL),(33,33,1,2,'',NULL,NULL),(35,35,1,2,'3647',8,'2014-08-25 10:00:40'),(37,37,1,2,'',NULL,NULL),(39,39,1,2,'',NULL,NULL),(41,41,1,2,'',NULL,NULL),(43,43,1,2,'',NULL,NULL),(46,46,1,2,'',NULL,NULL),(53,53,1,2,'',NULL,NULL),(56,56,1,2,'',NULL,NULL),(59,59,1,2,'',NULL,NULL),(62,62,1,2,'',NULL,NULL),(64,64,1,2,'3515',8,'2014-08-22 12:06:35'),(68,68,1,2,'',NULL,NULL),(70,70,1,2,'3517',8,'2014-08-25 10:17:11'),(73,73,1,2,'',NULL,NULL),(75,75,1,2,'',NULL,NULL),(77,77,1,2,'',NULL,NULL),(79,79,1,2,'',NULL,NULL),(81,81,1,2,'',NULL,NULL),(84,84,1,2,'',NULL,NULL),(87,87,1,2,'',NULL,NULL),(90,90,1,2,'3505',8,'2014-08-22 15:53:33'),(93,93,1,2,'',NULL,NULL),(97,97,1,2,'',NULL,NULL),(99,99,1,2,'',NULL,NULL),(102,102,1,2,'3492',8,'2014-08-25 10:00:02'),(104,104,1,2,'',NULL,NULL),(106,106,1,2,'3487',8,'2014-08-22 11:29:24'),(108,108,1,2,'',NULL,NULL),(110,110,1,2,'3497',8,'2014-08-21 12:01:24'),(112,112,1,2,'3498',8,'2014-08-22 10:17:06'),(115,115,1,2,'3499',8,'2014-08-21 17:56:21'),(118,118,1,2,'',NULL,NULL),(121,121,1,2,'3501',8,'2014-08-21 15:33:21'),(122,122,1,2,'3485',8,'2014-08-21 16:28:59'),(125,125,1,2,'',NULL,NULL),(127,127,1,2,'3487',8,'2014-08-22 18:02:12'),(130,130,1,2,'',NULL,NULL),(133,133,1,2,'',NULL,NULL),(136,136,1,2,'3490',8,'2014-08-22 17:23:01'),(137,137,1,2,'',NULL,NULL),(140,140,1,2,'',NULL,NULL),(143,143,3,2,'4257',7,'2014-12-16 21:27:25'),(146,146,1,2,'',NULL,NULL),(152,152,1,2,'',NULL,NULL),(154,154,1,2,'',NULL,NULL),(156,156,1,1,'4033',9,'2014-09-29 17:45:22'),(167,167,1,2,'3559',8,'2014-08-25 11:32:46'),(169,169,1,2,'3556',8,'2014-08-26 10:28:57'),(180,180,1,2,'',NULL,NULL),(182,182,1,2,'3558',8,'2014-08-26 10:01:52'),(183,184,1,1,'4174',8,'2014-06-24 09:44:11'),(184,183,1,2,'3559',8,'2014-08-25 12:24:14');
/*!40000 ALTER TABLE `t_licitacion_adjudicacion_contratacion_proyecto` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_licitacion_adjudicacion_cotratacion_proyecto_estacion`
--

DROP TABLE IF EXISTS `t_licitacion_adjudicacion_cotratacion_proyecto_estacion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_licitacion_adjudicacion_cotratacion_proyecto_estacion` (
  `lac_estacion_id` int(10) NOT NULL AUTO_INCREMENT,
  `licitacion_adjudicacion_contratacion_id` int(10) NOT NULL,
  `lac_proyecto_id` int(10) NOT NULL,
  `licitacion_adjudicacion_contratacion_tipo_id` int(10) NOT NULL,
  `lac_monto_base` decimal(10,2) DEFAULT NULL,
  `lac_plazo_ejecucion` int(10) DEFAULT NULL,
  PRIMARY KEY (`lac_estacion_id`),
  KEY `fk_lac_e_lac` (`licitacion_adjudicacion_contratacion_id`),
  KEY `fk_lac_e_proy` (`lac_proyecto_id`),
  KEY `fk_lac_e_tipo` (`licitacion_adjudicacion_contratacion_tipo_id`),
  CONSTRAINT `fk_lac_e_lac` FOREIGN KEY (`licitacion_adjudicacion_contratacion_id`) REFERENCES `t_licitacion_adjudicacion_contratacion_proyecto` (`lac_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_lac_e_proy` FOREIGN KEY (`lac_proyecto_id`) REFERENCES `t_proyecto` (`proyecto_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=320 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_licitacion_adjudicacion_cotratacion_proyecto_estacion`
--

LOCK TABLES `t_licitacion_adjudicacion_cotratacion_proyecto_estacion` WRITE;
/*!40000 ALTER TABLE `t_licitacion_adjudicacion_cotratacion_proyecto_estacion` DISABLE KEYS */;
INSERT INTO `t_licitacion_adjudicacion_cotratacion_proyecto_estacion` VALUES (1,1,1,1,539888.32,137),(5,5,5,1,869886.24,0),(9,9,9,1,999397.11,0),(13,13,13,1,894330.55,160),(16,16,16,1,2290594.34,160),(22,22,22,1,1666932.11,120),(24,24,24,1,1265275.61,160),(26,26,26,1,244121.94,0),(27,27,27,1,72831.29,0),(28,28,28,1,77738.12,0),(29,29,29,1,146727.27,0),(30,30,30,1,515387.73,0),(31,31,31,1,890193.88,180),(33,33,33,1,515742.85,168),(35,35,35,1,1001164.12,185),(37,37,37,1,971226.75,158),(39,39,39,1,515387.73,120),(41,41,41,1,562066.52,225),(43,43,43,1,1392649.45,198),(46,46,46,1,531229.37,173),(53,53,53,1,397675.89,130),(56,56,56,1,496028.75,163),(59,59,59,1,351115.13,90),(62,62,62,1,1386874.46,0),(64,64,64,1,1342544.31,160),(68,68,68,1,146820.95,120),(73,73,73,1,146988.00,168),(75,75,75,1,110661.66,120),(77,77,77,1,145984.12,225),(79,79,79,1,105952.72,120),(81,81,81,1,1193222.33,0),(84,84,84,1,1825447.81,150),(87,87,87,1,484310.55,160),(90,90,90,1,894330.55,229),(93,93,93,1,561504.31,90),(97,97,97,1,987884.44,150),(99,99,99,1,497924.76,225),(102,102,102,1,1126285.45,150),(104,104,104,1,466400.01,180),(106,106,106,1,565499.05,150),(108,108,108,1,872531.57,165),(110,110,110,1,1028912.89,185),(112,112,112,1,534659.68,120),(115,115,115,1,1265275.61,160),(118,118,118,1,663716.90,185),(121,121,121,1,89433055.00,160),(122,122,122,1,89433055.00,160),(125,125,125,1,124274.78,66),(127,127,127,1,864695.47,120),(130,130,130,1,965366.92,240),(133,133,133,1,1786053.43,135),(136,136,136,1,1431938.19,160),(137,137,137,1,1099483.86,121),(140,140,140,1,1142936.96,0),(143,143,143,5,113935.76,70),(146,146,146,1,1356787.26,0),(152,152,152,1,205800.00,0),(154,154,154,1,581040.87,200),(167,167,167,1,1983827.41,150),(169,169,169,1,2126475.09,148),(180,180,180,1,700667.80,317),(182,182,182,1,1228897.94,180),(186,70,70,1,894330.55,160),(187,70,70,3,24896.23,150),(188,70,70,4,19916.99,150),(278,1,1,2,6.00,7),(279,1,1,1,1.00,1),(280,1,1,2,2.00,3),(281,1,1,2,1.00,1),(282,1,1,4,1.00,1),(285,1,1,1,1500.00,1),(287,183,184,5,99545.37,70),(289,22,22,3,100016.00,210),(290,16,16,3,114529.70,190),(291,16,16,4,114529.70,190),(292,13,13,3,40323.10,210),(293,13,13,4,40323.10,210),(294,110,110,3,47000.00,330),(295,121,121,3,24896.23,240),(296,122,122,3,49694.10,150),(297,122,122,4,39752.49,150),(298,115,115,3,3904825.00,190),(299,115,115,4,50611.02,190),(300,112,112,3,25500.00,120),(301,112,112,4,2127296.00,120),(302,106,106,3,28275.00,120),(303,64,64,3,60000.00,210),(304,64,64,4,50000.00,150),(305,90,90,3,44716.53,150),(306,90,90,4,35773.22,150),(307,136,136,3,71595.00,250),(308,127,127,3,43200.00,120),(309,127,127,4,34500.00,210),(310,102,102,3,55000.00,230),(311,167,167,3,75000.00,270),(312,184,183,1,1983827.41,150),(313,184,183,3,75000.00,270),(314,182,182,3,68000.00,270),(315,169,169,3,75000.00,270),(316,169,169,4,95000.00,240),(318,156,156,5,235698.28,70),(319,35,35,3,49000.00,185);
/*!40000 ALTER TABLE `t_licitacion_adjudicacion_cotratacion_proyecto_estacion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_licitacion_detalle`
--

DROP TABLE IF EXISTS `t_licitacion_detalle`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_licitacion_detalle` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `licitacion_detalle_descripcion` varchar(150) COLLATE utf8_spanish_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_licitacion_detalle`
--

LOCK TABLES `t_licitacion_detalle` WRITE;
/*!40000 ALTER TABLE `t_licitacion_detalle` DISABLE KEYS */;
INSERT INTO `t_licitacion_detalle` VALUES (10,'modalidad'),(11,'cod_convocatoria'),(12,'cuce'),(13,'encargada_proceso'),(14,'fecha_registro'),(15,'boleta_seriedad'),(16,'fecha_apertura'),(17,'fecha_recomendacion'),(18,'fecha_no_objeción'),(19,'fecha_inicio_P10'),(20,'fecha_fin_P30'),(21,'codigo_contrato'),(22,'monto_contratado'),(23,'nombre_empresa'),(24,'buena_inversion'),(25,'cumplimiento_contrato'),(26,'plazo_ejecucion'),(27,'fecha_inicio_P30'),(28,'fecha_fin_C10');
/*!40000 ALTER TABLE `t_licitacion_detalle` ENABLE KEYS */;
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
-- Table structure for table `t_proyecto`
--

DROP TABLE IF EXISTS `t_proyecto`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_proyecto` (
  `proyecto_id` int(11) NOT NULL AUTO_INCREMENT,
  `proyecto_comunidad` varchar(10) CHARACTER SET utf32 COLLATE utf32_spanish_ci DEFAULT NULL,
  `proyecto_municipio` varchar(10) CHARACTER SET utf32 COLLATE utf32_spanish_ci DEFAULT NULL,
  `proyecto_provincia` varchar(10) CHARACTER SET utf32 COLLATE utf32_spanish_ci DEFAULT NULL,
  `proyecto_departamento` varchar(10) CHARACTER SET utf32 COLLATE utf32_spanish_ci DEFAULT NULL,
  `proyecto_sector_codigo` varchar(50) CHARACTER SET latin2 DEFAULT NULL,
  `proyecto_convenio_codigo` int(11) NOT NULL,
  `proyecto_lugar_codigo` int(11) DEFAULT NULL,
  `proyecto_tipo_proyecto_codigo` int(11) DEFAULT NULL,
  `proyecto_solicitante` varchar(10) CHARACTER SET utf32 COLLATE utf32_spanish_ci NOT NULL,
  `proyecto_codigo` varchar(10) CHARACTER SET utf32 COLLATE utf32_spanish_ci NOT NULL,
  `proyecto_descripcion` varchar(200) CHARACTER SET utf32 COLLATE utf32_spanish_ci DEFAULT NULL,
  `proyecto_codigo_sap` varchar(50) CHARACTER SET utf32 COLLATE utf32_spanish_ci DEFAULT NULL,
  `proyecto_solicitante_obs` varchar(700) CHARACTER SET utf32 COLLATE utf32_spanish_ci DEFAULT NULL,
  `proyecto_monto_solictado_bs` decimal(10,2) DEFAULT NULL,
  `proyecto_monto_solicitado_sus` decimal(10,2) DEFAULT NULL,
  `proyecto_observacion_monto` varchar(700) CHARACTER SET utf32 COLLATE utf32_spanish_ci DEFAULT NULL,
  `proyecto_descripcion_larga` text CHARACTER SET utf32 COLLATE utf32_spanish_ci,
  `proyecto_plazo_ejecucion` int(11) DEFAULT NULL,
  `proyecto_nro_familias` int(11) DEFAULT NULL,
  `proyecto_numero_sisin` varchar(50) CHARACTER SET utf32 COLLATE utf32_spanish_ci DEFAULT NULL,
  `pry_nivel_ciclo` int(11) DEFAULT '1',
  `pry_resp_llen` int(11) DEFAULT NULL,
  `pry_id_usuario` int(11) DEFAULT NULL,
  `pry_fecha_ult_modif` datetime DEFAULT NULL,
  `pry_estado` int(2) DEFAULT NULL,
  `proyecto_comunidad_text` varchar(800) CHARACTER SET utf32 COLLATE utf32_spanish2_ci DEFAULT NULL,
  PRIMARY KEY (`proyecto_id`),
  KEY `fk_proy_convenio` (`proyecto_convenio_codigo`),
  KEY `fk_proy_sector` (`proyecto_sector_codigo`) USING BTREE,
  KEY `fk_proy_resp_llen` (`pry_resp_llen`),
  KEY `fk_proy_tipo` (`proyecto_tipo_proyecto_codigo`),
  CONSTRAINT `fk_proy_convenio` FOREIGN KEY (`proyecto_convenio_codigo`) REFERENCES `p_programa_convenio` (`convenio_codigo`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_proy_sector` FOREIGN KEY (`proyecto_sector_codigo`) REFERENCES `p_sector` (`sector_cod`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=186 DEFAULT CHARSET=latin2 COLLATE=latin2_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_proyecto`
--

LOCK TABLES `t_proyecto` WRITE;
/*!40000 ALTER TABLE `t_proyecto` DISABLE KEYS */;
INSERT INTO `t_proyecto` VALUES (1,'010103','010103','010103','010103','3.05.',58,2,2,'1103','','CONSTRUCCION SISTEMA DE MICRORIEGO KALASAMANA (POROMA)','FPS-01-00003737','',419875.00,61206.27,'','CONST. OBRA DE TOMA (TIROLESA), PROTECCIÓN CON COLCHONETA Y GAVIONES, CONST. CANAL DE INGRESO Y DESARENADOR, CONST. CANALES DE Hº Cº, TAPAS DE HºAº L=80ML., Y TENDIDO DE TUBERÍA DE CONDUCCIÓN PRINCIPAL, TANQUE DE ALMACENAMIENTO DE 126M3 Y PASOS DE QUEBRAD',120,160,'2873083800000',1,NULL,9,'2014-10-11 10:01:37',1,NULL),(5,'010304','010304','010304','010304','3.05.',58,2,2,'1109','','AMP. SISTEMA DE MICRO RIEGO COMUNIDAD DE PILA TORRE (ICLA)','FPS-01-00003642','',15000.00,2186.59,'','xvxcv',0,205,'02873083600000',1,NULL,NULL,NULL,NULL,NULL),(9,'010304','010304','010304','010304','3.05.',58,2,2,'1109','','AMP.  SISTEMA DE MICRORIEGO CANDELARIA (ICLA)','FPS-01-00003644','',20000.00,2915.45,'','cvcv',0,164,'02873083700000',1,NULL,9,'2014-09-26 11:23:52',1,'Candelaria'),(13,'010302','010302','010302','010302','3.05.',58,2,2,'1107','','CONST. DE Q’OCHAS PARA COSECHA DE AGUA COMUNIDAD DE ARAMASI (PRESTO)','FPS-01-00003646','',887109.85,129316.30,'','EL PROYECTO CONSISTE EN LA CONSTRUCCION DE 8 ATAJADOS DE DIFERENTES VOLUMENES (1200M3, 1400M3, 1100M3, 1400M3, 1600M3, 700M3, 1700M3, 1400M3) PARA EL ALMACENAMIENTO DE AGUA DE LLUEVIA. CADA ATAJADO CONSTA DE OBRAS COMPLEMENTARIAS PARA SU FUNCIONAMIENTO EN',120,80,'2873080200000',1,3,9,'2014-09-26 10:18:26',1,'Aramasi'),(16,'010202','010202','010202','010202','3.05.',58,2,2,'1105','','CONST. SISTEMA MICRORIEGO TAREA PAMPA - PATA TAREA (TARVITA)','FPS-01-00003647','',2327343.71,339262.93,'','EL PROYECTO CONSISTE EN LA CONSTRUCCION DE UN SISTEMA DE RIEGO QUE CONSTA DE UNA OBRA DE TOMA TIPO AZUD DE HºCª, LA RED DE ADUCCION DE TUBERIA D=8\" CLASE 6 L=5207 M, RED DE DISTRIBUCION DE TUBERIA D=6\" CLASE 6 L=2163 M, TANQUE DE ALMACENAMIENTO DE 40 M3, ',180,185,'2873083900000',1,1,9,'2014-09-26 10:17:45',1,'Tarea Pampa Pata Tarea'),(22,'010103','010103','010103','010103','3.10.',58,2,2,'1103','','MEJORAMIENTO CAMINO CRUCE ROMERAL - HUAYNA  HUAYNA  (POROMA)','FPS-01-00003651','',1766948.11,257572.61,'',' ',120,166,'2873084200000',1,1,9,'2014-09-26 10:19:00',1,'Huayna Huayna'),(24,'020709','020709','020709','020709','3.05.',58,2,2,'1249','','CONST. MERCADO AGROPECUARIO APOLO (APOLO)','FPS-02-00003831','',1977024.00,288195.92,'','EL PROYECTO CONSTA DE LA CONSTRUCCION DE 2 BLOQUES, CON MODULOS DE OBRA GRUESA, OBRA FINA, INSTALACION ELECTRICA, INSTALACION SANITARIA Y AGUA POTABLE CON LA CONSTRUCION DE BATERIA DE BAÑOS, 102 MODULOS PARA LA VENTA DE PRODUCTOS, PORTERIA, OFICINAS',0,5696,'2873896400000',1,1,9,'2014-09-26 11:22:50',1,'Apolo'),(26,'031301','031301','031301','031301','3.05.',58,2,2,'1338','','CONCL. CONST. ATAJADOS INTINIMAYU (ARQUE)','FPS-03-00003944','',244115.87,35585.40,'','- CONCLUSION 7 ATAJADOS DE TIERRA DE ACUERDO AL SIGUIENTE DETALLE:\n\n ESTOS ATAJADOS CUENTAN CON LAS SIGUIENTES OBRAS COMPLEMENTARIAS:\n\nA.- CANAL DE INGRESO\n\nB.- DESARENADOR.\n\nC.- CANAL DE EXCEDENCIA.\n\nE.- CÁMARA DE PROTECCIÓN.\n\nG.- CÁMARA DE LLAVES.\n\nH.- ',0,87,'',1,1,NULL,NULL,NULL,NULL),(27,'030503','030503','030503','030503','3.10.',58,2,2,'1314','','CONCL. CONST. PUENTE VEHICULAR K´HOÑI ARROYO I (V. TUNARI)','FPS-03-00003937','',72831.40,10616.82,'','EL PROYECTO CONSISTE EN  UN PUENTE CAJON DE 7 M. DE LONGITUD, CON UN ANCHO DE CIRCULACION DE 4 M., CUYA INFRAESTRUCTURA Y SUPERESTRUCTURA ES DE HORMIGON ARMADO',0,5476,'',1,1,NULL,NULL,NULL,NULL),(28,'030503','030503','030503','030503','3.10.',58,2,2,'1314','','CONCL. CONST. PUENTE VEHICULAR K´HOÑI ARROYO II (V. TUNARI)','FPS-03-00003938','',77738.43,11332.13,'','EL PROYECTO CONSISTE EN  UN PUENTE CAJON DE 7 M. DE LONGITUD, CON UN ANCHO DE CIRCULACION DE 4 M., CUYA INFRAESTRUCTURA Y SUPERESTRUCTURA ES DE HORMIGON ARMADO',0,5476,'',1,1,NULL,NULL,NULL,NULL),(29,'030503','030503','030503','030503','3.10.',58,2,2,'1314','','CONCL. CONST. PUENTE VEHICULAR K´HOÑI ARROYO III (V. TUNARI)','FPS-03-00003940','',146727.40,21388.83,'','PUENTE VEHICULAR TIPO CAJOS DE 5 M DE LUZ CON UN ANCHO DE VIA DE 4 M. , LA INFRAESTRUCTURA Y LA SUPERESCTRUCTURA ES DE HORMIGON ARMADO, ADEMAS CONTEMPLA BARANDADO DE HORMIGON ARMADO',0,5475,'',1,1,NULL,NULL,NULL,NULL),(30,'030503','030503','030503','030503','3.10.',58,2,2,'1314','','CONCL. CONST. PUENTE VEHICULAR VENTON ARROYO I (V. TUNARI)','FPS-03-00003941','',515387.73,75129.41,'','CONSTRUCCION PUENTE VEHICULAR DE 16.5 M DE LUZ, CON ANCHO DE VIA DE 4 M. CON INFRAESTRUCTURA CONSISTENTE EN PILOTES Y SUPERESTRUCTURA DE HORMIGON ARMADO (VIGA, LOSA, BARANDADO Y ACCESOS AL PUENTE',0,5475,'',1,1,NULL,NULL,NULL,NULL),(31,'031501','031501','031501','031501','3.10.',58,2,2,'1341','','CONST.  PUENTE VEHICULAR SAPANANI-PUKAWASI (TIRAQUE)','FPS-03-00003717','',1261739.84,183927.09,'','EL PROYECTO CONSISTE EN LA CONSTRUCCIÓN DE UN PUENTE VEHICULAR DE UNA VIA Y LOGITUD DE 24 METROS, LOSA, ACERAS Y BARANDADO DE HORMIGÓN ARMADO, VIGAS POSTENSADAS, LA INFRAESTRUCTURA ESTA COMPUESTA POR ESTRIBOS DE HORMUGÓN ARMADO Y FUNDACIÓN DEIRECTA EN HOR',180,4560,'02874560400000',1,1,NULL,NULL,NULL,NULL),(33,'030503','030503','030503','030503','3.10.',58,2,2,'1314','','CONST. PUENTE TACUARAL I (V. TUNARI)','FPS-03-00003644','',446458.64,65081.43,'','',150,1853,'2874556300000',1,1,NULL,NULL,NULL,NULL),(35,'031002','031002','031002','031002','3.10.',58,2,2,'1314','','CONST. PUENTE VEHICULAR VALLE ALTO (V. TUNARI)','FPS-03-00003647','',1243577.36,181279.50,'','EL PROYECTO CONSISTE EN UN PUENTE VEHICULAR DE UN TRAMO DE 30.60 METROS DE LUZ CON DOS VIGAS POSTENSADAS, LOSA DE HORMIGÓN ARMADO DE UNA SOLA VÍA ANCHO DE CALZADA 4 METROS, BARANDADO TIPO P3 ABC, LA INFRAESTRUCTURA ESTA COMPUESTA POR FUNDACIÓN PROFUNDA ',0,1625,'2874556100000',1,1,9,'2014-09-26 10:28:11',1,'Valle Alto - Carmen Pampa'),(37,'031001','031001','031001','031001','3.10.',58,2,2,'1330','','CONST. PUENTE PEATONAL HUAYLLA MAYU (TAPACARI)','FPS-03-00003652','',1031157.47,150314.50,'','EL PROYECTO CONSISTE EN LA CONSTRUCCIÓN DE UN PUENTE PEATONAL COLGANTE DE 50 METROS DE LUZ , LA ESTRUCTURA PORTANTE LA CONSTITUYE UN PAR DE CABLES DISPUESTOS A AMABOS EXTREMOS  DEL PUENTE, DEL CUAL CUALGAN LAS PENDOLAS CADA 1.5 METROS, EL SISTEMA DE ANCLA',149,3255,'2874556200000',1,1,NULL,NULL,NULL,NULL),(39,'030503','030503','030503','030503','3.10.',58,2,2,'1314','','CONST. PUENTE VEHICULAR VENTON ARROYO I (V. TUNARI)','FPS-03-00003641','',452563.22,65971.31,'','CONSTRUCCION DE UN PUENTE VEHICULAR DE 16.5 ML, CONSTA EN LA CONSTRUCCION DE PILOTES ACERAS Y PASAMANOS CON UN ANCHO DE 4ML ',120,515,'2874555900000',1,1,NULL,NULL,NULL,NULL),(41,'030503','030503','030503','030503','3.10.',58,2,2,'1314','','CONST. PUENTE VEHICULAR ABDIAS (V. TUNARI)','FPS-03-00003643','',531818.30,77524.53,'','',195,3345,'2874555800000',1,1,NULL,NULL,NULL,NULL),(43,'031603','031603','031603','031603','3.05.',58,2,2,'1344','','CONSTR. SIST. DE RIEGO PALCA RUMY CORRAL (ALALAY)','FPS-03-00003589','',2022368.47,294805.90,'','-CONSTRUIR UNA OBRA DE TOMA LATERAL CON AZUD DERIVADOR QUE PERMITAN UNA CAPTACIÓN DE 0.28 M3 DE AGUA POR DÍA. CONSTRUCCIÓN DE 1 DESARENADOR. CONSTRUCCIÓN Y TENDIDO TUBERÍA  DE 6.67 KM CON DIÁMETRO DE 6\" PVC. CONSTRUCCIÓN DE 9 PASOS DE QUEBRADA CON TUBERÍA',150,275,'2874549200000',1,1,NULL,NULL,NULL,NULL),(46,'030702','030702','030702','030702','3.05.',58,2,2,'1321','','CONST. SIST. DE MICRO RIEGO LLAVE LLAVE (ANZALDO)','FPS-03-00003573','',492852.00,71844.31,'','CONSTRUCCIÓN DE UNA PRESA DE AGUA EN LA QUEBRADA DE LLAVE LLAVE, SISTEMA DE CONDUCCIÓN ABIERTO Y CERRADO EN UNA LONGITUD DE 1634 M',120,85,'2874555500000',1,1,NULL,NULL,NULL,NULL),(53,'031301','031301','031301','031301','3.05.',58,2,2,'1338','','CONST. SIST. DE RIEGO CHUYMANI  (ARQUE)','FPS-03-00003525','',385758.08,56232.96,'','CONST. DE UNA OBRA DE TOMA LATERAL, 12 CAMARAS DE DISTRIBUCION, ADUCCION TUBERIA PVC 3\" 1623 MTS, 8 PASOS DE QUEBRADA DE DIFERENTES LONGUITUDES',90,145,'2874547000000',1,1,NULL,NULL,NULL,NULL),(56,'031301','031301','031301','031301','3.05.',58,2,2,'1338','','CONST. ATAJADOS INTINIMAYU (ARQUE)','FPS-03-00003511','',713159.65,103959.13,'','CONSTRUCCION DE 8 ATAJADOS DE TIERRA CON CAPACIDAD DE 3000M3, 2000M3 Y 1500M3 CON PENDIENTES VARIABLES, CONSTA DE CANAL DE INGRESO, DESARENADOR, CANAL DE EXCEDENCIA, CAMARA DE PROTECCION, CAMARA DE LLAVES, CERCO PERIMETRAL.',120,87,'2874547100000',1,1,NULL,NULL,NULL,NULL),(59,'031602','031602','031602','031602','3.05.',58,2,2,'1343','','CONST. RIEGO PRESUPRIZADO CHAGO MAYU Y LINDE MAYU (VILA VILA)','FPS-03-00003513','',317590.70,46296.02,'','CONSISTE EN LA CONSTRUCCION DE UN SISTEMA DE RIEGO TECNIFICADO EN EL MUNICIPIIO DE VILA VILA, COMUNIDAD DE CHAGO MAYU, COSISTE EN LA CONSTRUCION DE UNA OBRA DE TOMA TIPO AZUD, DE HORMIGON CICLOPEO, EN DSARENADOR DE HORMIGON CICLOPEOUN SISTEMA DE ADUCCION ',90,75,'2874549000000',1,1,NULL,NULL,NULL,NULL),(62,'030402','030402','030402','030402','3.10.',58,2,2,'1311','','CONST. PUENTE VEHICULAR GONCHU MAYU (MOROCHATA)','FPS-03-00003514','',1426037.17,207877.14,'','CONSTRUCCION DE UN PUENTE VEHICULAR DE UN TRAMOS DE HºAº DE 37.6 ML DE LONGITUD, 4 M DE ANCHO DE CALZADA, BARANDADO DE HºAº, FUNDACIONES CON PILOTAJE.',0,3255,'2874560200000',1,1,NULL,NULL,NULL,NULL),(64,'030705','030705','030705','030705','3.05.',58,2,2,'1329','','CONST. MUROS DEFENSIVOS SOBRE EL RIO ARQUE Y SAYARI PAQUETE II (SICAYA)','FPS-03-00003515','',1266973.36,184689.99,'','CONSTRUCCION DE MUROS DE FENSIVOS DE HºCº, PARA RECUPERACION DE TERRENOS EN EL RIO ARQUE NY SAYARI',120,220,'2874549100000',1,1,9,'2014-09-26 10:40:20',1,'Kara Kara, Liquimpay, Higuerani y Soraraya'),(68,'030503','030503','030503','030503','3.10.',58,2,2,'1314','','CONST. PUENTE VEHICULAR K´HOÑI ARROYO III (V. TUNARI)','FPS-03-00003516','',207968.17,30316.06,'','CONSTRUCCION DE PUENTE VEHICULAR CAJON DE 1 BOBEDA DE 5 ML DE LONGITUD, ANCHO DE CALZADA 4M, ALTURA LIBRE DE BOVEDA 1,7 M. Y ANCHO DE 4 M, BARANDADO DE Hº Aº, ACERAS A CADA LADO DE 0.65 M Y ALEROS DE ENCAUCE DE Hº Aº.',120,367,'2874549600000',1,1,NULL,NULL,NULL,NULL),(70,'030607','030607','030607','030607','3.05.',58,2,2,'1339','','CONST. SIST. RIEGO SISAQUEÑA (TACOPAYA)','FPS-03-00003517','',2010693.17,293103.96,'','EL PROYECTO CONSISTE EN INCREMENTAR LA SUPERFICIE CULTIVADA REALIZANDO 4.1 KM DE TUBERIA SDR 41 ,CONSTRUCCION DE 31 CAMARAS DE INTERMEDIAS, CONSTRUCCION DE PASOS DE QUEBRADA EN TOTAL DE 11 PASOS Y LA CONSTRUCCION DE UN TANQUE DE 50 M3. ',150,340,'2874548000000',1,1,9,'2014-10-07 15:20:44',1,'Sisaqueña'),(73,'030503','030503','030503','030503','3.10.',58,2,2,'1314','','CONST. PUENTE VEHICULAR TIPO CAJON SAN JORGITO II (V. TUNARI)','FPS-03-00003518','',113133.14,16491.71,'','CONSTRUCCION DE PUENTE VEHICULAR CAJON DE 2 BOBEDA DE 7.4 ML DE LONGITUD, ANCHO DE CALZADA 4M, BARANDADO DE Hº, ACERAS A CADA LADO DE 0.65 M Y ALEROS DE ENCAUCE DE Hº Aº',150,675,'2874549800000',1,1,NULL,NULL,NULL,NULL),(75,'030503','030503','030503','030503','3.10.',58,2,2,'1314','','CONST. PUENTE VEHICULAR K´HOÑI ARROYO II (V. TUNARI)','FPS-03-00003519','',132335.36,19290.87,'','CONSTRUCCION DE PUENTE VEHICULAR CAJON DE 2 BOBEDA DE 6 ML DE LONGITUD, ANCHO DE CALZADA 4M, BARANDADO DE Hº , ACERAS A CADA LADO DE 0.65 M Y ALEROS DE ENCAUCE DE Hº Aº.',120,367,'2874549700000',1,1,NULL,NULL,NULL,NULL),(77,'030503','030503','030503','030503','3.10.',58,2,2,'1314','','CONST. PUENTE CAJON SIND. 24 DE JULIO -7 MTS (V. TUNARI)','FPS-03-00003520','',124159.58,18099.06,'','CONSTRUCCION DE PUENTE VEHICULAR CAJON DE 2 BOBEDA DE 7.4 ML DE LONGITUD, ANCHO DE CALZADA 4M, BARANDADO DE Hº , ACERAS A CADA LADO DE 0.65 M Y ALEROS DE ENCAUCE DE Hº Aº.',195,437,'2874549900000',1,1,NULL,NULL,NULL,NULL),(79,'030503','030503','030503','030503','3.10.',58,2,2,'1314','','CONST. PUENTE VEHICULAR K´HOÑI ARROYO I (V. TUNARI)','FPS-03-00003521','',132335.36,19290.87,'','CONSTRUCCION DE PUENTE VEHICULAR CAJON DE 2 BOBEDA DE 6 ML DE LONGITUD, ANCHO DE CALZADA 4M, BARANDADO DE Hº , ACERAS A CADA LADO DE 0.65 M Y ALEROS DE ENCAUCE DE Hº Aº.',120,367,'2874549500000',1,1,NULL,NULL,NULL,NULL),(81,'030402','030402','030402','030402','3.10.',58,2,2,'1311','','CONST. PUENTE VEHICULAR CHACA MAYU (MOROCHATA)','FPS-03-00003522','',1315672.52,191789.00,'','CONSTRUCCION DE UN PUENTE VEHICULAR DE UN TRAMOS DE HºAº DE 40 ML DE LONGITUD, 4 M DE ANCHO DE CALZADA, BARANDADO DE HºAº, FUNDACIONES CON ESTRIBOS DE HºAº.',0,1758,'2874549300000',1,1,NULL,NULL,NULL,NULL),(84,'030401','030401','030401','030401','3.05.',58,2,2,'1348','','CONST. SIST. RIEGO MOLINO MAYU-TIQUIR PAMPA TUNASANI (AYOPAYA)','FPS-03-00003503','',1726662.27,251700.04,'','EL PROYECTO CONTEMPLA LA CONSTRUCCION DE UNA OBRA DE TOMA TIPO TIROLESA,IMPLEMENTACION DE 6700 ML DE TUBERIA PVC DE 6\" DE DIAMETRO OBRAS DE ARTE MENOR Y PASOS DE QUEBRADA',150,760,'2874547700000',1,1,NULL,NULL,NULL,NULL),(87,'031001','031001','031001','031001','3.05.',58,2,2,'1330','','AMPL. SISTEMA DE RIEGO CHAQUERI (TAPACARI)','FPS-03-00003504','',50000.00,7288.63,'','IMPLEMENTAR UN SISTEMA DE RIEGO COMPLEMENTARIO CON EL USO DE AGUAS SUPERFICIALES, CONSTRUCCION DE UN DESARENADOR 2 PASOS DE QUEBRADA TENDIDO DE TUBERIA DE ADUCCION EN 422 ML. RED DE DISTRIBUCION EN 1388 ML. RED DE DISTRIBUCION SECUNDARIA 2294 ML. RED DE D',160,190,'2874547500000',1,1,NULL,NULL,NULL,NULL),(90,'031604','031604','031604','031604','3.05.',58,2,2,'1341','','MEJORAMIENTO SISTEMA DE MICRO RIEGO JATUN CHINIJA (TIRAQUE)','FPS-03-00003505','',804547.80,117281.02,'','CONSTRUCCION DE UN SISTEMA DE RIEGO COMPUESTO POR EL TENDIDO DE TUBERIA EN UNA LONGITUD DE 6378 ML. DE 6\" Y 4\" CAMARAS DE HIDRANTES Y DISTRIBUCION CRUCES DE CAMINO Y OBRAS DE ARTE',160,840,'2874539500000',1,1,9,'2014-09-26 10:26:56',1,'Jatun Chinija'),(93,'030402','030402','030402','030402','3.05.',58,2,2,'1311','','CONST. SIST. DE RIEGO LINDE (MOROCHATA)','FPS-03-00003510','',582623.51,84930.54,'','EL PROYECTO CONTEMPLA LA CONSTRUCCION DE UNA OBRA DE TOMA CON FILTRO Y UN DESARENADOR , CONDUCCION PRINCIPAL DE TUBERIA DE 4\" 6\" CONSTRUCCION DE CINCO PASOS DE QUEBRADA DE 15 Y 17 MTS 20 Y CONSTRUCCION DE CAMARAS REPARTIDORAS ',90,166,'2874547400000',1,1,NULL,NULL,NULL,NULL),(97,'030401','030401','030401','030401','3.05.',58,2,2,'1348','','COSNT. SIST. RIEGO CHACOVILLQUE D9  (AYOPAYA)','FPS-03-00003502','',826338.60,120457.52,'','EL PROYECTO CONSISTE EN INCREMENTAR LA SUPERFICIE CULTIVADA REALIZANDO 6551.41 ML DE TUBERIA SDR 26 ,CONSTRUCCION DE 16 CAMARAS DE DISTRIBUCION CONSTRUCCION DE PASOS DE QUEBRADA ',150,400,'2874547300000',1,1,NULL,NULL,NULL,NULL),(99,'031501','031501','031501','031501','3.05.',58,2,2,'1341','','SISTEMA DE RIEGO POR BOMBEO CEBADA JICHANA (TIRAQUE)','FPS-03-00003491','',910161.12,132676.55,'','CONSTRUCCION DE UN CARCAMO DE BOMBEO UN DESARENADOR UN ESATANQUE DE 150 M3 TENDIDO DE RED DE 2797 ML. DE 3\" CASETA DE BPOMBEO Y 20 CAMARAS DE DISTRIBUCION',150,313,'2874539400000',1,1,NULL,NULL,NULL,NULL),(102,'030405','030405','030405','030405','3.10.',58,2,2,'1321','','CONST. PUENTE VEHICULAR LLOQUE MAYU (ANZALDO)','FPS-03-00003492','',1081859.78,157705.51,'','CONSTRUCCION DE UN PUENTE VEHICULAR DE 2 TRAMOS DE HºAº DE 42.6 ML DE LONGITUD, 4 M DE ANCHO DE CALZADA, BARANDADO DE HºAº, FUNDACIONES CON PILOTAJE,  ESTRIBOS Y PILA CENTRAL',230,141,'2874555200000',1,1,9,'2014-09-26 10:51:49',1,'Lloque Mayu'),(104,'030702','030702','030702','030702','3.10.',58,2,2,'1321','','CONST. PUENTE VEHICULAR TIJRASKA (ANZALDO)','FPS-03-00003493','',535272.87,78028.12,'','CONSTRUCCION DE PUENTE VEHICULAR DE 16 ML DE LONGITUD, ANCHO DE CALZADA 4M, LONGITUD TOTAL DE VIGA 12.50 M, CONSTITUIDO DE 1 TRAMO, BARANDADO DE Hº Aº, FUNDACIONES DIRECTAS CON ESTRIBOS DE Hº Aº Y ACERAS A CADA LADO DE 0.65 M.',150,563,'2874555300000',1,1,NULL,NULL,NULL,NULL),(106,'031203','031203','031203','031203','3.10.',58,2,2,'1332','','CONST. PUENTE VEHICULAR PAJCHA MAYU CONDOR PATA  (POJO)','FPS-03-00003494','',572787.48,83496.72,'','EL PROYECTO CONSISTE EN LA CONSTRUCCIÓN DE UN PUENTE VEHICULAR DE 20.6 M DE LONGITUD, CON UN AMCHO DE CALZADA DE 4.0 M, COMPUESTO POR VIGAS POSTENSADAS SIMPLEMENTE APOYADAS SOBRE ESTRIBOS DE Hº Aº. CON ACERAS DE 0.65 M Y BARANDADO TIPO P-3 DEL S.N.C. ',150,796,'2874547900000',1,1,9,'2014-09-26 10:38:16',1,'Condor Pata -  La Habana'),(108,'031602','031602','031602','031602','3.10.',58,2,2,'1343','','CONSTRUCCION PUENTE PEATONAL RIO PILPINA (VILA VILA)','FPS-03-00003496','',977458.77,142486.70,'','CONSISTE EN LA CONSTRUCCION  DE UN PUENTE PEATONAL DE 70.00  METROS DE LONGITUD, INFRAESTRUCTURA CONSISTE EN FUNDACIONES DIRECTAS DE HORMIGON ARMADO, SUPERESTRUCTURA PLATAFORMA DE MADERA DE UN ANCHO DE 1.80 METROS Y PROTECCION A LOS LADOS CON MALLA OLIMPI',130,268,'2874556000000',1,1,NULL,NULL,NULL,NULL),(110,'030406','030406','030406','030406','3.10.',58,2,2,'1323','','CONST. PUENTE VEHICULAR CHALLAQUE (SACABAMBA)','FPS-03-00003497','',1167309.39,170161.72,'','CONSISTE EN LA CONSTRUCCION DE UN PUENTE VEHICULAR DE HºAº PREESFORZADO DE 35 ML DE LONGITUD, 4 M DE ANCHO DE CALZADA, BARANDADO DE HºAº, FUNDACIONES DIRECTAS CON ESTRIBOS DE HºAº',210,1025,'2874549400000',1,1,9,'2014-09-26 10:21:30',1,NULL),(112,'030406','030406','030406','030406','3.05.',58,2,2,'1323','','CONST. ATAJADOS EN LA COMUNIDAD DE PUCARUMA (SACABAMBA)','FPS-03-00003498','',849778.38,123874.40,'','CONSISTE EN LA CONSTRUCCION DE 27 ATAJADOS FAMILIARES, CON CAPACIDAD UTIL DE 1200 M3, CON CANAL DE INGRESO, SEDIMENTADOR, BEBEDERO, CANAL DE EXCEDENCIA Y CAMARA DE LLAVES DE HºCº.',120,171,'2874547600000',1,1,9,'2014-09-26 10:36:08',1,'Pucaruma'),(115,'031107','031107','031107','031107','3.05.',58,2,2,'1330','','SISTEMA DE RIEGO APHARUMIRI AMARU (TAPACARI)','FPS-03-00003499','',781719.83,113953.33,'','CONSTRUCCION DE MURO DE ENCAUCE DE HºCº. DE 10 M. DE LARGO Y 4 M. DE ALTURA, PROV. DE COMPUERTA TIPO GUSANO, CONST. DE CANAL DE TRANSICION DE 11 ML. CONSTRUCCION DE CANAL PRINCIPAL DE Hº.Cº. 3138 ML. CONSTRUCCION DE 5 PASOS DE QUEBRADA, CONST. DE 5 COMPUE',160,374,'2874548100000',1,1,9,'2014-09-26 10:30:34',1,'Apharumiri Amaru'),(118,'031102','031102','031102','031102','3.05.',58,2,2,'1332','','CONST. SIST. RIEGO SAN FRANCISCO (POJO)','FPS-03-00003500','',742923.28,108297.85,'','CONSTRUCCION DE DOS OBRAS DE TOMA, CONSTRUCCION DE TUBERIA DE ADUCCION PVC DE 6\" CLASE 9 (2900 METROS), TIBERIA PVC DE 4\" CLASE 9 (2579.61\n\n METROS, CONSTRUCCION DE PASOS QUEBRADA DE 3 PASOS QUEBRADA 2 DE 20 METROS, 1 DE 50 METROS, Y 27 HIDRAMNTES.',120,100,'2874547200000',1,1,NULL,NULL,NULL,NULL),(121,'031604','031604','031604','031604','3.05.',58,2,2,'1341','','CONST. MERCADO MUNICIPAL TIRAQUE (TIRAQUE)','FPS-03-00003501','',966462.95,140883.81,'','AMPLIACION DE INFRAESTRUCTURA TIPO TINGLADO AL EXISTENTE Y CONSTRUCCION DE NUEVA INFRAESTRUCTURA TIPO TINGLADOA DOS CAIDAS',148,20907,'2874547800000',1,1,9,'2014-09-26 10:21:57',1,NULL),(122,'030403','030403','030403','030403','3.05.',58,2,2,'1346','','CONST. SISTEMA DE MICRORIEGO COMUNIDAD TUNARI (COCAPATA)','FPS-03-00003485','',785930.98,114567.20,'','EL PROYECTO CONTEMPLA LA CONSTRUCCION DE SEIS OBRAS DE TOMA TIPO TIROLESA , CONDUCCION PRINCIPAL DE TUBERIA DE 4\" 6\" Y 8\" CONSTRUCCION DE UN PASO DE QUEBRADA DE 5 MTS 8 CAMARAS DISIPADORAS Y LA CONSTRUCCION DE 22 CAMARAS REPARTIDORAS ',90,425,'2874538800000',1,1,9,'2014-09-26 10:28:48',1,'Tunari'),(125,'031401','031401','031401','031401','3.10.',58,2,2,'1340','','CONST. PUENTE PEATONAL CHORIPARADA (BOLIVAR)','FPS-03-00003486','',125629.09,18313.28,'','EL PROYECTO CONSISTE EN LA CONSTRUCCION DE UN PUENTE PEATONAL DE 15.6 M DE LONGITUD Y 2.0 M DE ANCHO, COMPUESTO POR UNA VIGA T DE Hº Aº, SIMPLEMENTE APOYADA EN ESTRIBOS DE Hº Cº. ',66,65,'2874539100000',1,1,NULL,NULL,NULL,NULL),(127,'031203','031203','031203','031203','3.05.',58,2,2,'1332','','CONSTRUCCION ATAJADOS CHACRAS (POJO)','FPS-03-00003487','',734051.93,107004.65,'','CONSTRUCCION DE 16 ATAJADOS DE TIERRA DE 3000 M3 : 5 CON (4 % DE PENDIENTE, 4 CON (6% DE PENDIENTE Y 7 CON (8% DE PENDIENTE); MAS CANAL DE INGRESO, CANAL DE INGRESO AL DESARENADOR, DESARENADOR, CANAL DE EXCEDENCIA, CAMARA DE PROTECCION, CANALES DE CONDUCC',120,178,'2874539000000',1,1,9,'2014-09-26 10:50:00',1,'Chacras'),(130,'031001','031001','031001','031001','3.05.',58,2,2,'1330','','CONST. SIST. RIEGO PUCA VINTO KHOCHIMARCA (TAPACARI)','FPS-03-00003488','',1075254.42,156742.63,'','EN PUCA VINTO KOCHIMARCA, MEJORAMIENTO DE LA OBRA DE TOMA ACTUAL, REVESTIMI9ENTO DE 650 ML. DE CANAL CON HºCº, PROV. Y COLOCADO DE 20 COMPUERTAS, CONST. DE UN DEFENSIVO EN LA OBRA DE TOMA Y MEDIDAS DE MITIGACION, EN AUKALARI CONST. DE OBRA DE TOMA, REVEST',240,730,'2874539300000',1,1,NULL,NULL,NULL,NULL),(133,'030403','030403','030403','030403','3.05.',58,2,2,'1346','','CONST. SISTEMA DE MICRORIEGO COMUNIDAD  PUCARITA (COCAPATA)','FPS-03-00003489','',1662631.01,242366.04,'','CONSTRUCCION DE TRES OBRAS DE TOMA , CONSTRUCCION DE 3 CAMARAS DE INSOECCION Y 6 CAMARAS DE DISIPACION ASI MISMO SE PLANTEA ÑA CONSTRUCCION DE  3 PASOS DE QUEBARAS DE DIFERENTES LONGITUDES ,29 HIDRANTESA Y LA CONDUCIION DE CAUDAL POR UNA TUBERIA DE PVC DE',100,395,'2874538900000',1,1,9,'2014-09-12 12:57:02',NULL,NULL),(136,'031503','031503','031503','031503','3.10.',58,2,2,'1340','','MEJ. CAMINO VECINAL CRUCE KEWIÑA CRUZ-ESCALERANI (BOLIVAR)','FPS-03-00003490','',1442326.75,210251.71,'','EL PROYECTO CONSISTE EN EL MEJORAMIENTO DEL CAMINO EXISTENTE A NIVEL DE SUBRASANTE A TRAVES DE LA COLOCACIÓN PUNTUALIZADA DE RIPIO, LA CONSTRUCCIÓN DE OBRAS DE DRENAJE TRANSVERSAL Y LONGITUDINAL MEDIANTE ALCANTARILLAS TUBULARES DE DIAMETRO DE 1000 MM, BAD',160,861,'2874539200000',1,1,9,'2014-10-11 09:28:50',1,'Bolivar'),(137,'041403','041403','041403','041403','3.05.',58,2,1,'1430','','CONSTRUCCION DEFENSIVOS SOBRE EL RÍO CARANGAS Y MANTOS (CARANGAS)','FPS-04-00003635','',52000.00,7580.17,'','EL PROYECTO CONSISTE EN LA CONSTRUCCION DE DEFENSIVOS EN EL RIO CARANGAS Y MANTOS EN LAS COMUNIDADES DEL MISMO NOMBRE, REALIZANDO LA PROTECCION DE AREAS PRODUCTIVAS LA PROTECCION SE LO REALIZARA EN 150 M EN LA COMUNIAD DE CARANGAS Y 350 M EN LA COMUNIDAD ',90,110,'2875207100000',1,1,9,'2014-09-26 10:20:22',1,'Carangas'),(140,'051601','051601','051601','051601','3.10.',58,2,2,'1538','','MEJORAMIENTO CAMINO CERRO GORDO - MEJILLONES (SAN ANGUSTIN)','FPS-05-00004255','',170000.00,24781.34,'','EL PROYECTO CONSISTE EN EL MEJORAMIENTO DE UN TRAMO DE CAMINO DE 27+120 KM, APLCANDO LA METODOLOGIA DE PUNTOS Y TRAMOS, IMPLEMENTANDO OBRAS DE DRENAJE EN TODO EL TRAZO DE CAMINO. SE EMPLAZARAN 16 ALCANTARILLAS  DE TIPO CAJON ALERO Y 7 BADENES DE DIFERENTE',0,727,'',1,1,NULL,NULL,NULL,NULL),(143,'051004','051004','051004','051004','3.05.',58,2,1,'1525','','CONSTRUCCION SISTEMA MICRORIEGO RIO MOJON (S.A. DE ESMORUCO)','FPS-05-00004257','',92712.36,13514.92,'','EL PROYECTO CONSTRUCCIÓN SISTEMA DE MICRORIEGO RIO MOJÓN, CONSISTE EN LA CONSTRUCCIÓN DE UNA OBRA DE TOMA TIPO LATERAL, CÁMARA DESARENADORA, CONDUCCIÓN POR TUBERÍA, DISTRIBUCIÓN POR TUBERÍA Y CÁMARAS DE DISTRIBUCIÓN.',0,366,'02875913300000',1,1,9,'2014-09-26 11:22:04',1,NULL),(146,'050303','050303','050303','050303','3.10.',58,2,2,'1510','','MEJORAMIENTO CAMINO HUALLA CKASA - TACOHARA ALTA (TACOBAMBA)','FPS-05-00004224','',1226407.47,178776.60,'','MEJORAR EL CAMINO CON UNA LONGITUD APROXIMADA DE 10+750 KILOMETROS, EN LA QUE SE CONSTRUIRA 19 ALCANTARILLAS DE ALIVIO Y 17 ALCANTARILLAS DE PASO DE 1 M DE DIAMETRO,9 MUROS, I BADEN, PUENTE PEQUEÑO',0,1474,'2875930100000',1,1,NULL,NULL,NULL,NULL),(152,'050104','050104','050104','050104','3.05.',58,2,2,'1504','','AMP. MURO DEFENSIVO DE GAVIÓN PUITUCO (URMIRI)','FPS-05-00004031','',137200.00,20000.00,'','CONSTRUCCION DE OBRAS PARA PROTEGER A LA POBLACION DE PUITUCO Y PEQUEÑOS TERRENOS PRODUCTIVO EN LOS RÍOS PILCOMAYO Y LIMONA',0,265,'2875913200000',1,1,NULL,NULL,NULL,NULL),(154,'050104','050104','050104','050104','3.10.',58,2,2,'1504','','CONST. PUENTE VEHICULAR RIO MUTAYA COMUNIDAD DE PUITUCO (URMIRI)','FPS-05-00004032','',329280.00,48000.00,'','EL PRESENTE ESTUDIO PERMITIRÁ IDENTIFICAR Y EVALUAR EL CURSO DE AGUA DEL RÍO MUTAYA, PARA EL EMPLAZAMIENTO DEL PUENTE VEHICULAR. DISEÑAR HIDRÁULICAMENTE LA SECCIÓN DEL PUENTE PARA LOGRAR LA MENOR AFECTACIÓN AL CAUCE DEL LECHO DEL RÍO. EVALUAR EL TRANSPORT',200,709,'2875912300000',1,1,NULL,NULL,NULL,NULL),(156,'050102','050102','050102','050102','3.10.',58,2,1,'1502','','CONST. PUENTE VEHICULAR CHALLAMAYU (TINGUIPAYA)','FPS-05-00004033','',2469600.00,360000.00,'','EL PROYECTO CONSISTE EN:	REALIZAR LA CONSTRUCCIÓN DE UN PUENTE VEHICULAR DE 50 M DE LONGITUD Y UN ANCHO DE CALZADA DE 4.0 METROS DE UNA SOLA  VÍA ESVIADO SOBRE RÍOS  CHALLAMAYU Y LAYA PAMPA.',360,11032,'2875912900000',1,1,9,'2014-10-07 15:15:43',1,'Tinguipaya'),(167,'070303','070303','070303','070303','3.05.',58,2,2,'1709','','CONST. MERCADO MUNICIPAL CAMPESINO (SAN RAFAEL)','FPS-07-00003598','',1053353.81,153550.12,'','CONSTRUCCION TINGLADO METALICO RETICULADO 950M2,PISO DE CEMENTO;   ADMINISTRACION Y  BATERIAS DE BAÑOS: CUBIERTA TEJA COLONIAL 135 M2, MURO DE LADRILLO ADOBITO, PISO DE CERAMICA VENTANAS Y PUERTAS DE MADERA, CAMARA SEPTICA, POSO ABSORVENTE;  CERCO PERIMET',150,2570,'2877334700000',1,1,9,'2014-09-26 10:59:24',1,'San Rafael'),(169,'071104','071104','071104','071104','3.05.',58,2,2,'1749','','CONST. 13 ATAJADOS SAN ANTONIO DE LOMERIO (S.A. LOMERIO)','FPS-07-00003556','',1880484.00,274123.03,'','CONSTRUCCION DE 9 ATAJADOS PARA RIEGO DE 5- 8 HA EN VARIAS COMUNIDADES; EXCAVACION CON MAQUINARIA, IMPERMEABILIZACION CON ARCILLA, TERRAPLEN COMPACTADO, HºCº PARA EL CANAL, TUBERIA PVC, VALVULA Y JUNTA PARA EL CONTRAL DE AGUA\r\n\r\nMEDIDAS DE MITIGACION PROTEC',148,2390,'2877334300000',1,1,9,'2014-09-26 11:11:50',1,'San Antonio, Palmira, Fátima, Todos Santos, Surusubí, Santo Rosario, San Pablo, San Andrés y San ignacito'),(180,'071502','071502','071502','071502','3.05.',58,2,2,'1746','','CONST. MERCADO CAMPESINO URUBICHA (URUBICHA)','FPS-07-00003557','',784583.45,114370.77,'','CONSTRUCCION TINGLADO METALICO CUBIERTA DE CALAMINA DE 50MX12M  CON GALERIA EXTERIOR  DE 2TX50M DE VIGAS DE MADERA CON TEJA CERAMICAPARA MERCADO, BATERIA DE BAÑO, RAMPLA DE DESCARGA',180,2011,'2877334400000',1,1,NULL,NULL,NULL,NULL),(182,'071502','071502','071502','071502','3.10.',58,2,2,'1746','','CONST. PUENTE PEATONAL CURURU (URUBICHA)','FPS-07-00003558','SIN OBSERVACION',1290298.59,188090.17,'','PUENTE PEATONAL ESTRUCTURA METALICA DE 95 MTS DE LARGOX2.5M DE ANCHO CON COLUMNAS DE 5,5MTS SOBRE EL RIO BLANCO SECTOR CURURU GAVIONES DE PIEDRA',180,1838,'2877334500000',1,18,9,'2014-09-26 11:00:49',1,NULL),(183,'070303','070303','070303','070303','3.10.',1,2,2,'1709','','CONST. MEJORAMIENTO CAMINO SAN RAFAEL -EL TUNA','FPS-07-00003559','PRUEBA',1048690.47,152870.33,'','ABBBB',180,23,NULL,1,29,9,'2014-09-26 10:59:45',1,'San Rafael'),(184,'051002','051002','051002','051002','3.05.',1,2,1,'1524','','CONST. MURO DEFENSIVO RIO MOJINETE','FPS-05-00004174','',99545.37,14510.99,'','EL PROYECTO RESPONDE A LA NECESIDAD DE LOS POBLADORES DEL ÁREA DE INFLUENCIA DEL PROYECTO PARA AMPLIAR LA FRONTERA AGRÍCOLA Y CONTRIBUIR AL MEJORAMIENTO DE LAS CONDICIONES DE VIDA LA POBLACIÓN BENEFICIARIA, A TRAVÉS DE LA RECUPERACIÓN DE TIERRAS E INCREMENTO DE LOS NIVELES DE PRODUCCIÓN Y PRODUCTIVIDAD AGRÍCOLA POR EFECTO DEL RIEGO, REDUCIENDO LA NECESIDAD DE LOS AGRICULTORES DE LA ZONA DE BUSCAR ALTERNATIVAS DE GENERACIÓN DE INGRESOS ADICIONALES, QUE SE TRADUCE EN ALTOS INDICES DE MIGRACIÓN. ',70,81,NULL,1,1,9,'2014-10-07 15:14:36',1,'Mojinete'),(185,'030606','030606','030606','030606','3.05.',1,2,2,'1338','','CONST. ATAJADOS HUANCARANI','FPS-03-00003976','FDF',126548.16,18447.25,'EDE','DE',120,80,NULL,1,18,9,'2014-09-29 13:27:55',1,NULL);
/*!40000 ALTER TABLE `t_proyecto` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_proyecto_estapa_estado`
--

DROP TABLE IF EXISTS `t_proyecto_estapa_estado`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_proyecto_estapa_estado` (
  `pee_codigo` int(11) NOT NULL AUTO_INCREMENT,
  `pee_proyecto_id` int(11) NOT NULL,
  `pee_estado` int(11) NOT NULL,
  `pee_etapa` int(11) NOT NULL,
  PRIMARY KEY (`pee_codigo`,`pee_proyecto_id`,`pee_estado`,`pee_etapa`),
  KEY `fk_estado` (`pee_estado`),
  KEY `fk_etapa` (`pee_etapa`),
  KEY `fk_proy_estado_etapa` (`pee_proyecto_id`),
  CONSTRAINT `fk_estado` FOREIGN KEY (`pee_estado`) REFERENCES `p_estado_etapa` (`estado_codigo`),
  CONSTRAINT `fk_etapa` FOREIGN KEY (`pee_etapa`) REFERENCES `p_estado_etapa` (`estado_codigo`),
  CONSTRAINT `fk_etapa_proy` FOREIGN KEY (`pee_proyecto_id`) REFERENCES `t_proyecto` (`proyecto_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=44 DEFAULT CHARSET=latin2;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_proyecto_estapa_estado`
--

LOCK TABLES `t_proyecto_estapa_estado` WRITE;
/*!40000 ALTER TABLE `t_proyecto_estapa_estado` DISABLE KEYS */;
INSERT INTO `t_proyecto_estapa_estado` VALUES (21,1,1,3),(27,182,1,3),(30,1,1,8),(35,184,1,9),(19,70,2,5),(28,182,2,4),(29,1,2,4),(31,1,2,5),(32,22,2,4),(33,183,2,5),(36,16,2,5),(37,137,2,5),(38,90,2,5),(39,35,2,5),(40,122,2,5),(41,115,2,5),(42,112,2,5),(43,22,2,5);
/*!40000 ALTER TABLE `t_proyecto_estapa_estado` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_proyecto_responsable_llenado`
--

DROP TABLE IF EXISTS `t_proyecto_responsable_llenado`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_proyecto_responsable_llenado` (
  `rl_id` int(11) NOT NULL AUTO_INCREMENT,
  `rl_persona_id` int(11) NOT NULL,
  `rl_otro` varchar(150) COLLATE latin1_bin DEFAULT NULL,
  PRIMARY KEY (`rl_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1 COLLATE=latin1_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_proyecto_responsable_llenado`
--

LOCK TABLES `t_proyecto_responsable_llenado` WRITE;
/*!40000 ALTER TABLE `t_proyecto_responsable_llenado` DISABLE KEYS */;
INSERT INTO `t_proyecto_responsable_llenado` VALUES (1,3,'pru'),(2,2,'a'),(3,4,NULL);
/*!40000 ALTER TABLE `t_proyecto_responsable_llenado` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_proyecto_seguidor`
--

DROP TABLE IF EXISTS `t_proyecto_seguidor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_proyecto_seguidor` (
  `proy_seg_codigo` int(11) NOT NULL AUTO_INCREMENT,
  `persona_codigo` int(11) NOT NULL,
  `proy_seg_cargo` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`proy_seg_codigo`,`persona_codigo`),
  KEY `fk_persona` (`persona_codigo`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin2;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_proyecto_seguidor`
--

LOCK TABLES `t_proyecto_seguidor` WRITE;
/*!40000 ALTER TABLE `t_proyecto_seguidor` DISABLE KEYS */;
INSERT INTO `t_proyecto_seguidor` VALUES (1,1,NULL),(2,2,NULL);
/*!40000 ALTER TABLE `t_proyecto_seguidor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_proyecto_seguimiento`
--

DROP TABLE IF EXISTS `t_proyecto_seguimiento`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_proyecto_seguimiento` (
  `ps_codigo` int(11) NOT NULL AUTO_INCREMENT,
  `proyecto_id` int(11) NOT NULL,
  `ciclo_codigo` int(11) NOT NULL,
  `ps_mes` varchar(20) DEFAULT NULL,
  `ps_fecha_seguimiento` date DEFAULT NULL,
  `ps_reporte_sm` text,
  `proy_seg_codigo` int(11) NOT NULL,
  `persona_codigo` int(11) NOT NULL,
  `ps_tipo_proy_reg` varchar(15) DEFAULT NULL,
  PRIMARY KEY (`ps_codigo`,`proyecto_id`,`ciclo_codigo`),
  KEY `Reft_proyecto_seguidor38` (`proy_seg_codigo`,`persona_codigo`),
  KEY `fk_ciclo` (`ciclo_codigo`),
  KEY `fk_seguimiento` (`proyecto_id`),
  KEY `fk_ps_persona` (`persona_codigo`),
  CONSTRAINT `t_proyecto_seguimiento_ibfk_1` FOREIGN KEY (`ciclo_codigo`) REFERENCES `p_ciclo_proyecto` (`ciclo_codigo`),
  CONSTRAINT `t_proyecto_seguimiento_ibfk_3` FOREIGN KEY (`proyecto_id`) REFERENCES `t_proyecto` (`proyecto_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=61 DEFAULT CHARSET=latin2;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_proyecto_seguimiento`
--

LOCK TABLES `t_proyecto_seguimiento` WRITE;
/*!40000 ALTER TABLE `t_proyecto_seguimiento` DISABLE KEYS */;
INSERT INTO `t_proyecto_seguimiento` VALUES (2,73759,1,'200101','2011-02-08','fsfdsf',1,1,'INVERS'),(3,73759,3,'201301','2013-12-12','sfdsf',1,1,'INVERS'),(4,73759,3,'200101','2011-02-08','fsfdsf',1,1,'INVERS'),(5,73759,6,'201301','2013-12-12','sfdsf',1,1,'INVERS'),(6,73759,6,'200101','2011-02-08','fsfdsf',1,1,'INVERS'),(7,73759,6,'201301','2013-12-12','sfdsf',1,1,'INVERS'),(8,73759,6,'200101','2011-02-08','fsfdsf',1,1,'INVERS'),(9,73759,4,'201301','2013-12-12','sfdsf',1,1,'INVERS'),(10,73759,4,'200101','2011-02-08','fsfdsf',1,1,'INVERS'),(11,73759,4,'201301','2013-12-12','sfdsf',1,1,'INVERS'),(12,73759,5,'201301','2013-12-12','sfdsf',1,1,'INVERS'),(13,73759,5,'200101','2011-02-08','fsfdsf',1,1,'INVERS'),(14,70,1,'201301','2013-12-12','sfdsf',1,1,'INVERS'),(15,70,1,'200101','2011-02-08','fsfdsf',1,1,'INVERS'),(16,1,1,'012013','2014-02-06','sdasd',1,1,'INVERS'),(17,1,1,'201306','2014-02-06','asdasd',2,2,'INVERS'),(32,5,4,'201311','2014-03-06','11EWREWR',1,1,'INVERS'),(35,182,1,'2013-10','2014-05-29','MODIFICADO',1,1,'INVERS'),(36,1,2,'2013-10','2014-01-05','reporte',1,1,'INVERS'),(37,1,3,'201310','2014-03-05','jhkj',1,1,'INVERS'),(38,1,3,'201311','2014-05-10','kjhkjh',2,2,'INVERS'),(39,1,4,'201310','2014-03-07','kjlkj',1,1,'INVERS'),(40,1,4,'201311','2014-07-04','hgfh',2,2,'INVERS'),(41,1,5,'201310','2014-03-01','sdfdsf',1,1,'INVERS'),(42,1,6,'201310','2014-03-06','cvcxv',1,1,'INVERS'),(43,5,1,'2013-10','2014-03-07','Dato reporte',1,1,'INVERS'),(44,180,2,'2013-02','2013-02-12','DFDF',1,1,'INVERS'),(45,182,3,'2013-02','2014-06-18','SSOO',0,1,'INVERS'),(46,183,1,'2012-09','2014-06-09','AAABBB',1,1,'INVERS'),(47,183,2,'2012-12','2014-06-20','',0,1,'INVERS'),(55,184,2,'2013-01','2013-01-25','EL PERFIL DE PROYECTO SE ENCONTRABA EN ETAPA DE REVISIÓN, SE HICIERON SUGERENCIAS RELACIONADAS CON ASPECTOS SOCIO ECONÓMICOS Y AMBIENTALES.',0,19,'PRE-INV'),(56,184,4,'2013-04','2013-04-23','EL PROYECTO SE ENCUENTRA EN ETAPA DE CALIFICACIÓN DE PROPUESTAS, ESTIMÁNDOSE LA ADJUDICACIÓN HASTA FINES DEL MES DE ABRIL',0,1,'PRE-INV'),(57,169,2,'2013-11','2013-11-27','En el momento de visita al proyecto no se había generado la carpeta de evaluación.',0,1,'INVERS'),(58,156,2,'2014-12','2014-12-05','dfdf',0,30,'PRE-INV'),(59,156,2,'2014-12','2014-12-12','dt ebbeyb',0,17,'INVERS'),(60,156,3,'2014-12','2014-12-01','fg dfgfg',0,18,'PRE-INV');
/*!40000 ALTER TABLE `t_proyecto_seguimiento` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_vc_documentos_verificacion`
--

DROP TABLE IF EXISTS `t_vc_documentos_verificacion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_vc_documentos_verificacion` (
  `documentos_verificacion_id` int(11) NOT NULL AUTO_INCREMENT,
  `documentos_id` int(11) DEFAULT NULL,
  `proyecto_id` int(11) DEFAULT NULL,
  `documentos_verificacion_en_obra` varchar(2) COLLATE utf8_spanish_ci DEFAULT NULL,
  `documentos_verificacion_observaciones` varchar(255) COLLATE utf8_spanish_ci DEFAULT NULL,
  PRIMARY KEY (`documentos_verificacion_id`),
  KEY `fk_vc_d_proy` (`proyecto_id`),
  KEY `fk_vc_d_doc` (`documentos_id`),
  CONSTRAINT `fk_vc_d_doc` FOREIGN KEY (`documentos_id`) REFERENCES `p_documentos_verif_campo` (`documentos_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_vc_d_proy` FOREIGN KEY (`proyecto_id`) REFERENCES `t_proyecto` (`proyecto_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=386 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_vc_documentos_verificacion`
--

LOCK TABLES `t_vc_documentos_verificacion` WRITE;
/*!40000 ALTER TABLE `t_vc_documentos_verificacion` DISABLE KEYS */;
INSERT INTO `t_vc_documentos_verificacion` VALUES (9,2,1,'si',NULL),(13,2,5,'si',NULL),(17,2,9,'si',NULL),(21,2,13,'si',NULL),(24,2,16,'si',NULL),(30,2,22,'si',NULL),(32,2,24,'si',NULL),(34,2,26,'si',NULL),(35,2,27,'si',NULL),(36,2,28,'si',NULL),(37,2,29,'si',NULL),(38,2,30,'si',NULL),(39,2,31,'si',NULL),(41,2,33,'si',NULL),(43,2,35,'si',NULL),(45,2,37,'si',NULL),(47,2,39,'si',NULL),(49,2,41,'si',NULL),(51,2,43,'si',NULL),(54,2,46,'si',NULL),(61,2,53,'si',NULL),(64,2,56,'si',NULL),(67,2,59,'si',NULL),(70,2,62,'si',NULL),(72,2,64,'si',NULL),(76,2,68,'si',NULL),(81,2,73,'si',NULL),(83,2,75,'si',NULL),(85,2,77,'si',NULL),(87,2,79,'si',NULL),(89,2,81,'si',NULL),(92,2,84,'si',NULL),(95,2,87,'si',NULL),(98,2,90,'si',NULL),(101,2,93,'si',NULL),(105,2,97,'si',NULL),(107,2,99,'si',NULL),(110,2,102,'si',NULL),(112,2,104,'si',NULL),(114,2,106,'si',NULL),(116,2,108,'si',NULL),(118,2,110,'si',NULL),(120,2,112,'si',NULL),(123,2,115,'si',NULL),(126,2,118,'si',NULL),(129,2,121,'si',NULL),(130,2,122,'si',NULL),(133,2,125,'si',NULL),(135,2,127,'si',NULL),(138,2,130,'si',NULL),(141,2,133,'si',NULL),(144,2,136,'si',NULL),(145,2,137,'si',NULL),(148,2,140,'si',NULL),(151,2,143,'si',NULL),(154,2,146,'si',NULL),(160,2,152,'si',NULL),(162,2,154,'si',NULL),(164,2,156,'si',NULL),(175,2,167,'si',NULL),(177,2,169,'si',NULL),(188,2,180,'si',NULL),(190,2,182,'si',NULL),(194,3,1,'si',NULL),(198,3,5,'si',NULL),(202,3,9,'si',NULL),(206,3,13,'si',NULL),(209,3,16,'si',NULL),(215,3,22,'si',NULL),(217,3,24,'si',NULL),(219,3,26,'si',NULL),(220,3,27,'si',NULL),(221,3,28,'si',NULL),(222,3,29,'si',NULL),(223,3,30,'si',NULL),(224,3,31,'si',NULL),(226,3,33,'si',NULL),(228,3,35,'si',NULL),(230,3,37,'si',NULL),(232,3,39,'si',NULL),(234,3,41,'si',NULL),(236,3,43,'si',NULL),(239,3,46,'si',NULL),(246,3,53,'si',NULL),(249,3,56,'si',NULL),(252,3,59,'si',NULL),(255,3,62,'si',NULL),(257,3,64,'si',NULL),(261,3,68,'si',NULL),(263,3,70,'si',NULL),(266,3,73,'si',NULL),(268,3,75,'si',NULL),(270,3,77,'si',NULL),(272,3,79,'si',NULL),(274,3,81,'si',NULL),(277,3,84,'si',NULL),(280,3,87,'si',NULL),(283,3,90,'si',NULL),(286,3,93,'si',NULL),(290,3,97,'si',NULL),(292,3,99,'si',NULL),(295,3,102,'si',NULL),(297,3,104,'si',NULL),(299,3,106,'si',NULL),(301,3,108,'si',NULL),(303,3,110,'si',NULL),(305,3,112,'si',NULL),(308,3,115,'si',NULL),(311,3,118,'si',NULL),(314,3,121,'si',NULL),(315,3,122,'si',NULL),(318,3,125,'si',NULL),(320,3,127,'si',NULL),(323,3,130,'si',NULL),(326,3,133,'si',NULL),(329,3,136,'si',NULL),(330,3,137,'si',NULL),(333,3,140,'si',NULL),(336,3,143,'si',NULL),(339,3,146,'si',NULL),(345,3,152,'si',NULL),(347,3,154,'si',NULL),(349,3,156,'si',NULL),(360,3,167,'si',NULL),(362,3,169,'si',NULL),(373,3,180,'si',NULL),(375,3,182,'si',NULL),(380,2,70,'no','Un libro comunal'),(381,3,70,'si','De acuerdo al DBC'),(382,4,70,'si','Si los presentados en la preinversion.'),(383,5,70,'si','Cantidad: 10 personas (entre topógrafo, capataz, maestros albañiles, ayudante y peones)'),(384,6,70,'si','Se utilizo dos libros de ordenes'),(385,3,1,'si','dgdfg');
/*!40000 ALTER TABLE `t_vc_documentos_verificacion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_vc_maquinaria_comprometida`
--

DROP TABLE IF EXISTS `t_vc_maquinaria_comprometida`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_vc_maquinaria_comprometida` (
  `maquinaria_comprometida_id` int(11) NOT NULL AUTO_INCREMENT,
  `maquinaria_id` int(11) DEFAULT NULL,
  `proyecto_id` int(11) DEFAULT NULL,
  `vc_mc_propuesta_capacidad` varchar(10) COLLATE utf8_spanish_ci DEFAULT NULL,
  `vc_mc_propuesta_cantidad` varchar(50) COLLATE utf8_spanish_ci DEFAULT NULL,
  `vc_mc_obra_capacidad` varchar(50) COLLATE utf8_spanish_ci DEFAULT NULL,
  `vc_mc_obra_cantidad` varchar(50) COLLATE utf8_spanish_ci DEFAULT NULL,
  `vc_mc_permanente` varchar(50) COLLATE utf8_spanish_ci DEFAULT NULL,
  `vc_mc_observaciones` varchar(500) COLLATE utf8_spanish_ci DEFAULT NULL,
  PRIMARY KEY (`maquinaria_comprometida_id`),
  KEY `fk_vc_proy` (`proyecto_id`),
  KEY `fk_vc_maquina` (`maquinaria_id`),
  CONSTRAINT `fk_vc_maquina` FOREIGN KEY (`maquinaria_id`) REFERENCES `p_maquinaria` (`maquinaria_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_vc_proy` FOREIGN KEY (`proyecto_id`) REFERENCES `t_proyecto` (`proyecto_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=386 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_vc_maquinaria_comprometida`
--

LOCK TABLES `t_vc_maquinaria_comprometida` WRITE;
/*!40000 ALTER TABLE `t_vc_maquinaria_comprometida` DISABLE KEYS */;
INSERT INTO `t_vc_maquinaria_comprometida` VALUES (13,4,5,'1','1',NULL,'1',NULL,NULL),(17,4,9,'1','1',NULL,'1',NULL,NULL),(21,4,13,'1','1',NULL,'1',NULL,NULL),(24,4,16,'1','1',NULL,'1',NULL,NULL),(30,4,22,'1','1',NULL,'1',NULL,NULL),(32,4,24,'1','1',NULL,'1',NULL,NULL),(34,4,26,'1','1',NULL,'1',NULL,NULL),(35,4,27,'1','1',NULL,'1',NULL,NULL),(36,4,28,'1','1',NULL,'1',NULL,NULL),(37,4,29,'1','1',NULL,'1',NULL,NULL),(38,4,30,'1','1',NULL,'1',NULL,NULL),(39,4,31,'1','1',NULL,'1',NULL,NULL),(41,4,33,'1','1',NULL,'1',NULL,NULL),(43,4,35,'1','1',NULL,'1',NULL,NULL),(45,4,37,'1','1',NULL,'1',NULL,NULL),(47,4,39,'1','1',NULL,'1',NULL,NULL),(49,4,41,'1','1',NULL,'1',NULL,NULL),(51,4,43,'1','1',NULL,'1',NULL,NULL),(54,4,46,'1','1',NULL,'1',NULL,NULL),(61,4,53,'1','1',NULL,'1',NULL,NULL),(64,4,56,'1','1',NULL,'1',NULL,NULL),(67,4,59,'1','1',NULL,'1',NULL,NULL),(70,4,62,'1','1',NULL,'1',NULL,NULL),(72,4,64,'1','1',NULL,'1',NULL,NULL),(76,4,68,'1','1',NULL,'1',NULL,NULL),(81,4,73,'1','1',NULL,'1',NULL,NULL),(83,4,75,'1','1',NULL,'1',NULL,NULL),(85,4,77,'1','1',NULL,'1',NULL,NULL),(87,4,79,'1','1',NULL,'1',NULL,NULL),(89,4,81,'1','1',NULL,'1',NULL,NULL),(92,4,84,'1','1',NULL,'1',NULL,NULL),(95,4,87,'1','1',NULL,'1',NULL,NULL),(98,4,90,'1','1',NULL,'1',NULL,NULL),(101,4,93,'1','1',NULL,'1',NULL,NULL),(105,4,97,'1','1',NULL,'1',NULL,NULL),(107,4,99,'1','1',NULL,'1',NULL,NULL),(110,4,102,'1','1',NULL,'1',NULL,NULL),(112,4,104,'1','1',NULL,'1',NULL,NULL),(114,4,106,'1','1',NULL,'1',NULL,NULL),(116,4,108,'1','1',NULL,'1',NULL,NULL),(118,4,110,'1','1',NULL,'1',NULL,NULL),(120,4,112,'1','1',NULL,'1',NULL,NULL),(123,4,115,'1','1',NULL,'1',NULL,NULL),(126,4,118,'1','1',NULL,'1',NULL,NULL),(129,4,121,'1','1',NULL,'1',NULL,NULL),(130,4,122,'1','1',NULL,'1',NULL,NULL),(133,4,125,'1','1',NULL,'1',NULL,NULL),(135,4,127,'1','1',NULL,'1',NULL,NULL),(138,4,130,'1','1',NULL,'1',NULL,NULL),(141,4,133,'1','1',NULL,'1',NULL,NULL),(144,4,136,'1','1',NULL,'1',NULL,NULL),(145,4,137,'1','1',NULL,'1',NULL,NULL),(148,4,140,'1','1',NULL,'1',NULL,NULL),(151,4,143,'1','1',NULL,'1',NULL,NULL),(154,4,146,'1','1',NULL,'1',NULL,NULL),(160,4,152,'1','1',NULL,'1',NULL,NULL),(162,4,154,'1','1',NULL,'1',NULL,NULL),(164,4,156,'1','1',NULL,'1',NULL,NULL),(175,4,167,'1','1',NULL,'1',NULL,NULL),(177,4,169,'1','1',NULL,'1',NULL,NULL),(188,4,180,'1','1',NULL,'1',NULL,NULL),(190,4,182,'1','1',NULL,'1',NULL,NULL),(194,3,1,'1','1',NULL,'1',NULL,NULL),(198,3,5,'1','1',NULL,'1',NULL,NULL),(202,3,9,'1','1',NULL,'1',NULL,NULL),(206,3,13,'1','1',NULL,'1',NULL,NULL),(209,3,16,'1','1',NULL,'1',NULL,NULL),(215,3,22,'1','1',NULL,'1',NULL,NULL),(217,3,24,'1','1',NULL,'1',NULL,NULL),(219,3,26,'1','1',NULL,'1',NULL,NULL),(220,3,27,'1','1',NULL,'1',NULL,NULL),(221,3,28,'1','1',NULL,'1',NULL,NULL),(222,3,29,'1','1',NULL,'1',NULL,NULL),(223,3,30,'1','1',NULL,'1',NULL,NULL),(224,3,31,'1','1',NULL,'1',NULL,NULL),(226,3,33,'1','1',NULL,'1',NULL,NULL),(228,3,35,'1','1',NULL,'1',NULL,NULL),(230,3,37,'1','1',NULL,'1',NULL,NULL),(232,3,39,'1','1',NULL,'1',NULL,NULL),(234,3,41,'1','1',NULL,'1',NULL,NULL),(236,3,43,'1','1',NULL,'1',NULL,NULL),(239,3,46,'1','1',NULL,'1',NULL,NULL),(246,3,53,'1','1',NULL,'1',NULL,NULL),(249,3,56,'1','1',NULL,'1',NULL,NULL),(252,3,59,'1','1',NULL,'1',NULL,NULL),(255,3,62,'1','1',NULL,'1',NULL,NULL),(257,3,64,'1','1',NULL,'1',NULL,NULL),(261,3,68,'1','1',NULL,'1',NULL,NULL),(263,3,70,'1','1',NULL,'1',NULL,NULL),(266,3,73,'1','1',NULL,'1',NULL,NULL),(268,3,75,'1','1',NULL,'1',NULL,NULL),(270,3,77,'1','1',NULL,'1',NULL,NULL),(272,3,79,'1','1',NULL,'1',NULL,NULL),(274,3,81,'1','1',NULL,'1',NULL,NULL),(277,3,84,'1','1',NULL,'1',NULL,NULL),(280,3,87,'1','1',NULL,'1',NULL,NULL),(283,3,90,'1','1',NULL,'1',NULL,NULL),(286,3,93,'1','1',NULL,'1',NULL,NULL),(290,3,97,'1','1',NULL,'1',NULL,NULL),(292,3,99,'1','1',NULL,'1',NULL,NULL),(295,3,102,'1','1',NULL,'1',NULL,NULL),(297,3,104,'1','1',NULL,'1',NULL,NULL),(299,3,106,'1','1',NULL,'1',NULL,NULL),(301,3,108,'1','1',NULL,'1',NULL,NULL),(303,3,110,'1','1',NULL,'1',NULL,NULL),(305,3,112,'1','1',NULL,'1',NULL,NULL),(308,3,115,'1','1',NULL,'1',NULL,NULL),(311,3,118,'1','1',NULL,'1',NULL,NULL),(314,3,121,'1','1',NULL,'1',NULL,NULL),(315,3,122,'1','1',NULL,'1',NULL,NULL),(318,3,125,'1','1',NULL,'1',NULL,NULL),(320,3,127,'1','1',NULL,'1',NULL,NULL),(323,3,130,'1','1',NULL,'1',NULL,NULL),(326,3,133,'1','1',NULL,'1',NULL,NULL),(329,3,136,'1','1',NULL,'1',NULL,NULL),(330,3,137,'1','1',NULL,'1',NULL,NULL),(333,3,140,'1','1',NULL,'1',NULL,NULL),(336,3,143,'1','1',NULL,'1',NULL,NULL),(339,3,146,'1','1',NULL,'1',NULL,NULL),(345,3,152,'1','1',NULL,'1',NULL,NULL),(347,3,154,'1','1',NULL,'1',NULL,NULL),(349,3,156,'1','1',NULL,'1',NULL,NULL),(360,3,167,'1','1',NULL,'1',NULL,NULL),(362,3,169,'1','1',NULL,'1',NULL,NULL),(373,3,180,'1','1',NULL,'1',NULL,NULL),(375,3,182,'1','1',NULL,'1',NULL,NULL),(380,2,70,'320 lt ','2','1 bolsa','2','X',''),(381,3,70,'varias','','varias','','X',''),(382,4,70,'','1','','1','X',''),(383,5,70,'','1','','1','','Solo para ejecutar obra de toma'),(384,6,70,'','2','','2','X',''),(385,5,1,'cfsdf','5656','5454','4545','si','gdfg');
/*!40000 ALTER TABLE `t_vc_maquinaria_comprometida` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_vc_personal_verificacion`
--

DROP TABLE IF EXISTS `t_vc_personal_verificacion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_vc_personal_verificacion` (
  `personal_verificacion_id` int(11) NOT NULL AUTO_INCREMENT,
  `proyecto_id` int(11) DEFAULT NULL,
  `personal_verificacion_en_obra` varchar(2) COLLATE utf8_spanish_ci DEFAULT NULL,
  `personal_verificacion_observaciones` varchar(255) COLLATE utf8_spanish_ci DEFAULT NULL,
  `persona_id` int(11) DEFAULT NULL,
  `pv_cargo` varchar(500) COLLATE utf8_spanish_ci DEFAULT NULL,
  PRIMARY KEY (`personal_verificacion_id`),
  KEY `fk_vc_pc_proy` (`proyecto_id`),
  KEY `fk_vc_ck_persona` (`persona_id`),
  CONSTRAINT `fk_vc_pc_proy` FOREIGN KEY (`proyecto_id`) REFERENCES `t_proyecto` (`proyecto_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=190 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_vc_personal_verificacion`
--

LOCK TABLES `t_vc_personal_verificacion` WRITE;
/*!40000 ALTER TABLE `t_vc_personal_verificacion` DISABLE KEYS */;
INSERT INTO `t_vc_personal_verificacion` VALUES (11,5,'si',NULL,1,NULL),(15,9,'si',NULL,1,NULL),(19,13,'si',NULL,1,NULL),(22,16,'si',NULL,1,NULL),(28,22,'si',NULL,1,NULL),(30,24,'si',NULL,1,NULL),(32,26,'si',NULL,1,NULL),(33,27,'si',NULL,1,NULL),(34,28,'si',NULL,1,NULL),(35,29,'si',NULL,1,NULL),(36,30,'si',NULL,1,NULL),(37,31,'si',NULL,1,NULL),(39,33,'si',NULL,1,NULL),(41,35,'si',NULL,1,NULL),(43,37,'si',NULL,1,NULL),(45,39,'si',NULL,1,NULL),(47,41,'si',NULL,1,NULL),(49,43,'si',NULL,1,NULL),(52,46,'si',NULL,1,NULL),(59,53,'si',NULL,1,NULL),(62,56,'si',NULL,1,NULL),(65,59,'si',NULL,1,NULL),(68,62,'si',NULL,1,NULL),(70,64,'si',NULL,1,NULL),(74,68,'si',NULL,1,NULL),(76,70,'si',NULL,13,NULL),(79,73,'si',NULL,1,NULL),(81,75,'si',NULL,1,NULL),(83,77,'si',NULL,1,NULL),(85,79,'si',NULL,1,NULL),(87,81,'si',NULL,1,NULL),(90,84,'si',NULL,1,NULL),(93,87,'si',NULL,1,NULL),(96,90,'si',NULL,1,NULL),(99,93,'si',NULL,1,NULL),(103,97,'si',NULL,1,NULL),(105,99,'si',NULL,1,NULL),(108,102,'si',NULL,1,NULL),(110,104,'si',NULL,1,NULL),(112,106,'si',NULL,1,NULL),(114,108,'si',NULL,1,NULL),(116,110,'si',NULL,1,NULL),(118,112,'si',NULL,1,NULL),(121,115,'si',NULL,1,NULL),(124,118,'si',NULL,1,NULL),(127,121,'si',NULL,1,NULL),(128,122,'si',NULL,1,NULL),(131,125,'si',NULL,1,NULL),(133,127,'si',NULL,1,NULL),(136,130,'si',NULL,1,NULL),(139,133,'si',NULL,1,NULL),(142,136,'si',NULL,1,NULL),(143,137,'si',NULL,1,NULL),(146,140,'si',NULL,1,NULL),(149,143,'si',NULL,1,NULL),(152,146,'si',NULL,1,NULL),(158,152,'si',NULL,1,NULL),(160,154,'si',NULL,1,NULL),(162,156,'si',NULL,1,NULL),(173,167,'si',NULL,1,NULL),(175,169,'si',NULL,1,NULL),(186,180,'si',NULL,1,NULL),(188,182,'si',NULL,1,NULL),(189,1,'si','dfgdfg',7,'fgdgdf');
/*!40000 ALTER TABLE `t_vc_personal_verificacion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary table structure for view `v_aprobacion_componente_lista`
--

DROP TABLE IF EXISTS `v_aprobacion_componente_lista`;
/*!50001 DROP VIEW IF EXISTS `v_aprobacion_componente_lista`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `v_aprobacion_componente_lista` (
  `id_comp` int(10),
  `acp_id_proyecto` int(10),
  `monto_bs` varchar(49),
  `monto_sus` varchar(49),
  `descripcion` varchar(600),
  `id_componente` int(10),
  `tipo_cambio` varchar(57),
  `acp_tipo_proy` varchar(15)
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `v_aprobacion_componente_presupuesto_lista`
--

DROP TABLE IF EXISTS `v_aprobacion_componente_presupuesto_lista`;
/*!50001 DROP VIEW IF EXISTS `v_aprobacion_componente_presupuesto_lista`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `v_aprobacion_componente_presupuesto_lista` (
  `acp_id_proyecto` int(11),
  `cd` mediumtext,
  `monto_bs` varchar(78),
  `monto_sus` varchar(78),
  `acp_tipo_proy` varchar(15)
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `v_aprobacion_listado`
--

DROP TABLE IF EXISTS `v_aprobacion_listado`;
/*!50001 DROP VIEW IF EXISTS `v_aprobacion_listado`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `v_aprobacion_listado` (
  `proyecto_descripcion` varchar(200),
  `proyecto_codigo_sap` varchar(50),
  `proyecto_numero_sisin` varchar(50),
  `aprobacion_nro_acta_cdap` varchar(255),
  `proyecto_id` int(11),
  `aprobacion_resultado_descripcion` varchar(255),
  `fcha_ult_modif` varchar(24),
  `nombres` varchar(203),
  `aprobacion_id` bigint(11),
  `proyecto_tipo_proyecto_codigo` int(11),
  `estado_pi_i` int(11),
  `tipo_pi_i` varchar(25)
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `v_aprobacion_participante_listado`
--

DROP TABLE IF EXISTS `v_aprobacion_participante_listado`;
/*!50001 DROP VIEW IF EXISTS `v_aprobacion_participante_listado`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `v_aprobacion_participante_listado` (
  `nombres` varchar(203),
  `ap_id_proyecto` int(10),
  `ap_tipo_participante` varchar(50),
  `id_p` int(10),
  `DESCRIP_TIPO_PARTICIP` varchar(14),
  `ap_tipo_proy` varchar(15)
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `v_aprobacion_resultado`
--

DROP TABLE IF EXISTS `v_aprobacion_resultado`;
/*!50001 DROP VIEW IF EXISTS `v_aprobacion_resultado`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `v_aprobacion_resultado` (
  `aprobacion_nro_acta_cdap` varchar(255),
  `aprobacion_resultado_descripcion` varchar(255),
  `aprobacion_id` int(11),
  `proyecto_id` int(11),
  `apob_id_user` int(11),
  `fcha_ult_modif` varchar(24),
  `aprob_tipo_proyecto` varchar(15)
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `v_cerre_listado`
--

DROP TABLE IF EXISTS `v_cerre_listado`;
/*!50001 DROP VIEW IF EXISTS `v_cerre_listado`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `v_cerre_listado` (
  `proyecto_id` int(11),
  `proyecto_codigo` varchar(10),
  `proyecto_descripcion` varchar(200),
  `proyecto_codigo_sap` varchar(50),
  `c_componente` varchar(300),
  `c_contrato_numero` varchar(300),
  `c_moneda_contrato` varchar(50),
  `monto_final` varchar(49),
  `nombres` varchar(203),
  `fcha_ult_modif` varchar(24)
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `v_cierre_estacion_listado`
--

DROP TABLE IF EXISTS `v_cierre_estacion_listado`;
/*!50001 DROP VIEW IF EXISTS `v_cierre_estacion_listado`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `v_cierre_estacion_listado` (
  `ce_cumplimiento` varchar(255),
  `ce_fecha_inicio` varchar(10),
  `ce_fecha_fin` varchar(10),
  `observaciones` varchar(255),
  `cierre_estacion_id` int(11),
  `tipo_cierre_descripcion` varchar(255),
  `ce_proyecto_id` int(11)
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `v_ejecucion_certificado_listado`
--

DROP TABLE IF EXISTS `v_ejecucion_certificado_listado`;
/*!50001 DROP VIEW IF EXISTS `v_ejecucion_certificado_listado`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `v_ejecucion_certificado_listado` (
  `ejecucion_detalle__descripcion` varchar(255),
  `ejecucion_id` int(11),
  `cumple_descripcion` varchar(500),
  `no_cumple_descripcion` text,
  `proyecto_id` int(11),
  `ejecucion_detalle_id` int(11)
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `v_ejecucion_contruccion_listado`
--

DROP TABLE IF EXISTS `v_ejecucion_contruccion_listado`;
/*!50001 DROP VIEW IF EXISTS `v_ejecucion_contruccion_listado`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `v_ejecucion_contruccion_listado` (
  `informe` varchar(255),
  `ejecucion_id` int(11),
  `proyecto_id` int(11),
  `fecha` varchar(10),
  `existencia` varchar(10),
  `observacion` text,
  `ejecucion_detalle_id` int(11),
  `fecha_format` varchar(40)
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `v_ejecucion_informe_combo`
--

DROP TABLE IF EXISTS `v_ejecucion_informe_combo`;
/*!50001 DROP VIEW IF EXISTS `v_ejecucion_informe_combo`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `v_ejecucion_informe_combo` (
  `ejecucion_detalle_id` int(11),
  `ejecucion_detalle__descripcion` varchar(255),
  `ejecucion_detalle__etapa` varchar(255)
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `v_ejecucion_informe_listado`
--

DROP TABLE IF EXISTS `v_ejecucion_informe_listado`;
/*!50001 DROP VIEW IF EXISTS `v_ejecucion_informe_listado`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `v_ejecucion_informe_listado` (
  `informe` varchar(255),
  `ejecucion_id` int(11),
  `periodo` varchar(20),
  `porcentaje` varchar(255),
  `observacion` text,
  `proyecto_id` int(11),
  `ejecucion_detalle_id` int(11),
  `tipo_inf` varchar(255)
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `v_ejecucion_listado`
--

DROP TABLE IF EXISTS `v_ejecucion_listado`;
/*!50001 DROP VIEW IF EXISTS `v_ejecucion_listado`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `v_ejecucion_listado` (
  `proyecto_descripcion` varchar(200),
  `proyecto_codigo_sap` varchar(50),
  `proyecto_numero_sisin` varchar(50),
  `proyecto_id` int(11),
  `monto_contrato_bs` varchar(55),
  `monto_supervicion_bs` varchar(55),
  `monto_asistecia_bs` varchar(55),
  `nombres` varchar(203),
  `fcha_ult_modif` varchar(24)
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `v_evaluacion_doc_listado`
--

DROP TABLE IF EXISTS `v_evaluacion_doc_listado`;
/*!50001 DROP VIEW IF EXISTS `v_evaluacion_doc_listado`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `v_evaluacion_doc_listado` (
  `cumple` varchar(25),
  `pagina` varchar(10),
  `observa` text,
  `evaluacion_docs_id` int(11),
  `proyecto_id` int(11),
  `evaluacion_docs_descripcion` varchar(255),
  `evaluacion_documentos_id` int(11),
  `evaluacion_documentos_tipo_proy_reg` varchar(15)
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `v_evaluacion_documentos`
--

DROP TABLE IF EXISTS `v_evaluacion_documentos`;
/*!50001 DROP VIEW IF EXISTS `v_evaluacion_documentos`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `v_evaluacion_documentos` (
  `evaluacion_docs_descripcion` varchar(255),
  `evaluacion_docs_seccion` varchar(255),
  `evaluacion_documentos_cumple` varchar(25),
  `evaluacion_documentos_nro_pagina` varchar(10),
  `evaluacion_documentos_observaciones` text,
  `proyecto_id` int(11),
  `evaluacion_docs_id` int(11),
  `evaluacion_docs_orden` int(9),
  `evaluacion_documentos_tipo_proy_reg` varchar(15)
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `v_indicador_listado`
--

DROP TABLE IF EXISTS `v_indicador_listado`;
/*!50001 DROP VIEW IF EXISTS `v_indicador_listado`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `v_indicador_listado` (
  `id_indicador_valor` int(11),
  `ind_ppv_id_proyecto` int(11),
  `ind_ppv_id_periodo` int(11),
  `ind_ppv_valor` varchar(50),
  `ind_ppv_obsevacion` varchar(150),
  `pind_descripcion` varchar(1500),
  `ind_ppv_tipo_indicador` varchar(30)
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `v_indicador_periodo_listado`
--

DROP TABLE IF EXISTS `v_indicador_periodo_listado`;
/*!50001 DROP VIEW IF EXISTS `v_indicador_periodo_listado`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `v_indicador_periodo_listado` (
  `ind_per_periodo` varchar(8),
  `ind_per_tipo_indicador` varchar(30),
  `ind_per_observacion` varchar(800),
  `ind_per_id_proyecto` int(11),
  `id_indicador_periodo` int(11),
  `ind_per_id_indicador_proyecto` int(11)
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `v_indicador_proyecto_listado`
--

DROP TABLE IF EXISTS `v_indicador_proyecto_listado`;
/*!50001 DROP VIEW IF EXISTS `v_indicador_proyecto_listado`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `v_indicador_proyecto_listado` (
  `proyecto_id` int(11),
  `proyecto_descripcion` varchar(200),
  `proyecto_codigo_sap` varchar(50),
  `id_indicador_proyecto` varchar(11),
  `usuario` varchar(11),
  `fecha_actualiza` varchar(10),
  `nombres` varchar(203),
  `linea_base` varchar(2),
  `periodos` int(1),
  `proyecto_municipio` varchar(10)
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `v_indicador_repote_1`
--

DROP TABLE IF EXISTS `v_indicador_repote_1`;
/*!50001 DROP VIEW IF EXISTS `v_indicador_repote_1`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `v_indicador_repote_1` (
  `ind_per_periodo` varchar(8),
  `ind_per_tipo_indicador` varchar(30),
  `ind_per_id_proyecto` int(11),
  `ind_ppv_valor` varchar(50),
  `pind_descripcion` varchar(1500),
  `pind_tipo` varchar(30),
  `pind_entrada` varchar(15),
  `id_indicador` int(11),
  `pind_tipo_valor` varchar(20)
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `v_indicador_valor_periodo_proyecto`
--

DROP TABLE IF EXISTS `v_indicador_valor_periodo_proyecto`;
/*!50001 DROP VIEW IF EXISTS `v_indicador_valor_periodo_proyecto`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `v_indicador_valor_periodo_proyecto` (
  `ind_ppv_id_proyecto` int(11),
  `ind_ppv_valor` varchar(50),
  `ind_ppv_obsevacion` varchar(150),
  `ind_ppv_tipo_indicador` varchar(30),
  `pind_tipo` varchar(30),
  `pind_descripcion` varchar(1500),
  `pind_entrada` varchar(15),
  `pind_tipo_valor` varchar(20),
  `ind_per_id_proyecto` int(11),
  `ind_per_periodo` varchar(8),
  `ind_per_tipo_indicador` varchar(30),
  `proyecto_id` int(11),
  `proyecto_municipio` varchar(10),
  `proyecto_provincia` varchar(10),
  `proyecto_descripcion` varchar(200),
  `ubicacion_municipio` varchar(50),
  `id_indicador_periodo` int(11),
  `ind_ppv_id_indicador_parametro` int(11)
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `v_indicador_valor_periodo_proyecto_pu`
--

DROP TABLE IF EXISTS `v_indicador_valor_periodo_proyecto_pu`;
/*!50001 DROP VIEW IF EXISTS `v_indicador_valor_periodo_proyecto_pu`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `v_indicador_valor_periodo_proyecto_pu` (
  `ind_ppv_id_proyecto` int(11),
  `ind_ppv_valor` varchar(50),
  `ind_ppv_obsevacion` varchar(150),
  `ind_ppv_tipo_indicador` varchar(30),
  `pind_tipo` varchar(30),
  `pind_descripcion` text,
  `pind_entrada` varchar(15),
  `pind_tipo_valor` varchar(20),
  `ind_per_id_proyecto` int(11),
  `ind_per_periodo` varchar(8),
  `ind_per_tipo_indicador` varchar(30),
  `proyecto_id` int(11),
  `proyecto_municipio` varchar(10),
  `proyecto_provincia` varchar(10),
  `proyecto_descripcion` varchar(200),
  `ubicacion_municipio` varchar(50),
  `id_indicador_periodo` int(11),
  `ind_ppv_id_indicador_parametro` int(11)
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `v_lac_estaciones_listado`
--

DROP TABLE IF EXISTS `v_lac_estaciones_listado`;
/*!50001 DROP VIEW IF EXISTS `v_lac_estaciones_listado`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `v_lac_estaciones_listado` (
  `lac_estacion_id` int(10),
  `monto` varchar(49),
  `plazo` int(10),
  `descripcion_tipo` varchar(100),
  `lac_proyecto_id` int(10),
  `licitacion` int(11),
  `adjudicacion` int(1),
  `contratacion` int(1)
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `v_lac_etapas_combo`
--

DROP TABLE IF EXISTS `v_lac_etapas_combo`;
/*!50001 DROP VIEW IF EXISTS `v_lac_etapas_combo`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `v_lac_etapas_combo` (
  `estado_codigo` int(11),
  `estado_descripcion` varchar(100)
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `v_lac_licitacion_listado`
--

DROP TABLE IF EXISTS `v_lac_licitacion_listado`;
/*!50001 DROP VIEW IF EXISTS `v_lac_licitacion_listado`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `v_lac_licitacion_listado` (
  `lac_licitacion_id` int(10),
  `lac_lic_proy_id` int(10),
  `lac_lic_estacion_id` int(10),
  `convocatoria` varchar(5),
  `cuce` varchar(30),
  `codigo` varchar(20),
  `lac_lic_tipo_proy` varchar(20)
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `v_lac_listado`
--

DROP TABLE IF EXISTS `v_lac_listado`;
/*!50001 DROP VIEW IF EXISTS `v_lac_listado`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `v_lac_listado` (
  `proyecto_descripcion` varchar(200),
  `proyecto_codigo_sap` varchar(50),
  `proyecto_numero_sisin` varchar(50),
  `proyecto_id` int(11),
  `tot_mb` varchar(15),
  `estaciones` int(11),
  `fcha_ult_modif` varchar(24),
  `nombres` varchar(203),
  `proyecto_tipo_proyecto_codigo` int(11)
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `v_persona`
--

DROP TABLE IF EXISTS `v_persona`;
/*!50001 DROP VIEW IF EXISTS `v_persona`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `v_persona` (
  `persona_codigo` int(11),
  `nombres` varchar(203),
  `ci` varchar(10),
  `fecha_nacimiento` varchar(10)
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `v_proy_etapa`
--

DROP TABLE IF EXISTS `v_proy_etapa`;
/*!50001 DROP VIEW IF EXISTS `v_proy_etapa`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `v_proy_etapa` (
  `pee_codigo` int(11),
  `estado` varchar(100),
  `estado_codigo` int(11),
  `pee_etapa` int(11),
  `pee_proyecto_id` int(11)
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `v_proy_etapa_estado_listado`
--

DROP TABLE IF EXISTS `v_proy_etapa_estado_listado`;
/*!50001 DROP VIEW IF EXISTS `v_proy_etapa_estado_listado`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `v_proy_etapa_estado_listado` (
  `pee_codigo` int(11),
  `estado` varchar(100),
  `estado_codigo` int(11),
  `pee_etapa` int(11),
  `pee_proyecto_id` int(11),
  `etapa` varchar(100)
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `v_proy_evaluacion_listado`
--

DROP TABLE IF EXISTS `v_proy_evaluacion_listado`;
/*!50001 DROP VIEW IF EXISTS `v_proy_evaluacion_listado`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `v_proy_evaluacion_listado` (
  `proyecto_id` int(11),
  `proyecto_codigo_sap` varchar(50),
  `proyecto_descripcion` varchar(200),
  `total` varchar(46),
  `fecha_in` varchar(10),
  `fecha_fin` varchar(10),
  `duracion_dias` varchar(10),
  `nombres` varchar(203),
  `fcha_ult_modif` varchar(24),
  `evaluacion_codigo` bigint(11),
  `proyecto_tipo_proyecto_codigo` int(11),
  `estado_pi_i` int(11),
  `tipo_pi_i` varchar(25)
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `v_proy_rep_estapa_estado`
--

DROP TABLE IF EXISTS `v_proy_rep_estapa_estado`;
/*!50001 DROP VIEW IF EXISTS `v_proy_rep_estapa_estado`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `v_proy_rep_estapa_estado` (
  `pee_proyecto_id` int(11),
  `estado_descripcion` varchar(100),
  `ee_descripcion_etapa` varchar(100)
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `v_proy_responsable`
--

DROP TABLE IF EXISTS `v_proy_responsable`;
/*!50001 DROP VIEW IF EXISTS `v_proy_responsable`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `v_proy_responsable` (
  `rl_id` int(11),
  `nombres` varchar(203)
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `v_proy_seguimiento`
--

DROP TABLE IF EXISTS `v_proy_seguimiento`;
/*!50001 DROP VIEW IF EXISTS `v_proy_seguimiento`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `v_proy_seguimiento` (
  `ps_codigo` int(11),
  `nombres` varchar(203),
  `proyecto_id` int(11),
  `ciclo_codigo` int(11),
  `ps_reporte_sm` text,
  `mes` varchar(7),
  `fech_seg` varchar(10),
  `ps_tipo_proy_reg` varchar(15)
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `v_proyecto_listado`
--

DROP TABLE IF EXISTS `v_proyecto_listado`;
/*!50001 DROP VIEW IF EXISTS `v_proyecto_listado`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `v_proyecto_listado` (
  `proyecto_id` int(11),
  `proyecto_codigo_sap` varchar(50),
  `proyecto_descripcion` varchar(200),
  `monto_sol` varchar(49),
  `proyecto_nro_familias` int(11),
  `proyecto_plazo_ejecucion` int(11),
  `nombres` varchar(203),
  `fecha_ult_modif` varchar(24)
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `v_proyecto_seguidores`
--

DROP TABLE IF EXISTS `v_proyecto_seguidores`;
/*!50001 DROP VIEW IF EXISTS `v_proyecto_seguidores`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `v_proyecto_seguidores` (
  `proy_seg_codigo` int(11),
  `persona_codigo` int(11),
  `nombres` varchar(203)
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
  `usuario_id` int(10),
  `u_nivel` int(10),
  `u_login` varchar(20),
  `nombres` varchar(203),
  `ci` varchar(10)
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `v_vc_documento_listado`
--

DROP TABLE IF EXISTS `v_vc_documento_listado`;
/*!50001 DROP VIEW IF EXISTS `v_vc_documento_listado`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `v_vc_documento_listado` (
  `documentos_verificacion_id` int(11),
  `proyecto_id` int(11),
  `verific` varchar(2),
  `observ` varchar(255),
  `documentos_descripcion` varchar(255)
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `v_vc_personal_clave_listado`
--

DROP TABLE IF EXISTS `v_vc_personal_clave_listado`;
/*!50001 DROP VIEW IF EXISTS `v_vc_personal_clave_listado`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `v_vc_personal_clave_listado` (
  `personal_verificacion_id` int(11),
  `proyecto_id` int(11),
  `permanente` varchar(2),
  `observ` varchar(255),
  `cargo` varchar(500),
  `nombres` varchar(203)
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `v_vista_campo_listado`
--

DROP TABLE IF EXISTS `v_vista_campo_listado`;
/*!50001 DROP VIEW IF EXISTS `v_vista_campo_listado`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `v_vista_campo_listado` (
  `proyecto_id` int(11),
  `proyecto_codigo` varchar(10),
  `proyecto_descripcion` varchar(200),
  `proyecto_codigo_sap` varchar(50),
  `num_doc` int(11),
  `num_maquin` int(11),
  `num_personal` int(11),
  `nombres` varchar(203),
  `fcha_ult_modif` varchar(24)
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `v_vista_campo_maquinaria_listado`
--

DROP TABLE IF EXISTS `v_vista_campo_maquinaria_listado`;
/*!50001 DROP VIEW IF EXISTS `v_vista_campo_maquinaria_listado`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `v_vista_campo_maquinaria_listado` (
  `maquinaria_comprometida_id` int(11),
  `proyecto_id` int(11),
  `propuesta` varchar(61),
  `obra` varchar(101),
  `vc_mc_permanente` varchar(50),
  `vc_mc_observaciones` varchar(500),
  `maquinaria_descripcion` varchar(255)
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Dumping routines for database 'db_sisec'
--
/*!50003 DROP FUNCTION IF EXISTS `fn_aprobacion_graba` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = '' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50020 DEFINER=`root`@`localhost`*/ /*!50003 FUNCTION `fn_aprobacion_graba`(int_id_proy int,int_resultado_id int,str_resultado_obs VARCHAR(255),
	str_acta_cdap VARCHAR(255),flt_fuente_bs decimal(15,2),flt_tipo_cambio_eu decimal(15,2),flt_contraparte_bs decimal(15,2),
	str_aprobacion_ctf VARCHAR(255),str_fecha_ctf VARCHAR(10),
	str_resolucion_fecha VARCHAR(10),str_fecha_inicio VARCHAR(10),str_fecha_fin_programada VARCHAR(10),
	str_fecha_final VARCHAR(10),str_duracion_dias VARCHAR(10),str_fecha_comite_tecnico VARCHAR(10),
	str_fecha_cdap VARCHAR(10),str_observacion_acta_comite_tecnico VARCHAR(900),str_observacion_acta_cdap VARCHAR(900),
	int_plazo_total_ejecucion int,str_codigo_correlativo_aprobacion VARCHAR(50),
	int_aprobado_como int,int_user int,str_tipo_proy varchar(15),int_id_aprobacion int) RETURNS text CHARSET latin2
BEGIN

/*
 select fn_aprobacion_graba(183,1,'modd2 1 obs','mod cdap',10.01,7,20.02,'mod aprob ctf','2002-02-01','2002-02-02'
,'2002-02-03','2002-02-04','2002-02-05',20,'2002-02-06','2002-02-07','mod obs com tec','mod obs cdap',
30,'mod corr aprob',2)  
*/



	DECLARE str_filas_tabla text;
	DECLARE int_no_regs int;	 

	SELECT COALESCE(COUNT(*) ,0) INTO int_no_regs
	FROM t_aprobacion AS c
	WHERE c.proyecto_id = int_id_proy and  c.aprob_tipo_proyecto=str_tipo_proy ; 

	if int_no_regs=0 THEN

		insert into t_aprobacion
		( aprobacion_resultado_id,aprobacion_resultado_obs,aprobacion_nro_acta_cdap,
		aprobacion_fuente_eu,aprobacion_fuente_bs,
		aprobacion_contraparte_eu,aprobacion_contraparte_bs,
		aprobacion_ctf,aprobacion_ctf_fecha,aprobacion_resolucion_fecha,
		aprobacion_fecha_inicio,aprobacion_fecha_fin_programada,
		aprobacion_fecha_final,aprobacion_duracion_dias,
		proyecto_id,aprob_fecha_comite_tecnico,aprob_fecha_cdap,
		aprob_observacion_acta_comite_tecnico,aprob_observacion_acta_cdap,
		aprob_plazo_total_ejecucion,aprob_proyecto_aprobado_como,apob_id_user,aprob_fcha_ult_modif,
		aprob_tipo_proyecto)
		VALUES( int_resultado_id,str_resultado_obs,str_acta_cdap,flt_tipo_cambio_eu,flt_fuente_bs,
		flt_tipo_cambio_eu,flt_contraparte_bs,str_aprobacion_ctf,str_fecha_ctf,str_resolucion_fecha,
		str_fecha_inicio,str_fecha_fin_programada,str_fecha_final,str_duracion_dias,int_id_proy,str_fecha_comite_tecnico,
		str_fecha_cdap ,str_observacion_acta_comite_tecnico,str_observacion_acta_cdap,int_plazo_total_ejecucion,
		int_aprobado_como ,int_user,now(),str_tipo_proy);		

		select "insert" INTO str_filas_tabla ;

	ELSE
	
		UPDATE t_aprobacion
		set aprobacion_resultado_id=int_resultado_id,aprobacion_resultado_obs=str_resultado_obs,
			aprobacion_nro_acta_cdap=str_acta_cdap,
			aprobacion_fuente_eu=flt_tipo_cambio_eu,aprobacion_fuente_bs=flt_fuente_bs,
			aprobacion_contraparte_eu=flt_tipo_cambio_eu,aprobacion_contraparte_bs=flt_contraparte_bs,
			aprobacion_ctf=str_aprobacion_ctf,aprobacion_ctf_fecha=str_fecha_ctf,aprobacion_resolucion_fecha=str_resolucion_fecha,
			aprobacion_fecha_inicio=str_fecha_inicio,aprobacion_fecha_fin_programada=str_fecha_fin_programada,
			aprobacion_fecha_final=str_fecha_final,aprobacion_duracion_dias=str_duracion_dias,
			aprob_fecha_comite_tecnico=str_fecha_comite_tecnico,aprob_fecha_cdap=str_fecha_cdap,
			aprob_observacion_acta_comite_tecnico=str_observacion_acta_comite_tecnico,
			aprob_observacion_acta_cdap=str_observacion_acta_cdap,aprob_plazo_total_ejecucion=int_plazo_total_ejecucion,
			aprob_proyecto_aprobado_como=int_aprobado_como,apob_id_user=int_user,
			aprob_fcha_ult_modif=now(),aprob_tipo_proyecto=str_tipo_proy
		WHERE aprobacion_id=int_id_aprobacion ; 

		select "modificar" INTO str_filas_tabla ;

	end IF;

	RETURN str_filas_tabla ;

end */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP FUNCTION IF EXISTS `fn_aprobacion_obtiene_estado_pi_i` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = '' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50020 DEFINER=`root`@`localhost`*/ /*!50003 FUNCTION `fn_aprobacion_obtiene_estado_pi_i`(int_id_proy int) RETURNS int(11)
BEGIN
/*

	select fn_aprobacion_obtiene_estado_pi_i(1)

*/
DECLARE int_no_regs_pre int;
DECLARE int_no_regs_inv int;

DECLARE int_tot int;
SELECT  COALESCE(COUNT(*) ,0) INTO int_no_regs_pre FROM t_aprobacion 
WHERE proyecto_id=int_id_proy AND aprob_tipo_proyecto='PRE-INV';

SELECT  COALESCE(COUNT(*) ,0) INTO int_no_regs_inv FROM t_aprobacion
WHERE proyecto_id=int_id_proy AND aprob_tipo_proyecto='INVERS';
SELECT int_no_regs_pre+int_no_regs_inv INTO int_tot;

RETURN int_tot ;
end */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP FUNCTION IF EXISTS `fn_aprobacion_obtiene_reg_tipo_pi_i` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = '' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50020 DEFINER=`root`@`localhost`*/ /*!50003 FUNCTION `fn_aprobacion_obtiene_reg_tipo_pi_i`(int_id_proy int,
int_id_aprob_id int) RETURNS varchar(25) CHARSET latin2
BEGIN 
	DECLARE str_tipo_proyecto varchar(25);
/*

	select fn_aprobacion_obtiene_reg_tipo_pi_i(185,195) 

*/
if(int_id_aprob_id>0) then  
 	SELECT case  t.aprob_tipo_proyecto when 'INVERS' then t.aprob_tipo_proyecto 
	when 'PRE-INV' then t.aprob_tipo_proyecto else 'blanco' end  into str_tipo_proyecto  
	FROM t_aprobacion AS t
	WHERE t.proyecto_id = int_id_proy AND 
	t.aprobacion_id = int_id_aprob_id; 
ELSE	
	select 'blanco' into  str_tipo_proyecto;

end if;
RETURN(str_tipo_proyecto);
end */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP FUNCTION IF EXISTS `fn_cierre_graba` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = '' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50020 DEFINER=`root`@`localhost`*/ /*!50003 FUNCTION `fn_cierre_graba`(int_id_proy int,int_etapa int,int_hijo int,str_componenete VARCHAR(300), 
str_comtrato VARCHAR(300),str_moneda varchar(5), flt_monto decimal(10,3),int_user int) RETURNS varchar(30) CHARSET latin2
BEGIN  
	DECLARE str_filas_tabla text;  
	DECLARE int_no_regs int; 
	 
	SELECT COALESCE(COUNT(*) ,0) INTO int_no_regs 
	FROM t_cierre AS c 
	WHERE c.c_id_proyecto = int_id_proy ; 
	if int_no_regs=0 THEN 
		INSERT into t_cierre   (c_id_proyecto, 
		c_etapa,c_etapa_hijo,c_componente,c_contrato_numero,c_moneda_contrato, 
		c_monto_final_contrato,c_id_user,c_fcha_ult_modif) values (int_id_proy,int_etapa,int_hijo,str_componenete,str_comtrato, 
		str_moneda,flt_monto,int_user,now()); 
		 
		select "insert" INTO str_filas_tabla ; 
	ELSE 
		UPDATE t_cierre set c_etapa=int_etapa, c_etapa_hijo=int_hijo,c_componente=str_componenete, 
		c_contrato_numero=str_comtrato,c_moneda_contrato=str_moneda,c_monto_final_contrato=flt_monto, 
		c_id_user=int_user,c_fcha_ult_modif=now() 
		where c_id_proyecto=int_id_proy; 
		 
		select "mod" INTO str_filas_tabla ; 
		 
	end IF; 
	RETURN str_filas_tabla ; 
end */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP FUNCTION IF EXISTS `fn_ejecucion_graba` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = '' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50020 DEFINER=`root`@`localhost`*/ /*!50003 FUNCTION `fn_ejecucion_graba`(int_id_proy int,flt_monto_contrato decimal (15,2),  
flt_monto_supervicion decimal (15,2),flt_monto_asistencia decimal (15,2),
str_cuce_supervicion varchar(25), str_cuce_licitacion varchar(25), 
flt_bi_anticipo_monto varchar(300),str_bi_anticipo_vigencia varchar(50), 
flt_bi_cumplimiento_monto varchar(300),str_bi_cumplimiento_vigencia varchar(50), 
int_id_tenico_fps int,int_id_supervisor int,int_id_contructora int,
str_observacion_gral VARCHAR(500),str_cuce_st varchar(25),int_user int) RETURNS varchar(20) CHARSET latin2
BEGIN 

/* 

SELECT fn_ejecucion_graba(1,539888.32,56.00,567.00,'cuce','12-1103-00-3473','0.00','',
		'0.00 fdfdf','',1,1,53,'xczcx','',7 )

*/  

	DECLARE str_filas_tabla text; 
	DECLARE int_no_regs int;	

	SELECT COALESCE(COUNT(*) ,0) INTO int_no_regs 
	FROM t_ejecucion AS c 
	WHERE c.ej_proyecto_id = int_id_proy ; 	

	if int_no_regs=0 THEN  

 		insert into t_ejecucion 
		(ej_monto_contrato_bs  ,ej_monto_contrato_supervicion_bs  , 
		ej_monto_contrato_asistecia_bs  ,ej_cuce_licitacion  , 
		ej_cuce_supervicion  , ej_boleta_inversion_anticipo_monto  , 
		ej_boleta_inversion_anticipo_vigencia  , ej_boleta_inversion_cumplimiento_monto  ,
		ej_boleta_inversion_cumplimiento_vigencia  ,ej_tecnico_fps_id  ,ej_supervisor_id  , 
		ej_contratista_id  ,ej_observacion_general ,ej_proyecto_id,ej_id_usuario,ej_fcha_ult_modif , ej_cuce_at ) 
		 values (flt_monto_contrato,flt_monto_supervicion,flt_monto_asistencia,str_cuce_licitacion,str_cuce_supervicion,
		flt_bi_anticipo_monto,	str_bi_anticipo_vigencia,
		flt_bi_cumplimiento_monto,str_bi_cumplimiento_vigencia,int_id_tenico_fps, 
		int_id_supervisor,int_id_contructora,str_observacion_gral,int_id_proy,int_user,now(),str_cuce_st);

		select "insert" INTO str_filas_tabla ; 

	ELSE   
	
		UPDATE t_ejecucion 
		SET  ej_monto_contrato_bs  =flt_monto_contrato,ej_monto_contrato_supervicion_bs  =flt_monto_supervicion, 
		ej_monto_contrato_asistecia_bs  =flt_monto_asistencia,ej_cuce_licitacion  =str_cuce_licitacion, 
		ej_cuce_supervicion  =str_cuce_supervicion,
		ej_boleta_inversion_anticipo_monto  =flt_bi_anticipo_monto, 
		ej_boleta_inversion_anticipo_vigencia  =str_bi_anticipo_vigencia,
		ej_boleta_inversion_cumplimiento_monto  =flt_bi_cumplimiento_monto, 
		ej_boleta_inversion_cumplimiento_vigencia  =str_bi_cumplimiento_vigencia,
		ej_tecnico_fps_id  =int_id_tenico_fps,
		ej_supervisor_id  =int_id_supervisor, ej_contratista_id  =int_id_contructora,
		ej_observacion_general   =str_observacion_gral ,ej_id_usuario =int_user,ej_fcha_ult_modif=now() ,
		ej_cuce_at=str_cuce_st
		WHERE ej_proyecto_id =int_id_proy;  

		select "modificar" INTO str_filas_tabla ; 

	end IF;

	RETURN str_filas_tabla ; 

end */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP FUNCTION IF EXISTS `fn_ejec_tipo_informe` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = '' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50020 DEFINER=`root`@`localhost`*/ /*!50003 FUNCTION `fn_ejec_tipo_informe`(int_id_informe int) RETURNS varchar(255) CHARSET latin2
BEGIN

DECLARE str_res text; 

SELECT 
d.ejecucion_detalle__etapa INTO str_res
FROM
p_ejecucion_detalle AS d
WHERE d.ejecucion_detalle_id=int_id_informe;

RETURN str_res ;

END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP FUNCTION IF EXISTS `fn_evaluacion_obtiene_estado_pi_i` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = '' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50020 DEFINER=`root`@`localhost`*/ /*!50003 FUNCTION `fn_evaluacion_obtiene_estado_pi_i`(int_id_proy int) RETURNS int(11)
BEGIN

/*
	select fn_evaluacion_obtiene_estado_pi_i(1)
*/

	DECLARE int_no_regs_pre int;
	DECLARE int_no_regs_inv int;
	DECLARE int_tot int;

	SELECT  COALESCE(COUNT(*) ,0) into int_no_regs_pre FROM t_evaluacion_presupuesto
	where proyecto_id=int_id_proy and eval_tipo_proyecto='PRE-INV';

	SELECT  COALESCE(COUNT(*) ,0) into int_no_regs_inv FROM t_evaluacion_presupuesto
	where proyecto_id=int_id_proy and eval_tipo_proyecto='INVERS'; 

	select int_no_regs_pre+int_no_regs_inv into int_tot;

	RETURN int_tot ;

end */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP FUNCTION IF EXISTS `fn_evaluacion_obtiene_reg_tipo_pi_i` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = '' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50020 DEFINER=`root`@`localhost`*/ /*!50003 FUNCTION `fn_evaluacion_obtiene_reg_tipo_pi_i`(int_id_proy int, 
int_id_eval_pres int) RETURNS varchar(25) CHARSET latin2
BEGIN

	DECLARE str_tipo_proyecto varchar(25);
/*
	select fn_evaluacion_obtiene_reg_tipo_pi_i(185,195)
*/
	if(int_id_eval_pres>0) then 
		SELECT case  t.eval_tipo_proyecto when 'INVERS' then t.eval_tipo_proyecto 
		when 'PRE-INV' then t.eval_tipo_proyecto else 'blanco' end into str_tipo_proyecto   
		FROM t_evaluacion_presupuesto AS t
		WHERE t.proyecto_id = int_id_proy AND
		t.evaluacion_codigo = int_id_eval_pres;

	ELSE	
		select 'blanco' into  str_tipo_proyecto; 
	end if;
	RETURN(str_tipo_proyecto);
end */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP FUNCTION IF EXISTS `fn_evaluacion_pres_graba` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = '' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50020 DEFINER=`root`@`localhost`*/ /*!50003 FUNCTION `fn_evaluacion_pres_graba`(int_id_proy int,
flt_infraestructura_bs DECIMAL(15,2),flt_infraestructura_sus DECIMAL(15,2),
flt_supervicion_bs DECIMAL(15,2),flt_supervicion_sus DECIMAL(15,2),
flt_capacitacion_bs DECIMAL(15,2),flt_capacitacion_sus DECIMAL(15,2),
flt_total_bs DECIMAL(15,2),flt_total_sus DECIMAL(15,2),str_fecha_inicio varchar(10),
str_fecha_fin varchar(10),str_fecha_prog_fin varchar(10), int_duracion int,int_responsable int,
int_user int,str_tipo_proyecto varchar(15),id_eval_pres int) RETURNS text CHARSET latin2
BEGIN 
/*
SELECT fn_evaluacion_pres_graba(1,1000.00,1000.00*6.71,200000.00,
200000.00*6.71,0.01,0.01*6.71,201000.00,201000.00*6.71,
'2011-05-26','2014-05-26','',1097,14,7,'PRE-INV',1) res
*/	
	DECLARE str_filas_tabla text; 
	DECLARE int_no_regs int;
	
	SELECT COALESCE(COUNT(*) ,0) INTO int_no_regs
	FROM t_evaluacion_presupuesto AS c
	WHERE c.proyecto_id = int_id_proy and  eval_tipo_proyecto=str_tipo_proyecto; 	
	
	if int_no_regs=0 THEN 		
		INSERT INTO t_evaluacion_presupuesto
		(proyecto_id,evaluacion_infraestructura_bs,	evaluacion_infraestructura_sus,
		evaluacion_supervision_bs,evaluacion_supervision_sus,
		evaluacion_capacitacion_bs,evaluacion_capacitacon_sus,
		evaluacion_total_bs,evaluacion_total_sus,
		evaluacion_fecha_inicio,evaluacion_fecha_fin_programada,evaluacion_fecha_final,
		evaluacion_duracion_dias,e_id_reponsable_evaluacion,eval_id_user,
		eval_fcha_ult_modif,eval_tipo_proyecto)
		VALUES(int_id_proy,flt_infraestructura_bs,flt_infraestructura_sus,flt_supervicion_bs,flt_supervicion_sus,
		flt_capacitacion_bs,flt_capacitacion_sus,flt_total_bs,flt_total_sus,str_fecha_inicio,str_fecha_prog_fin,
		str_fecha_fin,int_duracion,int_responsable,int_user,now(),str_tipo_proyecto);		
		
		select "insert" INTO str_filas_tabla ;	
	ELSE		
		UPDATE t_evaluacion_presupuesto
		SET evaluacion_infraestructura_bs=flt_infraestructura_bs,evaluacion_infraestructura_sus=flt_infraestructura_sus,
		evaluacion_supervision_bs=flt_supervicion_bs,evaluacion_supervision_sus=flt_supervicion_sus,
		evaluacion_capacitacion_bs=flt_capacitacion_bs,evaluacion_capacitacon_sus=flt_capacitacion_sus,
		evaluacion_total_bs=flt_total_bs,evaluacion_total_sus=flt_total_sus,
		evaluacion_fecha_inicio=str_fecha_inicio,evaluacion_fecha_fin_programada=str_fecha_prog_fin,
		evaluacion_fecha_final=str_fecha_fin,evaluacion_duracion_dias=int_duracion,
		e_id_reponsable_evaluacion=int_responsable ,eval_id_user=int_user,eval_fcha_ult_modif=now(),
		eval_tipo_proyecto=str_tipo_proyecto
		WHERE evaluacion_codigo=id_eval_pres;
		
		select "mod" INTO str_filas_tabla ;	
	end IF;	
	
	RETURN str_filas_tabla ;
	
end */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP FUNCTION IF EXISTS `fn_lac_cuenta_licitaciones` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = '' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50020 DEFINER=`root`@`localhost`*/ /*!50003 FUNCTION `fn_lac_cuenta_licitaciones`(int_id_proy int,int_estacion_id int) RETURNS int(11)
BEGIN







































/*



















	SELECT fn_lac_cuenta_licitaciones (1,1)



















*/







































	



















declare int_regs INT;







































	SELECT COUNT(*) R into int_regs



















	FROM t_lac_estacion_licitacion AS l



















	WHERE l.lac_lic_proy_id = int_id_proy 



















		AND l.lac_lic_estacion_id = int_estacion_id ;



















	 



















	return int_regs;







































END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP FUNCTION IF EXISTS `fn_lac_graba_general` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = '' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50020 DEFINER=`root`@`localhost`*/ /*!50003 FUNCTION `fn_lac_graba_general`(int_id_proy int,int_id_proy_licitado_como int,




int_id_funcionario_llenado int,str_correlativo VARCHAR(20),int_user int) RETURNS text CHARSET latin2 COLLATE latin2_bin
BEGIN 









/*




select fn_lac_graba_general(0,1,1,'12-0051-12366-1-1' ,1)




*/









	DECLARE str_filas_tabla text;




	DECLARE int_no_regs int;	 









	SELECT COALESCE(COUNT(*) ,0) INTO int_no_regs




	FROM t_licitacion_adjudicacion_contratacion_proyecto AS c




	WHERE c.lac_proyecto_id = int_id_proy ; 	




	




	if int_no_regs=0 THEN




			INSERT INTO t_licitacion_adjudicacion_contratacion_proyecto




			(lac_proyecto_id,lac_funcionario_llenado,




			lac_modalidad_licitacion,lac_correlativo,lac_id_user,lac_fcha_ult_modif)




			VALUES (int_id_proy,int_id_funcionario_llenado,int_id_proy_licitado_como,str_correlativo,int_user,now()) ;









		select "insert" INTO str_filas_tabla ;









	ELSE









		UPDATE t_licitacion_adjudicacion_contratacion_proyecto




		SET lac_funcionario_llenado=int_id_funcionario_llenado, lac_modalidad_licitacion=int_id_proy_licitado_como,




		lac_correlativo =str_correlativo,lac_id_user=int_user,lac_fcha_ult_modif=now()




		WHERE lac_proyecto_id= int_id_proy ;









		select "modificar" INTO str_filas_tabla ;









	end IF;









	RETURN str_filas_tabla ;









end */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP FUNCTION IF EXISTS `fn_lac_obtiene_estaciones` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = '' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50020 DEFINER=`root`@`localhost`*/ /*!50003 FUNCTION `fn_lac_obtiene_estaciones`(int_id_proy int) RETURNS int(11)
BEGIN















































































	DECLARE int_numero_estaciones int;







































	SELECT count(*) into int_numero_estaciones







































	FROM t_licitacion_adjudicacion_cotratacion_proyecto_estacion AS e







































	WHERE e.lac_proyecto_id = int_id_proy ;















































































	RETURN int_numero_estaciones;















































































END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP FUNCTION IF EXISTS `fn_lac_obtiene_tot_monto_base` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = '' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50020 DEFINER=`root`@`localhost`*/ /*!50003 FUNCTION `fn_lac_obtiene_tot_monto_base`(int_id_proy int) RETURNS varchar(15) CHARSET utf8 COLLATE utf8_spanish_ci
BEGIN















































































DECLARE str_monto VARCHAR(15);























































































































SELECT format(sum(e.lac_monto_base),2)  into str_monto  FROM







































t_licitacion_adjudicacion_cotratacion_proyecto_estacion AS e







































WHERE e.lac_proyecto_id = int_id_proy ;















































































RETURN str_monto ;















































































end */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP FUNCTION IF EXISTS `fn_lac_rep_obtiene_num_conv` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = '' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50020 DEFINER=`root`@`localhost`*/ /*!50003 FUNCTION `fn_lac_rep_obtiene_num_conv`(int_num_cov int) RETURNS text CHARSET utf8 COLLATE utf8_spanish_ci
BEGIN















































































DECLARE str_conv varchar(4);















































































select case int_num_cov when 1 then '1RA' when 2 then '2DA' when 3 then '3RA' when 4 then '4TA' when 5 then '5TA' when 6 then '6TA' when 7 then '7MA' when 8 then '8VA'  END into str_conv;















































































return str_conv;















































































end */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP FUNCTION IF EXISTS `fn_login` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = '' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50020 DEFINER=`root`@`localhost`*/ /*!50003 FUNCTION `fn_login`(str_login VARCHAR(50),str_contrasenia VARCHAR(50)) RETURNS int(11)
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

END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP FUNCTION IF EXISTS `fn_proy_obtiene_dep_prov_mun_comun` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50020 DEFINER=`root`@`localhost`*/ /*!50003 FUNCTION `fn_proy_obtiene_dep_prov_mun_comun`(cod_comun VARCHAR(8),int_id_proy int) RETURNS varchar(950) CHARSET latin2
BEGIN	

/*
	select fn_proy_obtiene_dep_prov_mun_comun(021201,121)
*/
	DECLARE str_res VARCHAR(1950);

	SELECT concat_ws(' - ',m.ga_departamento,p.ubicacion_provincia,m.ga_descripcion )  into str_res
	FROM p_gobierno_autonomo_rami AS m
	INNER JOIN p_ubicacion_geografica AS p ON m.ga_codigo_provincia = p.ubicacion_codigo
	WHERE  m.ga_codigo=cod_comun ;

	RETURN  str_res ;

END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP FUNCTION IF EXISTS `fn_proy_obtiene_dep_prov_mun_comun_1` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = '' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50020 DEFINER=`root`@`localhost`*/ /*!50003 FUNCTION `fn_proy_obtiene_dep_prov_mun_comun_1`(cod_comun VARCHAR(8),int_id_proy int) RETURNS varchar(950) CHARSET latin2
BEGIN	

/*
	select fn_proy_obtiene_dep_prov_mun_comun_1(021201,121)
*/
	DECLARE str_res VARCHAR(1950); 

	SELECT CONCAT( m.ga_departamento,p.ubicacion_provincia,'-',m.ga_descripcion )  into str_res
	FROM p_gobierno_autonomo_rami AS m
	INNER JOIN p_ubicacion_geografica AS p ON m.ga_codigo_provincia = p.ubicacion_codigo
	WHERE  m.ga_codigo=cod_comun ;

	RETURN  str_res ;

END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP FUNCTION IF EXISTS `fn_proy_rep_obtiene_dat_gen_proy` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = '' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50020 DEFINER=`root`@`localhost`*/ /*!50003 FUNCTION `fn_proy_rep_obtiene_dat_gen_proy`(int_id_proy int) RETURNS text CHARSET latin1 COLLATE latin1_bin
BEGIN















































































































































































































































	DECLARE str_filas_tabla text;























































































































	DECLARE str_sap varchar(50);























































































































	DECLARE str_convenio varchar(255);























































































































	DECLARE str_sector varchar(900);























































































































 	DECLARE str_depto varchar(50);























































































































	DECLARE str_prov varchar(50);























































































































	DECLARE str_mun varchar(50);























































































































	DECLARE str_comun varchar(50);























































































































	DECLARE str_urbano varchar(5);























































































































	DECLARE str_rural varchar(5);























































































































 























































































































	SELECT P.proyecto_codigo_sap,PC.convenio_descripcion,S.sector_descripcion,























































































































	DEPTO.ubicacion_departamento,PROV.ubicacion_provincia,MUN.ubicacion_municipio,























































































































	COM.ubicacion_comunidad,CASE P.proyecto_lugar_codigo WHEN 1 THEN 'X' ELSE '&nbsp' END URBANO,























































































































	CASE P.proyecto_lugar_codigo WHEN 2 THEN 'X' ELSE '&nbsp' END RURAL























































































































	INTO str_sap,str_convenio,str_sector,str_depto,str_prov,str_mun,str_comun,str_urbano,str_rural























































































































	FROM t_proyecto AS P























































































































	INNER JOIN p_programa_convenio AS PC ON P.proyecto_convenio_codigo = PC.convenio_codigo























































































































	INNER JOIN p_sector AS S ON P.proyecto_sector_codigo = S.sector_codigo























































































































	INNER JOIN p_ubicacion_geografica AS DEPTO ON P.proyecto_departamento = DEPTO.ubicacion_codigo























































































































	INNER JOIN p_ubicacion_geografica AS PROV ON P.proyecto_provincia = PROV.ubicacion_codigo























































































































	INNER JOIN p_ubicacion_geografica AS MUN ON P.proyecto_municipio = MUN.ubicacion_codigo























































































































	INNER JOIN p_ubicacion_geografica AS COM ON P.proyecto_comunidad = COM.ubicacion_codigo























































































































	WHERE P.proyecto_id = int_id_proy ;























































































































	























































































































	SELECT '<table width=100% BORDER=1> <tr><td width=31%><b>1.2. Codigo SAP de ingreso</b></td>	<td width=69%>{CODIGO_SAP}</td></tr> <tr><td><b>1.3. Convenio/Programa de financiamiento</b></td><td>{CONENIO_PROG}</td></tr> <tr><td><b>1.4. Sector de inversion publica</b></td><td>{SECTOR_INV_PUB}</td></tr> <tr><td><b>2. Ubicacion Geografica:</b></td> <td><table border=1 cellspacing=0 cellpadding=0 width=100%><tr> <td width=25% ><b><i>2.1 Urbano</i></b></td><td width=25% >{URBANO}</td> <td width=25% ><b><i>2.2 Rural</i></b></td><td width=25% >{RURAL}</td> </tr></table></td></tr><tr><td>&nbsp;</td> <td><table border=1 cellspacing=0 cellpadding=0 width=100%> <tr><td width=40% ><b><i>2.3 Departamento</i></b></td><td width=60% >{DEPARTAMENTO}</td></tr> <tr><td><b><i>2.4 Provincia</i></b></td><td>{PROVINCIA}</td></tr> <tr><td><b><i>2.5 Municipio</i></b></td><td>{MUNICIPIO}</td></tr> <tr><td><b><i>2.6 Comunidad</i></b></td><td>{COMUNIDAD}</td></tr> </table></td></tr></table>' INTO str_filas_tabla ;























































































































	























































































































	SELECT  REPLACE(str_filas_tabla, '{CODIGO_SAP}', str_sap) INTO str_filas_tabla;























































































































	SELECT  REPLACE(str_filas_tabla, '{CONENIO_PROG}', str_convenio) INTO str_filas_tabla;























































































































	SELECT  REPLACE(str_filas_tabla, '{SECTOR_INV_PUB}', str_sector) INTO str_filas_tabla;























































































































	SELECT  REPLACE(str_filas_tabla, '{URBANO}', str_urbano) INTO str_filas_tabla;























































































































	SELECT  REPLACE(str_filas_tabla, '{RURAL}', str_rural) INTO str_filas_tabla;























































































































	SELECT  REPLACE(str_filas_tabla, '{DEPARTAMENTO}', str_depto) INTO str_filas_tabla;























































































































	SELECT  REPLACE(str_filas_tabla, '{PROVINCIA}', str_prov) INTO str_filas_tabla;























































































































	SELECT  REPLACE(str_filas_tabla, '{MUNICIPIO}', str_mun) INTO str_filas_tabla;























































































































	SELECT  REPLACE(str_filas_tabla, '{COMUNIDAD}', str_comun) INTO str_filas_tabla;















































































































































































































































	return str_filas_tabla;























































































































END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP FUNCTION IF EXISTS `fn_proy_rep_obtiene_estacion_registro` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = '' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50020 DEFINER=`root`@`localhost`*/ /*!50003 FUNCTION `fn_proy_rep_obtiene_estacion_registro`(int_id_proy int) RETURNS text CHARSET latin1 COLLATE latin1_bin
BEGIN















































































































































































































































	DECLARE str_filas_tabla text;























































































































	DECLARE str_solicitante varchar(50);























































































































	DECLARE str_desc_det varchar(20000);























































































































	DECLARE str_monto varchar(255);























































































































	DECLARE str_tipo_proy varchar(255);























































































































	DECLARE str_num_famil varchar(255);























































































































	DECLARE str_plazo varchar(255);























































































































	DECLARE str_obs_monto varchar(255);























































































































	























































































































	SELECT GA.ga_descripcion, 	  P.proyecto_descripcion_larga   ,	FORMAT(P.proyecto_monto_solictado_bs, 2) AS MONTO_BS,























































































































	TP.tipo_proyecto_descripcion,	P.proyecto_nro_familias,	P.proyecto_plazo_ejecucion,P.proyecto_observacion_monto























































































































	INTO str_solicitante,str_desc_det,str_monto,str_tipo_proy,str_num_famil,str_plazo,str_obs_monto























































































































	FROM t_proyecto AS P























































































































	INNER JOIN p_gobierno_autonomo AS GA ON P.proyecto_solicitante = GA.ga_codigo























































































































	INNER JOIN p_tipo_proyecto AS TP ON P.proyecto_tipo_proyecto_codigo = TP.tipo_proyecto_codigo























































































































	WHERE P.proyecto_id = int_id_proy;























































































































	























































































































	























































































































	SELECT '<tr><td width=33%>Solicitante</td><td width=33% colspan=5 >{SOLICITANTE}</td><td width=34% colspan=2>&nbsp;</td> </tr><tr><td width=33% bgcolor=#FFFFCC >Monto Total Solicitado</td><td width=33% colspan=5><table width=100%><tr> <td width=33%  >Bolivianos</td><td width=33%  >{MONTO_BS}</td><td width=34%  >&nbsp;</td></tr> </table> </td><td width=34% colspan=2>{OBSERV_MONTO}</td></tr><tr><td width=33%><div align=center >Descripcion extendida del proyecto (Objetivo Especifico, alcances e indicadores importantes) (OBLIGATORIO)</div></td><td width=67% colspan=7>{DESC_DETALLADA}</td></tr> <tr><td bgcolor=#FFFFCC>Tipo  de Proyecto</td> <td colspan=3>PRODUCTIVO (INVERSION)</td> <td></td> <td>No de Familias Beneficiadas</td> <td colspan=2>81</td> </tr> <tr><td width=33% bgcolor=#FFFFCC >Plazo estimado ejecucion</td><td width=33% colspan=5><table width=100% ><TR> <td width=33%  >{PLAZO}</td><td width=33%  >dias calendario</td><td width=34%  >&nbsp;</td></TR> </table> </td><td width=34% colspan=2>&nbsp;</td></tr>' INTO str_filas_tabla;























































































































	























































































































	SELECT  REPLACE(str_filas_tabla, '{SOLICITANTE}', str_solicitante) INTO str_filas_tabla;























































































































	SELECT  REPLACE(str_filas_tabla, '{MONTO_BS}', str_monto) INTO str_filas_tabla;























































































































	SELECT  REPLACE(str_filas_tabla, '{OBSERV_MONTO}', str_obs_monto) INTO str_filas_tabla;























































































































	SELECT  REPLACE(str_filas_tabla, '{DESC_DETALLADA}', str_desc_det) INTO str_filas_tabla;























































































































	SELECT  REPLACE(str_filas_tabla, '{TIPO_PROYECTO}', str_tipo_proy) INTO str_filas_tabla;























































































































	SELECT  REPLACE(str_filas_tabla, '{NO_FAMILIAS}', str_num_famil) INTO str_filas_tabla;























































































































	SELECT  REPLACE(str_filas_tabla, '{PLAZO}', str_plazo) INTO str_filas_tabla;























































































































	















































































































































































































































	return str_filas_tabla;























































































































END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP FUNCTION IF EXISTS `fn_proy_rep_obtiene_etapa_estado` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = '' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50020 DEFINER=`root`@`localhost`*/ /*!50003 FUNCTION `fn_proy_rep_obtiene_etapa_estado`(int_id_proy int) RETURNS text CHARSET latin1 COLLATE latin1_bin
BEGIN























































































































  























































































































  DECLARE str_filas_tabla text;























































































































  























































































































 























































































































	SELECT  GROUP_CONCAT(	CONCAT('<tr><td><b>',ee.estado_descripcion,'</b></td><td>',ee.ee_descripcion_etapa,'</td><td>X</td></tr>') ) 























































































































	into str_filas_tabla























































































































	FROM v_proy_rep_estapa_estado ee























































































































	WHERE ee.pee_proyecto_id=int_id_proy ;















































































































































































































































	SELECT concat('<table border=1 cellspacing=0 cellpadding=0 width=60% align=center ><tr> <td width=33%> <b>ETAPA EN EL CICLO DEL PROYECTO</b> </td> <td width=33%> <b>ESTADO DEL PROYECTO EN SU PRESENTACION</b> </td><td width=34%> <b>MARQUE UNA CRUZ</b> </td></tr>',























































































































	str_filas_tabla,'</table>') into str_filas_tabla ;























































































































	























































































































	return str_filas_tabla;























































































































END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
DELIMITER ;;
BEGIN