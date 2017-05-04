CREATE DATABASE  IF NOT EXISTS `jrhoades_P2P2` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `jrhoades_P2P2`;
-- MySQL dump 10.16  Distrib 10.1.16-MariaDB, for Linux (x86_64)
--
-- Host: localhost    Database: jrhoades_P2P2
-- ------------------------------------------------------
-- Server version	10.1.16-MariaDB

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
-- Table structure for table `DO`
--

DROP TABLE IF EXISTS `DO`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `DO` (
  `DOID` int(11) NOT NULL,
  `Disease_Name` varchar(45) DEFAULT NULL,
  `Definition` varchar(45) DEFAULT NULL,
  `Relationship` varchar(45) DEFAULT NULL,
  `schema_name` varchar(30) DEFAULT NULL,
  `db_server_version` varchar(30) DEFAULT NULL,
  `create_date` datetime DEFAULT NULL,
  `update_date` datetime DEFAULT NULL,
  PRIMARY KEY (`DOID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `DO`
--

LOCK TABLES `DO` WRITE;
/*!40000 ALTER TABLE `DO` DISABLE KEYS */;
INSERT INTO `DO` VALUES (1342,'congenital hypoplastic anemia','(none)','is_a plastic anemia','jrhoades_P2P2','10.1.16-MariaDB','2016-11-07 13:37:00','2016-11-10 11:37:04'),(1520,'colon carcinoma','A colon cancer that has_material_basis_in abn','is_a colon cancer','jrhoades_P2P2','10.1.16-MariaDB','2016-11-07 13:37:00','2016-11-10 11:37:04'),(1612,'breast cancer','A thoracic cancer that originates in the mamm','is_a thoracic cancer','jrhoades_P2P2','10.1.16-MariaDB','2016-11-07 13:37:00','2016-11-10 11:37:04'),(1799,'Pancreatic Cancer 2','A malignant neoplasm of the pancreas. Tumors ','is_a pancreatic cancer','jrhoades_P2P2','10.1.16-MariaDB','2016-11-07 13:37:00','2016-11-10 11:37:04'),(1926,'Gaucher disease (GD)','A sphingolipidosis characterized by deficienc','is_a sphingolipidosis','jrhoades_P2P2','10.1.16-MariaDB','2016-11-07 13:37:00','2016-11-10 11:37:04'),(2618,'pancreatic carcinoma','A pancreas cancer that derives_from epithelia','is_a pancreatic cancer','jrhoades_P2P2','10.1.16-MariaDB','2016-11-07 13:37:00','2016-11-10 11:37:04'),(3883,'Lynch syndrome','An autosomal dominant disease that is charact','is_a autosomal dominant disease','jrhoades_P2P2','10.1.16-MariaDB','2016-11-07 13:37:00','2016-11-10 11:37:04'),(4257,'Caffey disease',' A bone inflammation disease that causes bone','is_a bone inflammation disease','jrhoades_P2P2','10.1.16-MariaDB','2016-11-07 13:37:00','2016-11-10 11:37:04'),(4448,'macular degeneration','A retinal degeneration characterized by gradu','is_a retinal degeneration','jrhoades_P2P2','10.1.16-MariaDB','2016-11-07 13:37:00','2016-11-10 11:37:04'),(5683,'An autosomal dominant disease characterized b','hereditary breast ovarian cancer','is_a autosomal dominant disease','jrhoades_P2P2','10.1.16-MariaDB','2016-11-07 13:37:00','2016-11-10 11:37:04'),(9256,'colorectal cancer','A large intestine cancer that is located_in t','is_a large intestine cancer','jrhoades_P2P2','10.1.16-MariaDB','2016-11-07 13:37:00','2016-11-10 11:37:04'),(11476,'osteoporosis','A bone resorption disease characterized by de','is_a bone resorption disease','jrhoades_P2P2','10.1.16-MariaDB','2016-11-07 13:37:00','2016-11-10 11:37:04'),(11724,'limb-girdle muscular dystrophy','A muscular dystrophy that is characterized by','is_a muscular dystrophy','jrhoades_P2P2','10.1.16-MariaDB','2016-11-07 13:37:00','2016-11-10 11:37:04'),(11984,'hypertrophic cardiomyopathy','An intrinsic cardiomyopathy that has_material','is_a intrinsic cardiomyopathy','jrhoades_P2P2','10.1.16-MariaDB','2016-11-07 13:37:00','2016-11-10 11:37:04'),(12347,'osteogenesis imperfecta','An osteochondrodysplasia that has_material_ba','is_a osteochondrodysplasia','jrhoades_P2P2','10.1.16-MariaDB','2016-11-07 13:37:00','2016-11-10 11:37:04'),(12449,'aplastic anemia','An anemia that is characterized by a deficien','is_a anemia','jrhoades_P2P2','10.1.16-MariaDB','2016-11-07 13:37:00','2016-11-10 11:37:04'),(14452,'hypokalemic periodic paralysis','(none)','is_a familial periodic paralysis','jrhoades_P2P2','10.1.16-MariaDB','2016-11-07 13:37:00','2016-11-10 11:37:04'),(14720,'type I Ehlers-Danlos syndrome','(none)','is_a Ehlers-Danlos syndrome','jrhoades_P2P2','10.1.16-MariaDB','2016-11-07 13:37:00','2016-11-10 11:37:04'),(50646,'distal arthrogyrposis','A muscle tissue disease characterized by cong','is_a muscle tissue disease','jrhoades_P2P2','10.1.16-MariaDB','2016-11-07 13:37:00','2016-11-10 11:37:04'),(50671,'female breast cancer','A common malignancy originating from breast e','is_a breast cancer','jrhoades_P2P2','10.1.16-MariaDB','2016-11-07 13:37:00','2016-11-10 11:37:04'),(60075,'estrogen-receptor positive breast cancer','','is_a breast cancer','jrhoades_P2P2','10.1.16-MariaDB','2016-11-07 13:37:00','2016-11-10 11:37:04'),(60255,'rippling muscle disease','A muscle tissue disease characterized by musc','is_a muscle tissue disease','jrhoades_P2P2','10.1.16-MariaDB','2016-11-07 13:37:00','2016-11-10 11:37:04'),(613985,'','A form of thalassemia. Thalassemias are commo','','jrhoades_P2P2','10.1.16-MariaDB','2016-11-07 13:37:00','2016-11-10 11:37:04'),(615220,'Osteogenesis imperfecta 15 (OI15)','An osteochondrodysplasia that has_material_ba','is_a osteochondrodysplasia','jrhoades_P2P2','10.1.16-MariaDB','2016-11-07 13:37:00','2016-11-10 11:37:04');
/*!40000 ALTER TABLE `DO` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`DBAuser`@`localhost`*/ /*!50003 trigger after_DO_insert
	after insert on DO
    for each row
begin
	/*   
    test
    insert into DO (DOID, Disease_Name, Definition, Relationship, schema_name, db_server_version, create_date, update_date)
    values (1234, 'TEST', 'TESTDEF', 'TESTRELATIONSHIP', 'TESTSCHEMA', 'TESTVERSION', now(), now());
    ;
    
	*/
		-- call usp_update_statistics;
	select count(*) into @NumberOfDiseases from DO;
    update db_statistics
    set value = @NumberofDiseases
    where description = 'total number of diseases';
end */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`DBAuser`@`localhost`*/ /*!50003 trigger after_DO_delete
	after delete on DO
	for each row
begin
	/*
    test
    delete from DO
    where DOID = 1234
    and Disease_Name = 'TEST'
    and Definition = 'TESTDEF'
    and Relationship = 'TESTRELATIONSHIP'
    and schema_name = 'TESTSCHEMA'
    and db_server_version = 'TESTVERSION'
    and create_date = now()
    and update_date = now();
	*/
	select count(*) into @NumberOfDiseases from DO;
    update db_statistics
    set value = @NumberofDiseases
    where description = 'total number of diseases';
end */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `Gene_Synonym`
--

DROP TABLE IF EXISTS `Gene_Synonym`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Gene_Synonym` (
  `Synonym` varchar(45) NOT NULL,
  `HGNC_ID` int(11) NOT NULL,
  `schema_name` varchar(30) DEFAULT NULL,
  `db_server_version` varchar(30) DEFAULT NULL,
  `create_date` datetime DEFAULT NULL,
  `update_date` datetime DEFAULT NULL,
  PRIMARY KEY (`Synonym`,`HGNC_ID`),
  KEY `fk_Gene_Synonym_HGNC1_idx` (`HGNC_ID`),
  CONSTRAINT `fk_Gene_Synonym_HGNC1` FOREIGN KEY (`HGNC_ID`) REFERENCES `HGNC` (`HGNC_ID`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Gene_Synonym`
--

LOCK TABLES `Gene_Synonym` WRITE;
/*!40000 ALTER TABLE `Gene_Synonym` DISABLE KEYS */;
INSERT INTO `Gene_Synonym` VALUES (' CD326',11529,'jrhoades_P2P2','10.1.16-MariaDB','2016-11-07 13:37:00','2016-11-10 11:39:39'),(' CO-17A',11529,'jrhoades_P2P2','10.1.16-MariaDB','2016-11-07 13:37:00','2016-11-10 11:39:39'),(' EGP-2',11529,'jrhoades_P2P2','10.1.16-MariaDB','2016-11-07 13:37:00','2016-11-10 11:39:39'),(' EGP34',11529,'jrhoades_P2P2','10.1.16-MariaDB','2016-11-07 13:37:00','2016-11-10 11:39:39'),(' EGP40',11529,'jrhoades_P2P2','10.1.16-MariaDB','2016-11-07 13:37:00','2016-11-10 11:39:39'),(' Ep-CAM',11529,'jrhoades_P2P2','10.1.16-MariaDB','2016-11-07 13:37:00','2016-11-10 11:39:39'),(' ESA',11529,'jrhoades_P2P2','10.1.16-MariaDB','2016-11-07 13:37:00','2016-11-10 11:39:39'),(' GA733-2',11529,'jrhoades_P2P2','10.1.16-MariaDB','2016-11-07 13:37:00','2016-11-10 11:39:39'),(' HBA-T3',4823,'jrhoades_P2P2','10.1.16-MariaDB','2016-11-07 13:37:00','2016-11-10 11:39:39'),(' HEA125',11529,'jrhoades_P2P2','10.1.16-MariaDB','2016-11-07 13:37:00','2016-11-10 11:39:39'),(' KS1/4',11529,'jrhoades_P2P2','10.1.16-MariaDB','2016-11-07 13:37:00','2016-11-10 11:39:39'),(' MH99',11529,'jrhoades_P2P2','10.1.16-MariaDB','2016-11-07 13:37:00','2016-11-10 11:39:39'),(' muscle embryonic myosin heavy chain 3',7573,'jrhoades_P2P2','10.1.16-MariaDB','2016-11-07 13:37:00','2016-11-10 11:39:39'),(' NESP',4392,'jrhoades_P2P2','10.1.16-MariaDB','2016-11-07 13:37:00','2016-11-10 11:39:39'),(' SMHCE',7573,'jrhoades_P2P2','10.1.16-MariaDB','2016-11-07 13:37:00','2016-11-10 11:39:39'),(' TACST-1',11529,'jrhoades_P2P2','10.1.16-MariaDB','2016-11-07 13:37:00','2016-11-10 11:39:39'),(' type IV',10591,'jrhoades_P2P2','10.1.16-MariaDB','2016-11-07 13:37:00','2016-11-10 11:39:39'),('17-1A',11529,'jrhoades_P2P2','10.1.16-MariaDB','2016-11-07 13:37:00','2016-11-10 11:39:39'),('323/A3 ',11529,'jrhoades_P2P2','10.1.16-MariaDB','2016-11-07 13:37:00','2016-11-10 11:39:39'),('AKT',391,'jrhoades_P2P2','10.1.16-MariaDB','2016-11-07 13:37:00','2016-11-10 11:39:39'),('alpha subunit',10591,'jrhoades_P2P2','10.1.16-MariaDB','2016-11-07 13:37:00','2016-11-10 11:39:39'),('beta',7577,'jrhoades_P2P2','10.1.16-MariaDB','2016-11-07 13:37:00','2016-11-10 11:39:39'),('Beta-globin',4827,'jrhoades_P2P2','10.1.16-MariaDB','2016-11-07 13:37:00','2016-11-10 11:39:39'),('BRCA2',1101,'jrhoades_P2P2','10.1.16-MariaDB','2016-11-07 13:37:00','2016-11-10 11:39:39'),('cardiac muscle',7577,'jrhoades_P2P2','10.1.16-MariaDB','2016-11-07 13:37:00','2016-11-10 11:39:39'),('CCA',3604,'jrhoades_P2P2','10.1.16-MariaDB','2016-11-07 13:37:00','2016-11-10 11:39:39'),('CD113t-C',4827,'jrhoades_P2P2','10.1.16-MariaDB','2016-11-07 13:37:00','2016-11-10 11:39:39'),('CMH1',7577,'jrhoades_P2P2','10.1.16-MariaDB','2016-11-07 13:37:00','2016-11-10 11:39:39'),('congenital contractural arachnodactyly',3604,'jrhoades_P2P2','10.1.16-MariaDB','2016-11-07 13:37:00','2016-11-10 11:39:39'),('Distal 1',7577,'jrhoades_P2P2','10.1.16-MariaDB','2016-11-07 13:37:00','2016-11-10 11:39:39'),('EST2 ',11730,'jrhoades_P2P2','10.1.16-MariaDB','2016-11-07 13:37:00','2016-11-10 11:39:39'),('GBA1',4177,'jrhoades_P2P2','10.1.16-MariaDB','2016-11-07 13:37:00','2016-11-10 11:39:39'),('GNASXL',4392,'jrhoades_P2P2','10.1.16-MariaDB','2016-11-07 13:37:00','2016-11-10 11:39:39'),('GPSA',4392,'jrhoades_P2P2','10.1.16-MariaDB','2016-11-07 13:37:00','2016-11-10 11:39:39'),('HBA1',4823,'jrhoades_P2P2','10.1.16-MariaDB','2016-11-07 13:37:00','2016-11-10 11:39:39'),('HBD',4827,'jrhoades_P2P2','10.1.16-MariaDB','2016-11-07 13:37:00','2016-11-10 11:39:39'),('heavy polypeptide 7',7577,'jrhoades_P2P2','10.1.16-MariaDB','2016-11-07 13:37:00','2016-11-10 11:39:39'),('HEMHC',7573,'jrhoades_P2P2','10.1.16-MariaDB','2016-11-07 13:37:00','2016-11-10 11:39:39'),('hEST1',11730,'jrhoades_P2P2','10.1.16-MariaDB','2016-11-07 13:37:00','2016-11-10 11:39:39'),('HYKPP',10591,'jrhoades_P2P2','10.1.16-MariaDB','2016-11-07 13:37:00','2016-11-10 11:39:39'),('KSA',11529,'jrhoades_P2P2','10.1.16-MariaDB','2016-11-07 13:37:00','2016-11-10 11:39:39'),('LGMD1C',1529,'jrhoades_P2P2','10.1.16-MariaDB','2016-11-07 13:37:00','2016-11-10 11:39:39'),('LQT9',1529,'jrhoades_P2P2','10.1.16-MariaDB','2016-11-07 13:37:00','2016-11-10 11:39:39'),('Ly74 ',11529,'jrhoades_P2P2','10.1.16-MariaDB','2016-11-07 13:37:00','2016-11-10 11:39:39'),('M-caveolin',1529,'jrhoades_P2P2','10.1.16-MariaDB','2016-11-07 13:37:00','2016-11-10 11:39:39'),('MK-1',11529,'jrhoades_P2P2','10.1.16-MariaDB','2016-11-07 13:37:00','2016-11-10 11:39:39'),('MOC31',11529,'jrhoades_P2P2','10.1.16-MariaDB','2016-11-07 13:37:00','2016-11-10 11:39:39'),('MPD1',7577,'jrhoades_P2P2','10.1.16-MariaDB','2016-11-07 13:37:00','2016-11-10 11:39:39'),('MYHC-EMB',7573,'jrhoades_P2P2','10.1.16-MariaDB','2016-11-07 13:37:00','2016-11-10 11:39:39'),('MYHSE1',7573,'jrhoades_P2P2','10.1.16-MariaDB','2016-11-07 13:37:00','2016-11-10 11:39:39'),('myopathy',7577,'jrhoades_P2P2','10.1.16-MariaDB','2016-11-07 13:37:00','2016-11-10 11:39:39'),('myosin',7577,'jrhoades_P2P2','10.1.16-MariaDB','2016-11-07 13:37:00','2016-11-10 11:39:39'),('myosin, skeletal, heavy chain, embryonic 1',7573,'jrhoades_P2P2','10.1.16-MariaDB','2016-11-07 13:37:00','2016-11-10 11:39:39'),('NESP55',4392,'jrhoades_P2P2','10.1.16-MariaDB','2016-11-07 13:37:00','2016-11-10 11:39:39'),('OI4',2197,'jrhoades_P2P2','10.1.16-MariaDB','2016-11-07 13:37:00','2016-11-10 11:39:39'),('p85, ',8980,'jrhoades_P2P2','10.1.16-MariaDB','2016-11-07 13:37:00','2016-11-10 11:39:39'),('P85B',8980,'jrhoades_P2P2','10.1.16-MariaDB','2016-11-07 13:37:00','2016-11-10 11:39:39'),('phosphoinositide-3-kinase regulatory subunit ',8980,'jrhoades_P2P2','10.1.16-MariaDB','2016-11-07 13:37:00','2016-11-10 11:39:39'),('PKB',391,'jrhoades_P2P2','10.1.16-MariaDB','2016-11-07 13:37:00','2016-11-10 11:39:39'),('PRKBA',391,'jrhoades_P2P2','10.1.16-MariaDB','2016-11-07 13:37:00','2016-11-10 11:39:39'),('RAC',391,'jrhoades_P2P2','10.1.16-MariaDB','2016-11-07 13:37:00','2016-11-10 11:39:39'),('SCG6',4392,'jrhoades_P2P2','10.1.16-MariaDB','2016-11-07 13:37:00','2016-11-10 11:39:39'),('secretogranin VI',4392,'jrhoades_P2P2','10.1.16-MariaDB','2016-11-07 13:37:00','2016-11-10 11:39:39'),('SgVI',4392,'jrhoades_P2P2','10.1.16-MariaDB','2016-11-07 13:37:00','2016-11-10 11:39:39'),('Sodium channel',10591,'jrhoades_P2P2','10.1.16-MariaDB','2016-11-07 13:37:00','2016-11-10 11:39:39'),('TERT',11730,'jrhoades_P2P2','10.1.16-MariaDB','2016-11-07 13:37:00','2016-11-10 11:39:39'),('TROP1',11529,'jrhoades_P2P2','10.1.16-MariaDB','2016-11-07 13:37:00','2016-11-10 11:39:39'),('type IV alpha subunit',10591,'jrhoades_P2P2','10.1.16-MariaDB','2016-11-07 13:37:00','2016-11-10 11:39:39'),('VIP-21',1529,'jrhoades_P2P2','10.1.16-MariaDB','2016-11-07 13:37:00','2016-11-10 11:39:39'),('VIP21',1529,'jrhoades_P2P2','10.1.16-MariaDB','2016-11-07 13:37:00','2016-11-10 11:39:39'),('Voltage-gated',10591,'jrhoades_P2P2','10.1.16-MariaDB','2016-11-07 13:37:00','2016-11-10 11:39:39');
/*!40000 ALTER TABLE `Gene_Synonym` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `HGNC`
--

DROP TABLE IF EXISTS `HGNC`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `HGNC` (
  `HGNC_ID` int(11) NOT NULL,
  `URL-HGNC_ID` varchar(45) DEFAULT NULL,
  `Approved_Symbol` varchar(45) DEFAULT NULL,
  `Approved_Name` varchar(45) DEFAULT NULL,
  `Chromosomal_Location` varchar(45) DEFAULT NULL,
  `schema_name` varchar(30) DEFAULT NULL,
  `db_server_version` varchar(30) DEFAULT NULL,
  `create_date` datetime DEFAULT NULL,
  `update_date` datetime DEFAULT NULL,
  PRIMARY KEY (`HGNC_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `HGNC`
--

LOCK TABLES `HGNC` WRITE;
/*!40000 ALTER TABLE `HGNC` DISABLE KEYS */;
INSERT INTO `HGNC` VALUES (391,'http://www.genenames.org/cgi-bin/gene_symbol_','AKT1','v-akt murine thymoma viral oncogene homolog 1','14q32.33','jrhoades_P2P2','10.1.16-MariaDB','2016-11-07 13:37:00','2016-11-10 11:55:42'),(1101,'http://www.genenames.org/cgi-bin/gene_symbol_','BRCA2','BRCA2, DNA repair associated','13q13.1','jrhoades_P2P2','10.1.16-MariaDB','2016-11-07 13:37:00','2016-11-10 11:55:42'),(1529,'http://www.genenames.org/cgi-bin/gene_symbol_','CAV3','caveolin 3','3p25','jrhoades_P2P2','10.1.16-MariaDB','2016-11-07 13:37:00','2016-11-10 11:55:42'),(2197,'http://www.genenames.org/cgi-bin/gene_symbol_','COL1A1','collagen type I alpha 1','17q21.33','jrhoades_P2P2','10.1.16-MariaDB','2016-11-07 13:37:00','2016-11-10 11:55:42'),(3604,'http://www.genenames.org/cgi-bin/gene_symbol_','FBN2','fibrillin 2','5q23.3','jrhoades_P2P2','10.1.16-MariaDB','2016-11-07 13:37:00','2016-11-10 11:55:42'),(4177,'http://www.genenames.org/cgi-bin/gene_symbol_','GBA','glucosylceramidase beta','1q22','jrhoades_P2P2','10.1.16-MariaDB','2016-11-07 13:37:00','2016-11-10 11:55:42'),(4392,'http://www.genenames.org/cgi-bin/gene_symbol_','GNAS','GNAS complex locus','20q13.2-q13.3','jrhoades_P2P2','10.1.16-MariaDB','2016-11-07 13:37:00','2016-11-10 11:55:42'),(4823,'http://www.genenames.org/cgi-bin/gene_symbol_','HBA1','hemoglobin subunit alpha 1','16p13.3','jrhoades_P2P2','10.1.16-MariaDB','2016-11-07 13:37:00','2016-11-10 11:55:42'),(4827,'http://www.genenames.org/cgi-bin/gene_symbol_','HBB','hemoglobin subunit beta','11p15.5','jrhoades_P2P2','10.1.16-MariaDB','2016-11-07 13:37:00','2016-11-10 11:55:42'),(7573,'http://www.genenames.org/cgi-bin/gene_symbol_','MYH3','myosin heavy chain 3','17p13.1','jrhoades_P2P2','10.1.16-MariaDB','2016-11-07 13:37:00','2016-11-10 11:55:42'),(7577,'http://www.genenames.org/cgi-bin/gene_symbol_','MYH7','myosin heavy chain 7','14q11.2-q13','jrhoades_P2P2','10.1.16-MariaDB','2016-11-07 13:37:00','2016-11-10 11:55:42'),(8980,'http://www.genenames.org/cgi-bin/gene_symbol_','PIK3R2','phosphoinositide-3-kinase regulatory subunit ','19p13.11','jrhoades_P2P2','10.1.16-MariaDB','2016-11-07 13:37:00','2016-11-10 11:55:42'),(10591,'http://www.genenames.org/cgi-bin/gene_symbol_','SCN4A','sodium voltage-gated channel alpha subunit 4','17q23.3','jrhoades_P2P2','10.1.16-MariaDB','2016-11-07 13:37:00','2016-11-10 11:55:42'),(11529,'http://www.genenames.org/cgi-bin/gene_symbol_','EPCAM','epithelial cell adhesion molecule','2p21','jrhoades_P2P2','10.1.16-MariaDB','2016-11-07 13:37:00','2016-11-10 11:55:42'),(11730,'http://www.genenames.org/cgi-bin/gene_symbol_','TERT','telomerase reverse transcriptase','5p15.33','jrhoades_P2P2','10.1.16-MariaDB','2016-11-07 13:37:00','2016-11-10 11:55:42'),(12774,'http://www.genenames.org/cgi-bin/gene_symbol_','WNT1','wingless-type MMTV integration site family me','12q13.12','jrhoades_P2P2','10.1.16-MariaDB','2016-11-07 13:37:00','2016-11-10 11:55:42');
/*!40000 ALTER TABLE `HGNC` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `MIN`
--

DROP TABLE IF EXISTS `MIN`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `MIN` (
  `Phenotype_MIN_Number` varchar(45) NOT NULL,
  `UniProt_Disease_Name` varchar(45) NOT NULL,
  `UniProtKB_Entry` varchar(45) NOT NULL,
  `schema_name` varchar(30) DEFAULT NULL,
  `db_server_version` varchar(30) DEFAULT NULL,
  `create_date` datetime DEFAULT NULL,
  `update_date` datetime DEFAULT NULL,
  PRIMARY KEY (`Phenotype_MIN_Number`,`UniProt_Disease_Name`,`UniProtKB_Entry`),
  KEY `fk_MIN_UniProt1_idx` (`UniProtKB_Entry`),
  CONSTRAINT `fk_MIN_UniProt1` FOREIGN KEY (`UniProtKB_Entry`) REFERENCES `UniProt` (`UniProtKB_Entry`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `MIN`
--

LOCK TABLES `MIN` WRITE;
/*!40000 ALTER TABLE `MIN` DISABLE KEYS */;
INSERT INTO `MIN` VALUES ('114480','Breast cancer (BC)','P31750','jrhoades_P2P2','10.1.16-MariaDB','2016-11-07 13:37:00','2016-11-10 12:01:36'),('114480','Breast Cancer (BC)','P51587','jrhoades_P2P2','10.1.16-MariaDB','2016-11-07 13:37:00','2016-11-10 12:01:36'),('114480','female breast cancer','P51587','jrhoades_P2P2','10.1.16-MariaDB','2016-11-07 13:37:00','2016-11-10 12:01:36'),('114500','Colorectal cancer (CRC)','P31749','jrhoades_P2P2','10.1.16-MariaDB','2016-11-07 13:37:00','2016-11-10 12:01:36'),('114500','Colorectal cancer (CRC)','P84996','jrhoades_P2P2','10.1.16-MariaDB','2016-11-07 13:37:00','2016-11-10 12:01:36'),('123320','HyperCKmia (HYPCK)','P56539','jrhoades_P2P2','10.1.16-MariaDB','2016-11-07 13:37:00','2016-11-10 12:01:36'),('130000','Ehlers-Danlos syndrome, classic type (EDS)','P02452','jrhoades_P2P2','10.1.16-MariaDB','2016-11-07 13:37:00','2016-11-10 12:01:36'),('139320','GNAS hyperfunction (GNASHYP)','P84996','jrhoades_P2P2','10.1.16-MariaDB','2016-11-07 13:37:00','2016-11-10 12:01:36'),('140700','Beta-thalassemia (B-THAL)','P68871','jrhoades_P2P2','10.1.16-MariaDB','2016-11-07 13:37:00','2016-11-10 12:01:36'),('140700','Heinz body anemias (HEIBAN)','P68871','jrhoades_P2P2','10.1.16-MariaDB','2016-11-07 13:37:00','2016-11-10 12:01:36'),('141800','Heinz body anemias (HEIBAN)','P69905','jrhoades_P2P2','10.1.16-MariaDB','2016-11-07 13:37:00','2016-11-10 12:01:36'),('16072','Arthrogryposis, distal, 2A','P11055','jrhoades_P2P2','10.1.16-MariaDB','2016-11-07 13:37:00','2016-11-10 12:01:36'),('160760','Cardiomyopathy, familial hypertrophic 1','P12883','jrhoades_P2P2','10.1.16-MariaDB','2016-11-07 13:37:00','2016-11-10 12:01:36'),('166200','Osteogenesis imperfecta 1 (OI1)','P02452','jrhoades_P2P2','10.1.16-MariaDB','2016-11-07 13:37:00','2016-11-10 12:01:36'),('166710','Osteoporosis (OSTEOP)','P02452','jrhoades_P2P2','10.1.16-MariaDB','2016-11-07 13:37:00','2016-11-10 12:01:36'),('166710','Osteoporosis (OSTEOP)','P04628','jrhoades_P2P2','10.1.16-MariaDB','2016-11-07 13:37:00','2016-11-10 12:01:36'),('178110','Arthrogryposis, distal, 8','P11055','jrhoades_P2P2','10.1.16-MariaDB','2016-11-07 13:37:00','2016-11-10 12:01:36'),('187270','Aplastic anemia (AA)','O14746','jrhoades_P2P2','10.1.16-MariaDB','2016-11-07 13:37:00','2016-11-10 12:01:36'),('192600','Cardiomyopathy, familial hypertrophic (CMH)','P56539','jrhoades_P2P2','10.1.16-MariaDB','2016-11-07 13:37:00','2016-11-10 12:01:36'),('219080','ACTH-independent macronodular adrenal hyperpl','P84996','jrhoades_P2P2','10.1.16-MariaDB','2016-11-07 13:37:00','2016-11-10 12:01:36'),('600165','BREAST-OVARIAN CANCER, FAMILIAL, SUSCEPTIBILI','P51587','jrhoades_P2P2','10.1.16-MariaDB','2016-11-07 13:37:00','2016-11-10 12:01:36'),('601253','Limb-girdle muscular dystrophy 1C','P56539','jrhoades_P2P2','10.1.16-MariaDB','2016-11-07 13:37:00','2016-11-10 12:01:36'),('603387','Megalencephaly-polymicrogyria-polydactyly-hyd','O00459','jrhoades_P2P2','10.1.16-MariaDB','2016-11-07 13:37:00','2016-11-10 12:01:36'),('603967','Paramyotonia congenita of von Eulenburg','P23499','jrhoades_P2P2','10.1.16-MariaDB','2016-11-07 13:37:00','2016-11-10 12:01:36'),('606072','Rippling muscle disease (RMD)','P56539','jrhoades_P2P2','10.1.16-MariaDB','2016-11-07 13:37:00','2016-11-10 12:01:36'),('606463','Gaucher disease (GD)','P04062','jrhoades_P2P2','10.1.16-MariaDB','2016-11-07 13:37:00','2016-11-10 12:01:36'),('612570','Arthrogryposis, distal, 9','P35556','jrhoades_P2P2','10.1.16-MariaDB','2016-11-07 13:37:00','2016-11-10 12:01:36'),('613217','Diarrhea 5, with tufting enteropathy, congeni','P16422','jrhoades_P2P2','10.1.16-MariaDB','2016-11-07 13:37:00','2016-11-10 12:01:36'),('613244','Hereditary non-polyposis colorectal cancer 8 ','P16422','jrhoades_P2P2','10.1.16-MariaDB','2016-11-07 13:37:00','2016-11-10 12:01:36'),('613347','Pancreatic Cancer 2','P51587','jrhoades_P2P2','10.1.16-MariaDB','2016-11-07 13:37:00','2016-11-10 12:01:36'),('615220','Osteogenesis imperfecta 15 (OI15)','P04628','jrhoades_P2P2','10.1.16-MariaDB','2016-11-07 13:37:00','2016-11-10 12:01:36'),('616118','Macular degeneration, early-onset','P35556','jrhoades_P2P2','10.1.16-MariaDB','2016-11-07 13:37:00','2016-11-10 12:01:36');
/*!40000 ALTER TABLE `MIN` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `MIN_to_DO`
--

DROP TABLE IF EXISTS `MIN_to_DO`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `MIN_to_DO` (
  `Phenotype_MIN_Number` varchar(45) NOT NULL,
  `UniProt_Disease_Name` varchar(45) NOT NULL,
  `UniProtKB_Entry` varchar(45) NOT NULL,
  `DOID` int(11) NOT NULL,
  `schema_name` varchar(30) DEFAULT NULL,
  `db_server_version` varchar(30) DEFAULT NULL,
  `create_date` datetime DEFAULT NULL,
  `update_date` datetime DEFAULT NULL,
  PRIMARY KEY (`Phenotype_MIN_Number`,`UniProt_Disease_Name`,`UniProtKB_Entry`,`DOID`),
  KEY `fk_MIN_to_DO_DO1_idx` (`DOID`),
  CONSTRAINT `fk_MIN_to_DO_DO1` FOREIGN KEY (`DOID`) REFERENCES `DO` (`DOID`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `MIN_to_DO`
--

LOCK TABLES `MIN_to_DO` WRITE;
/*!40000 ALTER TABLE `MIN_to_DO` DISABLE KEYS */;
INSERT INTO `MIN_to_DO` VALUES ('114480','Breast cancer (BC)','P31750',1612,'jrhoades_P2P2','10.1.16-MariaDB','2016-11-07 13:37:00','2016-11-10 12:03:01'),('114480','Breast Cancer (BC)','P51587',50671,'jrhoades_P2P2','10.1.16-MariaDB','2016-11-07 13:37:00','2016-11-10 12:03:01'),('114480','female breast cancer','P51587',60075,'jrhoades_P2P2','10.1.16-MariaDB','2016-11-07 13:37:00','2016-11-10 12:03:01'),('114500','Colorectal cancer (CRC)','P31749',1520,'jrhoades_P2P2','10.1.16-MariaDB','2016-11-07 13:37:00','2016-11-10 12:03:01'),('114500','Colorectal cancer (CRC)','P31749',9256,'jrhoades_P2P2','10.1.16-MariaDB','2016-11-07 13:37:00','2016-11-10 12:03:01'),('114500','Colorectal cancer (CRC)','P84996',1520,'jrhoades_P2P2','10.1.16-MariaDB','2016-11-07 13:37:00','2016-11-10 12:03:01'),('114501','Colorectal cancer (CRC)','P84996',9256,'jrhoades_P2P2','10.1.16-MariaDB','2016-11-07 13:37:00','2016-11-10 12:03:01'),('130000','Ehlers-Danlos syndrome, classic type (EDS)','P02452',14720,'jrhoades_P2P2','10.1.16-MariaDB','2016-11-07 13:37:00','2016-11-10 12:03:01'),('140700','Beta-thalassemia (B-THAL)','P68871',613985,'jrhoades_P2P2','10.1.16-MariaDB','2016-11-07 13:37:00','2016-11-10 12:03:01'),('16072','Arthrogryposis, distal, 2A','P11055',50646,'jrhoades_P2P2','10.1.16-MariaDB','2016-11-07 13:37:00','2016-11-10 12:03:01'),('160760','Cardiomyopathy, familial hypertrophic 1','P12883',11984,'jrhoades_P2P2','10.1.16-MariaDB','2016-11-07 13:37:00','2016-11-10 12:03:01'),('166200','Osteogenesis imperfecta 1 (OI1)','P02452',12347,'jrhoades_P2P2','10.1.16-MariaDB','2016-11-07 13:37:00','2016-11-10 12:03:01'),('166710','Osteoporosis (OSTEOP)','P02452',11476,'jrhoades_P2P2','10.1.16-MariaDB','2016-11-07 13:37:00','2016-11-10 12:03:01'),('166710','Osteoporosis (OSTEOP)','P04628',11476,'jrhoades_P2P2','10.1.16-MariaDB','2016-11-07 13:37:00','2016-11-10 12:03:01'),('178110','Arthrogryposis, distal, 8','P11055',50646,'jrhoades_P2P2','10.1.16-MariaDB','2016-11-07 13:37:00','2016-11-10 12:03:01'),('187270','Aplastic anemia (AA)','O14746',1342,'jrhoades_P2P2','10.1.16-MariaDB','2016-11-07 13:37:00','2016-11-10 12:03:01'),('187270','Aplastic anemia (AA)','O14746',12449,'jrhoades_P2P2','10.1.16-MariaDB','2016-11-07 13:37:00','2016-11-10 12:03:01'),('192600','Cardiomyopathy, familial hypertrophic (CMH)','P56539',11984,'jrhoades_P2P2','10.1.16-MariaDB','2016-11-07 13:37:00','2016-11-10 12:03:01'),('600165','BREAST-OVARIAN CANCER, FAMILIAL, SUSCEPTIBILI','P51587',5683,'jrhoades_P2P2','10.1.16-MariaDB','2016-11-07 13:37:00','2016-11-10 12:03:01'),('601253','Limb-girdle muscular dystrophy 1C','P56539',11724,'jrhoades_P2P2','10.1.16-MariaDB','2016-11-07 13:37:00','2016-11-10 12:03:01'),('603967','Paramyotonia congenita of von Eulenburg','P23499',14452,'jrhoades_P2P2','10.1.16-MariaDB','2016-11-07 13:37:00','2016-11-10 12:03:01'),('606072','Rippling muscle disease (RMD)','P56539',60255,'jrhoades_P2P2','10.1.16-MariaDB','2016-11-07 13:37:00','2016-11-10 12:03:01'),('606463','Gaucher disease (GD)','P04062',1926,'jrhoades_P2P2','10.1.16-MariaDB','2016-11-07 13:37:00','2016-11-10 12:03:01'),('612570','Arthrogryposis, distal, 9','P35556',50646,'jrhoades_P2P2','10.1.16-MariaDB','2016-11-07 13:37:00','2016-11-10 12:03:01'),('613244','Hereditary non-polyposis colorectal cancer 8 ','P16422',3883,'jrhoades_P2P2','10.1.16-MariaDB','2016-11-07 13:37:00','2016-11-10 12:03:01'),('613347','Pancreatic Cancer 2','P51587',1799,'jrhoades_P2P2','10.1.16-MariaDB','2016-11-07 13:37:00','2016-11-10 12:03:01'),('613347','Pancreatic Cancer 2','P51587',2618,'jrhoades_P2P2','10.1.16-MariaDB','2016-11-07 13:37:00','2016-11-10 12:03:01'),('615220','Osteogenesis imperfecta 15 (OI15)','P04628',12347,'jrhoades_P2P2','10.1.16-MariaDB','2016-11-07 13:37:00','2016-11-10 12:03:01'),('616118','Macular degeneration, early-onset','P35556',4448,'jrhoades_P2P2','10.1.16-MariaDB','2016-11-07 13:37:00','2016-11-10 12:03:01');
/*!40000 ALTER TABLE `MIN_to_DO` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Protein_Synonym`
--

DROP TABLE IF EXISTS `Protein_Synonym`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Protein_Synonym` (
  `Protein_Synonym` varchar(45) NOT NULL,
  `UniProtKB_Entry` varchar(45) NOT NULL,
  `schema_name` varchar(30) DEFAULT NULL,
  `db_server_version` varchar(30) DEFAULT NULL,
  `create_date` datetime DEFAULT NULL,
  `update_date` datetime DEFAULT NULL,
  PRIMARY KEY (`Protein_Synonym`,`UniProtKB_Entry`),
  KEY `fk_Protein_Synonym_UniProt1_idx` (`UniProtKB_Entry`),
  CONSTRAINT `fk_Protein_Synonym_UniProt1` FOREIGN KEY (`UniProtKB_Entry`) REFERENCES `UniProt` (`UniProtKB_Entry`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Protein_Synonym`
--

LOCK TABLES `Protein_Synonym` WRITE;
/*!40000 ALTER TABLE `Protein_Synonym` DISABLE KEYS */;
INSERT INTO `Protein_Synonym` VALUES ('Acid beta-glucosidase','P04062','jrhoades_P2P2','10.1.16-MariaDB','2016-11-07 13:37:00','2016-11-10 12:05:15'),('Adenocarcinoma-associated antigen, antigen','P16422','jrhoades_P2P2','10.1.16-MariaDB','2016-11-07 13:37:00','2016-11-10 12:05:15'),('Algucerase','P04062','jrhoades_P2P2','10.1.16-MariaDB','2016-11-07 13:37:00','2016-11-10 12:05:15'),('Alpha-1 type I collagen','P02452','jrhoades_P2P2','10.1.16-MariaDB','2016-11-07 13:37:00','2016-11-10 12:05:15'),('Alpha-globin','P69905','jrhoades_P2P2','10.1.16-MariaDB','2016-11-07 13:37:00','2016-11-10 12:05:15'),('Beta-globin','P68871','jrhoades_P2P2','10.1.16-MariaDB','2016-11-07 13:37:00','2016-11-10 12:05:15'),('Cell surface glycoprotein Trop-1','P16422','jrhoades_P2P2','10.1.16-MariaDB','2016-11-07 13:37:00','2016-11-10 12:05:15'),('Epithelial cell surface','P16422','jrhoades_P2P2','10.1.16-MariaDB','2016-11-07 13:37:00','2016-11-10 12:05:15'),('Epithelial glycoprotein','P16422','jrhoades_P2P2','10.1.16-MariaDB','2016-11-07 13:37:00','2016-11-10 12:05:15'),('Fanconi anemia group D1 protein','P51587','jrhoades_P2P2','10.1.16-MariaDB','2016-11-07 13:37:00','2016-11-10 12:05:15'),('Hemoglobin alpha chain','P69905','jrhoades_P2P2','10.1.16-MariaDB','2016-11-07 13:37:00','2016-11-10 12:05:15'),('Hemoglobin beta chain','P68871','jrhoades_P2P2','10.1.16-MariaDB','2016-11-07 13:37:00','2016-11-10 12:05:15'),('HEST2','O14746','jrhoades_P2P2','10.1.16-MariaDB','2016-11-07 13:37:00','2016-11-10 12:05:15'),('Imiglucerase','P04062','jrhoades_P2P2','10.1.16-MariaDB','2016-11-07 13:37:00','2016-11-10 12:05:15'),('M-caveolin','P56539','jrhoades_P2P2','10.1.16-MariaDB','2016-11-07 13:37:00','2016-11-10 12:05:15'),('Muscle embryonic myosin heavy chain','P11055','jrhoades_P2P2','10.1.16-MariaDB','2016-11-07 13:37:00','2016-11-10 12:05:15'),('Myosin heavy chain 7','P12883','jrhoades_P2P2','10.1.16-MariaDB','2016-11-07 13:37:00','2016-11-10 12:05:15'),('Myosin heavy chain slow isoform','P12883','jrhoades_P2P2','10.1.16-MariaDB','2016-11-07 13:37:00','2016-11-10 12:05:15'),('Phosphatidylinositol 3-kinase 85 kDa regulato','O00459','jrhoades_P2P2','10.1.16-MariaDB','2016-11-07 13:37:00','2016-11-10 12:05:15'),('Protein kinase B','P31749','jrhoades_P2P2','10.1.16-MariaDB','2016-11-07 13:37:00','2016-11-10 12:05:15'),('Protein kinase B alpha','P31749','jrhoades_P2P2','10.1.16-MariaDB','2016-11-07 13:37:00','2016-11-10 12:05:15'),('Proto-oncogene c-Akt','P31749','jrhoades_P2P2','10.1.16-MariaDB','2016-11-07 13:37:00','2016-11-10 12:05:15'),('Proto-oncogene Int-1 homolog','P04628','jrhoades_P2P2','10.1.16-MariaDB','2016-11-07 13:37:00','2016-11-10 12:05:15'),('RAC-PK-alpha','P31749','jrhoades_P2P2','10.1.16-MariaDB','2016-11-07 13:37:00','2016-11-10 12:05:15'),('SkM1','P23499','jrhoades_P2P2','10.1.16-MariaDB','2016-11-07 13:37:00','2016-11-10 12:05:15'),('Telomerase catalytic subunit','O14746','jrhoades_P2P2','10.1.16-MariaDB','2016-11-07 13:37:00','2016-11-10 12:05:15'),('Telomerase-associated protein 2','O14746','jrhoades_P2P2','10.1.16-MariaDB','2016-11-07 13:37:00','2016-11-10 12:05:15'),('TP2','O14746','jrhoades_P2P2','10.1.16-MariaDB','2016-11-07 13:37:00','2016-11-10 12:05:15');
/*!40000 ALTER TABLE `Protein_Synonym` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `TEST`
--

DROP TABLE IF EXISTS `TEST`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `TEST` (
  `ROW_ID` smallint(5) NOT NULL AUTO_INCREMENT,
  `ITEM` varchar(50) DEFAULT NULL,
  `AMOUNT` smallint(5) DEFAULT NULL,
  PRIMARY KEY (`ROW_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `TEST`
--

LOCK TABLES `TEST` WRITE;
/*!40000 ALTER TABLE `TEST` DISABLE KEYS */;
/*!40000 ALTER TABLE `TEST` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `UniProt`
--

DROP TABLE IF EXISTS `UniProt`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `UniProt` (
  `UniProtKB_Entry` varchar(45) NOT NULL,
  `item_#` varchar(45) DEFAULT NULL,
  `Data_Gathered_by` varchar(45) DEFAULT NULL,
  `Targeted_Disease` varchar(45) DEFAULT NULL,
  `URL-UniProtKB_Entry` varchar(45) DEFAULT NULL,
  `Protein_Name` varchar(45) DEFAULT NULL,
  `Sequence_Length` varchar(45) DEFAULT NULL,
  `Mass(Da)` varchar(45) DEFAULT NULL,
  `UniProt_Gene_Name` varchar(45) DEFAULT NULL,
  `HGNC_ID` int(11) NOT NULL,
  `schema_name` varchar(30) DEFAULT NULL,
  `db_server_version` varchar(30) DEFAULT NULL,
  `create_date` datetime DEFAULT NULL,
  `update_date` datetime DEFAULT NULL,
  PRIMARY KEY (`UniProtKB_Entry`),
  KEY `fk_UniProt_HGNC1_idx` (`HGNC_ID`),
  CONSTRAINT `fk_UniProt_HGNC1` FOREIGN KEY (`HGNC_ID`) REFERENCES `HGNC` (`HGNC_ID`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UniProt`
--

LOCK TABLES `UniProt` WRITE;
/*!40000 ALTER TABLE `UniProt` DISABLE KEYS */;
INSERT INTO `UniProt` VALUES ('O00459','6','s.chen','polydactyly','http://www.uniprot.org/uniprot/O00459','Phosphatidylinositol 3-kinase regulatory subu','728','81545','PIK3R2',8980,'jrhoades_P2P2','10.1.16-MariaDB','2016-11-07 13:37:00','2016-11-10 12:06:33'),('O14746','10','j.rhoades','anemia','http://www.uniprot.org/uniprot/O14746','Telomerase reverse transcriptase','1132','126997','TERT_Human',11730,'jrhoades_P2P2','10.1.16-MariaDB','2016-11-07 13:37:00','2016-11-10 12:06:33'),('P02452','4','s.chen','osteoporosis','http://www.uniprot.org/uniprot/P02452','Collagen alpha-1(I) chain','1464','138941','COL1A1',2197,'jrhoades_P2P2','10.1.16-MariaDB','2016-11-07 13:37:00','2016-11-10 12:06:33'),('P04062','9','j.rhoades','anemia','http://www.uniprot.org/uniprot/P04062','Glucosylceramidase','536','59716','GLCM_HUMAN',4177,'jrhoades_P2P2','10.1.16-MariaDB','2016-11-07 13:37:00','2016-11-10 12:06:33'),('P04628','5','s.chen','osteoporosis','http://www.uniprot.org/uniprot/P04628','Proto-oncogene Wnt-1','370','40982','WNT1',12774,'jrhoades_P2P2','10.1.16-MariaDB','2016-11-07 13:37:00','2016-11-10 12:06:33'),('P11055','16','j.rhoades','muscle disease','http://www.uniprot.org/uniprot/P11055','Myosin-3','1940','223905','MYH3',7573,'jrhoades_P2P2','10.1.16-MariaDB','2016-11-07 13:37:00','2016-11-10 12:06:33'),('P12883','12','j.rhoades','muscle disease','http://www.uniprot.org/uniprot/P12883','Myosin-7','1935','223097','MYH7',7577,'jrhoades_P2P2','10.1.16-MariaDB','2016-11-07 13:37:00','2016-11-10 12:06:33'),('P16422','3','s.chen','colon cancer','http://www.uniprot.org/uniprot/P16422','Epithelial cell adhesion molecule','314','34932','EPCAM',11529,'jrhoades_P2P2','10.1.16-MariaDB','2016-11-07 13:37:00','2016-11-10 12:06:33'),('P23499','14','j.rhoades','muscle disease','http://www.uniprot.org/uniprot/P35499','Sodium Channel protein type 4 subunit alpha','1836','208061','SCN4A',10591,'jrhoades_P2P2','10.1.16-MariaDB','2016-11-07 13:37:00','2016-11-10 12:06:33'),('P31749','1','s.chen','colon cancer','http://www.uniprot.org/uniprot/P31749','RAC-alpha serine/threonine-protein kinase','480','55686','AKT1',391,'jrhoades_P2P2','10.1.16-MariaDB','2016-11-07 13:37:00','2016-11-10 12:06:33'),('P35556','15','j.rhoades','muscle disease','http://www.uniprot.org/uniprot/P35556','Fibrillin-2','2912','314775','FNB2',3604,'jrhoades_P2P2','10.1.16-MariaDB','2016-11-07 13:37:00','2016-11-10 12:06:33'),('P51587','8','j.rhoades','anemia','http://www.uniprot.org/uniprot/P51587','Breast cancer type 2 susceptibility protein','3418','384202','BRCA2',1101,'jrhoades_P2P2','10.1.16-MariaDB','2016-11-07 13:37:00','2016-11-10 12:06:33'),('P56539','13','j.rhoades','muscle disease','http://www.uniprot.org/uniprot/P56539','Caveolin-3','151','17259','CAV3',1529,'jrhoades_P2P2','10.1.16-MariaDB','2016-11-07 13:37:00','2016-11-10 12:06:33'),('P68871','7','j.rhoades','anemia','http://www.uniprot.org/uniprot/P68871','Hemoglobin subunit beta','147','15998','HBB_HUMAN',4827,'jrhoades_P2P2','10.1.16-MariaDB','2016-11-07 13:37:00','2016-11-10 12:06:33'),('P69905','11','j.rhoades','anemia','http://www.uniprot.org/uniprot/P69905','Hemoglobin subunit alpha','142','15258','HBA1',4823,'jrhoades_P2P2','10.1.16-MariaDB','2016-11-07 13:37:00','2016-11-10 12:06:33'),('P84996','2','s.chen','colon cancer','http://www.uniprot.org/uniprot/P84996','Protein ALEX','626','67948','GNAS',4392,'jrhoades_P2P2','10.1.16-MariaDB','2016-11-07 13:37:00','2016-11-10 12:06:33');
/*!40000 ALTER TABLE `UniProt` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `db_statistics`
--

DROP TABLE IF EXISTS `db_statistics`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `db_statistics` (
  `id` smallint(5) NOT NULL AUTO_INCREMENT,
  `description` varchar(50) DEFAULT NULL,
  `value` int(11) DEFAULT NULL,
  `create_date` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `db_statistics`
--

LOCK TABLES `db_statistics` WRITE;
/*!40000 ALTER TABLE `db_statistics` DISABLE KEYS */;
INSERT INTO `db_statistics` VALUES (1,'total number of proteins',16,'2016-11-16 11:40:44'),(2,'total number of genes',16,'2016-11-16 11:40:44'),(3,'total number of diseases',24,'2016-11-16 11:40:44');
/*!40000 ALTER TABLE `db_statistics` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary table structure for view `vw_p2p`
--

DROP TABLE IF EXISTS `vw_p2p`;
/*!50001 DROP VIEW IF EXISTS `vw_p2p`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `vw_p2p` (
  `UniProtKB_Entry` tinyint NOT NULL,
  `Protein_Name` tinyint NOT NULL,
  `Sequence_Length` tinyint NOT NULL,
  `HGNC_ID` tinyint NOT NULL,
  `Approved_Symbol` tinyint NOT NULL,
  `Chromosomal_Location` tinyint NOT NULL,
  `Phenotype_MIN_Number` tinyint NOT NULL,
  `DOID` tinyint NOT NULL,
  `Disease_Name` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `vw_p2p_joined`
--

DROP TABLE IF EXISTS `vw_p2p_joined`;
/*!50001 DROP VIEW IF EXISTS `vw_p2p_joined`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `vw_p2p_joined` (
  `UniProtKB_Entry` tinyint NOT NULL,
  `Protein_Name` tinyint NOT NULL,
  `Sequence_Length` tinyint NOT NULL,
  `Alternate_Protein_Names` tinyint NOT NULL,
  `HGNC_ID` tinyint NOT NULL,
  `Approved_Symbol` tinyint NOT NULL,
  `Chromosomal_Location` tinyint NOT NULL,
  `Phenotype_MIN_Number` tinyint NOT NULL,
  `DOID` tinyint NOT NULL,
  `Disease_Name` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `vw_protein_synonyms`
--

DROP TABLE IF EXISTS `vw_protein_synonyms`;
/*!50001 DROP VIEW IF EXISTS `vw_protein_synonyms`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `vw_protein_synonyms` (
  `UniProtKB_Entry` tinyint NOT NULL,
  `Alternate_Protein_Names` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Dumping routines for database 'jrhoades_P2P2'
--
/*!50003 DROP FUNCTION IF EXISTS `HTMLLink` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`DBAuser`@`localhost` FUNCTION `HTMLLink`(ID varchar(10),URL varchar(100)) RETURNS varchar(300) CHARSET latin1
begin
	/*
      concatinate two inputs and some html tags to form a clickable html element on a webpage
    */
	declare Link varchar(300);
	select concat ('<a href=', '"', URL,'" target="_blank"><b>', ID, '</b></a>') into Link;
return Link;
End ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `date_convert` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`DBAuser`@`localhost` PROCEDURE `date_convert`(IN in_UniProtKB_Entry varchar(45))
begin
	/*
		call test('P02452');
		call test('O00459');
    */
	select date_format(create_date, '%m/%d/%Y')
    from UniProt
    limit 1;	

end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp1` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`DBAuser`@`localhost` PROCEDURE `sp1`()
begin
	/*
   The first stored procedure will query the table db_statistics and generate
	a report about the statistics of your data. The report must have a date
	column to show when the data is collected.
    use this to test:
    call jrhoades_P2P2.sp1();
    */
    select  a.ID
            , a.description
            , a.value
            , a.create_date
		from db_statistics a;

end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp2` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`DBAuser`@`localhost` PROCEDURE `sp2`(IN p_UniProtKB_Entry varchar(45))
begin
	/*
    test
    call GetHtmlLinkPubMedIds;
    --  call GetHtmlLinkPubMedIds('Q16625');
    */
	select a.UniProtKB_Entry,
        a.Protein_Name,
        a.Sequence_Length,
        a.Alternate_Protein_Names,
        a.HGNC_ID,
        a.Approved_Symbol,
        a.Chromosomal_Location,
        a.Phenotype_MIN_Number,
        a.DOID,
        a.Disease_Name
            , HtmlLink(a.UniProtKB_Entry, a.URL-UniProtKB_Entry) as ProteinIdURL
	from vw_2p a
    join UniProt  b
    on   a.UniProtKB_Entry = b.UniProtKB_Entry;
    --  where a.proteinId = pProteinId;
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp72` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`DBAuser`@`localhost` PROCEDURE `sp72`(in p_QuestionId int)
begin
/* call spProtAvg(1);
   call sp2(2);
    
*/
   case p_QuestionId 
		when 1 then call spProtAvg;
		when 2 then call sp1;
   end case;
    
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `spProtAvg` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`DBAuser`@`localhost` PROCEDURE `spProtAvg`()
begin
	/*
   The first stored procedure doesn’t need any input parameter. It will answer an
interesting question relevant to your data. Each record needs to include these
four columns: schema_name, db_server_version, create_date, and update_date.
Save this stored procedure as the first file.
    call spProtAvg;
	*/
    select distinct  a.UniProtKB_entry
			, a.Protein_Name
            , b.Alternate_Protein_Names
            , a.Sequence_Length
            , a.Targeted_Disease
            , a.`Mass(Da)`
            , a.`Mass(Da)`/a.Sequence_Length as `Avg_Mass_Per_AA(Da/AA)`
            , 'jrhoades_P2P2' as schema_name
            , a.db_server_version
            , date_format(create_date, '%m/%d/%Y') as Created_Date
            , date_format(update_date, '%m/%d/%Y') as Update_Date
	from UniProt a
	join vw_p2p_joined b 
	on a.UniProtKB_Entry = b.UniProtKB_Entry
    group by `Avg_Mass_Per_AA(Da/AA)`;
	-- where a.UniProtKB_Entry = in_UniProtKB_Entry;

end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `usp_update_statistics` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`DBAuser`@`localhost` PROCEDURE `usp_update_statistics`()
BEGIN
	/*
	 --  test
     truncate table db_statistics;
     select * from db_statistics;
	 call usp_update_statistics;
  
    */

	select count(*) into @NumberOfProteins from UniProt;
	select count(*) into @NumberOfGenes from HGNC;
	select count(*) into @NumberOfDiseases from DO;
	truncate table db_statistics;
    insert into db_statistics (id, description, value, create_date)
	values (1, 'total number of proteins', @NumberOfProteins, now())
			, (2, 'total number of genes', @NumberOfGenes, now())
			, (3, 'total number of diseases', @NumberOfDiseases, now())

	;
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Final view structure for view `vw_p2p`
--

/*!50001 DROP TABLE IF EXISTS `vw_p2p`*/;
/*!50001 DROP VIEW IF EXISTS `vw_p2p`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`DBAuser`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vw_p2p` AS select `b`.`UniProtKB_Entry` AS `UniProtKB_Entry`,`b`.`Protein_Name` AS `Protein_Name`,`b`.`Sequence_Length` AS `Sequence_Length`,`a`.`HGNC_ID` AS `HGNC_ID`,`a`.`Approved_Symbol` AS `Approved_Symbol`,`a`.`Chromosomal_Location` AS `Chromosomal_Location`,`c`.`Phenotype_MIN_Number` AS `Phenotype_MIN_Number`,`d`.`DOID` AS `DOID`,`e`.`Disease_Name` AS `Disease_Name` from ((((`UniProt` `b` left join `HGNC` `a` on((`a`.`HGNC_ID` = `b`.`HGNC_ID`))) left join `MIN` `c` on((`b`.`UniProtKB_Entry` = `c`.`UniProtKB_Entry`))) left join `MIN_to_DO` `d` on(((`c`.`Phenotype_MIN_Number` = `d`.`Phenotype_MIN_Number`) and (`c`.`UniProt_Disease_Name` = `d`.`UniProt_Disease_Name`) and (`c`.`UniProtKB_Entry` = `d`.`UniProtKB_Entry`)))) left join `DO` `e` on((`d`.`DOID` = `e`.`DOID`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `vw_p2p_joined`
--

/*!50001 DROP TABLE IF EXISTS `vw_p2p_joined`*/;
/*!50001 DROP VIEW IF EXISTS `vw_p2p_joined`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`DBAuser`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vw_p2p_joined` AS select `a`.`UniProtKB_Entry` AS `UniProtKB_Entry`,`a`.`Protein_Name` AS `Protein_Name`,`a`.`Sequence_Length` AS `Sequence_Length`,`b`.`Alternate_Protein_Names` AS `Alternate_Protein_Names`,`a`.`HGNC_ID` AS `HGNC_ID`,`a`.`Approved_Symbol` AS `Approved_Symbol`,`a`.`Chromosomal_Location` AS `Chromosomal_Location`,`a`.`Phenotype_MIN_Number` AS `Phenotype_MIN_Number`,`a`.`DOID` AS `DOID`,`a`.`Disease_Name` AS `Disease_Name` from (`vw_p2p` `a` join `vw_protein_synonyms` `b` on((`a`.`UniProtKB_Entry` = `b`.`UniProtKB_Entry`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `vw_protein_synonyms`
--

/*!50001 DROP TABLE IF EXISTS `vw_protein_synonyms`*/;
/*!50001 DROP VIEW IF EXISTS `vw_protein_synonyms`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`DBAuser`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vw_protein_synonyms` AS select `a`.`UniProtKB_Entry` AS `UniProtKB_Entry`,group_concat(`f`.`Protein_Synonym` order by `f`.`Protein_Synonym` ASC separator '; ') AS `Alternate_Protein_Names` from (`UniProt` `a` join `Protein_Synonym` `f` on((`a`.`UniProtKB_Entry` = `f`.`UniProtKB_Entry`))) group by `a`.`UniProtKB_Entry` */;
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

-- Dump completed on 2016-11-16 13:14:09
