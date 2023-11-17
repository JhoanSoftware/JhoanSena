-- MySQL dump 10.13  Distrib 8.0.34, for Win64 (x86_64)
--
-- Host: localhost    Database: tienda_con
-- ------------------------------------------------------
-- Server version	8.1.0

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
-- Table structure for table `cargo`
--

DROP TABLE IF EXISTS `cargo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cargo` (
  `idcargo` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(45) NOT NULL,
  PRIMARY KEY (`idcargo`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cargo`
--

LOCK TABLES `cargo` WRITE;
/*!40000 ALTER TABLE `cargo` DISABLE KEYS */;
INSERT INTO `cargo` VALUES (1,'Admin'),(2,'Usuario'),(3,'Invitado');
/*!40000 ALTER TABLE `cargo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cliente`
--

DROP TABLE IF EXISTS `cliente`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cliente` (
  `cedula` int NOT NULL,
  `tipodocumento` varchar(45) NOT NULL,
  `idsexo` int NOT NULL,
  `nombre` varchar(45) NOT NULL,
  `telefono` varchar(15) NOT NULL,
  `correo` varchar(45) NOT NULL,
  `direccion` varchar(45) NOT NULL,
  `condicion` tinyint NOT NULL,
  `fechanacimiento` date NOT NULL,
  PRIMARY KEY (`cedula`),
  KEY `idsexoo_idx` (`idsexo`),
  CONSTRAINT `idsexoo` FOREIGN KEY (`idsexo`) REFERENCES `sexo` (`idsexo`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cliente`
--

LOCK TABLES `cliente` WRITE;
/*!40000 ALTER TABLE `cliente` DISABLE KEYS */;
INSERT INTO `cliente` VALUES (1,'',1,'hopnop','h','ihhiohioh','ndandop',0,'2005-12-01'),(123,'',1,'sdafsdfasd','1222312','sdASDSA','SDAFSDF',0,'2023-10-02'),(1223,'Tarjeta Identidad',1,'123','123','123','123',0,'2023-10-10'),(1234,'2',1,'webinnn','5435435','fgdgdg','ewff',1,'2000-08-07'),(9978,'Cedula',2,'camilooo','4356466','dsfddfdf','dsfdfsdfdf',1,'2023-11-05'),(9999,'Cedula',2,'camilooo','4356466','dsfddfdf','dsfdfsdfdf',1,'2023-11-05'),(65757,'',1,'ccggf','656565','fgcfgcfg','cvvbv',1,'2022-03-03'),(123454,'Tarjeta Identidad',1,'webin','232424','ssdfdsfd','fsdfsdf',1,'2023-10-01'),(996765,'Cedula',2,'camilooo','4356466','dsfddfdf','dsfdfsdfdf',1,'2023-11-05'),(997878,'Cedula',2,'camilooo','4356466','dsfddfdf','dsfdfsdfdf',1,'2023-11-05'),(1223456,'Tarjeta Identidad',1,'123','123','123','123',1,'2023-10-10'),(9999999,'Cedula',2,'camilooo','4356466','dsfddfdf','dsfdfsdfdf',1,'2023-11-05'),(123456789,'Pasaporte',3,'mulatico','214342','efsdfsdfdsfsd','dsdfdfsdfdsf',0,'2023-10-01');
/*!40000 ALTER TABLE `cliente` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fact_com`
--

DROP TABLE IF EXISTS `fact_com`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `fact_com` (
  `idfact_com` int NOT NULL AUTO_INCREMENT,
  `idproveedor` int NOT NULL,
  `id_usuario` int NOT NULL,
  `fecha` date NOT NULL,
  `total_comp` float NOT NULL,
  `descuento` float NOT NULL,
  `tipode_pago` varchar(45) NOT NULL,
  `condicion` tinyint NOT NULL,
  PRIMARY KEY (`idfact_com`),
  KEY `idproveedor` (`idproveedor`),
  KEY `idusuario_idx` (`id_usuario`),
  KEY `idusuario` (`id_usuario`),
  CONSTRAINT `idproveedor` FOREIGN KEY (`idproveedor`) REFERENCES `proveedor` (`idproveedor`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `usuario` FOREIGN KEY (`id_usuario`) REFERENCES `usuario` (`idusuario`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fact_com`
--

LOCK TABLES `fact_com` WRITE;
/*!40000 ALTER TABLE `fact_com` DISABLE KEYS */;
/*!40000 ALTER TABLE `fact_com` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fact_com_prod`
--

DROP TABLE IF EXISTS `fact_com_prod`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `fact_com_prod` (
  `idfact_com_prod` int NOT NULL AUTO_INCREMENT,
  `idfact_com` int NOT NULL,
  `idpro` int NOT NULL,
  `cantidad_com` int NOT NULL,
  `pre_uni` int NOT NULL,
  `pre_total` int NOT NULL,
  PRIMARY KEY (`idfact_com_prod`),
  KEY `idpro_idx` (`idpro`),
  KEY `factura_com_idx` (`idfact_com`),
  CONSTRAINT `factura_com` FOREIGN KEY (`idfact_com`) REFERENCES `fact_com` (`idfact_com`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `idpro` FOREIGN KEY (`idpro`) REFERENCES `producto` (`idproducto`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fact_com_prod`
--

LOCK TABLES `fact_com_prod` WRITE;
/*!40000 ALTER TABLE `fact_com_prod` DISABLE KEYS */;
/*!40000 ALTER TABLE `fact_com_prod` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `nuevo` BEFORE INSERT ON `fact_com_prod` FOR EACH ROW BEGIN
set new.pre_total= new.cantidad_com * new.pre_total;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `Actualizar` AFTER INSERT ON `fact_com_prod` FOR EACH ROW begin 
update producto inner join fact_com_prod set cantidad = cantidad - NEW.cantidad_com where NEW.cantidad_com=producto.idproducto;
end */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `factura`
--

DROP TABLE IF EXISTS `factura`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `factura` (
  `idfactura` int NOT NULL AUTO_INCREMENT,
  `fecha` date NOT NULL,
  `tipopago` varchar(45) NOT NULL,
  `impuesto` float NOT NULL,
  `totalfactura` float NOT NULL,
  `cedula` int NOT NULL,
  `idusuario` int NOT NULL,
  `condicion` tinyint NOT NULL,
  PRIMARY KEY (`idfactura`),
  KEY `cedula_idx` (`cedula`),
  KEY `idusuario_idx` (`idusuario`),
  CONSTRAINT `cedula` FOREIGN KEY (`cedula`) REFERENCES `cliente` (`cedula`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `idusuario` FOREIGN KEY (`idusuario`) REFERENCES `usuario` (`idusuario`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `factura`
--

LOCK TABLES `factura` WRITE;
/*!40000 ALTER TABLE `factura` DISABLE KEYS */;
INSERT INTO `factura` VALUES (14,'2023-10-26','Efectivo',0.19,0,1,1,1);
/*!40000 ALTER TABLE `factura` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ingeso`
--

DROP TABLE IF EXISTS `ingeso`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ingeso` (
  `idingeso` int NOT NULL,
  `sueldo` int NOT NULL,
  `descuento` float NOT NULL,
  PRIMARY KEY (`idingeso`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ingeso`
--

LOCK TABLES `ingeso` WRITE;
/*!40000 ALTER TABLE `ingeso` DISABLE KEYS */;
/*!40000 ALTER TABLE `ingeso` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `mostrar_cargo`
--

DROP TABLE IF EXISTS `mostrar_cargo`;
/*!50001 DROP VIEW IF EXISTS `mostrar_cargo`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `mostrar_cargo` AS SELECT 
 1 AS `idcargo`,
 1 AS `nombre`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `mostrar_cliente`
--

DROP TABLE IF EXISTS `mostrar_cliente`;
/*!50001 DROP VIEW IF EXISTS `mostrar_cliente`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `mostrar_cliente` AS SELECT 
 1 AS `cedula`,
 1 AS `tipodocumento`,
 1 AS `sexos`,
 1 AS `nombre`,
 1 AS `telefono`,
 1 AS `correo`,
 1 AS `direccion`,
 1 AS `fechanacimiento`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `mostrar_producto`
--

DROP TABLE IF EXISTS `mostrar_producto`;
/*!50001 DROP VIEW IF EXISTS `mostrar_producto`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `mostrar_producto` AS SELECT 
 1 AS `Identificar`,
 1 AS `NombreDelProducto`,
 1 AS `DescripcionDelProducto`,
 1 AS `CantidadDelProducto`,
 1 AS `ImagenDelProducto`,
 1 AS `PrecioDelProducto`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `mostrar_proveedor`
--

DROP TABLE IF EXISTS `mostrar_proveedor`;
/*!50001 DROP VIEW IF EXISTS `mostrar_proveedor`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `mostrar_proveedor` AS SELECT 
 1 AS `idproveedor`,
 1 AS `tipodocumento`,
 1 AS `sexo`,
 1 AS `NombreProveedor`,
 1 AS `correo`,
 1 AS `telefono`,
 1 AS `direccion`,
 1 AS `tipodepersona`,
 1 AS `fechanacimiento`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `mostrar_sexo`
--

DROP TABLE IF EXISTS `mostrar_sexo`;
/*!50001 DROP VIEW IF EXISTS `mostrar_sexo`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `mostrar_sexo` AS SELECT 
 1 AS `idsexo`,
 1 AS `nombre`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `mostrar_usuario`
--

DROP TABLE IF EXISTS `mostrar_usuario`;
/*!50001 DROP VIEW IF EXISTS `mostrar_usuario`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `mostrar_usuario` AS SELECT 
 1 AS `idiusu`,
 1 AS `sexoo`,
 1 AS `rol`,
 1 AS `nombredeusuario`,
 1 AS `telefono`,
 1 AS `gmailcorreo`,
 1 AS `direccion`,
 1 AS `fechadenacimiento`,
 1 AS `tipodedocumento`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `pato`
--

DROP TABLE IF EXISTS `pato`;
/*!50001 DROP VIEW IF EXISTS `pato`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `pato` AS SELECT 
 1 AS `Nombre`,
 1 AS `Factura`,
 1 AS `Producto`,
 1 AS `Cantidad`,
 1 AS `Descuento`,
 1 AS `Total`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `producto`
--

DROP TABLE IF EXISTS `producto`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `producto` (
  `idproducto` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(45) NOT NULL,
  `descripcion` varchar(45) NOT NULL,
  `cantidad` int NOT NULL,
  `imagen` longblob,
  `precio` float NOT NULL,
  `ruta` varchar(500) DEFAULT NULL,
  `condicion` tinyint NOT NULL,
  PRIMARY KEY (`idproducto`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `producto`
--

LOCK TABLES `producto` WRITE;
/*!40000 ALTER TABLE `producto` DISABLE KEYS */;
INSERT INTO `producto` VALUES (22,'papita ass','Color Verde',0,_binary 'âPNG\r\n\Z\n\0\0\0\rIHDR\0\0\0@\0\0\0@\0\0\0™iq\ﬁ\0\0\0sBIT|dà\0\0\0	pHYs\0\0\ÿ\0\0\ÿ˙\\¶r\0\0\0tEXtSoftware\0www.inkscape.orgõ\Ó<\Z\0\0\Z\ƒIDATxúÕõwtT’∑\«?˜NI&ÖÙIH#!ù–´ê¶äR|\"≈Ü≥w≈äÿê¢ÇÇÇ\"A@\ÈJë\“R ùÙ:ìôπÔèõI2ÃÑ¢¸\ﬁz{≠Y+9wü≤ø\Áú}v9G\‡øO^@\–B7¿	ph\‚©*Ä2 ≠\Èó\0äˇ\∆x◊©\'∞H$k?;{G£õß∑\—\Õ\”\€hg\Ô`lãH>z¸7*\‹≈∂\⁄sÅ\Ÿ\»3\r@á†P∫˜DßÆ1¯Ö\‚é´áß\’\ Jä\…\ÕH!73ç‘Ñú=~P∫ñù\Ÿzåi¿7¿J†\Ín˙n\0\‡,\Ê!/k\"¢c9i:Fè\«\”«ØÕäµ\’UçT*5∂vˆVyäÛØqd\Ôˆ˝≤AJπt\Œ4\ﬁ\n`1Ú∂˘\«Ùo\0Å9¿ªÄõB©îFMö.Lù˚Åa\ÕL:m\…Œê˜	í/ú!\ÔjEy9Tóõè\€Fcá≥´;ÇBãä&,*ö\Ó˝õ≠ñ¨\‘$6Æ¸Ñ}[îzΩ\0\\^\0æåˇBñ;¶P\‡$ 	Ç(çõ>[\⁄r:C:ûßïé\Ái•?2+§∑Voîéô(©m5˚Ze£ë\\¸%œé\·íox¥\‰\ÿI≤wv∑\‡DQäºßóÙ˛∫≠\Õm\œ\”JøúJó\∆Nù)	Ç`\‚=Ñ¸A˛\…\nò|\r8áFvc\—\“œà∫ß7\0•%¸≤ˆ+∂¨˝ä\Í\nyÜmù\Ë\ÿ=éÄ\Ë>tà\ÍÅ[á`\Ïù›≠6l4\Ë)\…N• -ÅkIgI=˛π,¸\‚Fé\√≈É;Ò\r\ËHhd7\0R/ù\„\√\ÁH)\œ\n@58∞ÒøÄ,ûëó0k\—+(îJ\Z\Íj˘˛Û¯i\Õgh\Î\ÎP(Ut<éÆ#&\“{(JïÕùå…å\n\”/\„é—†gŸÑ.hk™\ÿv&\'WDÉ^œö_\Áá/?Bí$ö∆∏ò\€\‹∑Ä\ZXLurqï^˚rΩ\–s\‡0\0é\Ï\Ÿ\ŒÚWQRp\rµ∆é\ÿÒè\“w\Íúºd\ÂWWQ\ \ﬁ\œ^BØ≠ø˘@ëaOºä´_G´\ﬂ\r˙F\Œ\Ó¸ûÜö*\∆=∂à\∆\Ã3\‰$ûcÚ\Ï˘Ç¿©C˚y}˛cueπ¸\Ãtw\05∞\r∏\◊ÀØÉÙ\…\∆=Çp⁄Üz>y˘Yvo¸Aà\Z6ëQﬂ¶ùßos\≈˙\Í\n\÷-O~ Ö\€\Ëúº¸òΩb.~Å∑\‰˝\Íë\‰ß^§\◊¿·º¥¸\\=Ω\»\…H\ÂôGãÚD`0Å[Äp+\0D`05 4Ç\Âõˆ\‡\·\ÌKAn6ãùHvj\"é\Ó>L~mA=öU¨´(e\Ì\¬q¶_fpl(/\Ã\Z~”éæ\Ÿqíüˆù\√\≈«ü\Ÿ_\Ì\≈…ª˝M˘3˘\Âµ9e&\·\Ê\Â√≤v—Ö\‚Ç<û~`î173Õ¥\Ê&\€\·V\0,ûÚ\Ì ≠\ﬁuTˆ%39Åg¶ç•¨∏ê\–\ﬁ√òÙ˙*•\÷z\Ê≈Ü≤\Óç\È\ÿ⁄®\08v>ì\ﬁ]Q)fuåí\ƒSlaÛÅÛ8{w`ˆ Ω8{w∏\È\‡Ù∫v¥ò≥;ø«°ù3\Ô}ªô\Ë>(.\»cn¸\0cq¡5ì\ﬁZ\‘Vä∂>\0SÅú›§[æ˛Å$_8\√\¬)#©*/•\«\ƒYL~c\r6\Z≥J7˛\◊\„â<Ú\ \“rã7∞ãY=A\Ÿ7úú¸2\Œ\'§ëˆ\Á>\"áå\√\∆Œ±\Õä\n%\·q˜êv\‚w~ﬂ±ô\Ë\ﬁqáG\—{\»(\·¿∂çFù∂°/êålR\ﬂ6\0!Ç \ÏD\—\Êù5?	Q\›{íósÖSFRSY∆†YK˝\‰;Çx\€\¬∏8\⁄q\‰l≥\∆˜!\‘\ﬂ\√R A`Tø≤ÚJ9w1Ö\‘\„{â<;\ﬁ\÷‘±{vNÆ§\€À±}ª\È?b,Å°\·ÑDtl\ﬂ$£Å-@\È\Ì\0`R A_\Ã˝è<FUEOLFi\·5˙<#ºiQ\ÈV\¬\ÿk\‘LKß\0ÎæÄ	Ñ\—˝:ìyı:\Á/¶ê˙\ÁoD\rπı-@hã°QG˙©É¸ı˚^FMôNpD¥\rıB\¬\ﬂ©ÅX`-≤\·tS\0\Ê∂è\Ê˝U\ﬂ#ä\"Ø\Õ{Ñ§s\'à2û˚^¸A0W∑#|koE¢ 0™oIW\nI∏úF∆©?à\Z:ï≠\›M\Î\≈§Ùjô\ÁOPp5á¡c\'—Ω\œ@é\Ì\€i,ø^\Ï\\\Œ\ﬂ\07v¢®yq\≈&¸Ÿ±~\rõV}Çã_3ñoA©67jn&|uùï“å_P®A2òïiuz$IB!∂l)Ö(26.í\À\\JH&Û\‘DùÄ\ V\”&\0Ç \“s	øo!˘\Ï	¸É	ç\ÍFH\ÁÆ¬ûüæ\ËÉl\≈6¥¿+¿à^\„g0{\Óî±¯ë	%xd˘/∏¯ò1\◊Uî≤vA<ió\ wo>\‘,¸ˆCóò˙\¬:\‚bÇÒrk\'wf\Áä[œô`4\“XïÄÆQœú77≤\Ì\–%\‚D¢PòÉ0¶$\ÁSÆq˘r\nŒÆ¯w\Ì\›&\0\0Jµ\ræ\·\—\\ÿ≥ë\'è2˛\·9t\ËB—µ\\\“/\⁄ç¿!k-\÷Ñy\n•ä<è|µÙ\Z\Íj\Ë=\Â	¸\"b,ÖouŒØ{Û!l\‘-≥ùêQ@u≠ñÇ\Î-nª\¬\÷	A•Ai\ﬂrlV\÷4êïWJAI%u\rçŸ®ï|˜\ÊC,[4Å∑&#b∞‡πë∫ı°{¸CTñïÚ√ó\»fªB)ir\€¡\‹Xº\ﬂ=˛a\ﬁ˚|\rôâ<:¨6n,\⁄v[ávÕå∑ª\ÁS≤ãÙ2+S\⁄{†Ø-1++*´F©qs≤hMW\Ï\◊‹ãÒ¶\'8T_/\‡ì\…1¿\œ%\„\Ó\Â\√;O\œa\Ô\Êı&Y?hΩAg{xv*ÅM´>EíåÙhëô≠g~P”≤o=Û≠\ÈF\·\·º\\[\Œ˙≠/Ú˛\⁄\ﬂo*úûg1:zÒ\‡ª\ﬂ\„\⁄>\»*è£ª}\Óü\À\—\Ô?a˚˜´ô≥¯5¶\Œ}\∆¿l\0¶\–8\È◊π;\Ôl>äõæÇâ=B@¥\Â˘ΩI®5Ú\Ã‹â∂ˇ\'¥ÛHÛ\ﬁ˝Ω\·ˆbNûæ\ÃZÒkõ T\Â±lBú\›=\ÿ˙wJ•äô#z\Z\”/ä\»\«\‚Yìò\n=˙Aúm\Ï›ºûF]\·Éf‹ñ?8\œ\«\ÎöuÆ¥s√©\ÀY\Î7ëVß\Áâw\"1≥†M\·%	æzÒ\nß\Õ_¡Å∑y4æï\≈˘|;oe◊ÆX\»Àè∞~#)+.\‰\œ˝øp\Ô˝3L2OÉ%8†Û¿xú\‘á~›é\»\‰[\n_Y\”¿´+~e˘á…∏⁄≤ºBá`\ÎÅ\∆7∫πl\À\ÿvØ≠\‹”¶_<?Ö	C∫P[Ø\„\√\Ô˛†QoÆ¯A`\ÈìÒ∑BÃò©\0ﬂøÄ∏Q\„LüFÄ¨<Åpwˇ\‹|¸®*-\"\Â\¬\ﬂhú	â\Ìj&|\ﬂHoãe\Ô\‰`\À∆•èRTVMHáÛ∂2q\'v~1\‘]=\›\\6mt,\’uZ¶k9Q\⁄\‡•/w≥È∑≥4\Í\rº8{ÑU\0\÷\Ì:≈∑Û\∆X\›¡=£P™8yx?í$\·\›\ﬁüÜÇ´9ëÄß\0Ñé˜\ƒaß8sÙ$…àWßaà\nÅﬂøzì¸îÙ\È\Ï…ßÛ˚Z\›Û1\·\Ì\’7¬¨L\“k©\Õ9i¡˚¯§~∏:\…\›÷Éy‚ùüÅUØ<h&<¿≥Ü3ih7<8¿¢\Ô>\œ\‘Q˜¥πl\Ï\È–•\Â%E§\'^†«Äa\nd˝\'\"gl\rè¡V%p˘ú<cﬁù˙\0r\»	\‡\—·°®ï\Ê\Œœø°ùGxÚ˝_\0¯l\…d\∆\∆EZxπ:Ú\Â˜\”\Œﬁ∂\ÕvDA`Ÿ¢	7\›Å—≤,i	≤÷•y[Fâ4%1\‹˝CP\nêìûÄ_g\ÀDå\0\Ï9ûDYeùYπ\“\Œ\rï≥π\ÔÆ\’\È\ŸÚ\«\≈6Öok\Ÿˇ∫ïN\Ó¿ïT\Ÿ#ˆ\Ód˙*\"á∏q˜A!@vF\Z¢Bm\⁄2\—Ò\ƒB\ÊºÒ#S_Xá¡(U¢\“ó\Ó\”qâ~\0•ù[3\ÔÇ˜73\È\œ|∑\Î¥Y7Sx≠ï®âTé\ﬁeIW\n\ÔH1zE4ê\‘@s\‚*L<Q\ƒ\ﬁ\≈]}-\Â%\ÿ8¯°RY.˜\ÿPwÜˆ\Í\ƒ\”\”5;.F}µπßh(∏åæÆ\≈›û7%é\ﬁ]â\’\\f∂\Á_~†Yx≠Nœ¥øc\‹”´I\Ài…Ö\⁄ˆ√µ\Á,≥ì\‰LR.ÒO≠\‚Ò∑7aî\Ã<\€fù0exï\≈˘ú\ŸÒ\0\Œ>˛\0\\/*¿\’\√\À\‰\—z(µ≠Ç(RV\\à$I(m]¨\∆\ \‘*ëıo?lQ^ó{ ¢,&º=€ó=\÷¸ø≈ûoåçZI\Ô.Å\‘kÕ¨\¬∆™|å∫ZÙ5-†¯∏\‚\Á\ÈL∑0?´Æµ(\Ô›â\ÕZº^ï≠¢®†∂™R\ÊE\‘66FmCÉ£p0Öù™+*LP¢7H7∂˝èÛh∑≥\Á_ò5úg¶2;eteY\\ˇkí°\≈IÚpq`ﬂäyh\Ó¿µΩµ\’-éô\∆\ﬁ¡®mhp4[\ÁZùVÆÄÄ¡\“13%,H´\”SQm=\Ó\'\n\œ\⁄+Y»ùo\"QTXø\‘h\Î™0àr√íd§°ŒÇ\0]Cç˘ˇM˛¸\ƒE_[úm	£3ë Zzx\÷x≠ÒIí\‘fª\0⁄∫\Z4ˆ-\ﬁf}mç\0Tã@çÆ°\…hƒ†î\œ\€∆ÜRj´e¥ƒ¶\0\≈\∆\√Wh\‘)\œO≥\0¡\Zµ•\Í\Zt<üµº˝ı>3~á†8\\b¶õ˘ß.\Á\–\Î·èπîñ\◊\\&*mqπgv\Ì\Ô1˛\≈/v3Ûµ\–5\Í-∆¢o\‘bh‘°±ó\„äFÉùV´0P,ç‘ñó\‡\Ë%üÂ∫öBj+d4á˛\œKxÖs¯bœ¨<ÖVßß</]Ωºj\‘*%_ø:ï-\Õn∂Zûd°≤ÚJI\Ã,‡ØãYhuÚ`Qâ\⁄-•É;\nçs3\Ô¡\”i\‰óTr&\Èjsô\“\—•É6\Ó°–§+k\Z8z.ÉÑÙ|äJ´-\0®.ëµøªß|§ñ]/6má%ê\ƒ^\œ\Õ 0¶NnTññP]íCmUˆ.\Ã˙r7\ﬂ\Œ\ÀÒ\À)<ªÚ\À\Êˆ¢<?\ﬂ\‘\ZGl\‘\ ÊòÄi\Ÿ%â˜è≥\ÿÛë¡>l˘x˛\ﬁ.\Õu$£ûÚÛõPhú\Ã4˛≥Ü3(6Ñ>][ÚÖ∫Ú\\\ \œnê˘öˆ¥≥£Ü≠œ°¶NKoŒß^3\Î≥¯J2\0°\·\0\‰f¶ô>•â\»\◊N∏ûõ@p¥s´)I†ºP6v\Ï]<ò˘˘N<\¬8~πê%kN£kl§<?£y%ò\Ë\„ı\—åº7ªc˚X˜”£Ç},\Ã[IﬂÄæ∫»Ç∑µ&j¨\ G2ö/u/WGÇ\€7eåo8¡J≤SÅ(73\’Ù)].\‰%ü ¨øúi©\Ã˚ãíÇñ¿ÑÉõ≥V\Ï\∆# å\√Xl° ù˙™§\"ΩqQ\ﬁ\‹Çˇ?°º\‚\nñ~ª\0[Gy;\Â^íÌîàn≤\ﬁHΩ\‘l#\\Å£Äîuˆ\0˚åDT()øzÑ\“|#ç\⁄!‹ºòΩrèÖN®,Œ°8\Îï\≈YH\∆\–\Í\ZÙ,YæÉÚ*Û\”¡>∞ØÖ\ÔpÚR6üm<bV&™\Ïh>\ZA\—r\ÏIí\ƒ[kˆY\r™\‰óT2\Èπo\»-,\'j\Ë˙O_à°Q«ï3G\–\ÿ;–π{O\0N9†Gûùc\"Ú=º\‰“´ôT\Âa\Á\ÏFDœÅ‘ógP]tô\¬lÛ‘ç\€\·\—é\”\·+îU\÷Q_UäAﬂíç^±\„\"\ﬂ\Ô>Õõ´k.S9µ\«!xNQ˜5gZùûπ\Ô¸ƒª\ﬂ\Ï\ÁLRn\‡°C\—¯\≈`ÿØπ\Ï\◊\„I|˘\”Qº∑\Ÿ\Ã\Œ+Æ\‡æg÷êù_F\◊ìôÚ\÷7à\n%9O¢≠´!∫WT*5Ws( ª™D\Œõ\‘P†∑≥Ø?\"c1t$›ÉBmè\⁄y :)hmu™\Ìà2ûÃøëïï\ÀÒ\ÀEl¯#ÉÑ¨rrãkh\–ò3∫}∫ \ÿ8Ú\‚\Ï\Õ\nœ®≠B\“k©\À=Ö°A∂Ãî\në^]\È\‰\Õÿ∏ñCWûã ä\‘^9í<aû(\"ãgké\"\ÁW0\·ŸØ\…-,ß\Îà\…Lz}5b∏ø^Ja˙e^∏Ñ∞®hˆ¸¸=ß\0X\Ï7â\’8\Â\√‹µá©ØÆ\‡É{\√@\‘\–s\Êy¢9\„h=P|%ô{7qaœèTó∂hüé\√\…\≈W\ﬂNV\Î\›-\ /©d‚¢Ø\…\Œ/#j\Ë¶º˘5¢Bªæ™ú\„#P©T\Ï<üç≠ù=è\Îa\»Læ§\0\ÓŒô§:\r§\Ê%üß¯J2\ZGgb„ß°\◊VPò∏Å+	zåmj=É\"1ˇ\rû€ï\¬#À∑b\Ô\“*\Î˚_÷Åm-{˝Ω}ç\⁄zÜ\ﬂ˜\0∂vˆd¶\\¶I¯\‡ògÜæ8˛\√\Á\0ÙüÒ\n•ö´g>•≤§ÇÏ§õgdDQAH\Ô°ÿªXø÷ö\Œ$\ÂZ(FQmá™ùyBí$ûN\√\Z›®&Ω∂™yŸÉ\»=æ\·SîJ\”\Ê=¿∆Øñô>\”\‹o´6Wóˆ˝LEA.N\ﬁÌâπ˜A\Z\ÎØsı\ÔO\»J\‘S[u˚Sjî$Ù\⁄:ÙZsA\“Ûπ\…Z¶,˛∂\ŸlD%.1\”p\È>\r•cK2\Â≠5ø1\Ì\≈\ÔXµ\ÂO≥6*´\Îo:Û\0G\◊}L}U9c|øÄ Ús≤ÿøuìÑ|≥tïâØµW°\⁄IFcúÆæñ∏{Ò\ÌÕπù\Î)øv\nˇ°\‘\÷z\·,\"äm;∆ó\ﬂJE\·UÆT3$\⁄]}∂v\ÌïÚQ\Ê\“N√πîk\ÌF\ﬂnMÜídDP®ı\◊\Œ6+<G;N\\\ \Ê\ÈiÉpsnqdll‘ú©Ú¿\∆;\ƒL\·ô(?ı\";ñ>â\∆Œé∑V˝àΩÉ#üΩ˛\Èâ\‰åP≥#r£$Æ@™ àÓè≠\ﬁGá.=9∑{\€ﬁûè∆©#1˛ÅÑëΩ≠ß\¬\0™Ø≤v~<%9i\Í\Ê√áèı\ƒF≠\¬\≈/ïç,Ñ¡h4KÖ7ì 4õ∑&j\Õ{≠®Çø\ÿ\≈\‰ó>•»Ω7í—àpC;z]+g¶(3â%¨`\‹Ù\Ÿ\\:˝\'Û&I*:!\ﬂ5,\”\„ı@9H\„ÚS/pœ∏¯ÜGìótñ¢å≥hkÚPªéA¿\’\À˙©`c\Á@\‰\–˚H?qÄƒîlís+\Z„ÉæÆµ];Jım]í0Qk\ﬁ7Vˇ\∆ˆCó®R{;\–\‚¢¿ˆwü$\„\‘Az ìØÑ¡†gÒå˚•%\"rf\ÿ,Vo-\≈zYSZ\‹ﬁ®o$∏\« Çcíxp;•9\'Aí0™˙¢¥pv∑ÇZcO\ÁÅÒ§˝πüîÙ\“Û™\ÌCc+n$Ií®©\◊Y\\®\0(≠¨\≈\∆Fç\"\ÓqÍùÉ»≥˜ì\0}˝\'~ZÅw{>Zø;{Væ˚2\«ˆ\ÌÅøÄ\'o¨c\r\0	8<í{Èî≠Ox7|√£	\È5ÑÑ˝øPöuï\∆\rùAæØ˚oVBk\·_¯|\À\÷\"~@\Z\€\”7ø§íÒOØ\ÊPé\Á¡ˇÉ\◊^VÖ?ΩıˆÒ*vé,ﬂ¥øÄ N\‹\«\«/=P	å\ o\0ö≥Ä…ôß>\‡^<;\—>™	˚∑Pzeçı\◊¡v\0\rµ\"n>\"÷∂¥ZcO\‰\‡Ò§ü8@rjçu®\‘v`4 IZ≠éu;Oì[TŒ∏˛\·8∑”Ä\—H~q9ìKv~˛ù\È<8\ﬁb\œKí\ƒ¡5\Ô≤ˇãW±\’\ÿÛ\Œ\◊?\—%∂\Ÿi\…,z(\ﬁ–®’ä¿\‡O\À\ﬁ:Œπx\∆Ÿª=è≠>@;O_≤\Œg\„¶S_]Åìoo¬Üâ{∫ˆW\‚\‡l}5‘î≥vA<\≈WR\Ë\ÂÕ≤πΩ,≤L\⁄F\◊+µ¯π\ÀAï\¬Úz[vå´%µûâÙ∫v,}Ü{\ƒ\…’ù\◊oßstäÚxlL?}iQÅ¯˘Ú¥U∫ù´≤\ÎÅiÅùxÙ≥\Ì¥ÛÙ•\Ï\⁄æz•◊Æ *5Ù|ˇ\ÿ˘D®\Í¢Da\Âêh}:\ƒuÒfPWü6;ïêX∑/ùk\◊k-l{f$ÚÛ+èSíïÄOá@ñ˝∏õA°\‰Ò‰îëÜkY\È\n\‡‰´≤m\Z0wtY\⁄Ÿª=3>›ÜG@5•El{{>i\'\0\‡\‡M\«~Ø\‡GPg%~!\"¢¬º˘ö≤b\÷Œèß8+\Â6∫\≈\Í\Ã\Î\ÍkŸøÚcNo˛…®ß\Á¿aºÚ\Ÿ:\\\‹=\»JMÊ©©˜\ZÀäÚMw\ÔCæ\’&\›\…u˘µ¿4;\'W&Ωæö∞>Ú\Â\Ásª7\€Ú©Øëì\Œ\‚ã~Ø°¯á*Ò\Ì®@\„\ÿ\“MııB.\Ï\›t\Î5ˆÙò8´y\Ê\Îk\Í8¥vg∑}éÆÆ[ç=è?ˇfÛu˘C˚ˆ∞Ù\ÈôR]UÖÄ<Û3o%¸ù\0\0Úv¯xV\‚~ö°èøå®PRUíœ°5K9øg#Ω‹ß\∆9è∞âxÑé\«\'47_W/N\Ó†P\‹^∑µU)˛M\‚õ\…>˚çıe¢»ê±ìòˇ\ {x˙∂ßN\€»≤∑^fﬂ∫OMÅŒèê/A›ñ\›˛Oí=êù	\ÔêH\‚ˇÛ	˛]zPQxï?7,\ÁÃéı\Ëµ\Õl¸pj\ﬂGØ\Óÿªu\¬\…;_O4ˆ6(î†T\ _mY1U%Öî\Ê$Qí}ñ≤\Ï\√4Tf`\Ô\Ë\ƒ\»ISπˇ±\'iLΩ^\‚–ëc¨}Ûi\n2A~F˜8p\Î\Âı/\0FVé}A f\Ãt\ÕZ\“|ë≤°∫í‘£øí|p+\…\'a4X\∆\Í\Õ!™\0\…\"\–ickGØ¡\√~\ﬂÙ>Ö Ü\Î\rFí\“2Ÿ∫b)ˆl4\Õ˙_\»\ \Œ˙=ôõı}ßZëàºœñ\n•íÆ#\Ôßﬂ¥Öx5\Â\„AJ\‰\'û°4\„Ö©\…\ÀH¶≤¥Ñ\⁄\ÍJÛ\∆Dû>~¯áÑ“âò>\È>`•Ü\n≠ë\nùë\‘\ƒén¯úK˚~\∆h0Ä\Œ{˘9\œ?ä>‹çáì.¿≥¿¸¶øÒ\Ì‘ç\Ë{ß1plõè‘¢ÑTWF=ˆé\ÿh4ç`ê$ÙF®\◊K4\Z%*\nrI:ºããøm\"?ıí©z99Úì\⁄\n´\‹&\›Õß≥é¥<ùméÉπµ\ÔH\«{\‡Éª\Ó!8∫[∑™Øp=\'É\Î9\È\‰•\\ \Î\Ï©,/ªıSêı\œ*\‰grˇo)˘Y\Îe\‰˜:è\"m\Ïåén^FG7/£ç]õèßç»Ø\»?Bé\·\›u∫õ+†-Ú@æâÖ˘Ûy¿\Â®E^÷•»©∫\÷\œ\Á-\Ô\Õ\‹E˙_0ñ¡E•;\Z\0\0\0\0IENDÆB`Ç',0,'C:\\Users\\usuario\\OneDrive\\Documentos\\NetBeansProjects\\tienda_con\\target\\classes\\producto\\papitas-fritas.png',1),(23,'Celular','Iphone',0,_binary 'âPNG\r\n\Z\n\0\0\0\rIHDR\0\0\0@\0\0\0@\0\0\0™iq\ﬁ\0\0\0sBIT|dà\0\0\0	pHYs\0\0ª\0\0ª:\Ï\„\‚\0\0\0tEXtSoftware\0www.inkscape.orgõ\Ó<\Z\0\0\ƒIDATx\⁄\Ìõ\€SW\«u¶é\”\È¯–áˆ•u˙\–\Èt˙/\‘i\ﬂ\ZºLµ®PÑé4âë*T\Â&ä∂\"8®\\™TÂ¢êî©Z≤âÅ\\ \…!	/B\∆ \·¢ a∑˚[D&ãÉt`\…\Ãw8˚˚˛\ÿ=Áìì≥{v˜¨!b\Õb$LLˇRîê!#\Â!E,ë\‡X28ˆbÎø®NJ\ \Ÿ@V\‰Ò6|ÆCñ\rÄHúΩåçüYá\Â \…»üØr˚c$\∆\‡\‡(D(:>\€\¬¯C;Ç˜)∑mã\–˙xê≥ \0dñ@Bf¡|ï€∫5\\\œ\·Ñ\—1lGFãu∞=ü gaΩ ≥Äµ\0xÇ£={\"¯™8q˙+\ÿ&ˇN\Ï	\Á+w\ÓéF|	<\»Y1\0ñF\0,\0p$wHx¨»∂îÇc≤Ä\‡Ù\Õ\Ê˝µb)\«\0\0\0`\0‘îß±âQ∫:•ö$π°|~µı&Nª?¬ãG\ÈÇxê*∑ım\Ë4j\÷wQ∫6öÃä∑\0n∞Ä§\ﬁ4@tÛ_R\Ë/ êSÚ\«\Ì\"Üå˘xêÛçæY\”m æ0(˚™N\Â*R*J\‘\Îm˙qàÖ\…˝¨\Ì\…r=\∆†©\Âw\n@\Ÿ\Ÿ\Z\0 \Á´3≤\Œ\ﬁÚj*ñ?0\„5˝vL	\0B\‰6lU\0ëU\Ë\Œ\ÂπWÄè¨∫Qú\À˜\Ãx\“5\Î¿@\«@©/§\0\\:W´g\0\‰|≠7Sc¿&DnmMMUïúQ|jVS=\0HVüw§™ΩF\◊K{ú%≠A\Î_x£cxÑü`ÙrIè&àÅ9ª\Zl\Œuv£e≠√Ä\—ıqáI∏\0`9Ä¢ˆ]©5\ŸC◊ï\Œg\\É\÷~d•y0h[Ñï\√	ı\–1 \Áxï\“\·-\rs‚•°∫ûï\«\ËX\r@Po\Ë-µJâõ÷§ßO\ÏB\ƒ\„8§π◊ïÄB,Gsô\Z\√2+oãÅ9™k9Q\ZB¯“ëjm/{\»\r4\÷\„4œå˛∏É7z\’zd8Gs\È5Ä´\”\0§e\'K\÷J	\ Ä´Ä¶kŸå\0í´µ\Îêç~6\Î2\ÿ&6\“mèz\ \…k$\ËÇÿä\–\Á\"oz@7ø∑\Ã*ı\Œ\Ì?D\’s\‚U^	=Ä_\ﬂ\Ê\0dÉßölb]ó]ÑTZ•É\Àj.ß\0\Ï…≠ne\Z¿Éú\∆\ ”å\0$5ÜVü`∞+j\À\–\—u=•\‚ëp¿èÆ≤éˇïÑl\›´•b\‡Aé∏\⁄\ËzT!Rπ\Àcµt¡\‡\»\Í\Èp\‡:`Z\ﬁ»õ].∫¢´\Ì£Ù\ ¨\Îz)ëô\\tAlV\Î{F%\r=.∫∏∑^VàÆ±O\Â+úsGxR\„öQ»ëí3Fr`ÙÃù,A<\»9ß\ÈE\…˝ès>^úp\∆\ﬁ\Óûd-Ä}7¨òè\∆S\n.\÷MOáï\‰tòa\∆ux8åü\‰ª1\÷h\ÔR\‚81@\ 561i	/n\Í_0Ä\ÁC˝ƒ°x¡∏∏3t2O\È7\0¶¶~˙∑ñZcF\0mGg\›/\‡\n˙˝@Dqsˇô;V\Ìô;]:\…uì\ÂΩ6ªÖP\ﬁ\◊*µñpª\Ÿ ≤\ ˆúlÏ§Ø1`wI´\nr\n\Ó˝\”\∆\0<»ë\ŸUC¿dú\‹9\»\Í\”`X™\€^ÿå–µÛ¢!\œc\‡\«\‘:pYÛïŸîã\–1 áW˜`L\·B⁄ûé\Œ\“\„Ä.pC$\0¿èD^C\›Ùm\Ë\Í zL$\Ôq˚\0~˛_MQU6\œ|\nMØPì3>|ˇD#lskÉ^\«@PÜòˆ\…p#π_ºu©ﬂµ?8&k\0\ÏMª\‹\Ãt¯Fâ%&NP®õs KE\›\0\…k\ƒG\'&\€APÜX•÷©\¬	\¬}¨∂\›ÙÆ˝¡1˝¿ˇ¨\0\0∂¯D≠U¨≥¥¢t}ÿ¶\◊|WàÙÅø9_Òb\Ôı\Œ˚\‰\Ô•b\‡A\Œ/Ÿ≤æ^^¢f\ËÄ•K+JWºpâ}\0æ?\ﬂ8\0\œ\Ô|i\„]\r9?\È®w\0◊ôü\√; (C<»©O\ÃGòûÜg\À˚Y\€6]@0&\0ü5Næ®ßÆ\Ê\∆l\"Û\Ã%0î!\‰‹ë\‰0ÿóUá˘=\0_Oë!∂j\0¿∑=\·\⁄g\Z\Â\—`†c˘øØ\Î®w\0R\‰∫GS6Ç2ÄÙ \ÁoI.#\0 Y}\ÿ`‘´\◊\⁄\r]X[-\ﬂ^Dú\”gdòıç\‰\Ï£b\‡A7\Îñs,VhÒr˘]=©:p\0\0¿>\0\¬ƒìC±\…gmK)8f`¡Ñ?8b\÷Å†º\Í\0l\Ÿ\÷6ÛX ´\n¿!aZ\ﬂ\‹w \Ê\0ﬁ±pr>m˛π{¶ÒP~\Ô∞¨\'±tˆ†\‡\◊∞Reø\\:ª\ÍOØÑ\ÂÛˇÊ±Ö\È›∂{\Ô\0\0\0\0IENDÆB`Ç',0,'C:\\Users\\usuario\\OneDrive\\Documentos\\NetBeansProjects\\tienda_con\\target\\classes\\producto\\cable-hdmi.png',0),(24,'22','Moto',0,_binary 'âPNG\r\n\Z\n\0\0\0\rIHDR\0\0\0@\0\0\0@\0\0\0™iq\ﬁ\0\0\0sBIT|dà\0\0\0	pHYs\0\0\ÿ\0\0\ÿ˙\\¶r\0\0\0tEXtSoftware\0www.inkscape.orgõ\Ó<\Z\0\0	IDATxú\Ìó}å\ÂWY\«?\Á¸\ﬁ\Ô\À\‹{gfgw^ˆçÇ[ñ¢e\◊h†∫\‘±\Ÿ-JcM[Z\r!S≈à¸#äCõò!∆ê \∆Ù%\n(≠Z€Ç+⁄îJS˙≤\Ï\Œ\Óº\œ\ŒŒù;w\Ó\Î\Ô˜;\Á<˛1√î\›v\€\›mQ\Ô\'9π79\Á˜¸û\Á{û\ﬂyû0`¿Ä0`¿Ä¯ˇÑ∫\“\Á*£„áîÛé*d¸\nû\'¨)E%\'çoˇΩ}ˆ\Ï\ ˙Ú™∏tˆ\ÌãkMs%7ä_ŒÑ?\Í˛5ë_\ÓKª\"vÕäiXq≥π¯©H\√\\O∏ß?\◊lŒù∫\\õW\ \À\nP.Oåz°∫1P\Íf+ºKâ¯áæπ!Ò\√7FögS\«#}\ÀI#à%†\ƒ\—2B*ÄVäj\Ë°DP\"x(*û¢¶\„û\‚öH3¨sF¯r+Oß3%æ˛v/sw≠Ø/|\Ô\\ÄÚ\Ë\ƒm9˙\ﬁ-∆∫C°Øeo%Q◊ïBu0\œx∫õÛH\œ2ìZäQ@y¥HRå©V+ã:ù.\œ<5ç ¯æ¢\€\Œy\€;ÆEk\≈˙zìNßã5ì;Ú^JªŸ£ó[&èõ\À>\’]\√\‹\◊qrjvÖP´ø\Íˆ\›GZ≠Ö˙èS\0ØV\ ;\Zju[\Í\‹D9\n\‹\ÎÜ˙]≈êcI@1πwµ\À\'OøôUå\Ï(\'!ïZÄâ\…]\◊¯\€˛\Â\Á$üÖ\”-~˝É7\·y\ZÄ≈Öe\÷\÷\Z\Á9\—\Ôe\‘œµ®/6\»2\À{k1\—¡˝¸\„˜gec£ªaåªΩ\—X¯⁄èEÄù;¶s«Æ´j%\ﬁ:>¢~qj\◊\‘*\Ë(≠∑\Êô\Â˚k\ÎL∑:únv8≥\ﬁ\‚\‘zãföÛ\Ÿ#of\Œæ2∑¬©æ•^o\·0\ƒèıs)w˛\∆1\ﬂ€∂µ¥∏LΩ\ﬁxë3\"\¬\⁄jõ\≈\È\"cπ}ˇˇV,Ò\‰˜NI\‡©≤<¯\ÕFc∫˘ö\nPûîºaíÉÂòÇûµ¸T\‡É\‰\Ÿ\÷\»¡∫\Õ¢ùƒ®§Ää#àºBÇéYÆÛ\»\ÏY[8\ÀJ7Eä\ #U™\√e™\√e*\’i⁄ß\€Îº§S\Œ	ã≥uñ\ÊVπæ≤\Á-¯\ wß•\€\Ì≠ı≠˝\’f}Òü_3FG¶çú_\ ~{8\‚}ïÚç˘>*é\—IÇäc\Êù\Êdfh)\ÕL/e∫\—\Ê\Õ6Kù.\∆\nÅ\ÁQ\nΩã\⁄\ÎdÜ\Ã:ˆ\∆w_wÄO≠tx\‚\È3¢\·\Ôù\»\Ÿ\◊¥Dd•\ŒZ{uunÒ}®\÷&0\Ó´\◊˘ùo\·ì\ÁQ?·´ªãx\ÍJ€ÑÕùˇèû\·—ÆeßØ\ÿx\Ï+%\Ï*\‚\'	ãJ3ì	\ÁrÛä∂v%1o\ﬂ=ÜÚ}_\›\‡3K\»kr\ÎX\Îıe≠ü\ \ÃFóç\‹\Ë≤\Á-∑ç˝ú\÷\Í3ı˙¸\¬%	_˛+ø•+|bg¬ëÇŸÅgvr\Ó[œò1ñ7â£Öb	M\–¿NO±\'P\Ï=ˆªC\≈^_≥\”◊Ød˛íp¿©\ÃÒü=√óZy∂ò[\œ\”ÍãÇˇª´´3K?∫ˆEñ&ï„âû\·H¡g\√	\ﬂl\Á\Ô[ñT4\n<\ﬁ]ˆ\ŸsÅ\√u+\‹>ﬂ¶+\¬;]∆á$e∑=øéfQiñå«≤\—<üz<*+(,+\ÿhˆöΩÅ«æ@≥;\‘\ÏÛ}Òl|™oy∞cx6˙˚|\≈;bü[ÜBn≠Ñ\·\„=√ß\Î\È{ßç9Z©M~∏\ŸX¯K6ìÙ\≈\≈ø≈ßtë˚\'ãú\ ,wØ•8≠(\róàígç6\›N∆≠Cw\’\"º-\ﬂRÅ;⁄îr\√G\\\r¯æ\œH≠Lc\…sÉ±ñ<∑k1∆êZ\·äÂ±Ñ\Ê,K\⁄g	Ms+\◊G4\Ï4ø7ö˙pS¯ñ>v.\Âx\œP.ke<O\—\Î\Ê¨\◊[å(≈üé\≈5V\‡oZ^O\r®áR\√˚66\Ê\◊\‘\ÿ\»\‘wrë\√\Z\Â\Ôå}\Z˝úáÆ5w\◊3™c1ïëµuxûG!)êuÖì\œ-ÚˆXq\œh≤\›Q\Õ\Z«ùn∞}~E˙æ\œ\‘\ƒÇ\‡‚üì¡l	íÉ1c\∆X÷çe\Œ8D≥¨<\ﬁ?YeW\Ë\”\·◊ñz,+ô*Dõá©RÖ1qX`˛Lùµ≥M>;^\‡Më¶ùxV<\Ó>Ωb\Œ\◊\€9rá™O\ {\ !„æ¢\Í)\"\Õ]Çícx¨HFl¨•\ÿî µàb)!\–	\œ<9\√GGBéñÇÌÄæ\”3|hπ\«]\“\·g%\«Û<¶\∆Gâ¢ÀØ,\€\"9A)A©\Õ\›ˇì\’>_\Ô\ÂîF†6R£\ﬂ3tõJiÇX1Tç©Uò?\”¿Æ∂¯\ÍdÅ˚ˆ\\\Õg{|\€f©\'C¸;#7ñ\ﬁy=˛¢ëqR,a\—aù∞∂dP\Œ\Á¿Å˝h\ÊO\◊—Åê|\¬0\‰¯já€ÜÇ\Ì,ò\n4(¯|\ﬂ\„∞\‰î\≈\“\‹Ë∞∂\ﬁbΩŸ¶\›\Ó\“\Ìı\ÈıS\“4\«Xás\"hOø\‰E)µùÖu+¸\—jJP∂†˝ébmπ\«\‰\ƒNˆ\Óûb~vï¥c–°al\◊0ÛMvh8¶Rnû\Z\Â\÷Ò*O∂R\”rÚw/ôów\r^aÛ\Í5°Pày\œ-7\‡{\Z•`\Ê˘	˚\÷wIä]j£U\ÊŒ¨2ù9Æ\n_8\ﬂ_çx6u¸A∑Ã∞rÄÇâI\ÊH2°Ä°@NÅ>EÑä≤ØÚﬂß\‡y¯ÅG\‡{¯æO\ÔPÇ\Œ*:ÕîÎÆøñ´\Ó\‡\']\≈˝˝M6\Z)Q‘£66\ƒ\√\Õø\‘\ÎR\Íuy.≥<\◊\È{J\‘=>Äï™j*–±B≤’ü\ÿ\\3∫gà,MÒ	\"0πå˛C&ãë¢¡˜Û\Ê|4p\œX\¬Òû°iÖ∂\⁄\⁄\Œ\—qõX\›:\⁄Z\‚∂\Ê6Kvk§((äP \'!\Â\›%üû¢˝˙ßà£ê¯GJ∂\”p\Ìµx˙ôdYJRô©ø\„öπ\rQ\«W\ZÛO˘	<˛\È\ÂˆO‘µïè`P(]Am≠\◊\n¨u,/ùeﬂæ=hO\”\Ì¶[i	\∆\Zú¿\ \“*\'\»_îMì[\„R\È=4\›\Ì_EGm˛\Ô†(nÙYVD—¶Äuév´M≥πA•2¿\Í\⁄:\"A∞\÷\"\∆r\‚\‘\0”∫¨3¸á|\„\«f¨<ˇ\›\Êz¯%ÙåBÇÚ-KÛkTáã\‰˘)J\Â2O?yö∏\‡áùV\ÁÑ	\ÏeÑyqb \∆Q¯aqA\€\◊\\Æ/≤ûcafÄı°\rl\'ûüa\«dÄçı6\‹Kwú\n†22ÒÛû®áÆ\∆\‚\Àh\ÍZ©BÕÄÇ¨b2°Xä\È˜2îV\ÏòLàü˙Bá~3\Âu∏ª\”\À\Êπ=¨ål†¯3â/Z7pOÖEK&\”dmü ÚÒ}M∑ù2TO∞π0{¢\…núT∂îúF”ÅèØØ-~|˚¿≠éL‹§\‡≠\0\"$J\ÎëM\¬\‚\Ê.\ÿL\„(OCQPdu)%‹ãR”ØV\0\—ˆö´KOåééñçã?¸rkïí\√(nL*FiƒÅ\…ÙfV\œ\Ì{§≠ œ∫v‹ó∂t âØ>øqn˛\‰E˚\À\Í\Ë\‘ı8˘ß ?,:î>É≥û&\Ô*ıáç˙\¬\'^mWÄÆçN~\r¯Ö®\ËîπÛ&≠Å¨ÌâµjE9˘ôFcqˆ•åº\ÏuØ2:q\»˝ÄyÉÄ“¢\ƒ\Ê\nêN∞—òøˇ5\ÈÚÒ™\√S˘}≠Òt \n\Ágî\“J=\‰iˇ\Œs\Á\Œ,_\Ã¿•\‹wuµ∫˚\Á\–ˆàBç£d›â~ºªo,..v_\√`ÆòRi\◊?\‘GAΩQÅ\‡f5\ﬁ\◊çπßˇ∑}0`¿Ä0`¿Ä0`¿ˇ-˛^t:°Úd∂^\0\0\0\0IENDÆB`Ç',0,'C:\\Users\\usuario\\OneDrive\\Documentos\\NetBeansProjects\\tienda_con\\target\\classes\\producto\\carro-deportivo.png',0),(25,'Carrro','Rojoo',0,_binary 'âPNG\r\n\Z\n\0\0\0\rIHDR\0\0\0@\0\0\0@\0\0\0™iq\ﬁ\0\0\0sBIT|dà\0\0\0	pHYs\0\0\ÿ\0\0\ÿ˙\\¶r\0\0\0tEXtSoftware\0www.inkscape.orgõ\Ó<\Z\0\0	IDATxú\Ìó}å\ÂWY\«?\Á¸\ﬁ\Ô\À\‹{gfgw^ˆçÇ[ñ¢e\◊h†∫\‘±\Ÿ-JcM[Z\r!S≈à¸#äCõò!∆ê \∆Ù%\n(≠Z€Ç+⁄îJS˙≤\Ï\Œ\Óº\œ\ŒŒù;w\Ó\Î\Ô˜;\Á<˛1√î\›v\€\›mQ\Ô\'9π79\Á˜¸û\Á{û\ﬂyû0`¿Ä0`¿Ä¯ˇÑ∫\“\Á*£„áîÛé*d¸\nû\'¨)E%\'çoˇΩ}ˆ\Ï\ ˙Ú™∏tˆ\ÌãkMs%7ä_ŒÑ?\Í˛5ë_\ÓKª\"vÕäiXq≥π¯©H\√\\O∏ß?\◊lŒù∫\\õW\ \À\nP.Oåz°∫1P\Íf+ºKâ¯áæπ!Ò\√7FögS\«#}\ÀI#à%†\ƒ\—2B*ÄVäj\Ë°DP\"x(*û¢¶\„û\‚öH3¨sF¯r+Oß3%æ˛v/sw≠Ø/|\Ô\\ÄÚ\Ë\ƒm9˙\ﬁ-∆∫C°Øeo%Q◊ïBu0\œx∫õÛH\œ2ìZäQ@y¥HRå©V+ã:ù.\œ<5ç ¯æ¢\€\Œy\€;ÆEk\≈˙zìNßã5ì;Ú^JªŸ£ó[&èõ\À>\’]\√\‹\◊qrjvÖP´ø\Íˆ\›GZ≠Ö˙èS\0ØV\ ;\Zju[\Í\‹D9\n\‹\ÎÜ˙]≈êcI@1πwµ\À\'OøôUå\Ï(\'!ïZÄâ\…]\◊¯\€˛\Â\Á$üÖ\”-~˝É7\·y\ZÄ≈Öe\÷\÷\Z\Á9\—\Ôe\‘œµ®/6\»2\À{k1\—¡˝¸\„˜gec£ªaåªΩ\—X¯⁄èEÄù;¶s«Æ´j%\ﬁ:>¢~qj\◊\‘*\Ë(≠∑\Êô\Â˚k\ÎL∑:únv8≥\ﬁ\‚\‘zãföÛ\Ÿ#of\Œæ2∑¬©æ•^o\·0\ƒèıs)w˛\∆1\ﬂ€∂µ¥∏LΩ\ﬁxë3\"\¬\⁄jõ\≈\È\"cπ}ˇˇV,Ò\‰˜NI\‡©≤<¯\ÕFc∫˘ö\nPûîºaíÉÂòÇûµ¸T\‡É\‰\Ÿ\÷\»¡∫\Õ¢ùƒ®§Ää#àºBÇéYÆÛ\»\ÏY[8\ÀJ7Eä\ #U™\√e™\√e*\’i⁄ß\€Îº§S\Œ	ã≥uñ\ÊVπæ≤\Á-¯\ wß•\€\Ì≠ı≠˝\’f}Òü_3FG¶çú_\ ~{8\‚}ïÚç˘>*é\—IÇäc\Êù\Êdfh)\ÕL/e∫\—\Ê\Õ6Kù.\∆\nÅ\ÁQ\nΩã\⁄\ÎdÜ\Ã:ˆ\∆w_wÄO≠tx\‚\È3¢\·\Ôù\»\Ÿ\◊¥Dd•\ŒZ{uunÒ}®\÷&0\Ó´\◊˘ùo\·ì\ÁQ?·´ªãx\ÍJ€ÑÕùˇèû\·—ÆeßØ\ÿx\Ï+%\Ï*\‚\'	ãJ3ì	\ÁrÛä∂v%1o\ﬂ=ÜÚ}_\›\‡3K\»kr\ÎX\Îıe≠ü\ \ÃFóç\‹\Ë≤\Á-∑ç˝ú\÷\Í3ı˙¸\¬%	_˛+ø•+|bg¬ëÇŸÅgvr\Ó[œò1ñ7â£Öb	M\–¿NO±\'P\Ï=ˆªC\≈^_≥\”◊Ød˛íp¿©\ÃÒü=√óZy∂ò[\œ\”ÍãÇˇª´´3K?∫ˆEñ&ï„âû\·H¡g\√	\ﬂl\Á\Ô[ñT4\n<\ﬁ]ˆ\ŸsÅ\√u+\‹>ﬂ¶+\¬;]∆á$e∑=øéfQiñå«≤\—<üz<*+(,+\ÿhˆöΩÅ«æ@≥;\‘\ÏÛ}Òl|™oy∞cx6˙˚|\≈;bü[ÜBn≠Ñ\·\„=√ß\Î\È{ßç9Z©M~∏\ŸX¯K6ìÙ\≈\≈ø≈ßtë˚\'ãú\ ,wØ•8≠(\róàígç6\›N∆≠Cw\’\"º-\ﬂRÅ;⁄îr\√G\\\r¯æ\œH≠Lc\…sÉ±ñ<∑k1∆êZ\·äÂ±Ñ\Ê,K\⁄g	Ms+\◊G4\Ï4ø7ö˙pS¯ñ>v.\Âx\œP.ke<O\—\Î\Ê¨\◊[å(≈üé\≈5V\‡oZ^O\r®áR\√˚66\Ê\◊\‘\ÿ\»\‘wrë\√\Z\Â\Ôå}\Z˝úáÆ5w\◊3™c1ïëµuxûG!)êuÖì\œ-ÚˆXq\œh≤\›Q\Õ\Z«ùn∞}~E˙æ\œ\‘\ƒÇ\‡‚üì¡l	íÉ1c\∆X÷çe\Œ8D≥¨<\ﬁ?YeW\Ë\”\·◊ñz,+ô*Dõá©RÖ1qX`˛Lùµ≥M>;^\‡Më¶ùxV<\Ó>Ωb\Œ\◊\€9rá™O\ {\ !„æ¢\Í)\"\Õ]Çícx¨HFl¨•\ÿî µàb)!\–	\œ<9\√GGBéñÇÌÄæ\”3|hπ\«]\“\·g%\«Û<¶\∆Gâ¢ÀØ,\€\"9A)A©\Õ\›ˇì\’>_\Ô\ÂîF†6R£\ﬂ3tõJiÇX1Tç©Uò?\”¿Æ∂¯\ÍdÅ˚ˆ\\\Õg{|\€f©\'C¸;#7ñ\ﬁy=˛¢ëqR,a\—aù∞∂dP\Œ\Á¿Å˝h\ÊO\◊—Åê|\¬0\‰¯já€ÜÇ\Ì,ò\n4(¯|\ﬂ\„∞\‰î\≈\“\‹Ë∞∂\ﬁbΩŸ¶\›\Ó\“\Ìı\ÈıS\“4\«Xás\"hOø\‰E)µùÖu+¸\—jJP∂†˝ébmπ\«\‰\ƒNˆ\Óûb~vï¥c–°al\◊0ÛMvh8¶Rnû\Z\Â\÷Ò*O∂R\”rÚw/ôów\r^aÛ\Í5°Pày\œ-7\‡{\Z•`\Ê˘	˚\÷wIä]j£U\ÊŒ¨2ù9Æ\n_8\ﬂ_çx6u¸A∑Ã∞rÄÇâI\ÊH2°Ä°@NÅ>EÑä≤ØÚﬂß\‡y¯ÅG\‡{¯æO\ÔPÇ\Œ*:ÕîÎÆøñ´\Ó\‡\']\≈˝˝M6\Z)Q‘£66\ƒ\√\Õø\‘\ÎR\Íuy.≥<\◊\È{J\‘=>Äï™j*–±B≤’ü\ÿ\\3∫gà,MÒ	\"0πå˛C&ãë¢¡˜Û\Ê|4p\œX\¬Òû°iÖ∂\⁄\⁄\Œ\—qõX\›:\⁄Z\‚∂\Ê6Kvk§((äP \'!\Â\›%üû¢˝˙ßà£ê¯GJ∂\”p\Ìµx˙ôdYJRô©ø\„öπ\rQ\«W\ZÛO˘	<˛\È\ÂˆO‘µïè`P(]Am≠\◊\n¨u,/ùeﬂæ=hO\”\Ì¶[i	\∆\Zú¿\ \“*\'\»_îMì[\„R\È=4\›\Ì_EGm˛\Ô†(nÙYVD—¶Äuév´M≥πA•2¿\Í\⁄:\"A∞\÷\"\∆r\‚\‘\0”∫¨3¸á|\„\«f¨<ˇ\›\Êz¯%ÙåBÇÚ-KÛkTáã\‰˘)J\Â2O?yö∏\‡áùV\ÁÑ	\ÏeÑyqb \∆Q¯aqA\€\◊\\Æ/≤ûcafÄı°\rl\'ûüa\«dÄçı6\‹Kwú\n†22ÒÛû®áÆ\∆\‚\Àh\ÍZ©BÕÄÇ¨b2°Xä\È˜2îV\ÏòLàü˙Bá~3\Âu∏ª\”\À\Êπ=¨ål†¯3â/Z7pOÖEK&\”dmü ÚÒ}M∑ù2TO∞π0{¢\…núT∂îúF”ÅèØØ-~|˚¿≠éL‹§\‡≠\0\"$J\ÎëM\¬\‚\Ê.\ÿL\„(OCQPdu)%‹ãR”ØV\0\—ˆö´KOåééñçã?¸rkïí\√(nL*FiƒÅ\…ÙfV\œ\Ì{§≠ œ∫v‹ó∂t âØ>øqn˛\‰E˚\À\Í\Ë\‘ı8˘ß ?,:î>É≥û&\Ô*ıáç˙\¬\'^mWÄÆçN~\r¯Ö®\ËîπÛ&≠Å¨ÌâµjE9˘ôFcqˆ•åº\ÏuØ2:q\»˝ÄyÉÄ“¢\ƒ\Ê\nêN∞—òøˇ5\ÈÚÒ™\√S˘}≠Òt \n\Ágî\“J=\‰iˇ\Œs\Á\Œ,_\Ã¿•\‹wuµ∫˚\Á\–ˆàBç£d›â~ºªo,..v_\√`ÆòRi\◊?\‘GAΩQÅ\‡f5\ﬁ\◊çπßˇ∑}0`¿Ä0`¿Ä0`¿ˇ-˛^t:°Úd∂^\0\0\0\0IENDÆB`Ç',0,'C:\\Users\\usuario\\OneDrive\\Documentos\\NetBeansProjects\\tienda_con\\target\\classes\\producto\\carro-deportivo.png',1);
/*!40000 ALTER TABLE `producto` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `producto_factura`
--

DROP TABLE IF EXISTS `producto_factura`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `producto_factura` (
  `idproducto_factura` int NOT NULL AUTO_INCREMENT,
  `idproducto` int NOT NULL,
  `idfactura` int NOT NULL,
  `cantidad` int NOT NULL,
  `descuento` float NOT NULL,
  `totalventas` float NOT NULL,
  PRIMARY KEY (`idproducto_factura`),
  KEY `idfactura_idx` (`idfactura`),
  KEY `idproducto_idx` (`idproducto`),
  CONSTRAINT `idfactura` FOREIGN KEY (`idfactura`) REFERENCES `factura` (`idfactura`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `idproducto` FOREIGN KEY (`idproducto`) REFERENCES `producto` (`idproducto`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `producto_factura`
--

LOCK TABLES `producto_factura` WRITE;
/*!40000 ALTER TABLE `producto_factura` DISABLE KEYS */;
/*!40000 ALTER TABLE `producto_factura` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `proveedor`
--

DROP TABLE IF EXISTS `proveedor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `proveedor` (
  `idproveedor` int NOT NULL AUTO_INCREMENT,
  `tipodocumento` varchar(45) NOT NULL,
  `idsexo` int NOT NULL,
  `nombre` varchar(45) NOT NULL,
  `correo` varchar(30) NOT NULL,
  `telefono` varchar(45) NOT NULL,
  `direccion` varchar(45) NOT NULL,
  `tipodepersona` varchar(45) NOT NULL,
  `condicion` tinyint NOT NULL,
  `fechanacimiento` date NOT NULL,
  PRIMARY KEY (`idproveedor`),
  KEY `idsexo_idx` (`idsexo`),
  CONSTRAINT `idsexo` FOREIGN KEY (`idsexo`) REFERENCES `sexo` (`idsexo`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `proveedor`
--

LOCK TABLES `proveedor` WRITE;
/*!40000 ALTER TABLE `proveedor` DISABLE KEYS */;
INSERT INTO `proveedor` VALUES (9,'Pasaporte',3,'webin','sfdfsdfsdf','243431','dsfdfsdf','Persona juridica',0,'2023-10-03'),(10,'Nit',1,'123','123','1233','ad','Persona natural',0,'2023-10-10'),(11,'Pasaporte',3,'webiiin','sdfdf','3423423','ewwfwef','Persona natural',0,'2023-10-03'),(12,'Cedula de ciudadania',1,'fsdffsdfsdf','sadfsafs','242424','sadsd','Persona natural',1,'2023-10-01'),(13,'Nit',2,'bismar','safdasfdsf','3542354345','dasdsaf','Persona natural',1,'2023-10-01'),(15,'Pasaporte',1,'webiinnn','dasfdsdfa','5253535','dsfsdfsdfd','Persona juridica',1,'2023-10-01'),(16,'Cedula de ciudadania',1,'camilooo','sadsadafd','3232323','sadsf','Persona natural',1,'2023-10-01'),(17,'Cedula de ciudadania',1,'camilo marmolejo','camilo@gmail.com','3253534','dasdasfsad','Persona natural',1,'2023-11-01'),(18,'Cedula de ciudadania',3,'camilo','fsdfdsf','423432','eefdsfsdf','Persona natural',1,'2001-02-02'),(19,'Tarjeta de identidad',3,'camilo','fsdfdsf','423432','eefdsfsdf','Persona juridica',1,'2001-02-02'),(20,'Tarjeta de identidad',1,'123','123','1233','ad','Persona juridica',1,'2023-10-10'),(21,'Pasaporte',2,'webin','sfdfsdfsdf','243431','dsfdfsdf','Persona juridica',1,'2023-10-03'),(22,'Pasaporte',3,'webin','sfdfsdfsdf','243431','dsfdfsdf','Persona juridica',1,'2023-10-03'),(23,'Pasaporte',3,'BE,BARYAO','sfdfsdfsdf','243431','dsfdfsdf','Persona juridica',1,'2023-10-03');
/*!40000 ALTER TABLE `proveedor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sexo`
--

DROP TABLE IF EXISTS `sexo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sexo` (
  `idsexo` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(45) NOT NULL,
  `condicion` tinyint NOT NULL,
  PRIMARY KEY (`idsexo`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sexo`
--

LOCK TABLES `sexo` WRITE;
/*!40000 ALTER TABLE `sexo` DISABLE KEYS */;
INSERT INTO `sexo` VALUES (1,'Masculino',1),(2,'Femenino',1),(3,'Otros',1);
/*!40000 ALTER TABLE `sexo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usuario`
--

DROP TABLE IF EXISTS `usuario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `usuario` (
  `idusuario` int NOT NULL,
  `tipodocumento` varchar(45) NOT NULL,
  `nombre` varchar(45) NOT NULL,
  `idsexo` int NOT NULL,
  `idcargo` int NOT NULL,
  `telefono` varchar(45) NOT NULL,
  `correo` varchar(45) NOT NULL,
  `direccion` varchar(45) NOT NULL,
  `login` varchar(45) NOT NULL,
  `clave` varchar(25) NOT NULL,
  `condicion` tinyint NOT NULL,
  `fechanacimiento` date NOT NULL,
  PRIMARY KEY (`idusuario`),
  KEY `idsex_idx` (`idsexo`),
  KEY `idcar_idx` (`idcargo`),
  CONSTRAINT `idcar` FOREIGN KEY (`idcargo`) REFERENCES `cargo` (`idcargo`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `idsex` FOREIGN KEY (`idsexo`) REFERENCES `sexo` (`idsexo`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usuario`
--

LOCK TABLES `usuario` WRITE;
/*!40000 ALTER TABLE `usuario` DISABLE KEYS */;
INSERT INTO `usuario` VALUES (1,'Cedula','Juan',1,1,'11','ae@gmail.com','as','123','123',0,'2005-12-20'),(12,'Cedula','webin',3,2,'23423423','ebinefdsf','wefsdfsdf','1234','1234',0,'2020-09-10'),(111,'Cedula','Camilo',2,1,'111','1','1','123','123',1,'2023-10-03'),(112,'','2233',1,2,'eeerrrr','ggfgfh','ghhh','hjgug','fcg',0,'2023-10-01'),(9898,'','19891',1,3,'89189','18901890','10890','113','123',0,'2023-10-05'),(83838,'Cedula','BEMBARAYO',2,1,'U9129U','IONOI','NIONIONIO','NIONOI','NOIIION',1,'2003-11-12'),(100392,'Cedula','camilo asa',1,2,'3254352351','camilo@gmail.com','zona sur','1234','1234',1,'2023-11-01'),(111222,'Pasaporte','Pepe',1,3,'12337','ghnjkl','vbnm,.','pepe','123',1,'2023-10-04'),(123999,'Pasaporte','Cesar',1,1,'12345','cesar@','ooj','123','123',1,'2023-10-17'),(123546456,'Pasaporte','mulatico',3,3,'5345435','mulaticooo','dsdfdsf','9923','1234',1,'2023-10-01'),(1234567676,'Tarjeta identidad','Yeyy',1,2,'43454353','yey@hotmail.com','barrio san judas','987','765',1,'2001-08-13');
/*!40000 ALTER TABLE `usuario` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'tienda_con'
--
/*!50003 DROP PROCEDURE IF EXISTS `Actualizar_Cliente` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `Actualizar_Cliente`(in ced int,in tipodo varchar(45), in nom varchar(45), in tele varchar(15), in corr varchar(45), in dire varchar(45), in fecha date, in sexo int)
BEGIN
update cliente set nombre = nom,tipodocumento=tipodo, telefono = tele, correo = corr, direccion = dire, fechanacimiento = fecha, idsexo = sexo where cedula = ced;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `Actualizar_Producto` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `Actualizar_Producto`(in idpro int, in nom varchar(45),in descrip varchar(45),in img longblob,in rut varchar(500))
BEGIN
update producto set nombre=nom,descripcion=descrip,imagen=img,ruta=rut where idproducto = idpro;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `Actualizar_Proveedor` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `Actualizar_Proveedor`(in ced int,in tipodocu varchar (45), in nom varchar(45), in tele varchar(45), in corr varchar(30), in dire varchar(45), in fecha date, in sexo int,in tipoper varchar(45))
BEGIN
update proveedor set nombre = nom,tipodocumento=tipodocu, telefono = tele, correo = corr, direccion = dire, fechanacimiento = fecha, idsexo = sexo,tipodepersona=tipoper where idproveedor = ced;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `Actualizar_Usuario` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `Actualizar_Usuario`(in ced int, in nom varchar(45), in tele varchar(45), in corr varchar(45), in dire varchar(45), in fecha date,in clav varchar(200), in sexo int, in cargo int)
BEGIN
update usuario set nombre = nom, telefono = tele, correo = corr, direccion = dire, fechanacimiento = fecha, idsexo = sexo, idcargo = cargo, clave = clav where idusuario = ced;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `BuscarRegistro` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `BuscarRegistro`(in valor int)
BEGIN
select * from usuario where idusuario = valor;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `Buscar_Producto` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `Buscar_Producto`(in valor int)
BEGIN
select * from producto where idproducto = valor;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `Cliente_buscar` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `Cliente_buscar`(in valor int)
BEGIN
select * from cliente where cedula=valor;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `cli_ente` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `cli_ente`(in cela int,in tipodocu varchar(45), sex int, in nom varchar(45), in tele varchar(15),in corre varchar(45), in direc varchar(45),in fec date)
BEGIN
insert into cliente values ( cela,tipodocu, sex, nom, tele, corre,direc, '1',fec);
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `consultar_cliente` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `consultar_cliente`(in valor varchar(45))
BEGIN
select * from  mostrar_cliente where cedula  like concat('%',valor,'%') || tipodocumento like concat('%',valor,'%') || sexos like concat('%',valor,'%') || nombre like concat('%',valor,'%')|| telefono like concat('%',valor,'%')|| correo like concat('%',valor,'%')|| direccion like concat('%',valor,'%') || fechanacimiento like concat('%',valor,'%');
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `consultar_producto` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `consultar_producto`(in valor varchar(45))
BEGIN
select * from  mostrar_producto where Identificar  like concat('%',valor,'%') || NombreDelProducto like concat('%',valor,'%') || DescripcionDelProducto like concat('%',valor,'%') || PrecioDelProducto like concat('%',valor,'%'); 
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `consultar_proveedor` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `consultar_proveedor`(in valor varchar(45))
BEGIN
select * from  mostrar_proveedor where idproveedor  like concat('%',valor,'%') || tipodocumento like concat('%',valor,'%') || sexo like concat('%',valor,'%') || NombreProveedor like concat('%',valor,'%')|| correo like concat('%',valor,'%')|| telefono like concat('%',valor,'%')|| direccion like concat('%',valor,'%')|| tipodepersona like concat('%',valor,'%')|| fechanacimiento like concat('%',valor,'%');
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `consultar_usuario` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `consultar_usuario`(in valor varchar(45))
BEGIN
select * from mostrar_usuario where idiusu like concat('%',valor,'%') || sexoo like concat('%',valor,'%') || rol like concat('%',valor,'%') || nombredeusuario like concat('%',valor,'%') || telefono like concat('%',valor,'%') || gmailcorreo like concat('%',valor,'%') || direccion like concat('%',valor,'%') || fechadenacimiento like concat('%',valor,'%') || tipodedocumento like concat('%',valor,'%'); 
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `Eliminar_Cliente` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `Eliminar_Cliente`(in ced int)
BEGIN
update cliente set condicion='0' where cedula = ced;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `Eliminar_Producto` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `Eliminar_Producto`(in ced int)
BEGIN
update producto set condicion='0' where idproducto = ced;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `Eliminar_Proveedor` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `Eliminar_Proveedor`(in ced int)
BEGIN
update proveedor set condicion='0' where idproveedor = ced;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `Eliminar_Usuario` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `Eliminar_Usuario`(in ced int)
BEGIN
update usuario set condicion='0' where idusuario = ced;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `fact` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `fact`(in tigo varchar(45),in imto float , in cela int, in idusu int )
BEGIN
insert into factura (fecha, tipopago, impuesto, totalfactura, cedula, idusuario, condicion) values (current_date(), tigo,imto, '0', cela,idusu, '1');
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `factura_comp` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `factura_comp`(in idprovee int, in idusu int, in total_comp float,in descu float ,in tipo_go varchar(45) )
BEGIN
insert into fact_com (idproveedor,id_usuario,fecha, total_comp,descuento,tipode_pago,condicion) values (idprovee, idusu,current_date, total_comp, descu,tipo_go, '1');
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `Factu_ra` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `Factu_ra`(in ced int,in tipopa varchar(45),in idusu int)
BEGIN
insert into factura (fecha, tipopago, impuesto, totalfactura, cedula, idusuario, condicion) values (current_date(), tipopa, '0.19', totalfactura, ced, idusu, '1');
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `fact_com_pro` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `fact_com_pro`(in id_facom int, in idpr int, in canti_com int)
BEGIN
insert into fact_com_prod (idfact_com,idpro,cantidad_com,pre_uni,pre_total) values (id_facom, idpr,canti_com, '0', '0');
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `Insertar_Producto` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `Insertar_Producto`(in nom varchar(45),in descrip varchar(45), in img longblob,in rut varchar(500))
BEGIN
insert into producto(nombre,descripcion,cantidad,imagen,precio,condicion,ruta) values (nom,descrip,'0',img,'0','1',rut);
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `ins_pro_fact` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `ins_pro_fact`(in pro int, in fac int, in cant int, in descu float)
BEGIN
insert into producto_factura (idproducto, idfactura, cantidad, descuento, totalventas) values (current_date(), pro, fac, cant, descu, '0');
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `login` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `login`(in usu varchar(45), in contra varchar (25) )
BEGIN
select login,clave from usuario where login=usu && clave=contra && condicion='1';
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `new_producto` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `new_producto`(in nom varchar (45), in descrip varchar(45), in ima varchar (45) )
BEGIN
insert into producto (nombre, descripcion, cantidad,imagen, precio, condicion) values (nom,descrip,'0', ima, '0', '1');
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `new_usua` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `new_usua`(in idusu int,in tipodocu varchar(45), in nom varchar(45), in sex int,in idcar int, in tele varchar(45),in corre varchar (45), in direcc varchar(45), in log varchar(45), in cla varchar(25),in fechanaci date )
BEGIN
insert into usuario  values (idusu,tipodocu,nom,sex,idcar,tele,corre,direcc,log,cla, '1', fechanaci);
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `Proveedor_buscar` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `Proveedor_buscar`(in valor int)
BEGIN
select * from proveedor where idproveedor=valor;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `pro_veedor` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `pro_veedor`(in tipodocu varchar (45), in sex int,in  nom varchar(45), in corre varchar (30),in tel varchar(45), in direc varchar(45), in tipoper varchar(45), in fechanaci date)
BEGIN
insert into proveedor (tipodocumento,idsexo,nombre,correo,telefono,direccion,tipodepersona,condicion,fechanacimiento) values (tipodocu,sex,nom,corre,tel,direc,tipoper, '1', fechanaci);
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `Usuario_buscar` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `Usuario_buscar`(in valor int)
BEGIN
select * from usuario where idusuario=valor;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Final view structure for view `mostrar_cargo`
--

/*!50001 DROP VIEW IF EXISTS `mostrar_cargo`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `mostrar_cargo` AS select `cargo`.`idcargo` AS `idcargo`,`cargo`.`nombre` AS `nombre` from `cargo` where (0 <> '1') */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `mostrar_cliente`
--

/*!50001 DROP VIEW IF EXISTS `mostrar_cliente`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `mostrar_cliente` AS select `cliente`.`cedula` AS `cedula`,`cliente`.`tipodocumento` AS `tipodocumento`,`sexo`.`nombre` AS `sexos`,`cliente`.`nombre` AS `nombre`,`cliente`.`telefono` AS `telefono`,`cliente`.`correo` AS `correo`,`cliente`.`direccion` AS `direccion`,`cliente`.`fechanacimiento` AS `fechanacimiento` from (`cliente` join `sexo` on((`sexo`.`idsexo` = `cliente`.`idsexo`))) where (`cliente`.`condicion` = '1') */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `mostrar_producto`
--

/*!50001 DROP VIEW IF EXISTS `mostrar_producto`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `mostrar_producto` AS select `producto`.`idproducto` AS `Identificar`,`producto`.`nombre` AS `NombreDelProducto`,`producto`.`descripcion` AS `DescripcionDelProducto`,`producto`.`cantidad` AS `CantidadDelProducto`,`producto`.`imagen` AS `ImagenDelProducto`,`producto`.`precio` AS `PrecioDelProducto` from `producto` where (`producto`.`condicion` = '1') */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `mostrar_proveedor`
--

/*!50001 DROP VIEW IF EXISTS `mostrar_proveedor`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `mostrar_proveedor` AS select `proveedor`.`idproveedor` AS `idproveedor`,`proveedor`.`tipodocumento` AS `tipodocumento`,`sexo`.`nombre` AS `sexo`,`proveedor`.`nombre` AS `NombreProveedor`,`proveedor`.`correo` AS `correo`,`proveedor`.`telefono` AS `telefono`,`proveedor`.`direccion` AS `direccion`,`proveedor`.`tipodepersona` AS `tipodepersona`,`proveedor`.`fechanacimiento` AS `fechanacimiento` from (`proveedor` join `sexo` on((`sexo`.`idsexo` = `proveedor`.`idsexo`))) where (`proveedor`.`condicion` = '1') */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `mostrar_sexo`
--

/*!50001 DROP VIEW IF EXISTS `mostrar_sexo`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `mostrar_sexo` AS select `sexo`.`idsexo` AS `idsexo`,`sexo`.`nombre` AS `nombre` from `sexo` where (`sexo`.`condicion` = '1') */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `mostrar_usuario`
--

/*!50001 DROP VIEW IF EXISTS `mostrar_usuario`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `mostrar_usuario` AS select `usuario`.`idusuario` AS `idiusu`,`sexo`.`nombre` AS `sexoo`,`cargo`.`nombre` AS `rol`,`usuario`.`nombre` AS `nombredeusuario`,`usuario`.`telefono` AS `telefono`,`usuario`.`correo` AS `gmailcorreo`,`usuario`.`direccion` AS `direccion`,`usuario`.`fechanacimiento` AS `fechadenacimiento`,`usuario`.`tipodocumento` AS `tipodedocumento` from ((`usuario` join `sexo` on((`sexo`.`idsexo` = `usuario`.`idsexo`))) join `cargo` on((`usuario`.`idcargo` = `cargo`.`idcargo`))) where (`usuario`.`condicion` = '1') */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `pato`
--

/*!50001 DROP VIEW IF EXISTS `pato`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `pato` AS select `producto`.`nombre` AS `Nombre`,`factura`.`idfactura` AS `Factura`,`producto`.`idproducto` AS `Producto`,`producto`.`cantidad` AS `Cantidad`,`producto_factura`.`descuento` AS `Descuento`,`producto_factura`.`totalventas` AS `Total` from ((`producto` join `producto_factura` on((`producto`.`idproducto` = `producto_factura`.`idproducto_factura`))) join `factura` on((`factura`.`idfactura` = `producto_factura`.`idfactura`))) */;
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

-- Dump completed on 2023-11-17 12:19:49
