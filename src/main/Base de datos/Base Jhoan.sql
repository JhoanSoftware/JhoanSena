CREATE DATABASE  IF NOT EXISTS `tienda_con` /*!40100 DEFAULT CHARACTER SET utf8mb3 */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `tienda_con`;
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
INSERT INTO `cliente` VALUES (1,'',1,'hopnop','h','ihhiohioh','ndandop',0,'2005-12-01'),(123,'',1,'sdafsdfasd','1222312','sdASDSA','SDAFSDF',0,'2023-10-02'),(1223,'Tarjeta Identidad',1,'123','123','123','123',0,'2023-10-10'),(1234,'2',1,'webinnn','5435435','fgdgdg','ewff',0,'2000-08-07'),(8888,'Cedula',2,'camilooo','4356466','dsfddfdf','dsfdfsdfdf',1,'2023-11-05'),(9978,'Cedula',2,'camilooo','4356466','dsfddfdf','dsfdfsdfdf',1,'2023-11-05'),(9988,'Cedula',2,'camilooo','4356466','dsfddfdf','dsfdfsdfdf',1,'2023-11-05'),(9999,'Cedula',2,'camilooo','4356466','dsfddfdf','dsfdfsdfdf',1,'2023-11-05'),(65757,'',1,'ccggf','656565','fgcfgcfg','cvvbv',0,'2022-03-03'),(88888,'Cedula',2,'camilooo','4356466','dsfddfdf','dsfdfsdfdf',1,'2023-11-05'),(123454,'Tarjeta Identidad',1,'webin','232424','ssdfdsfd@gamil.com','fsdfsdf',1,'2023-10-01'),(123456,'Tarjeta Identidad',1,'webiinnnn','3242343','dfdsfd','fdsfdsf',1,'2023-11-01'),(765432,'Cedula',2,'camilooo','4356466','dsfddfdf','dsfdfsdfdf',1,'2023-11-05'),(996765,'Cedula',2,'camilooo','4356466','dsfddfdf','dsfdfsdfdf',1,'2023-11-05'),(997876,'Cedula',2,'camilooo','4356466','dsfddfdf','dsfdfsdfdf',1,'2023-11-05'),(997878,'Cedula',1,'camilooo','4356466','dsfddfdf','dsfdfsdfdf',1,'2023-11-05'),(1223456,'Tarjeta Identidad',1,'webin','123456','123','123',0,'2023-10-10'),(9999999,'Cedula',2,'camilooo','4356466','dsfddfdf','dsfdfsdfdf',0,'2023-11-05'),(123456789,'Pasaporte',3,'mulatico','214342','efsdfsdfdsfsd','dsdfdfsdfdsf',0,'2023-10-01');
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
  `numero_comprobante` int NOT NULL,
  `impuesto` float NOT NULL,
  PRIMARY KEY (`idfact_com`),
  KEY `idproveedor` (`idproveedor`),
  KEY `idusuario_idx` (`id_usuario`),
  KEY `idusuario` (`id_usuario`),
  CONSTRAINT `idproveedor` FOREIGN KEY (`idproveedor`) REFERENCES `proveedor` (`idproveedor`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `usuario` FOREIGN KEY (`id_usuario`) REFERENCES `usuario` (`idusuario`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=39 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fact_com`
--

LOCK TABLES `fact_com` WRITE;
/*!40000 ALTER TABLE `fact_com` DISABLE KEYS */;
INSERT INTO `fact_com` VALUES (31,25,1234567676,'2023-11-22',238001,0.2,'Transaccion ',1,0,0.19),(32,25,123546456,'2023-11-23',0,0,'Efectivo',1,0,0.19),(35,21,83838,'2023-11-24',0,0,'Transaccion ',1,0,0.19),(36,20,111222,'2023-11-24',0,0,'Efectivo',1,0,0.19),(37,15,1234567676,'2023-11-28',0,0,'Seleccione....',1,0,0.19),(38,16,423432,'2023-12-04',2380,0,'Efectivo',1,0,0.19);
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
  `pre_uni` float NOT NULL,
  `pre_total` float NOT NULL,
  PRIMARY KEY (`idfact_com_prod`),
  KEY `idpro_idx` (`idpro`),
  KEY `factura_com_idx` (`idfact_com`),
  CONSTRAINT `factura_com` FOREIGN KEY (`idfact_com`) REFERENCES `fact_com` (`idfact_com`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `idpro` FOREIGN KEY (`idpro`) REFERENCES `producto` (`idproducto`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fact_com_prod`
--

LOCK TABLES `fact_com_prod` WRITE;
/*!40000 ALTER TABLE `fact_com_prod` DISABLE KEYS */;
INSERT INTO `fact_com_prod` VALUES (1,31,23,1,1,1),(4,31,23,11,11,0),(5,31,25,111,111,0),(6,37,23,10,10000,100000),(7,37,23,10,10000,100000),(8,32,23,15,123456,1851840),(9,32,23,10,1002340,10023400),(10,32,23,10,1002340,10023400),(11,37,23,10,123456,1234560),(22,38,23,2,1000,2000),(23,31,23,2,100000,200000);
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
set new.pre_total= new.cantidad_com * new.pre_uni;
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
update producto inner join fact_com_prod on fact_com_prod.idpro = producto.idproducto set cantidad = cantidad + NEW.cantidad_com, precio = new.pre_uni+ (new.pre_uni*0.20) where idpro = producto.idproducto;
set @suma :=(select sum(pre_total) from fact_com_prod where idfact_com= new.idfact_com);
update fact_com f  set f.total_comp=@suma+(@suma*f.impuesto)where f.idfact_com = new.idfact_com;
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
  `numero_comprobante` int NOT NULL,
  PRIMARY KEY (`idfactura`),
  KEY `cedula_idx` (`cedula`),
  KEY `idusuario_idx` (`idusuario`),
  CONSTRAINT `cedula` FOREIGN KEY (`cedula`) REFERENCES `cliente` (`cedula`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `idusuario` FOREIGN KEY (`idusuario`) REFERENCES `usuario` (`idusuario`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `factura`
--

LOCK TABLES `factura` WRITE;
/*!40000 ALTER TABLE `factura` DISABLE KEYS */;
INSERT INTO `factura` VALUES (1,'2003-12-10','Efectivo',1,972000,123,12,1,1),(15,'2000-10-10','Efectivo',2,262443,1234,112,1,2),(16,'2023-12-13','1',0.19,0,8888,1,1,1),(17,'2023-12-13','Seleccione....',0.19,578340,8888,1,1,444);
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
-- Temporary view structure for view `mostrar_factura_compra`
--

DROP TABLE IF EXISTS `mostrar_factura_compra`;
/*!50001 DROP VIEW IF EXISTS `mostrar_factura_compra`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `mostrar_factura_compra` AS SELECT 
 1 AS `idfact_com`,
 1 AS `idproveedor`,
 1 AS `id_usuario`,
 1 AS `fecha`,
 1 AS `total_comp`,
 1 AS `descuento`,
 1 AS `tipode_pago`,
 1 AS `numero_comprobante`*/;
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
-- Temporary view structure for view `mostrar_venta`
--

DROP TABLE IF EXISTS `mostrar_venta`;
/*!50001 DROP VIEW IF EXISTS `mostrar_venta`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `mostrar_venta` AS SELECT 
 1 AS `idfactura`,
 1 AS `fecha`,
 1 AS `tipopago`,
 1 AS `impuesto`,
 1 AS `totalfactura`,
 1 AS `Cliente`,
 1 AS `Usuario`,
 1 AS `numero_comprobante`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `mostrardetallefacturacompra`
--

DROP TABLE IF EXISTS `mostrardetallefacturacompra`;
/*!50001 DROP VIEW IF EXISTS `mostrardetallefacturacompra`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `mostrardetallefacturacompra` AS SELECT 
 1 AS `idfact_com`,
 1 AS `nombre`,
 1 AS `cantidad_com`,
 1 AS `pre_uni`,
 1 AS `pre_total`*/;
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
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `producto`
--

LOCK TABLES `producto` WRITE;
/*!40000 ALTER TABLE `producto` DISABLE KEYS */;
INSERT INTO `producto` VALUES (22,'papita ass','Color Verde',0,_binary '‰PNG\r\n\Z\n\0\0\0\rIHDR\0\0\0@\0\0\0@\0\0\0ªiq\Ş\0\0\0sBIT|dˆ\0\0\0	pHYs\0\0\Ø\0\0\Øú\\¦r\0\0\0tEXtSoftware\0www.inkscape.org›\î<\Z\0\0\Z\ÄIDATxœÍ›wtTÕ·\Ç?÷NI&…ôIH#!Ğ«¦ŠR|\"Å†ğ³wÅŠØ¢‚‚‚\"A@\éJ‘\ÒR ô:“™¹ï›I2Ì„¢ü\Şz{­Y+9wŸ²¿\çœ}v9G\à¿O^@\ĞB7À	ph\â©*€2 ­\é—\0Šÿ\Æx×©\'°H$k?;{G£›§·\Ñ\Í\Ó\Ûhg\ï`l‹H>zü7*\ÜÅ¶\Ús\Ù\È3\r@‡ Pº÷D§®1ø…\â«‡§\Õ\ÊJŠ\É\ÍH!73Ô„œ=~Pº–\ÙzŒiÀ7ÀJ \ênún\0\à,\æ!/k\"¢c9i:F\Ç\ÓÇ¯ÍŠµ\ÕUT*5¶vöVyŠó¯qd\ïöı²AJ¹t\Î4\Ş\n`ğ1ò¶ù\Çôo\09À»€›B©”FMš.Lûa\ÍL:m\ÉÎğ÷	’/œ!\ïjEy9T—›\ÛFc‡³«;‚B‹Š&,*š\îı›­–¬\Ô$6®ü„}[”z½\0\\^\0¾ŒÿB–;¦P\à$ 	‚(›>[\Úr:C:§•\çi¥?2+¤·Vo”™(©m5ûZe£‘\\ü%Ï\á’ox´\ä\ØI²wv·\àDQŠ¼§—ôşº­\Ím\Ï\ÓJ¿œJ—\ÆN)	‚`\â=„üAş\É\n˜|\r8‡Fvc\Ñ\ÒÏˆº§7\0¥%ü²ö+¶¬ıŠ\ê\ny†m\è\Ø=€\è>tˆ\ê[‡`\ìİ­6l4\è)\ÉN¥ -kIgI=ş¹,ü\âF\ÃÅƒ;ñ\r\èHhd7\0R/\ã\Ã\çH)\Ï\n@5ğ8°ñ¿€,‘—0k\Ñ+(”J\Z\êjùşóøi\Ígh\ë\ëP(Ut<®#&\Ò{(J•ÍŒÉŒ\n\Ó/\ãÑ gÙ„.hkª\Øv&\'WDƒ^Ïš_\ç‡/?B’$šÆ¸˜\Û\Ü·€\ZXLurq•^ûr½\Ğs\à0\0\ì\Ù\ÎòWQRp\rµÆ\Øñ\Òw\êœ¼d\åWWQ\Ê\Ş\Ï^B¯­¿ù@‘aO¼Š«_G«\ß\rúF\Î\îü†š*\Æ=¶ˆ\Æ\Ì3\ä$cò\ìù‚À©Cûy}şcue¹ü\Ìtw\05°\r¸\×Ë¯ƒô\É\Æ=‚pÚ†z>yùYvoüAˆ\Z6‘Qß¦§os\Åú\ê\n\Ö-O~Ê…\Û\èœ¼ü˜½b.~·\äı\ê‘\ä§^¤\×Àá¼´ü\\=½\È\ÉH\å™G‹òD`0[€p+\0D`05 4‚\å›ö\à\á\íKAn6‹Hvj\"\î>L~mA=šU¬«(e\í\Âq¦_fpl(/\Ì\Z~Ó¾\Ùq’Ÿö\Ã\ÅÇŸ\Ù_\í\ÅÉ»ıMù3ù\åµ9e&\á\æ\åÃ²vÑ…\â‚<~`”173Í´\æ&\Û\áV\0,òğ\í ­\ŞuTğğö%39g¦¥¬¸\Ğ\ŞÃ˜ôú*¥\Öz\æÅ†²\î\é\ØÚ¨\08v>“\Ş]Q)fuŒ’\ÄSlaóó8{w`öÊ½8{w¸\é\àôºv´˜³;¿Ç¡3\ï}»™\è>(.\Ècnü\0cqÁ5“\ŞZ\ÔVŠ¶>\0Sœİ¤[¾ş$_8\Ã\Â)#©*/¥\Ç\ÄYL~c\r6\Z³J7ş\×\ã‰<ò\Ê\Òr‹7°‹Y=A\Ù7œœü2\Î\'¤‘ö\ç>\"‡Œ\Ã\ÆÎ±\ÍŠ\n%\áq÷v\âw~ß±™\è\Şq‡G\Ñ{\È(\áÀ¶F¶¡/ŒlR\ß6\0!‚ \ìD\Ñ\æ5?	Q\İ{’—s…SFRSYÆ YKı\ä;‚x\Û\Â¸8\Úq\äl³\Æ÷!\Ô\ß\ÃR A`T¿²òJ9w1…\Ô\ã{‰<;\Ş\ÖÔ±{vN®¤\ÛË±}»\é?b,¡\á„Dtl\ß$£-@\é\í\0`R A_\Ìı<FUEOLFi\á5ú<ğ#¼iQ\éV\Â\Øk\ÔLK§\0ë¾€	„\Ñı:“yõ:\ç/¦ú\çoD\r¹õ-@h‹¡QGú©ƒüõû^FM™NpD´\rõB\Â\ß©X`-²\átS\0\æ¶\æıU\ß#Š\"¯\Í{„¤s\'ˆ2û^üA0W·#|koE¢ 0ªoIW\nI¸œFÆ©?ˆ\Z:•­\İM\ë\Å¤ôj™\çOPp5‡Ác\'Ñ½\Ï@\í\Ûi,¿^\ì\\\Î\ß\07v¢¨yq\Å&üÙ±~\r›V}‚‹_3–oA©67jn&|u•ÒŒ_P¨A2˜•iuz$IB!¶l)…(26.’\Ë\\JH&ó\ÔD€\ÊV\Ó&\0‚ \Òs	¿o!ù\ì	üƒ	\êFH\ç®ÂŸ¾\èƒl\Å6´À+Àˆ^\ãg0{\î”±ø‘	%xdù/¸ø˜1\×U”²vA<i—\Êwo>\Ô,üöC—˜ú\Â:\âb‚ñrk\'wf\çŠ[Ï™`4\ÒX•€®QÏœ77²\í\Ğ%\âD¢P˜ƒ0¦$\çS®qùr\nÎ®øw\í\İ&\0\0Jµ\r¾\á\Ñ\\Ø³‘\'2ş\á9t\èBÑµ\\\Ò/\ÚÀ!k-\Ö„y\n¥Š<|µô\Z\êj\è=\å	ü\"b,…ouÎ¯{ó!l\Ô-³Q@u­–‚\ë-n»\Â\Ö	A¥Ai\ßrlV\Ö4•WJAI%u\rÙ¨•|÷\æC,[4·&#b°à¹‘ºõ¡{üCT–•òÃ—\Èf»B)ir\ÛÁ\ÜX¼\ß=şa\Şû|\r™‰<:¬6n,\Úv[‡vÍŒ·»\çS²‹ô2+S\Ú{ ¯-1++*«F©qs²hMW\ì\×Ü‹ñ¦\'8T_/\à“\É1À\Ï%\ã\î\å\Ã;O\Ïa\ï\æõ&Y?h½Ag{xv*M«>E’Œôh‘™ğ­g~PÓ²o=ó­\éF\á\á¼\\[\Îú­/òş\Ú\ßo*œg1:zñ\à»\ß\ã\Ú>\È*£»}\îŸ\Ë\Ñ\ï?aû÷«™³ø5¦\Î}\ÆÀl\0¦\Ğ8\é×¹;\ïl>Š›¾‚‰=B@´\åù½I¨5ò\ÌÜ‰¶ÿ\'´óHó\Şı½\áöbN¾\ÌZñk› T\å±lBœ\İ=\ØúwJ¥Š™#z\Z\Ó/Š\È\Ç\âY“˜\n=úAœm\ìİ¼F]\áƒfÜ–ğ?8\Ï\Ç\ëšu®´sÃ©\ËY\ë7‘V§\ç‰w\"1³ M\á%	¾zñ\n§\Í_Á·y4¾•\Åù|;oe×®X\ÈË°~#)+.\ä\Ïı¿p\ïı3L2Oƒ%8 óÀxœ\Ô‡~İ\È\ä[\n_Y\ÓÀ«+~eù‡É¸Ú²¼B‡`\ë\Æ7º¹l\Ë\Øvğ¯­\ÜÓ¦ğ_<?…	CºP[¯\ã\Ã\ïş Qo®øA`\é“ñ·BÌ˜©\0ß¿€¸Q\ãLŸF€¬<pwÿ\Ü|ü¨*-\"\å\Â\ßhœ	‰\íj&|\ßHo‹e\ï\ä`\ËÆ¥RTVMH‡ó¶2q\'v~1\Ô]=\İ\\6mt,\ÕuZ¦k9Q\Ú\à¥/w³é·³4\ê\r¼8{„U\0\Ö\í:Å·ó\ÆX\İÁ=£Pª8yx?’$\á\İ\ŞŸ†‚«9‘€§\0„÷\Äa§8sô$ÉˆW§aˆ\nß¿z“ü”ô\é\ìÉ§óûZ\İó1\á\í\Õ7Â¬L\Òk©\Í9iÁûø¤~¸:\É\İÖƒyâŸU¯<h&<À³†3ih7<8À¢\ï>\Ï\ÔQ÷´¹l\ì\éĞ¥\å%E¤\'^ Ç€a\ndı\'\"glğ\rÁV%pùœ<cŞú\0r\È	\à\Ñá¡¨•\æ\ÎÏ¿¡Gxòı_\0øl\Éd\Æ\ÆEZğx¹:ò\å÷\Ó\ÎŞ¶\ÍvDA`Ù¢	7\İÑ²,i	²Ö¥y[F‰4%1\ÜıCP\n“€_g\ËDŒ\0\ì9DYeY¹\Ò\Î\r•³¹\ï®\Õ\é\Ùò\Ç\Å6…ok\Ùÿº•Nğ\îÀ•T\Ù#ö\îdú*\"‡¸q÷A!@vF\Z¢Bm\Ú2\Ññ\ÄB\æ¼ñ#S_X‡Á(U¢\Ò—\î\Óq‰~\0¥[3\ï‚÷73\é\Ï|·\ë´Y7Sx­•¨‰T\ŞeIW\n\ïH1zE4\Ô@s\â*L<Q\Ä\Ş\Å]}-\å%\Ø8ø¡RY.÷\ØPw†ö\ê\Ä\Ó\Ó5;.F}µ¹§h(¸Œ¾®\Åİ7%\Ş]‰\Õ\\f¶\ç_~ Yx­NÏ´¿c\ÜÓ«I\ËiÉ…\ÚöÃµ\ç,³“\äLR.ñO­\âñ·7a”\Ì<\Ûf0ex•\Åùœ\Ùñ\0\Î>ş\0\\/*À\Õ\Ã\Ë\ä\Ñz(µ­‚(RV\\ˆ$I(m]¬\Æ\Ê\Ô*‘õo?lQ^—{Ê¢,&¼=Û—=\Öü¿ÅoŒZI\ï.\ÔkÍ¬\ÂÆª|ŒºZô5- ø¸\â\ç\éL·0?«®µ(\ïİ‰\ÍZ¼^•­¢¨ ¶ªR\æE\Ô66FmCƒ£p0…ª+*LP¢7H7¶ıóh·³\ç_˜5œg¦2;eteY\\ÿk’¡\ÅIòpq`ßŠyh\îÀµ½µ\Õ-™\Æ\ŞÁ¨mhp4[\çZV®€€Á\Ò13%,H«\ÓSQm=\î\'\n\Ï\Ú+YÈo\"QTX¿\Ôh\ëª0ˆrÃ’d¤¡Î‚\0]CùÿMşü\ÄE_[œm	£3‘ Zzx\Öx­ñI’\Ôf»\0Úº\Z4ö-\Şf}m\0T‹@®¡\ÉhÄ ”\Ï\ÛÆ†Rj«e´Ä¦\0\Å\Æ\ÃWh\Ô)\ÏO³\0Á\Zµ¥ğ\ê\Zt<ğŸµ¼ıõ>3~‡ 8\\b¦›ù§.\ç\Ğ\ëá¹”–\×\\&*mq¹gv\í\ï1ş\Å/v3óµ\Ğ5\ê-Æ¢o\ÔbhÔ¡±—\ãŠFƒV«0P,Ô–—\à\è%ŸåºšBj+d4‡ş\ÏKx…søbÏ¬<…V§§</]½¼j\Ô*%_¿:•-\Ín¶ğZd¡ğ²òJI\Ì,à¯‹Yhuò`Q‰\Ú-¥ƒ;\ns3\ïÁ\Ói\ä—Tr&\éjs™\Ò\Ñ¥ƒ6\î¡Ğ¤+k\Z8z.ƒ„ô|ŠJ«-\0¨.‘µ¿»§|¤–]/6m‡%\Ä^\Ï\Í 0¦NnT––P]’CmUö.\Ìúr7\ß\Î\Ëñ\Ë)<»ò\Ë\æö¢<?\ß\Ô\ZGl\Ô\Êæ˜€i\Ù%‰÷³\Øó‘Á>lùxş\Ş.\Íu$£òó›Phœ\Ì4ş³†3(6„>][ò…ºò\\\Ê\Ïnùšö´³£†­Ï¡¦NKoÎ§^3\ë³øJ2\0¡\á\0\äf¦™>¥‰\È\×N¸›@p´s«)I ¼P6v\ì]<˜ùùN<\Â8~¹%kN£kl¤<?£y%˜\è\ãõ\ÑŒ¼7»cûX÷Ó£‚},\Ì[Iß€¾ºÈ‚·µğ&j¬\ÊG2š/u/WG‚\Û7eŒo8ÁJ²S(73\Õô)].\ä%Ÿ ¬¿œi©\Ìû‹’‚–À„ƒ›³V\ì\Æ# Œ\ÃXl¡ úª¤\"½qQ\Ş\Ü‚ÿ?¡¼\â\n–~»\0[Gy;\å^’í”ˆn²\ŞH½\Ôl#\\£€”uö\0ûŒDT()¿z„\Ò|#\Ú!Ü¼˜½r…N¨,Î¡8\ë•\ÅYH\Æ\Ğ\ê\Zô,Y¾ƒò*ó\ÓÁ>°¯…\ïpòR6Ÿm<bV&ª\ìh>\ZA\Ñr\ìI’\Ä[köY\rª\ä—T2\é¹o\È-,\'j\èúO_ˆ¡QÇ•3G\Ğ\Ø;Ğ¹{O\0N9 Gc\"ò=¼\äÒ«™T\åa\ç\ìFDÏÔ—gP]t™\ÂlóğÔ\Û\á\Ñğ\Ó\á+”U\ÖQ_UŠAß’^±\ã\"\ß\ï>Í›«k.S9µ\Ç!xNQ÷5gZ¹\ïüÄ»\ß\ì\çLRn\à¡C\Ñø\Å`Ø¯¹\ì\×\ãI|ù\ÓQ¼·\Ù\Ì\Î+®\à¾gÖ_F\×“™ò\Ö7ˆ\n%9O¢­«!ºWT*5Ws(Ê»ªD\Î›\ÔP ·³¯?\"c1t$İƒBm\Úy :)hmuª\íˆ2Ì¿‘••\Ëñ\ËElø#ƒ„¬rr‹kh\Ğ˜3º}º \Ø8ò\â\ì\Í\nÏ¨­B\Òk©\Ë=…¡A¶Ì”\n‘^]\é\ä\ÍØ¸–CW‹ Š\Ô^9’<a(\"‹gk\"\çW0\áÙ¯\É-,§\ëˆ\ÉLz}5b¸¿^Jaúe^¸„°¨höüü=§\0X\ì7‰\Õ8\å\ÃÜµ‡©¯®\àƒ{\Ã@\Ô\Ğs\æy¢9\ãh=P|%™{7qaÏT—¶hğŸ\Ã\É\ÅW\ßNV\ë\İ-\Ê/©dâ¢¯\É\Î/#j\è¦¼ù5¢B»¾ªœ\ã#P©T\ì<Ÿ­=\ëa\ÈL¾¤\0\îÎ™¤:\r¤\æ%Ÿ§øJ2\ZGgbã§¡\×VP˜¸+	zŒmj=ƒ\"1ÿ\rÛ•\Â#Ë·b\ï\Ò*\ëû_Öm-{ı½}\Úz†\ß÷\0¶vöd¦\\¦Iø\à˜g†¾8ş\Ã\ç\0ôŸñ\n¥š«g>¥²¤‚ì¤›gdDQAH\ï¡Ø»X¿Öš\Î$\åZ(FQm‡ªyB’$N\Ã\Zİ¨ğ&½¶ªyÙƒ\È=¾\áS”J\Ó\æ=ÀÆ¯–™>\Ó\Üo«6W—öıLEA.N\Şí‰¹÷A\Z\ë¯sõ\ïO\ÈJ\ÔS[uûSj”$ô\Ú:ôZsA\Òó¹\ÉZ¦,ş¶\ÙlD%.1\Óp\é>\r¥cK2\å­5¿1\í\Å\ïXµ\åO³6*«\ëo:ó\0G\×}L}U9c|¿€ òs²Ø¿u“„|³t•‰¯µW¡\ÚIFcœ®¾–ğ¸{ñ\íÍ¹\ë)¿v\nÿ¡\Ô\Öz\á,\"Šm;Æ—\ßJE\áU®T3$\Ú]}¶v\í•òQ\æ\ÒNÃ¹”k\íF\ßnM†’dDP¨õ\×\Î6+<G;N\\\Ê\æ\éiƒpsnqdllÔœ©òÀ\Æ;\ÄL\á™(?õ\";–>‰\ÆÎ·Vıˆ½ƒ#Ÿ½ş\é‰\äŒP³#r£$®@ª ˆî­\ŞG‡.=9·{\ÛŞÆ©#1ş„‘½­§\Â\0ª¯²v~<%9i\ê\æÃ‡õ\ÄF­\Â\Å/•,„Áh4K…7“ 4›·&j\Í{­¨‚¿\Ø\Å\ä—>¥È½7’ÑˆpC;z]+g¦(3‰%¬`\Üô\Ù\\:ı\'ó&I*:!\ß5,\Ó\ãõ@9H\ãòS/pÏ¸ø†G“—t–¢Œ³hkòP»AÀ\Õ\Ëú©`c\ç@\ä\ĞûH?q€Ä”l’s+\Zãƒ¾®µ];Jõm]’0Qk\Ş7Vÿ\ÆöC—¨R{;\Ğ\â¢ÀöwŸ$\ã\ÔAzÊ“¯„Á gñŒû¥%\"rf\Ø,Vo-\ÅzYSZ\ÜŞ¨o$¸\Ç ‚c’xp;¥9\'A’0ªú¢´pv·‚ZcO\çñ¤ı¹Ÿ”ô\Òóª\íCc+n$I’¨©\×Y\\¨\0(­¬\Å\ÆF\"\îqêƒğÈ³÷“\0}ı\'~Zw{>Z¿;{V¾û2\Çö\í¿€\'o¬c\r\0	8<’{é”­Ox7|Ã£	\é5„„ı¿Pšu•\Æ\rA¾¯ûoVBk\á_ø|\Ë\Ö\"~@\Z\Û\Ó7¿¤’ñO¯\æP\çÁÿƒ\×^V…?½õöñ*v,ß´¿€ N\Ü\Ç\Ç/=P	Œ\Êo\0š³€É™§>\à^<;\Ñ>ª	û·Pzeõ\×Áv\0\rµ\"n>\"Ö¶´ZcO\ä\àñ¤Ÿ8@rju¨\Ôv`4 IZ­u;O“[TÎ¸ş\á8·Ó€\ÑH~q9“Kv~ş\é<8\Şb\ÏK’\ÄÁ5\ï²ÿ‹W±\Õ\Øó\Î\×?\Ñ%¶\Ùi\É,z(\ŞĞ¨ÕŠÀ\àO\Ë\Ş:Î¹x\ÆÙ»=­>@;O_²\Îg\ã¦S_]“ooÂ†‰{ºöW\â\àl}5Ô”³vA<\ÅWR\è\åÍ²¹½,²L\ÚF\×+µø¹\ËA•\Âòz[vŒ«%µ‰ôºv,}†{\Ä\ÉÕ\×o§stŠòxlL?}iQøùò´Uº«²\ëixô³\í´óô¥\ì\Ú¾z¥×® *5ô|ÿ\ØùD¨\ê¢Da\åh}:\ÄuñfPWŸ6;•X·/k\×k-l{f$òó+S’•€O‡@–ı¸›A¡\äñä”‘†kY\é\n\àä«²m\Z0wtY\ÚÙ»=3>İ†G@5¥El{{>i\'\0\à\àM\Ç~¯\àGPg%~!\"¢Â¼ùš²b\ÖÎ§8+\å6º\Å\ê\Ì\ë\êkÙ¿òcNoşÉ¨§\çÀa¼ò\Ù:\\\Ü=\ÈJMæ©©÷\ZËŠòMw\ïC¾\Õ&\İ\ÉuùµÀ4;\'W&½¾š°>ò\å\çs»7ğ\Ûò©¯‘“\Î\âğ‹~¯ğ¡ø‡*ñ\í¨@\ã\Ø\ÒMõõB.\ì\İt\ë5öô˜8«y\æ\ëk\ê8´vg·}®®[=?ÿfóuùCûö°ô\é™R]U…€<ó3o%ü\0\0òvøxV\â~š¡¿Œ¨PRU’Ï¡5K9¿g#½Ü§\Æ9°‰x„\Ç\'47_W/N\î P\Ü^·µU)şM\â›\É>ûõe¢È±“˜ÿ\Ê{xú¶§N\ÛÈ²·^fßºOMÎ/Aİ–\İşO’=	\ïH\âÿó	ş]zPQx•?7,\çÌõ\èµ\Ílüpj\ßG¯\îØ»u\Â\É;_O4ö6(” T\Ê_mY1U%…”\æ$Q’}–²\ì\Ã4Tf`\ï\è\Ä\ÈIS¹ÿ±\'iL½^\âĞ‘c¬}ói\n2A~F÷8p\ë\åõ/\0FV}A f\Ìt\ÍZ\Ò|‘²¡º’Ô£¿’|p+\É\'a4X\Æ\ê\Í!ª\0\É\"\ĞickG¯Á\Ã~\ßô>…Ê†\ë\rF’\Ò2Ùºb)öl4\Íú_\È\Ê\Îú=™›õ}§Z‘ˆ¼Ï–\n¥’®#\ï§ß´…x5\å\ãAJ\ä\'¡4\ã…©\É\ËH¦²´„\Ú\êJó\ÆD>~ø‡„Ò‰˜>\é>`¥†\n­‘\n‘\Ô\ÄnøœKû~\Æh0€\Î{ù9\Ï?Š>Ü‡“.À³Àü¦¿ñ\íÔ\è{§1pl›Ô¢„TWF=ö\Øh4`$ôF¨\×K4\Z%*\nrI:¼‹‹¿m\"?õ’©z9ğ9ò“\Ú\n«\Ü&\İÍ§³´<mƒ¹µ\ïH\Ç{\àƒ»\î!8º[·ª¯p=\'ƒ\ë9\é\ä¥\\ \ë\ì©,/»õSõ\Ï*\ägrÿo)ùY\ëe\ä÷:\"m\ìŒn^FG7/£]›§È¯\È?B\á\İuº›+ -ò@¾‰…ùóyÀ\å¨E^Ö¥È©º\Ö\Ï\ç-\ï\Í\ÜEú_0–ÁE¥;\Z\0\0\0\0IEND®B`‚',0,'C:\\Users\\usuario\\OneDrive\\Documentos\\NetBeansProjects\\tienda_con\\target\\classes\\producto\\papitas-fritas.png',0),(23,'Celular','Iphoneee',-31,_binary '‰PNG\r\n\Z\n\0\0\0\rIHDR\0\0\0@\0\0\0@\0\0\0ªiq\Ş\0\0\0sBIT|dˆ\0\0\0	pHYs\0\0»\0\0»:\ì\ã\â\0\0\0tEXtSoftware\0www.inkscape.org›\î<\Z\0\0\ÄIDATx\Ú\í›\ÛSW\Çu¦\Ó\éøĞ‡ö¥uú\Ğ\étú/\Ôi\ß\Z¼Lµ¨P„4‰‘*T\å&Š¶\"8¨\\ªTå¢”©Z²‰\\ \É!	/B\Æ \á¢ a·û[D&‹ƒt`\É\Ìw8ûûş\Ø=ç““³{v÷¬!b\Íb$LLÿR”!#\å!E,‘\àX28öbë¿¨NJ\Ê\Ù@V\äñ6|®C–\r€Hœ½ŒŸY‡\å \ÉÈŸ¯rûc$\Æ\à\à(D(:>\Û\ÂøC;‚÷)·m‹\Ğúx³ \0d–@BfÁ|•Ûº5\\\Ï\á„\Ñ1lGF‹u°=Ÿ ga½ ³€µ\0x‚£={\"øª8qú+\Ø&ÿN\ì	\ç+w\îF|	<\ÈY1\0–F\0,\0p$wHx¬È¶”‚c²€\àô\Í\æıµb)\Ç\0\0\0`\0Ô”§±‰Qº:¥š$¹¡|~µõ&N»?Â‹G\é‚x*·õm\è4j\ÖwQº6šÌŠ·\0n°€¤\Ş4@tó_R\è/ Sò\Ç\í\"†Œùxó¾Y\Óm ¾0(ûªN\å*R*J\Ô\ëmúqˆ…\Éı¬\í\Ér=\Æ ©\åw\n@\Ù\Ù\Z\0ğ \ç«3²\Î\Şòj*–?0\ã5ıvL	\0B\ä6lU\0‘U\è\Î\å¹W€¬ºQœ\Ë÷\Ìx\Ò5\ëÀ@\Ç@©/¤\0\\:W«g\0\ä|­7ScÀ&DnmMMU•œQ|jVS=\0HVŸw¤ª½F\×K{œ%­A\ë_x£cx„Ÿ`ôrI&ˆ9»\Zl\Îuv£e­Ã€\Ñõq‡I¸\0`9€¢ö]©5\ÙC×•\Îg\\ƒ\Ö~d¥y0h[„•\Ã	õ\Ğ1ğ \çx•\Ò\á-\rsâ¥¡º•\Ç\èX\r@Po\è-µJ‰›Ö¤§O\ìB\Ä\ã8¤¹×•€B,Gs™\Z\Ã2+o‹9ªk9Q\ZBøÒ‘jm/{\È\r4\Ö\ã4ÏŒş¸ƒ7z\Õzd8Gs\é5€«\Ó\0¤e\'K\ÖJ	\Ê€«€¦kÙŒ\0’«µ\ë~6\ë2\Ø&6\Òmz\Ê\Ék$\è‚ØŠ\Ğ\ç\"oz@7¿·\Ì*õ\Î\í?D\Õs\âU^	=€_\ß\æ\0dƒ§šlb]—]„TZ¥ƒ\Ëj.§\0\ìÉ­ne\ZÀƒœ\Æ\ÊÓŒ\0$5†VŸ`°+j\Ë\Ğ\Ñu=¥\â‘pÀ®²ÿ•„l\İ«¥b\àA¸\Ú\èzT!R¹\ËcµtÁ\à\È\ê\ép\à:`Z\ŞÈ›].º¢«\í£ô\Ê¬\ëz)‘™\\tAlV\ë{F%\r=.º¸·^Vˆ®±O\å+œsGxR\ãšQÈ‘’3Fr`ôÌ,A<\È9§\éE\Éıs>^œp\Æ\Ş\îd-€}7¬˜\ÆS\n.\ÖMO‡•\ät˜a\Æux8ŒŸ\ä»1\Öh\ïR\â81@\Ê561i	/n\ê_0€\çCıÄ¡xÁ¸¸3t2O\é7\0¦¦ğ~ú·–ZcF\0mGg\İ/\à\núı@Dqsÿ™;V\í™;]:\Éu“\å½6»…P\Ş\×*µ–p»\Ù ²\Êöœlì¤¯1`wI«\nr\n\îı\Ó\Æ\0<È‘\ÙUCÀdœ\Ü9\È\ê\Ó`Xª\Û^ØŒĞµó¢!\Ïc\à\Ç\Ô:pYó•Ù”‹\Ğ1ğ ‡W÷`L\áBÚ\Î\Ò\ã€.pC$\0ÀD^C\İôm\è\ê zL$\ïqû\0~ş_MQU6\Ï|\nM¯P“3>|ÿD#lskƒ^\Ç@P†˜ö\Ép#¹_¼u©ßµ?8&k\0\ìM»\Ü\ÌtøF‰%&NP¨›s KE\İ\0\Ék\ÄG\'&\ÛAP†X¥Ö©\Â	\Â}¬¶\İô®ıÁ1ıÀÿ¬\0\0¶øD­U¬³´¢t}Ø¦\×|Wˆô¿9_ñb\ïõ\Îû\ä\ï¥b\àA\Î/Ù²¾^^¢f\è€¥K+JW¼p‰}\0¾?\ß8\0\Ï\ï|i\ã]\r9?\é¨w\0×™Ÿ\Ã; (C<È©O\ÌG˜†g\ËûY\Û6]@0&\0Ÿ5N¾¨§®\æ\Æl\"ó\Ì%0”!\äÜ‘\ä0Ø—U‡ù=\0_O‘!¶j\0À·=\á\Úg\Z\å\Ñ` cğù¿¯\ë¨w\0R\äºGS6‚2€ô \çoI.#\0 Y}\Ø`Ô«\×\Ú\r]X[-\ß^Dœ\Ógd˜õ\ä\ì£b\àA7\ë–s,Vhñrù]=©:p\0\0À>\0\ÂÄ“C±\ÉgmK)8f`Á„?8b\Ö ¼\ê\0l\Ù\Ö6óXÊ«\nÀ!aZ\ß\Üw \æ\0Ş±pr>mş¹{¦ñP~\ï°¬\'±tö \à\×°Re¿\\:»\êO¯„\åóÿæ±…\éİ¶{\ï\0\0\0\0IEND®B`‚',120000,'C:\\Users\\usuario\\OneDrive\\Documentos\\NetBeansProjects\\tienda_con\\target\\classes\\producto\\telefono-inteligente.png',1),(24,'22','Moto',0,_binary '‰PNG\r\n\Z\n\0\0\0\rIHDR\0\0\0@\0\0\0@\0\0\0ªiq\Ş\0\0\0sBIT|dˆ\0\0\0	pHYs\0\0\Ø\0\0\Øú\\¦r\0\0\0tEXtSoftware\0www.inkscape.org›\î<\Z\0\0	IDATxœ\í—}Œ\åWY\Ç?\çü\Ş\ï\Ë\Ü{gfgw^ö‚[–¢e\×h º\Ô±\Ù-JcM[Z\r!SÅˆü#ŠC›˜!Æ \Æô%\n(­ZÛ‚+Ú”JSú²\ì\Î\î¼\Ï\ÎÎ;w\î\ë\ï÷;\ç<ş1Ã”\İv\Û\İmQ\ï\'9¹79\ç÷ü\ç{\ßy0`À€0`À€øÿ„º\Ò\ç*£ã‡”ó*dü\n\'¬)E%\'oÿ½}ö\ì\Êúòª¸tö\í‹kMs%7Š_Î„?\êş5‘_\îK»\"vÍŠiXq³¹ø©H\Ã\\O¸§?\×lÎº\\›W\Ê\Ë\nP.OŒz¡º1P\êf+¼K‰ø‡¾¹!ñ\Ã7FšgS\Ç#}\ËI#ˆ% \Ä\Ñ2B*€VŠj\è¡DP\"x(*¢¦\ã\âšH3¬sFør+O§3%¾şv/sw­¯/|\ï\\€ò\è\Äm9ú\Ş-ÆºC¡¯eo%Q×•Bu0\Ïxº›óH\Ï2“ZŠQ@y´HRŒ©V+‹:.\Ï<5 ø¾¢\Û\Îy\Û;®Ek\Åúz“N§‹5“;ò^J»Ù£—[&›\Ë>\Õ]\Ã\Ü\×qrjv…P«¿\êö\İGZ­…úS\0¯V\Ê;\Zju[\ê\ÜD9\n\Ü\ë†ú]ÅcI@1¹wµ\Ë\'O¿ğ™UŒ\ì(\'!•Z€‰\É]\×ø\Ûş\å\ç$Ÿ…\Ó-~ıƒ7\áy\Z€Å…e\Ö\Ö\Z\ç9\Ñ\ïe\ÔÏµ¨/6\È2\Ë{k1\ÑÁıü\ã÷gec£»aŒ»½\ÑXøÚE€;¦sÇ®«j%\Ş:>¢~qj\×\Ô*\è(­·\æ™\åûk\ëL·:œnv8³\Ş\â\Ôz‹fšó\Ù#of\Î¾2·Â©¾¥^o\á0\Äõs)wş\Æ1\ßÛ¶µ´¸L½\Şx‘3\"\Â\Új›\Å\é\"c¹}ÿÿV,ñ\ä÷NI\à©²<ø\ÍFcºùš\nP”¼a’ƒå˜‚µüT\àƒ\ä\Ù\Ö\ÈÁº\Í¢Ä¨¤€Š#ˆ¼B‚Y®ó\È\ìY[8\ËJ7EŠ\Ê#Uª\Ãeª\Ãe*\ÕiÚ§\Ûë¼¤S\Î	‹³u–\æV¹¾²\ç-ø\Êw§¥\Û\í­õ­ı\Õf}ñŸ_3FG¦œ_\Ê~{8\â}•ğòù>*\ÑI‚Šc\æ\ædfh)\ÍL/eº\Ñ\æ\Í6K.\Æ\n\çQ\n½‹\Ú\ëd†\Ì:ö\Æw_w€O­tx\â\é3¢\á\ï\È\Ù\×´Dd¥\ÎZ{uunñ}¨\Ö&0\î«\×ùo\á“\çQ?á«»‹x\êJÛ„Íÿ\áÑ®e§¯\Øx\ì+%\ì*\â\'	‹J3“	\çróŠ¶v%1o\ß=†ò}_\İ\à3K\Èkr\ëX\ëõe­Ÿ\Ê\ÌF—\Ü\è²\ç-·ıœ\Ö\ê3õúü\Â%	ğ_ş+¿¥+|bgÂ‘‚Ùgvr\î[Ï˜1–7‰£…b	M\ĞÀNO±\'P\ì=ö»C\Å^_³\Ó×¯dş’pÀ©\ÌñŸ=Ã—Zy¶˜[\Ï\Óê‹‚ÿ»««3K?ºöE–&•ã‰\áHÁg\Ã	\ßl\ç\ï[–T4\n<\Ş]ö\Ùs\Ãu+\Ü>ß¦+\Â;]Æ‡$e·=¿fQi–ŒÇ²\Ñ<Ÿz<*+(,+\Øhöš½Ç¾@³;\Ô\ìó}ñl|ªoy°cx6úû|\Å;bŸ[†Bn­„\á\ã=Ã§\ë\é{§9Z©M~¸\ÙXøK6“ô\Åğ\Å¿Å§t‘û\'‹œ\Ê,w¯¥8­(\r—ˆ’g6\İNÆ­Cw\Õ\"¼-\ßR;Ú”r\ÃG\\\rø¾\ÏH­Lc\Ésƒ±–<·k1ÆZ\áŠå±„\æ,K\Úg	Ms+\×G4\ì4¿7šğúpSø–>v.\åx\ÏP.ke<O\Ñ\ë\æ¬\×[Œ(ÅŸ\Å5V\àoZ^O\r¨‡R\Ãû66\æ\×\Ô\Ø\È\Ôwr‘\Ã\Z\å\ïŒ}\Zıœ‡®5w\×3ªc1•‘µuxG!)u…“\Ï-òöXq\Ïh²\İQ\Í\ZÇn°}~Eú¾\Ï\Ô\Ä‚\àâŸ“Ál	’ƒ1c\ÆXÖe\Î8D³¬<\Ş?YeW\è\Ó\á×–z,+™*D›‡©R…1qX`şLµ³M>;^\àM‘¦xV<\î>½b\Î\×\Û9r‡ªO\Ê{\Ê!ã¾¢\ê)\"\Í]‚’cx¬HFl¬¥\Ø”Êµˆb)!\Ğ	\Ï<9\ÃGGB–‚í€¾\Ó3|h¹\Ç]\Ò\ág%\Çó<¦\ÆG‰¢Ë¯,\Û\"9A)A©\Í\İÿ“\Õ>_\ï\å”F 6R£\ß3t›Ji‚X1T©U˜?\ÓÀ®¶ø\êdûö\\\Íg{|\Ûf©\'Cü;#7–\Şy=ş¢‘qR,a\Ña°¶dP\Î\çÀıh\æO\×Ñ|\Â0\äøj‡Û†‚\í,˜\n4(ø|\ß\ã°\ä”\Å\Ò\Üè°¶\Şb½Ù¦\İ\î\Ò\íõ\éõS\Ò4\ÇX‡s\"hO¿\äE)µ…u+ü\ÑjJP¶ ıbm¹\Ç\ä\ÄNö\îb~v•´cĞ¡al\×0óMvh8¦Rn\Z\å\Öñ*O¶R\Óròw/™—w\r^aóğ\ê5¡Pˆy\Ï-7\à{\Z¥`\æù	û\ÖwIŠ]j£U\æÎ¬29®\n_8\ß_x6uüA·Ì°r€‚‰I\æH2¡€¡@N>E„Š²¯òß§\àyøG\à{ø¾O\ïP‚\Î*:Í”ë®¿–«\î\à\']\ÅııM6\Z)QÔ£66\Ä\Ã\Í¿\Ô\ëR\êuy.³<\×\é{J\Ô=>€•ªj*Ğ±B²ÕŸ\Ø\\3ºgˆ,Mñ	\"0¹ŒşC&‹‘¢Á÷ó\æ|4p\ÏX\Âñ¡i…¶\Ú\Ú\Î\Ñq›X\İ:\ÚZ\â¶\æ6Kvk¤((ŠP \'!\å\İ%Ÿ¢ıú§ˆ£øGJ¶\Óp\íµxú™dYJR™©¿\ãš¹\rQ\ÇW\ZóOù	<ş\é\åöOÔµ•`P(]Am­\×\n¬u,/eß¾=hO\Ó\í¦[i	\Æ\ZœÀ\Ê\Ò*\'\È_”M“[\ãR\é=4\İ\í_EGmş\ï (nôYVDÑ¦€uv«M³¹A¥2À\ê\Ú:\"A°\Ö\"\Ær\â\Ô\0Óº¬3ü‡|\ã\Çf¬<ÿ\İ\æzø%ôŒB‚ò-KókT‡‹\äù)J\å2O?yš¸\à‡V\ç„	\ìe„yqb \ÆQøaqA\Û\×\\®/²caf€õ¡\rl\'Ÿa\Çd€õ6\ÜKwœ\n 22ñó¨‡®\Æ\â\Ëh\êZ©BÍ€‚¬b2¡XŠ\é÷2”V\ì˜LˆŸúB‡~3\åu¸»\Ó\Ë\æ¹=¬Œl ø3‰/Z7pO…EK&\ÓdmŸ òñ}M·2TO°¹0{¢\ÉnœT¶”œFÓ¯¯-~|ûÀ­LÜ¤\à­\0\"$J\ë‘M\Â\â\æ.\ØL\ã(OğCQPdu)%Ü‹RÓ¯V\0\Ñöš«KOŒ–‹?ürk•’\Ã(nL*FiÄ\ÉôfV\Ï\í{¤­ ÏºvÜ—¶tÊ‰¯>¿qnş\äEû\Ë\ê\è\Ôõ8ù§ ?,:”>ƒ³&\ï*õ‡ú\Â\'^mğW€®N~\rø…¨\è”¹ó&­¬í‰µjE9ù™Fcqö¥Œ¼\ìu¯2:q\Èı€yƒ€Ò¢\Ä\æ\nN°Ñ˜¿ÿ5\éòñª\ÃSù}­ñt \n\çg”\ÒJ=\äiÿ\Îs\ç\Î,_\ÌÀ¥\Üwuµºû\ç\ĞöˆB£dİ‰~¼»o,..v_\Ã`®˜Ri\×?\ÔGA½Q\àf5\Ş\×¹§ÿ·}0`À€0`À€0`Àÿ-ş^t:¡òd¶^\0\0\0\0IEND®B`‚',0,'C:\\Users\\usuario\\OneDrive\\Documentos\\NetBeansProjects\\tienda_con\\target\\classes\\producto\\carro-deportivo.png',0),(25,'Carrro','Rojoo',69,_binary '‰PNG\r\n\Z\n\0\0\0\rIHDR\0\0\0@\0\0\0@\0\0\0ªiq\Ş\0\0\0sBIT|dˆ\0\0\0	pHYs\0\0\Ø\0\0\Øú\\¦r\0\0\0tEXtSoftware\0www.inkscape.org›\î<\Z\0\0	IDATxœ\í—}Œ\åWY\Ç?\çü\Ş\ï\Ë\Ü{gfgw^ö‚[–¢e\×h º\Ô±\Ù-JcM[Z\r!SÅˆü#ŠC›˜!Æ \Æô%\n(­ZÛ‚+Ú”JSú²\ì\Î\î¼\Ï\ÎÎ;w\î\ë\ï÷;\ç<ş1Ã”\İv\Û\İmQ\ï\'9¹79\ç÷ü\ç{\ßy0`À€0`À€øÿ„º\Ò\ç*£ã‡”ó*dü\n\'¬)E%\'oÿ½}ö\ì\Êúòª¸tö\í‹kMs%7Š_Î„?\êş5‘_\îK»\"vÍŠiXq³¹ø©H\Ã\\O¸§?\×lÎº\\›W\Ê\Ë\nP.OŒz¡º1P\êf+¼K‰ø‡¾¹!ñ\Ã7FšgS\Ç#}\ËI#ˆ% \Ä\Ñ2B*€VŠj\è¡DP\"x(*¢¦\ã\âšH3¬sFør+O§3%¾şv/sw­¯/|\ï\\€ò\è\Äm9ú\Ş-ÆºC¡¯eo%Q×•Bu0\Ïxº›óH\Ï2“ZŠQ@y´HRŒ©V+‹:.\Ï<5 ø¾¢\Û\Îy\Û;®Ek\Åúz“N§‹5“;ò^J»Ù£—[&›\Ë>\Õ]\Ã\Ü\×qrjv…P«¿\êö\İGZ­…úS\0¯V\Ê;\Zju[\ê\ÜD9\n\Ü\ë†ú]ÅcI@1¹wµ\Ë\'O¿ğ™UŒ\ì(\'!•Z€‰\É]\×ø\Ûş\å\ç$Ÿ…\Ó-~ıƒ7\áy\Z€Å…e\Ö\Ö\Z\ç9\Ñ\ïe\ÔÏµ¨/6\È2\Ë{k1\ÑÁıü\ã÷gec£»aŒ»½\ÑXøÚE€;¦sÇ®«j%\Ş:>¢~qj\×\Ô*\è(­·\æ™\åûk\ëL·:œnv8³\Ş\â\Ôz‹fšó\Ù#of\Î¾2·Â©¾¥^o\á0\Äõs)wş\Æ1\ßÛ¶µ´¸L½\Şx‘3\"\Â\Új›\Å\é\"c¹}ÿÿV,ñ\ä÷NI\à©²<ø\ÍFcºùš\nP”¼a’ƒå˜‚µüT\àƒ\ä\Ù\Ö\ÈÁº\Í¢Ä¨¤€Š#ˆ¼B‚Y®ó\È\ìY[8\ËJ7EŠ\Ê#Uª\Ãeª\Ãe*\ÕiÚ§\Ûë¼¤S\Î	‹³u–\æV¹¾²\ç-ø\Êw§¥\Û\í­õ­ı\Õf}ñŸ_3FG¦œ_\Ê~{8\â}•ğòù>*\ÑI‚Šc\æ\ædfh)\ÍL/eº\Ñ\æ\Í6K.\Æ\n\çQ\n½‹\Ú\ëd†\Ì:ö\Æw_w€O­tx\â\é3¢\á\ï\È\Ù\×´Dd¥\ÎZ{uunñ}¨\Ö&0\î«\×ùo\á“\çQ?á«»‹x\êJÛ„Íÿ\áÑ®e§¯\Øx\ì+%\ì*\â\'	‹J3“	\çróŠ¶v%1o\ß=†ò}_\İ\à3K\Èkr\ëX\ëõe­Ÿ\Ê\ÌF—\Ü\è²\ç-·ıœ\Ö\ê3õúü\Â%	ğ_ş+¿¥+|bgÂ‘‚Ùgvr\î[Ï˜1–7‰£…b	M\ĞÀNO±\'P\ì=ö»C\Å^_³\Ó×¯dş’pÀ©\ÌñŸ=Ã—Zy¶˜[\Ï\Óê‹‚ÿ»««3K?ºöE–&•ã‰\áHÁg\Ã	\ßl\ç\ï[–T4\n<\Ş]ö\Ùs\Ãu+\Ü>ß¦+\Â;]Æ‡$e·=¿fQi–ŒÇ²\Ñ<Ÿz<*+(,+\Øhöš½Ç¾@³;\Ô\ìó}ñl|ªoy°cx6úû|\Å;bŸ[†Bn­„\á\ã=Ã§\ë\é{§9Z©M~¸\ÙXøK6“ô\Åğ\Å¿Å§t‘û\'‹œ\Ê,w¯¥8­(\r—ˆ’g6\İNÆ­Cw\Õ\"¼-\ßR;Ú”r\ÃG\\\rø¾\ÏH­Lc\Ésƒ±–<·k1ÆZ\áŠå±„\æ,K\Úg	Ms+\×G4\ì4¿7šğúpSø–>v.\åx\ÏP.ke<O\Ñ\ë\æ¬\×[Œ(ÅŸ\Å5V\àoZ^O\r¨‡R\Ãû66\æ\×\Ô\Ø\È\Ôwr‘\Ã\Z\å\ïŒ}\Zıœ‡®5w\×3ªc1•‘µuxG!)u…“\Ï-òöXq\Ïh²\İQ\Í\ZÇn°}~Eú¾\Ï\Ô\Ä‚\àâŸ“Ál	’ƒ1c\ÆXÖe\Î8D³¬<\Ş?YeW\è\Ó\á×–z,+™*D›‡©R…1qX`şLµ³M>;^\àM‘¦xV<\î>½b\Î\×\Û9r‡ªO\Ê{\Ê!ã¾¢\ê)\"\Í]‚’cx¬HFl¬¥\Ø”Êµˆb)!\Ğ	\Ï<9\ÃGGB–‚í€¾\Ó3|h¹\Ç]\Ò\ág%\Çó<¦\ÆG‰¢Ë¯,\Û\"9A)A©\Í\İÿ“\Õ>_\ï\å”F 6R£\ß3t›Ji‚X1T©U˜?\ÓÀ®¶ø\êdûö\\\Íg{|\Ûf©\'Cü;#7–\Şy=ş¢‘qR,a\Ña°¶dP\Î\çÀıh\æO\×Ñ|\Â0\äøj‡Û†‚\í,˜\n4(ø|\ß\ã°\ä”\Å\Ò\Üè°¶\Şb½Ù¦\İ\î\Ò\íõ\éõS\Ò4\ÇX‡s\"hO¿\äE)µ…u+ü\ÑjJP¶ ıbm¹\Ç\ä\ÄNö\îb~v•´cĞ¡al\×0óMvh8¦Rn\Z\å\Öñ*O¶R\Óròw/™—w\r^aóğ\ê5¡Pˆy\Ï-7\à{\Z¥`\æù	û\ÖwIŠ]j£U\æÎ¬29®\n_8\ß_x6uüA·Ì°r€‚‰I\æH2¡€¡@N>E„Š²¯òß§\àyøG\à{ø¾O\ïP‚\Î*:Í”ë®¿–«\î\à\']\ÅııM6\Z)QÔ£66\Ä\Ã\Í¿\Ô\ëR\êuy.³<\×\é{J\Ô=>€•ªj*Ğ±B²ÕŸ\Ø\\3ºgˆ,Mñ	\"0¹ŒşC&‹‘¢Á÷ó\æ|4p\ÏX\Âñ¡i…¶\Ú\Ú\Î\Ñq›X\İ:\ÚZ\â¶\æ6Kvk¤((ŠP \'!\å\İ%Ÿ¢ıú§ˆ£øGJ¶\Óp\íµxú™dYJR™©¿\ãš¹\rQ\ÇW\ZóOù	<ş\é\åöOÔµ•`P(]Am­\×\n¬u,/eß¾=hO\Ó\í¦[i	\Æ\ZœÀ\Ê\Ò*\'\È_”M“[\ãR\é=4\İ\í_EGmş\ï (nôYVDÑ¦€uv«M³¹A¥2À\ê\Ú:\"A°\Ö\"\Ær\â\Ô\0Óº¬3ü‡|\ã\Çf¬<ÿ\İ\æzø%ôŒB‚ò-KókT‡‹\äù)J\å2O?yš¸\à‡V\ç„	\ìe„yqb \ÆQøaqA\Û\×\\®/²caf€õ¡\rl\'Ÿa\Çd€õ6\ÜKwœ\n 22ñó¨‡®\Æ\â\Ëh\êZ©BÍ€‚¬b2¡XŠ\é÷2”V\ì˜LˆŸúB‡~3\åu¸»\Ó\Ë\æ¹=¬Œl ø3‰/Z7pO…EK&\ÓdmŸ òñ}M·2TO°¹0{¢\ÉnœT¶”œFÓ¯¯-~|ûÀ­LÜ¤\à­\0\"$J\ë‘M\Â\â\æ.\ØL\ã(OğCQPdu)%Ü‹RÓ¯V\0\Ñöš«KOŒ–‹?ürk•’\Ã(nL*FiÄ\ÉôfV\Ï\í{¤­ ÏºvÜ—¶tÊ‰¯>¿qnş\äEû\Ë\ê\è\Ôõ8ù§ ?,:”>ƒ³&\ï*õ‡ú\Â\'^mğW€®N~\rø…¨\è”¹ó&­¬í‰µjE9ù™Fcqö¥Œ¼\ìu¯2:q\Èı€yƒ€Ò¢\Ä\æ\nN°Ñ˜¿ÿ5\éòñª\ÃSù}­ñt \n\çg”\ÒJ=\äiÿ\Îs\ç\Î,_\ÌÀ¥\Üwuµºû\ç\ĞöˆB£dİ‰~¼»o,..v_\Ã`®˜Ri\×?\ÔGA½Q\àf5\Ş\×¹§ÿ·}0`À€0`À€0`Àÿ-ş^t:¡òd¶^\0\0\0\0IEND®B`‚',120000,'C:\\Users\\usuario\\OneDrive\\Documentos\\NetBeansProjects\\tienda_con\\target\\classes\\producto\\carro-deportivo.png',1),(26,'Moto','color azul',0,_binary '‰PNG\r\n\Z\n\0\0\0\rIHDR\0\0\0@\0\0\0@\0\0\0ªiq\Ş\0\0\0sBIT|dˆ\0\0\0	pHYs\0\0b\0\0b_\'\ĞS\0\0\0tEXtSoftware\0www.inkscape.org›\î<\Z\0\0»IDATxœ\íšytU\Õõ\Ç?\ç¾y\Ê{/\É\Ëğ\È@”¡b-Z¤V¨u€şÚŸ¶Õª]j­ZKõ§­S—\Ú_\ëT«UkµZ\0D \ÈƒI€$dN^^òòÆ¼¼{~Ü¼P»–­\ë·V¾k\İõ†{\î9{\ïs\Î\Şß½Ï…Œ`#ÁF0‚Œ`#øÿ=ğ3 h.øz\Åù\Ï\Â\r\ì¤PôRE‚ˆs¿f¹şc¸€´¦\å\É\é\ßÿ­$Bø€\â/zXùwK÷a2°øø9`t¯/ù%\ì«\Ç\ßX\Íô¥·”©À\Û@Æ—`<ğP\Ş}\Üx¾ñ‡#\ä \í\ßÏƒğ\Ñ?\Ëı\×`zÿıñ€\Ìtd†\Û(BÎ½yœ¸\à\ÒdÛ\ë	´\å¤’W+_\İ^r¿Ÿ4F\Ø\n<|\áF_\Èô\ì<9cşb\é\É\ÎM>~\rè€£Š@>÷ó\"	H‹{”\\úd³,˜2/\Ùv5§Y\íºş\Ï[\Ï\ãee<9cWb°X\Ø\İ\Öf°\ØØ€Àl mV¾,¾‹¶\ÂAú¸“G[\Ét	EUc´W\Í\æ\0—\07\ß,@eÿ¸W«jOv%\Óg\ãHq\Ñ\Ö\Ü T5±\0mv\í\n\î¿&\î`Ÿ|\ÚJ\È\ß\Âü§ù“µ„¾	€\Øt²`¢ÿs±€·¬z½xgÁ7˜\ät¢3øsc?Û¶\r	‰~&Û«ÀKÀ]@\İ(+ğ \"PV.\Ê\à–K¼\ägš\0P&Œv5MvUtòAy+v¶Ê†¶prœ.\àOÀD\à¡(äÄ¤²3‘‰>Ö¯~x<\Ù\0\Õÿ­\"˜y\ÃA\Z\Ûcx§—”\ÌB¿ûH©‹€§2\0ÀmÀ¹V+\Ï^ˆ\Çd\Âh6³º­•¼ÿ¾LH)\ÌV;\éY¹´6%\Ş\è^è¿¶¡-·Á¸x\Ìn\Ññ\âEœ[\æ\Z¸¡3Z093NACye\'O¿q„¿¬«•½qU\0\í@ˆñ -©l\Ê\æŸO\Õş\Ô\ÕTŸi¢â¹©\0¬qñ¯«ih\r\Üu%0	m59\İ\Ü\âñ)å\\œ—‰¥\ééœ•›+\Ö\Ö\Ö\Êp4\"tz\ãJg#„ \è¤T§?\è¿&£9¸0x\ÖjV”uÿ3y“SR&Ì®\ÌS*\àõXX2o+.(=¡>öUùm@6š\Ç7D\ÂA\Ò2s\ĞM´6\Ó,½,›³&ic\ä\æfrı¥%L+v3iŒ“Icœt\ãøº{=À!\à\Ó\äX\'K`6³.\Ï/\àñ²2\0l.\'µ±KÖ­£ª««=…q¥s\Ğt¶5\Ñ\Ñ|œ@WÈ¡@ğ\Ê]\ãX<\Ë=\ä“3\Ñ|Jå“\Öni\ä\×Ob_U×°û™9£	ü„~¦\ÙXÿ»,F½ÙÑ‘>¬ı†-,úÉ‡\0ÿ–$ÿ?9E‹!\Ê_ª«õ\n7+\Æ‰°¥\'€Ë¤\í\İp0À¡]0v\Ê,<\Ş|<\Ş|ú\â½ôtu\ê\î$\Øã§§\Ë\'\ÕDB4û\âÃµ;õ\Ä(ş\Æ\æV=SÁşjMñ‰S¦±\ìÒ•L™:ƒûï¹…O\Ê?¦µ\á(\0ó§¤ğ\Â\íEX-F67z“\í”ısF&\Ù\éfZ|\ÑoI‰Í¿œV”ÉŠ\ï«R\ãv‹\rSŠ_k#B(O!#§ğ„nB`0	tvpp\×R Š\ï(\â;g¦´\Ñ,˜\\™CúUU\É\ê\ZXõlkº(›y&+¯½‘²™gòá†·øóSSU¥\íù\Âl3w,\Åòs³1YS\Ğ[\ì§U§¹#Â›[šxô\åÏ¨ª\ï-š½ğy\0H~\n|C\"K•r¬¢(””\Í\'5\ÃKGS‡÷Œª&\È\ÌM~ñd„\ĞB­@ 7ğµ4P¹w;&ƒ\Â\ÚU\Å\Ì\äôF{\Zª*y}S¿y¶‚CG4\ÅgÌšËµ\×\ßJÉ¤R\Ş^û\n\Ï?ó$\ÍMšQ\ÆÙ¸i™—‹da²»\Ñ-Ÿ£<÷\æ1~ü»=Dc‰Álƒ\Ï3À`\à\àn!„(?•œ\Ñ:ù´|\ÑH‹ÍÇ›¢\è‡„]D‚İ¨ª\æpSlz\Ö?8I…\'HÙ±NW?pˆ]\0L?c\×^+“K\Ëø\ç\ê—xæ\Ñ\ÑÑğ­.nZ–\Í\Ù3²\Ğ[](z\ã)\ÄŠ@(\ç\Ü5$T·`Ù¹T\ì\ÙJ,\Z\éRĞ—5@,™9£;y&}ñ\Õv\âkk\Z\ÖØ‘\âbLñ$Lf+;·®\';\Õ\ÈÆ‡J\È\Ï4QYa\Ñ\í•t\âŒ/™\ÂOn¹›3fŸÅ†u¯ó\ØC¿¡½­\0³Q\á÷?.\äªóó0Ø¾œ\âIøº{\É>-ª*\È\Î/\Â\îpR_SA$-ª´ü«\0˜¬rS\Üé””\Í\Çh2\Ó\é!\n\ĞX[MGkó¾¹„Ÿ\Üş \0F½\çŸXÅš\×ÿ\Ê\Ø\ë\îÏ·ï¨¤¦1Ê²\ËVróm÷¸\í\æ\ëØ½k\Ç)-Êµs\Óòb®¹p4F\Ã\ç\çpÁp\ï\ìh\æ½Í¼º\á8¡H\ß\ÉM^.‡/¿NF&\Z¿>\Óh²PP<WZ&f³Ê¶õo ª*wıö9&M›…^¯\á´ò‹[®cË¦wq\Ùõtû˜6cO>û\Zj¬‡\ï]x-\ÍM\ÌHqñ‹‚±¸\r\Ú•\êh˜¿¯g—\n½6¹k&g—\rOòöUuñ\Äß«xm\ãqz\ÂC”ş\Ø\r\ì>BK\ä—1€—\'3· pH|ü¸\ît{2½<ôô\Z,V;n‡ƒ\"¹\é‡\ßg\ß\';Bğ\×\Õ\ï3µt*W]r>{\Êw²4#›U£‹\Ñ	\İa\Åj?Á*º»¹\ç\ĞA6µ¶¢Á=\×Mä®«\'Ps<\ÈO\îgõ\r\'S‘$Ú€§\Ğ.ÿ\àºS6‡\"\àq\à\ÏÀ•hz°\0øpuÿÿÛ€û\Z-nDcZ\å@(\ê\É\é\éö3c\Î\Ù\Ä\â}8l\ÔDÛ·ldş\ÂóX~\å5lÿ\à}\ê	&\ÛSøCñdtB`4\êq¸†\Æó³™Kòò(²;\Ø\Ü\Ö&\ß\Û\Õ\"	Ic{”o\Ù:@–,&…•pù9¦§`¶X9\Ú²ªª\\€ş e¤Àğ €_¢%9½ÁHj†wz&NWªFC=´6\Ö\Ñ\Ö|©™»ø!°ş¤¾<Bˆ£€ıöûşÈ´™ó\Ğ+p\ã\Ê\Å¯?\Æ\Üç’›—Où\ÎmTW\æù’©\ÌvjŒÑ•\êÀh2œfn 2`É–ego¯\0P…Ü¢I»:ğµ5ñ\Î\'¨·\Ù\í¥­[\å–G÷ò\Êúz\Ğ»±À1\ÊõÀ_KõyE“UPŒ+5«uh=a\Â\ÔY„C=Øµ…ºš\Ê´\Ê\ËÀ\ß\Ğ\Ò\Î\ï·I)\í\0z\än~z-\åÀñz»oûp\Ã@i#³ú•B`4^y€	))\Ü0vœXUq\0)%\Şü±RœøÚšX³½“y“S\ÇTÖ¼{„l\éäš“\ë”´\r6À\ÃÀ¥›ƒ‰3`s8IMM%\ZRuô0“‹\ÕNNAV{\n³\Ï^Œ7o;7¿­¨ªú\"pZ#`ÚŒ9X­V¶oyŸ~y=G>;@ª\ÇKzv.RªT\Ü\Íh‹u`)\êô\Êz¦öXŒ\'ª«\0p¸\Ò\è\éò\ákmÀ\ã\ÍEÁ[;ñu÷ñ\Î.?¡¨\ÆCL&«EF\ÂAVA¾Nõ`­\Ñdf\ÚY‹0Yl\r\n‡÷\í¤¡¶z˜\0BŠJ¦R:sRª|¼ùm\Zkk\î9o!+®ù)“§\Î \ìáŠ¥im\ÑxÂ¸)³\È\Êƒ¢;ÿ|\å)\à¿s\n¸!§\0ƒ^‡+İ\"N\ê\î<°Ÿÿ­©!cT™9£9¸s©/“f~ƒ\Ê=[hoi\Ò~Úœ…•”„Ù¸æ¥¤.\Ş\Ôõ¯‚\Õ@zI\Ù<\ì\ÎTñ;7½EgG+@ğ;\à1\à54GW\Ú\Ù\Şbl¬«¡b\ïº|m(Š\Â9‹–ğ«ûgùU?$3Ë‹Ñ Ç“\æFM\ÄÙ¾m3Y¹c\È7\0›Íİ‘‚3\ÕC\Ëñc\ìğw\à5™o±ôb4\éQ”\áFğ÷ör\í\î\İHEÇ„\és©­\ÜK4\"\Z\r1ª`z½ö\æz\Ğ\"•H\ëlo–£ò‹„#Å+\Í#j«?(ş¤Góğ\ã\İ\éY¸=\Ù$ú\â\ìıh=\ÑH´Hp+š‡Ob\Z¸¢\ÛßÁ`\à‚‹.\ã\Êÿº¼ü\Ñ\Úr3\èq\Ø,X\Ì\Zk«üTÛ«\ÙyE˜-\Z‡\Ï)‹\İ\ád\Ã/r_m5Q5Áe™£øC¤zœ\ÃğFC\ÑD‚¬\Ü1\ÔUÀ\ïkˆKU5øZI\Ï\ÊA”\ÒŒ\îE¼mı\Z\Î[¶‚\ÌQùd\ç\Ò|üX	°H\é_\nd\æj\Â7\×\×ö€\Æön¤üh\àBˆcÀf³…K.¿š\×\Ö}Ä÷>L^şh,&#™iN2Òœ\Ê\Ë\ßd9\ÚtºØ•–Û“E8‘`Õ±j–,\çÕ¦‚½\ÃS\éW\ë\ëHq§\Ó\ÖX‹¢X	\Ğ\Ñr\Ş@jF6h~¨-¡{+è¢¦ò€¦\Èø)\É\î–\èÑŠœ¸Ó³ho(ñİ\æ-MÀ“Bˆ•RJ\Ífg\ée+¹\ìŠkp§¦ƒXMR\ìVúJuwù\é\î\Öb³Á¨#\Ø\í\Ã\îL\Ãh2\'C\è\0	-[›\êr³¯\ËÏGs]\r\Ó\İn\ÊRSq\ZD	vwú°ÙDB=\0H)^BüÁ\ß\Ş\ìLô\Å\Éğ\æ\ãkm\Í!\ï\î\0\Îóµ5 ŒLo^rØ³ô€W§\×c0š@J‚š\Ğ~´\Ú;À€«®T.½\â\Z¾·ü\Ø\í\0ô:Oª½N!\Z\Ğ\ì	°úõWxô¡û”J\â\Ğ\îğxó1\ÏYˆË­q‹†\Újº|mLHIa\ÓÂ…lmo\ç\åú:\Şinfk{;[\ÛÛ‡ô\ã\Îğ\ê\éNş\ÜÄ¥”k¤L¬\èlk\Â\íñ&\ï-n*€™3\æ~s3\à4MZş‹zõ€M§\Ó\'­\Ù_<¥c\Ğx\é\0£rò¨8ğ	{vm\'\Ø \Ñ‹‰„	tw\r›Q€ñ))dš5:«7\ZBp\Ø\ï—\rMubë»¯“\êñ‹†ñµ6 €{\'krAV‹K& *\nğù\èŠ\Åøışı\rH\ËE88`€`ÿ\ç\ëÀŠ–\ãGp¸\ÓQt:\ÔDbpÂ°\Ïh2û\Ñ\Î\'’Ö¡Zã½±|)%BQ’–\ÉE«\ËG€gôÃµ÷-\á‚\Ñd–V»C$úú\è\éötN‹N\Çkg\ÍE/&›\rkŠƒöHD\\¹q#\ï\Õ\×\Óú€L«U>~\æ™bINŠ¢`0™Š@LMOgjºVã»¯¼EQp¸\Óp8\İtj)øX \ZxOq\Ä\ß\Ñ2f×¦µI\Ñ\Ö$¿¸\İ\î<Y\0ªª\Ò‹t*À1)%¡m¿¦exA+^\Òÿl]_<^ˆ–OCKŒ<hoL›³P,Zº‚‚±“\ãı\nØ¾\×\ï\ç¡\ÃZ	+\n\ÆğX,¼»d	‡/¿œ5\ßş6[—.¥şª«\Ä\Å\ÅÅ˜m6ŒBÎ„´E\"\ØR\Ü(Šg\êÀ\ä®\èÿŒK)\ÏE\éÀ£h„\à2¿\ß_[Wó© \Ë×–,\ÔT*h4_?y\È\Î—\ìø·ô3:´•°¯ÿ:Š¶E.–X¬v™[¨=\ÓXW“|v3p•\"D\è‘Ã‡\ÙÓ©U|\Â\İ\İ\Èş\nQ±\ËÅ………\Ì\Í\ÎÆ¨;]Nv{;:†üN\Ë\ÊÁ\átK´\"Í²¤ú¿OB;a\n£MØ“BN­.\Ùx‚\ÜmQ€\0‰¦º*}q\ì\ÎTF/\íTuÚ±\Ö`F\â\îş\"„\àŒù‹„N¯§­©\Îö€=IC©R\Ş\Ø\'%?*\ßM¸¯UU	w¾P\ÙS\á°_\Ëb{º|tw¶‘\èKP:kB´\äN´U™„m\ï\0R‹§œ!R=Y\Ä{{“\áP^T\Ğfô¹xoŒ£‡÷?n\nc&”‚V6zı½–\æ6w\ëtzeöÙ‹\É\Î-$\Ñ§|\ÛÀ‰Óƒƒ„xxóH0\È/¤+\ŞK[O€\Ö\înü±\ØÀ•8É\ãñ!÷ı±‡|\'\"k•£&8\\Î˜¿EQtÀo\Ğòşmh+°	xğŒ/I\é\Ìù\0\ìß¹™\ŞX´ªĞ‘\äf\ËBˆ}H™9¦¤ŒQ…\Å\Øl6\ÂÁ.\ï\ßE[\Óq)¥*\0£\Ì)\'J¦\ÍÆ\âBUl\ßğ&MõG\0Ş¤ŸX\rB†¢BJ9ü´¢SS‡–/\0ü­º\Úxù†\r6õÔ•\r‰v‚57=+—	esñx2ˆT\ì\İAS\İ\Ù\×\ïO‘u2+§@ŒŸ2Ov.\0\Õ{ù\ä£÷Aˆv¤œ\n4\rö6³bR\ZGSX<§Ë…\İ\á \Ñ\×G8ÔƒN§\Ãbs ­:\ì\Üü6\í\Í\r€8r\Ú\ÉñÉ˜¬B«Ä\n\Ğ\È\n@\Z?¹ú^^B\ì–R¹\Ò2)™>on:©ª„\ÃA«=e@NUMph\ÏGT\î\Û	BDò<´W†%g	!\ÖH)\ÓMf+9cJ\È)KFVöÄ¤»³ƒcU9Ry€¾¾8ÀN4_\Ñr\Z¿jd\0\ë€:½QÅŒ™0…Œ¬QC\ZÅ¢\ZUñ\ÙÁr-<\áC\Êeh/€œ¹hNE¥ÿ%“\Ù*\İi™Ò•–!Mfë‰—„¢½¤ğùŒ\ÌÀ*„\èM\Êc0š¤+-C¦ex¥\Í\á<ùe¿\Ş\Ów7\Ó\ĞB\ágh§²ı‰(šo£Ÿ%~\Í\ÈB+\á\íBKÜ’\n\'Ğ\ÃF{¿\à”øWN†2Ñ½ı_\Ğö\ë„m– ™¡iüF0‚Œ`#ÁF0‚ø?\î³xr%¶´\0\0\0\0IEND®B`‚',0,'C:\\Users\\usuario\\OneDrive\\Documentos\\NetBeansProjects\\tienda_con\\target\\classes\\producto\\moto.png',1),(27,'Papitasi0okoko','de pollo',0,_binary '‰PNG\r\n\Z\n\0\0\0\rIHDR\0\0\0@\0\0\0@\0\0\0ªiq\Ş\0\0\0sBIT|dˆ\0\0\0	pHYs\0\0\Ø\0\0\Øú\\¦r\0\0\0tEXtSoftware\0www.inkscape.org›\î<\Z\0\0\Z\ÄIDATxœÍ›wtTÕ·\Ç?÷NI&…ôIH#!Ğ«¦ŠR|\"Å†ğ³wÅŠØ¢‚‚‚\"A@\éJ‘\ÒR ô:“™¹ï›I2Ì„¢ü\Şz{­Y+9wŸ²¿\çœ}v9G\à¿O^@\ĞB7À	ph\â©*€2 ­\é—\0Šÿ\Æx×©\'°H$k?;{G£›§·\Ñ\Í\Ó\Ûhg\ï`l‹H>zü7*\ÜÅ¶\Ús\Ù\È3\r@‡ Pº÷D§®1ø…\â«‡§\Õ\ÊJŠ\É\ÍH!73Ô„œ=~Pº–\ÙzŒiÀ7ÀJ \ênún\0\à,\æ!/k\"¢c9i:F\Ç\ÓÇ¯ÍŠµ\ÕUT*5¶vöVyŠó¯qd\ïöı²AJ¹t\Î4\Ş\n`ğ1ò¶ù\Çôo\09À»€›B©”FMš.Lûa\ÍL:m\ÉÎğ÷	’/œ!\ïjEy9T—›\ÛFc‡³«;‚B‹Š&,*š\îı›­–¬\Ô$6®ü„}[”z½\0\\^\0¾ŒÿB–;¦P\à$ 	‚(›>[\Úr:C:§•\çi¥?2+¤·Vo”™(©m5ûZe£‘\\ü%Ï\á’ox´\ä\ØI²wv·\àDQŠ¼§—ôşº­\Ím\Ï\ÓJ¿œJ—\ÆN)	‚`\â=„üAş\É\n˜|\r8‡Fvc\Ñ\ÒÏˆº§7\0¥%ü²ö+¶¬ıŠ\ê\ny†m\è\Ø=€\è>tˆ\ê[‡`\ìİ­6l4\è)\ÉN¥ -kIgI=ş¹,ü\âF\ÃÅƒ;ñ\r\èHhd7\0R/\ã\Ã\çH)\Ï\n@5ğ8°ñ¿€,‘—0k\Ñ+(”J\Z\êjùşóøi\Ígh\ë\ëP(Ut<®#&\Ò{(J•ÍŒÉŒ\n\Ó/\ãÑ gÙ„.hkª\Øv&\'WDƒ^Ïš_\ç‡/?B’$šÆ¸˜\Û\Ü·€\ZXLurq•^ûr½\Ğs\à0\0\ì\Ù\ÎòWQRp\rµÆ\Øñ\Òw\êœ¼d\åWWQ\Ê\Ş\Ï^B¯­¿ù@‘aO¼Š«_G«\ß\rúF\Î\îü†š*\Æ=¶ˆ\Æ\Ì3\ä$cò\ìù‚À©Cûy}şcue¹ü\Ìtw\05°\r¸\×Ë¯ƒô\É\Æ=‚pÚ†z>yùYvoüAˆ\Z6‘Qß¦§os\Åú\ê\n\Ö-O~Ê…\Û\èœ¼ü˜½b.~·\äı\ê‘\ä§^¤\×Àá¼´ü\\=½\È\ÉH\å™G‹òD`0[€p+\0D`05 4‚\å›ö\à\á\íKAn6‹Hvj\"\î>L~mA=šU¬«(e\í\Âq¦_fpl(/\Ì\Z~Ó¾\Ùq’Ÿö\Ã\ÅÇŸ\Ù_\í\ÅÉ»ıMù3ù\åµ9e&\á\æ\åÃ²vÑ…\â‚<~`”173Í´\æ&\Û\áV\0,òğ\í ­\ŞuTğğö%39g¦¥¬¸\Ğ\ŞÃ˜ôú*¥\Öz\æÅ†²\î\é\ØÚ¨\08v>“\Ş]Q)fuŒ’\ÄSlaóó8{w`öÊ½8{w¸\é\àôºv´˜³;¿Ç¡3\ï}»™\è>(.\Ècnü\0cqÁ5“\ŞZ\ÔVŠ¶>\0Sœİ¤[¾ş$_8\Ã\Â)#©*/¥\Ç\ÄYL~c\r6\Z³J7ş\×\ã‰<ò\Ê\Òr‹7°‹Y=A\Ù7œœü2\Î\'¤‘ö\ç>\"‡Œ\Ã\ÆÎ±\ÍŠ\n%\áq÷v\âw~ß±™\è\Şq‡G\Ñ{\È(\áÀ¶F¶¡/ŒlR\ß6\0!‚ \ìD\Ñ\æ5?	Q\İ{’—s…SFRSYÆ YKı\ä;‚x\Û\Â¸8\Úq\äl³\Æ÷!\Ô\ß\ÃR A`T¿²òJ9w1…\Ô\ã{‰<;\Ş\ÖÔ±{vN®¤\ÛË±}»\é?b,¡\á„Dtl\ß$£-@\é\í\0`R A_\Ìı<FUEOLFi\á5ú<ğ#¼iQ\éV\Â\Øk\ÔLK§\0ë¾€	„\Ñı:“yõ:\ç/¦ú\çoD\r¹õ-@h‹¡QGú©ƒüõû^FM™NpD´\rõB\Â\ß©X`-²\átS\0\æ¶\æıU\ß#Š\"¯\Í{„¤s\'ˆ2û^üA0W·#|koE¢ 0ªoIW\nI¸œFÆ©?ˆ\Z:•­\İM\ë\Å¤ôj™\çOPp5‡Ác\'Ñ½\Ï@\í\Ûi,¿^\ì\\\Î\ß\07v¢¨yq\Å&üÙ±~\r›V}‚‹_3–oA©67jn&|u•ÒŒ_P¨A2˜•iuz$IB!¶l)…(26.’\Ë\\JH&ó\ÔD€\ÊV\Ó&\0‚ \Òs	¿o!ù\ì	üƒ	\êFH\ç®ÂŸ¾\èƒl\Å6´À+Àˆ^\ãg0{\î”±ø‘	%xdù/¸ø˜1\×U”²vA<i—\Êwo>\Ô,üöC—˜ú\Â:\âb‚ñrk\'wf\çŠ[Ï™`4\ÒX•€®QÏœ77²\í\Ğ%\âD¢P˜ƒ0¦$\çS®qùr\nÎ®øw\í\İ&\0\0Jµ\r¾\á\Ñ\\Ø³‘\'2ş\á9t\èBÑµ\\\Ò/\ÚÀ!k-\Ö„y\n¥Š<|µô\Z\êj\è=\å	ü\"b,…ouÎ¯{ó!l\Ô-³Q@u­–‚\ë-n»\Â\Ö	A¥Ai\ßrlV\Ö4•WJAI%u\rÙ¨•|÷\æC,[4·&#b°à¹‘ºõ¡{üCT–•òÃ—\Èf»B)ir\ÛÁ\ÜX¼\ß=şa\Şû|\r™‰<:¬6n,\Úv[‡vÍŒ·»\çS²‹ô2+S\Ú{ ¯-1++*«F©qs²hMW\ì\×Ü‹ñ¦\'8T_/\à“\É1À\Ï%\ã\î\å\Ã;O\Ïa\ï\æõ&Y?h½Ag{xv*M«>E’Œôh‘™ğ­g~PÓ²o=ó­\éF\á\á¼\\[\Îú­/òş\Ú\ßo*œg1:zñ\à»\ß\ã\Ú>\È*£»}\îŸ\Ë\Ñ\ï?aû÷«™³ø5¦\Î}\ÆÀl\0¦\Ğ8\é×¹;\ïl>Š›¾‚‰=B@´\åù½I¨5ò\ÌÜ‰¶ÿ\'´óHó\Şı½\áöbN¾\ÌZñk› T\å±lBœ\İ=\ØúwJ¥Š™#z\Z\Ó/Š\È\Ç\âY“˜\n=úAœm\ìİ¼F]\áƒfÜ–ğ?8\Ï\Ç\ëšu®´sÃ©\ËY\ë7‘V§\ç‰w\"1³ M\á%	¾zñ\n§\Í_Á·y4¾•\Åù|;oe×®X\ÈË°~#)+.\ä\Ïı¿p\ïı3L2Oƒ%8 óÀxœ\Ô‡~İ\È\ä[\n_Y\ÓÀ«+~eù‡É¸Ú²¼B‡`\ë\Æ7º¹l\Ë\Øvğ¯­\ÜÓ¦ğ_<?…	CºP[¯\ã\Ã\ïş Qo®øA`\é“ñ·BÌ˜©\0ß¿€¸Q\ãLŸF€¬<pwÿ\Ü|ü¨*-\"\å\Â\ßhœ	‰\íj&|\ßHo‹e\ï\ä`\ËÆ¥RTVMH‡ó¶2q\'v~1\Ô]=\İ\\6mt,\ÕuZ¦k9Q\Ú\à¥/w³é·³4\ê\r¼8{„U\0\Ö\í:Å·ó\ÆX\İÁ=£Pª8yx?’$\á\İ\ŞŸ†‚«9‘€§\0„÷\Äa§8sô$ÉˆW§aˆ\nß¿z“ü”ô\é\ìÉ§óûZ\İó1\á\í\Õ7Â¬L\Òk©\Í9iÁûø¤~¸:\É\İÖƒyâŸU¯<h&<À³†3ih7<8À¢\ï>\Ï\ÔQ÷´¹l\ì\éĞ¥\å%E¤\'^ Ç€a\ndı\'\"glğ\rÁV%pùœ<cŞú\0r\È	\à\Ñá¡¨•\æ\ÎÏ¿¡Gxòı_\0øl\Éd\Æ\ÆEZğx¹:ò\å÷\Ó\ÎŞ¶\ÍvDA`Ù¢	7\İÑ²,i	²Ö¥y[F‰4%1\ÜıCP\n“€_g\ËDŒ\0\ì9DYeY¹\Ò\Î\r•³¹\ï®\Õ\é\Ùò\Ç\Å6…ok\Ùÿº•Nğ\îÀ•T\Ù#ö\îdú*\"‡¸q÷A!@vF\Z¢Bm\Ú2\Ññ\ÄB\æ¼ñ#S_X‡Á(U¢\Ò—\î\Óq‰~\0¥[3\ï‚÷73\é\Ï|·\ë´Y7Sx­•¨‰T\ŞeIW\n\ïH1zE4\Ô@s\â*L<Q\Ä\Ş\Å]}-\å%\Ø8ø¡RY.÷\ØPw†ö\ê\Ä\Ó\Ó5;.F}µ¹§h(¸Œ¾®\Åİ7%\Ş]‰\Õ\\f¶\ç_~ Yx­NÏ´¿c\ÜÓ«I\ËiÉ…\ÚöÃµ\ç,³“\äLR.ñO­\âñ·7a”\Ì<\Ûf0ex•\Åùœ\Ùñ\0\Î>ş\0\\/*À\Õ\Ã\Ë\ä\Ñz(µ­‚(RV\\ˆ$I(m]¬\Æ\Ê\Ô*‘õo?lQ^—{Ê¢,&¼=Û—=\Öü¿ÅoŒZI\ï.\ÔkÍ¬\ÂÆª|ŒºZô5- ø¸\â\ç\éL·0?«®µ(\ïİ‰\ÍZ¼^•­¢¨ ¶ªR\æE\Ô66FmCƒ£p0…ª+*LP¢7H7¶ıóh·³\ç_˜5œg¦2;eteY\\ÿk’¡\ÅIòpq`ßŠyh\îÀµ½µ\Õ-™\Æ\ŞÁ¨mhp4[\çZV®€€Á\Ò13%,H«\ÓSQm=\î\'\n\Ï\Ú+YÈo\"QTX¿\Ôh\ëª0ˆrÃ’d¤¡Î‚\0]CùÿMşü\ÄE_[œm	£3‘ Zzx\Öx­ñI’\Ôf»\0Úº\Z4ö-\Şf}m\0T‹@®¡\ÉhÄ ”\Ï\ÛÆ†Rj«e´Ä¦\0\Å\Æ\ÃWh\Ô)\ÏO³\0Á\Zµ¥ğ\ê\Zt<ğŸµ¼ıõ>3~‡ 8\\b¦›ù§.\ç\Ğ\ëá¹”–\×\\&*mq¹gv\í\ï1ş\Å/v3óµ\Ğ5\ê-Æ¢o\ÔbhÔ¡±—\ãŠFƒV«0P,Ô–—\à\è%ŸåºšBj+d4‡ş\ÏKx…søbÏ¬<…V§§</]½¼j\Ô*%_¿:•-\Ín¶ğZd¡ğ²òJI\Ì,à¯‹Yhuò`Q‰\Ú-¥ƒ;\ns3\ïÁ\Ói\ä—Tr&\éjs™\Ò\Ñ¥ƒ6\î¡Ğ¤+k\Z8z.ƒ„ô|ŠJ«-\0¨.‘µ¿»§|¤–]/6m‡%\Ä^\Ï\Í 0¦NnT––P]’CmUö.\Ìúr7\ß\Î\Ëñ\Ë)<»ò\Ë\æö¢<?\ß\Ô\ZGl\Ô\Êæ˜€i\Ù%‰÷³\Øó‘Á>lùxş\Ş.\Íu$£òó›Phœ\Ì4ş³†3(6„>][ò…ºò\\\Ê\Ïnùšö´³£†­Ï¡¦NKoÎ§^3\ë³øJ2\0¡\á\0\äf¦™>¥‰\È\×N¸›@p´s«)I ¼P6v\ì]<˜ùùN<\Â8~¹%kN£kl¤<?£y%˜\è\ãõ\ÑŒ¼7»cûX÷Ó£‚},\Ì[Iß€¾ºÈ‚·µğ&j¬\ÊG2š/u/WG‚\Û7eŒo8ÁJ²S(73\Õô)].\ä%Ÿ ¬¿œi©\Ìû‹’‚–À„ƒ›³V\ì\Æ# Œ\ÃXl¡ úª¤\"½qQ\Ş\Ü‚ÿ?¡¼\â\n–~»\0[Gy;\å^’í”ˆn²\ŞH½\Ôl#\\£€”uö\0ûŒDT()¿z„\Ò|#\Ú!Ü¼˜½r…N¨,Î¡8\ë•\ÅYH\Æ\Ğ\ê\Zô,Y¾ƒò*ó\ÓÁ>°¯…\ïpòR6Ÿm<bV&ª\ìh>\ZA\Ñr\ìI’\Ä[köY\rª\ä—T2\é¹o\È-,\'j\èúO_ˆ¡QÇ•3G\Ğ\Ø;Ğ¹{O\0N9 Gc\"ò=¼\äÒ«™T\åa\ç\ìFDÏÔ—gP]t™\ÂlóğÔ\Û\á\Ñğ\Ó\á+”U\ÖQ_UŠAß’^±\ã\"\ß\ï>Í›«k.S9µ\Ç!xNQ÷5gZ¹\ïüÄ»\ß\ì\çLRn\à¡C\Ñø\Å`Ø¯¹\ì\×\ãI|ù\ÓQ¼·\Ù\Ì\Î+®\à¾gÖ_F\×“™ò\Ö7ˆ\n%9O¢­«!ºWT*5Ws(Ê»ªD\Î›\ÔP ·³¯?\"c1t$İƒBm\Úy :)hmuª\íˆ2Ì¿‘••\Ëñ\ËElø#ƒ„¬rr‹kh\Ğ˜3º}º \Ø8ò\â\ì\Í\nÏ¨­B\Òk©\Ë=…¡A¶Ì”\n‘^]\é\ä\ÍØ¸–CW‹ Š\Ô^9’<a(\"‹gk\"\çW0\áÙ¯\É-,§\ëˆ\ÉLz}5b¸¿^Jaúe^¸„°¨höüü=§\0X\ì7‰\Õ8\å\ÃÜµ‡©¯®\àƒ{\Ã@\Ô\Ğs\æy¢9\ãh=P|%™{7qaÏT—¶hğŸ\Ã\É\ÅW\ßNV\ë\İ-\Ê/©dâ¢¯\É\Î/#j\è¦¼ù5¢B»¾ªœ\ã#P©T\ì<Ÿ­=\ëa\ÈL¾¤\0\îÎ™¤:\r¤\æ%Ÿ§øJ2\ZGgbã§¡\×VP˜¸+	zŒmj=ƒ\"1ÿ\rÛ•\Â#Ë·b\ï\Ò*\ëû_Öm-{ı½}\Úz†\ß÷\0¶vöd¦\\¦Iø\à˜g†¾8ş\Ã\ç\0ôŸñ\n¥š«g>¥²¤‚ì¤›gdDQAH\ï¡Ø»X¿Öš\Î$\åZ(FQm‡ªyB’$N\Ã\Zİ¨ğ&½¶ªyÙƒ\È=¾\áS”J\Ó\æ=ÀÆ¯–™>\Ó\Üo«6W—öıLEA.N\Şí‰¹÷A\Z\ë¯sõ\ïO\ÈJ\ÔS[uûSj”$ô\Ú:ôZsA\Òó¹\ÉZ¦,ş¶\ÙlD%.1\Óp\é>\r¥cK2\å­5¿1\í\Å\ïXµ\åO³6*«\ëo:ó\0G\×}L}U9c|¿€ òs²Ø¿u“„|³t•‰¯µW¡\ÚIFcœ®¾–ğ¸{ñ\íÍ¹\ë)¿v\nÿ¡\Ô\Öz\á,\"Šm;Æ—\ßJE\áU®T3$\Ú]}¶v\í•òQ\æ\ÒNÃ¹”k\íF\ßnM†’dDP¨õ\×\Î6+<G;N\\\Ê\æ\éiƒpsnqdllÔœ©òÀ\Æ;\ÄL\á™(?õ\";–>‰\ÆÎ·Vıˆ½ƒ#Ÿ½ş\é‰\äŒP³#r£$®@ª ˆî­\ŞG‡.=9·{\ÛŞÆ©#1ş„‘½­§\Â\0ª¯²v~<%9i\ê\æÃ‡õ\ÄF­\Â\Å/•,„Áh4K…7“ 4›·&j\Í{­¨‚¿\Ø\Å\ä—>¥È½7’ÑˆpC;z]+g¦(3‰%¬`\Üô\Ù\\:ı\'ó&I*:!\ß5,\Ó\ãõ@9H\ãòS/pÏ¸ø†G“—t–¢Œ³hkòP»AÀ\Õ\Ëú©`c\ç@\ä\ĞûH?q€Ä”l’s+\Zãƒ¾®µ];Jõm]’0Qk\Ş7Vÿ\ÆöC—¨R{;\Ğ\â¢ÀöwŸ$\ã\ÔAzÊ“¯„Á gñŒû¥%\"rf\Ø,Vo-\ÅzYSZ\ÜŞ¨o$¸\Ç ‚c’xp;¥9\'A’0ªú¢´pv·‚ZcO\çñ¤ı¹Ÿ”ô\Òóª\íCc+n$I’¨©\×Y\\¨\0(­¬\Å\ÆF\"\îqêƒğÈ³÷“\0}ı\'~Zw{>Z¿;{V¾û2\Çö\í¿€\'o¬c\r\0	8<’{é”­Ox7|Ã£	\é5„„ı¿Pšu•\Æ\rA¾¯ûoVBk\á_ø|\Ë\Ö\"~@\Z\Û\Ó7¿¤’ñO¯\æP\çÁÿƒ\×^V…?½õöñ*v,ß´¿€ N\Ü\Ç\Ç/=P	Œ\Êo\0š³€É™§>\à^<;\Ñ>ª	û·Pzeõ\×Áv\0\rµ\"n>\"Ö¶´ZcO\ä\àñ¤Ÿ8@rju¨\Ôv`4 IZ­u;O“[TÎ¸ş\á8·Ó€\ÑH~q9“Kv~ş\é<8\Şb\ÏK’\ÄÁ5\ï²ÿ‹W±\Õ\Øó\Î\×?\Ñ%¶\Ùi\É,z(\ŞĞ¨ÕŠÀ\àO\Ë\Ş:Î¹x\ÆÙ»=­>@;O_²\Îg\ã¦S_]“ooÂ†‰{ºöW\â\àl}5Ô”³vA<\ÅWR\è\åÍ²¹½,²L\ÚF\×+µø¹\ËA•\Âòz[vŒ«%µ‰ôºv,}†{\Ä\ÉÕ\×o§stŠòxlL?}iQøùò´Uº«²\ëixô³\í´óô¥\ì\Ú¾z¥×® *5ô|ÿ\ØùD¨\ê¢Da\åh}:\ÄuñfPWŸ6;•X·/k\×k-l{f$òó+S’•€O‡@–ı¸›A¡\äñä”‘†kY\é\n\àä«²m\Z0wtY\ÚÙ»=3>İ†G@5¥El{{>i\'\0\à\àM\Ç~¯\àGPg%~!\"¢Â¼ùš²b\ÖÎ§8+\å6º\Å\ê\Ì\ë\êkÙ¿òcNoşÉ¨§\çÀa¼ò\Ù:\\\Ü=\ÈJMæ©©÷\ZËŠòMw\ïC¾\Õ&\İ\ÉuùµÀ4;\'W&½¾š°>ò\å\çs»7ğ\Ûò©¯‘“\Î\âğ‹~¯ğ¡ø‡*ñ\í¨@\ã\Ø\ÒMõõB.\ì\İt\ë5öô˜8«y\æ\ëk\ê8´vg·}®®[=?ÿfóuùCûö°ô\é™R]U…€<ó3o%ü\0\0òvøxV\â~š¡¿Œ¨PRU’Ï¡5K9¿g#½Ü§\Æ9°‰x„\Ç\'47_W/N\î P\Ü^·µU)şM\â›\É>ûõe¢È±“˜ÿ\Ê{xú¶§N\ÛÈ²·^fßºOMÎ/Aİ–\İşO’=	\ïH\âÿó	ş]zPQx•?7,\çÌõ\èµ\Ílüpj\ßG¯\îØ»u\Â\É;_O4ö6(” T\Ê_mY1U%…”\æ$Q’}–²\ì\Ã4Tf`\ï\è\Ä\ÈIS¹ÿ±\'iL½^\âĞ‘c¬}ói\n2A~F÷8p\ë\åõ/\0FV}A f\Ìt\ÍZ\Ò|‘²¡º’Ô£¿’|p+\É\'a4X\Æ\ê\Í!ª\0\É\"\ĞickG¯Á\Ã~\ßô>…Ê†\ë\rF’\Ò2Ùºb)öl4\Íú_\È\Ê\Îú=™›õ}§Z‘ˆ¼Ï–\n¥’®#\ï§ß´…x5\å\ãAJ\ä\'¡4\ã…©\É\ËH¦²´„\Ú\êJó\ÆD>~ø‡„Ò‰˜>\é>`¥†\n­‘\n‘\Ô\ÄnøœKû~\Æh0€\Î{ù9\Ï?Š>Ü‡“.À³Àü¦¿ñ\íÔ\è{§1pl›Ô¢„TWF=ö\Øh4`$ôF¨\×K4\Z%*\nrI:¼‹‹¿m\"?õ’©z9ğ9ò“\Ú\n«\Ü&\İÍ§³´<mƒ¹µ\ïH\Ç{\àƒ»\î!8º[·ª¯p=\'ƒ\ë9\é\ä¥\\ \ë\ì©,/»õSõ\Ï*\ägrÿo)ùY\ëe\ä÷:\"m\ìŒn^FG7/£]›§È¯\È?B\á\İuº›+ -ò@¾‰…ùóyÀ\å¨E^Ö¥È©º\Ö\Ï\ç-\ï\Í\ÜEú_0–ÁE¥;\Z\0\0\0\0IEND®B`‚',0,'C:\\Users\\usuario\\OneDrive\\Documentos\\NetBeansProjects\\tienda_con\\target\\classes\\producto\\papitas-fritas.png',1);
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
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `producto_factura`
--

LOCK TABLES `producto_factura` WRITE;
/*!40000 ALTER TABLE `producto_factura` DISABLE KEYS */;
INSERT INTO `producto_factura` VALUES (1,22,15,2,0.2,1),(5,23,15,90,0.19,87480),(6,23,1,5,0.19,486000),(7,23,17,5,0.19,486000);
/*!40000 ALTER TABLE `producto_factura` ENABLE KEYS */;
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
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `Actualizar_total_venta` BEFORE INSERT ON `producto_factura` FOR EACH ROW BEGIN 
set @precio :=(select precio from producto where New.idproducto=idproducto), NEW.totalventas= New.cantidad*@precio-New.cantidad*@precio*NEW.descuento;
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
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `Actualizar_existencia` AFTER INSERT ON `producto_factura` FOR EACH ROW BEGIN
update producto as p set cantidad =cantidad - NEW.cantidad where NEW.idproducto=p.idproducto;
set @suma :=(select sum(totalventas)from producto_factura where idfactura=new.idfactura);
update factura set totalfactura=@suma+(@suma*impuesto)where idfactura=new.idfactura;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

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
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `proveedor`
--

LOCK TABLES `proveedor` WRITE;
/*!40000 ALTER TABLE `proveedor` DISABLE KEYS */;
INSERT INTO `proveedor` VALUES (9,'Cedula',2,'Camilo','Camilo@gmail.com','435455','fdsffsdf','Juridica',1,'2000-02-02'),(10,'Nit',1,'123','123','1233','ad','Persona natural',0,'2023-10-10'),(11,'Pasaporte',3,'webiiin','sdfdf','3423423','ewwfwef','Persona natural',0,'2023-10-03'),(12,'Cedula de ciudadania',1,'fsdffsdfsdf','sadfsafs','242424','sadsd','Persona natural',0,'2023-10-01'),(13,'Nit',2,'bismar','safdasfdsf','3542354345','dasdsaf','Persona natural',0,'2023-10-01'),(15,'Pasaporte',1,'Bismar','bismar@gmail.com','5253535','dsfsdfsdfd','Persona juridica',1,'2023-10-01'),(16,'Cedula de ciudadania',1,'camilooo','sadsadafd','3232323','sadsf','Persona natural',1,'2023-10-01'),(17,'Cedula de ciudadania',1,'camilo marmolejo','camilo@gmail.com','3253534','dasdasfsad','Persona natural',1,'2023-11-01'),(18,'Cedula de ciudadania',3,'camilo','fsdfdsf','423432','eefdsfsdf','Persona natural',1,'2001-02-02'),(19,'Tarjeta de identidad',3,'camilo','fsdfdsf','423432','eefdsfsdf','Persona juridica',1,'2001-02-02'),(20,'Tarjeta de identidad',1,'123','123','1233','qqwwee','Persona juridica',1,'2023-10-10'),(21,'Pasaporte',2,'webin','sssssssssss','243431','dsfdfsdf','Persona juridica',1,'2023-10-03'),(22,'Pasaporte',3,'webin','sfdfsdfsdf','243431','dsfdfsdf','Persona juridica',1,'2023-10-03'),(23,'Pasaporte',3,'BE,BARYAO','sfdfsdfsdf','243431','dsfdfsdf','Persona juridica',0,'2023-10-03'),(24,'Nit',1,'camilooo','sadsadafd','3232323','sadsf','Persona natural',1,'2023-10-01'),(25,'Cedula de ciudadania',1,'Cesar antonio','sadfsafs','242424','sadsd','Persona natural',1,'2023-10-01'),(26,'Cedula de ciudadania',1,'Cesar antonio','sadfsafs','5435345345','sadsd','Persona natural',0,'2023-10-01'),(27,'Cedula',2,'edwar','sdfff','34234234','horizonte','Juridica',0,'2000-02-02');
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
INSERT INTO `usuario` VALUES (1,'Cedula','Juan',1,1,'11','ae@gmail.com','as','123','123',1,'2005-12-20'),(12,'Cedula','webin',3,2,'23423423','ebinefdsf','wefsdfsdf','1234','1234',0,'2020-09-10'),(111,'Cedula','Camilo',2,1,'111','1','1','123','123',0,'2023-10-03'),(112,'','2233',1,2,'eeerrrr','ggfgfh','ghhh','hjgug','fcg',0,'2023-10-01'),(3434,'Cedula','dsdd',1,2,'5454','fasfsdfd','ddsfdsf','765','765',0,'2023-11-01'),(9898,'','19891',1,3,'89189','18901890','10890','113','123',0,'2023-10-05'),(83838,'Cedula','BEMBARAYOoo',2,1,'U9129U','IONOI','NIONIONIO','NIONOI','NOIIION',1,'2003-11-12'),(100392,'Cedula','camilo asa',1,2,'3254352351','camilo@gmail.com','zona sur','1234','1234',1,'2023-11-01'),(111222,'Pasaporte','Pepe',1,3,'12337','ghnjkl','vbnm,.','pepe','123',1,'2023-10-04'),(123444,'Cedula','11',1,2,'1','1@gmail.com','bembarat','1','',0,'2023-11-02'),(123999,'Pasaporte','Cesar',1,1,'12345','cesar@gmail.com','ooj','123','123',1,'2023-10-17'),(423432,'Cedula','webon',1,2,'3432434','xdxzc@gmail.com','dssadsd','12345','12345',1,'2023-11-01'),(123546456,'Pasaporte','mulatico',3,3,'5345435','mulaticooo','dsdfdsf','9923','1234',1,'2023-10-01'),(1234567676,'Tarjeta identidad','Yeyy',1,2,'43454353','yey@hotmail.com','barrio san judas','987','765',1,'2001-08-13'),(1321321324,'Tarjeta identidad','yeiner',1,2,'34343','webin@hotmail.com','dfgdsgdfgdfg','123455','123456',1,'2023-11-01');
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
/*!50003 DROP PROCEDURE IF EXISTS `Actualizar_Factura_Compra` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `Actualizar_Factura_Compra`(in idfact_co int, in idprovee int, in idusu int, in tipopago varchar(45))
BEGIN
update fact_com set idproveedor= idprovee, id_usuario= idusu,tipode_pago= tipopago where idfact_com=idfact_co;
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
/*!50003 DROP PROCEDURE IF EXISTS `Actualizar_Venta` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `Actualizar_Venta`(in idfact int, in tipodepago varchar(45), in idusu int, in idcliente int,in numecom int )
BEGIN
update factura set tipopago= tipodepago, idusuario = idusu, cedula= idcliente , numero_comprobante = numecom where idfact=idfactura;
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
/*!50003 DROP PROCEDURE IF EXISTS `BuscarRegistro_venta` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `BuscarRegistro_venta`(in idventa int)
BEGIN
select * from factura where idventa= idfactura;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `Buscar_Factura_compra` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `Buscar_Factura_compra`(in idfatcom int)
BEGIN
select * from fact_com where idfact_com = idfatcom;
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
/*!50003 DROP PROCEDURE IF EXISTS `Consultar_factura_compra` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `Consultar_factura_compra`(in valor varchar(45))
BEGIN
select * from mostrar_factura_compra where idfact_com  like concat('%',valor,'%') || idproveedor like concat('%',valor,'%') || id_usuario like concat('%',valor,'%') || fecha like concat('%',valor,'%')|| total_comp like concat('%',valor,'%')||  descuento like concat('%',valor,'%') || tipode_pago like concat('%',valor,'%')|| numero_comprobante like concat('%',valor,'%');
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
/*!50003 DROP PROCEDURE IF EXISTS `Consultar_venta` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `Consultar_venta`(in idventa varchar(45))
BEGIN
select * from mostrar_venta where idfactura like concat('%',valor,'%') || fecha like concat('%',valor,'%') || tipopago like concat('%',valor,'%')|| totalfactura like concat('%',valor,'%')|| cedula like concat('%',valor,'%')|| idusuario like concat('%',valor,'%')|| numero_comprobante like concat('%',valor,'%');
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
/*!50003 DROP PROCEDURE IF EXISTS `Eliminar_Detalle_Factura_Compra` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `Eliminar_Detalle_Factura_Compra`(in valor int)
BEGIN
delete from fact_com_prod where idfact_com_prod = valor;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `Eliminar_Factura_compra` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `Eliminar_Factura_compra`(in idfactucom int)
BEGIN
update fact_com set condicion= '0' where idfact_com= idfactucom;
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
/*!50003 DROP PROCEDURE IF EXISTS `Insertar_Factura_compra` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `Insertar_Factura_compra`(in idprovee int,in idusu int,in tipopa varchar(45),in numerocom int)
BEGIN
insert into fact_com (idproveedor,id_usuario,tipode_pago,fecha,total_comp,descuento,condicion,numero_comprobante) values (idprovee,idusu,tipopa,current_date(),'0','0','1',numerocom);
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `Insertar_Factura_compra_producto` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `Insertar_Factura_compra_producto`(in idfactura_com int, in idprodu int,in cantidad_compr int,in precio_uni float )
BEGIN
insert into fact_com_prod(idfact_com,idpro,cantidad_com,pre_uni,pre_total) values (idfactura_com,idprodu,cantidad_compr,precio_uni, '0');
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
/*!50003 DROP PROCEDURE IF EXISTS `Insertar_producto_Factura` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `Insertar_producto_Factura`(in idpro int, in idfact int , in canti int )
BEGIN
insert into producto_factura (idproducto, idfactura,cantidad,descuento,totalventas) values (idpro,idfact,canti, '0.19','0');
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `Insertar_venta` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `Insertar_venta`(in tipopa varchar(45), in CC int,in idusu int,in numerocomprobante int)
BEGIN
insert into factura (fecha,tipopago,impuesto,totalfactura,cedula,idusuario,condicion,numero_comprobante) values(current_date(),tipopa,'0.19','0',CC,idusu,'1',numerocomprobante);
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
/*!50003 DROP PROCEDURE IF EXISTS `Mostrar_Detalle_Factura` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `Mostrar_Detalle_Factura`(in valor int)
BEGIN
select fact_com.idfact_com 'Identificador', proveedor.nombre 'Proveedor', usuario.nombre 'Usuario', fact_com.tipode_pago 'Tipo_De_Pago', fact_com.numero_comprobante 'Numero_De_Comprobante', fact_com.fecha 'Fecha',  fact_com.total_comp 'Total_Compra', fact_com.impuesto 'Impuesto', producto.idproducto 'IDProducto', producto.nombre 'Nombre_Del_Producto', producto.descripcion 'Descripcion_Del_Producto', producto.cantidad 'Cantidad_Del_Producto', fact_com_prod.pre_uni 'Precio_Unitario', fact_com_prod.pre_total 'Precio_Total' from fact_com inner join proveedor on fact_com.idproveedor = proveedor.idproveedor inner join fact_com_prod on fact_com_prod.idfact_com = fact_com.idfact_com inner join producto on fact_com_prod.idpro = producto.idproducto inner join usuario on fact_com.id_usuario = usuario.idusuario  where fact_com.idfact_com = valor;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `Mostrar_Detalle_Venta` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `Mostrar_Detalle_Venta`(in valor int)
BEGIN
select factura.idfactura 'Identificador', cliente.nombre 'Cliente', usuario.nombre 'Usuario', factura.tipopago 'Tipo_De_Pago', factura.numero_comprobante 'Numero_De_Comprobante', factura.fecha 'Fecha',  factura.totalfactura 'Total_Factura', factura.impuesto 'Impuesto', producto.idproducto 'IDProducto', producto.nombre 'Nombre_Del_Producto', producto.descripcion 'Descripcion_Del_Producto', producto.cantidad 'Cantidad_Del_Producto', producto_factura.descuento 'Descuento', producto_factura.cantidad 'Cantidad' from factura inner join cliente on factura.cedula = cliente.cedula inner join producto_factura on producto_factura.idproducto_factura = factura.idfactura inner join producto on producto_factura.idproducto = producto.idproducto inner join usuario on factura.idusuario = usuario.idusuario  where factura.idfactura = valor;
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
-- Final view structure for view `mostrar_factura_compra`
--

/*!50001 DROP VIEW IF EXISTS `mostrar_factura_compra`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `mostrar_factura_compra` AS select `fact_com`.`idfact_com` AS `idfact_com`,`fact_com`.`idproveedor` AS `idproveedor`,`fact_com`.`id_usuario` AS `id_usuario`,`fact_com`.`fecha` AS `fecha`,`fact_com`.`total_comp` AS `total_comp`,`fact_com`.`descuento` AS `descuento`,`fact_com`.`tipode_pago` AS `tipode_pago`,`fact_com`.`numero_comprobante` AS `numero_comprobante` from ((`fact_com` join `proveedor` on((`fact_com`.`idproveedor` = `proveedor`.`idproveedor`))) join `usuario` on((`usuario`.`idusuario` = `fact_com`.`id_usuario`))) where (`fact_com`.`condicion` = 1) */;
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
-- Final view structure for view `mostrar_venta`
--

/*!50001 DROP VIEW IF EXISTS `mostrar_venta`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `mostrar_venta` AS select `factura`.`idfactura` AS `idfactura`,`factura`.`fecha` AS `fecha`,`factura`.`tipopago` AS `tipopago`,`factura`.`impuesto` AS `impuesto`,`factura`.`totalfactura` AS `totalfactura`,`cliente`.`nombre` AS `Cliente`,`usuario`.`nombre` AS `Usuario`,`factura`.`numero_comprobante` AS `numero_comprobante` from ((`factura` join `cliente` on((`factura`.`cedula` = `cliente`.`cedula`))) join `usuario` on((`factura`.`idusuario` = `usuario`.`idusuario`))) where (`factura`.`condicion` = '1') */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `mostrardetallefacturacompra`
--

/*!50001 DROP VIEW IF EXISTS `mostrardetallefacturacompra`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `mostrardetallefacturacompra` AS select `fact_com`.`idfact_com` AS `idfact_com`,`producto`.`nombre` AS `nombre`,`fact_com_prod`.`cantidad_com` AS `cantidad_com`,`fact_com_prod`.`pre_uni` AS `pre_uni`,`fact_com_prod`.`pre_total` AS `pre_total` from ((`fact_com_prod` join `producto` on((`fact_com_prod`.`idpro` = `producto`.`idproducto`))) join `fact_com` on((`fact_com_prod`.`idfact_com` = `fact_com`.`idfact_com`))) */;
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

-- Dump completed on 2023-12-13 14:40:33
