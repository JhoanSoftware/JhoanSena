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
INSERT INTO `producto` VALUES (22,'papita ass','Color Verde',0,_binary '�PNG\r\n\Z\n\0\0\0\rIHDR\0\0\0@\0\0\0@\0\0\0�iq\�\0\0\0sBIT|d�\0\0\0	pHYs\0\0\�\0\0\��\\�r\0\0\0tEXtSoftware\0www.inkscape.org�\�<\Z\0\0\Z\�IDATx�͛wtTշ\�?�NI&��IH#!�Ы���R|\"ņ�wŊؐ����\"A@\�J�\�R ��:���I2̄��\�z{�Y+9w���\�}v9G\�O^@\�B7�	ph\�*�2 �\�\0��\�xש\'�H$k?;{G����\�\�\�\�hg\�`l�H>z�7*\�Ŷ\�s�\�\�3\r@��P��D��1��\�����\�\�J�\�\�H!73�Ԅ�=~P���\�z�i�7�J�\�n�n\0\�,\�!/k\"�c9i:F�\�\�ǯ͊�\�U�T*5�v�Vy��qd\����AJ�t\�4\�\n`�1��\��o\0�9����B��FM�.L���a\�L:m\�ΐ��	�/�!\�jEy9T���\�Fc���;�B��&,*�\������\�$6���}[�z�\0\\^\0���B�;�P\�$ 	�(��>[\�r:C:����\�i�?2+��Vo���(�m5�Ze��\\�%ώ\�ox�\�\�I�wv�\�DQ��������\�m\�\�J��J�\�N�)	�`\�=��A�\�\n�|\r8�Fvc\�\�ψ��7\0�%���+����\�\ny�m�\�\�=��\�>t�\�[�`\�ݭ6l4\�)\�N� -�kIgI=��,�\�F�\�Ń;�\r\�Hhd7\0R/�\�\�\�H)\�\n@5�8���,���0k\�+(�J\Z\�j����i\�gh\�\�P(Ut<��#&\�{(J�͝�Ɍ\n\�/\��Ѡgل.hk�\�v&\'WD�^Ϛ_\�/?B�$�Ƹ�\�\���\ZXLurq�^�r�\�s\�0\0�\�\�\��WQRp\r�Ǝ\��\�w\���d\�WWQ\�\�\�^B����@�aO���_G�\�\r�F\�\�����*\�=��\�\�3\�$�c�\�����C�y}�cue��\�tw\05�\r�\�˯��\�\�=�pچz>y�Yvo�A�\Z6�Qߦ��os\��\�\n\�-O~ʅ\�\������b.~��\��\�\�^�\��ἴ�\\=�\�\�H\�G��D`0�[�p+\0D`05 4�\��\�\�\�KAn6��Hvj\"�\�>L~mA=�U��(e\�\�q�_fpl(/\�\Z~ӎ�\�q����\�\�ǟ\�_\�\�ɻ�M�3�\�9e&\�\�\�òvх\�<�~`�173ʹ\�&\�\�V\0,���\� �\�uT���%39�g������\�\�Ø��*�\�z\�ņ�\�\�\�ڨ\08v>�\�]Q)fu��\�Sla��8{w`�ʽ8{w�\�\���v���;�ǡ�3\�}��\�>(.\�cn�\0cq�5�\�Z\�V��>\0S��ݤ[���$_8\�\�)#�*/�\�\�YL~c\r6\Z�J7�\�\�<�\�\�r�7��Y=A\�7���2\�\'���\�>\"��\�\�α\��\n%\�q��v\�w~߱�\�\�q�G\�{\�(\����F���/��lR\�6\0!� \�D\�\�5?	Q\�{��s�SFRSYƠYK�\�;�x\�\��8\�q\�l�\��!\�\�\�R A`T���J9w1�\�\�{�<;\�\�Ա{vN��\�˱}�\�?b,��\�Dtl\�$��-@\�\�\0`R A_\���<FUEOLFi\�5�<�#�iQ\�V\�\�k\�LK�\0뾀	�\��:�y�:\�/���\�oD\r��-@h��QG������^FM�NpD�\r�B\�\���X`-�\�tS\0\��\��U\�#�\"�\�{��s\'�2��^�A0W�#|koE� 0�oIW\nI��FƩ?�\Z:��\�M\�\���j�\�OPp5��c\'ѽ\�@�\�\�i,�^\�\\\�\�\07v��yq\�&�ٱ~\r�V}��_3�oA�67jn&|u��Ҍ_P�A2��iuz$IB!�l)�(26.�\�\\JH&�\�D��\�V\�&\0� \�s	�o!�\�	��	�\�FH\���\�l\�6��+��^\�g0{\�����	%xd�/���1\�U��vA<i�\�wo>\�,��C���\�:\�b��rk\'wf\�[ϙ`4\�X���QϜ77�\�\�%\�D�P��0�$\�S�q�r\nή�w\�\�&\0\0J�\r�\�\�\\س�\'�2�\�9t\�Bѵ\\\�/\���!k-\��y\n��<�|��\Z\�j\�=\�	�\"b,�ouί{�!l\�-���Q@u���\�-n�\�\�	A�Ai\�rlV\�4��WJAI%u\r�٨�|�\�C,[4��&#b�๑���{�CT���×\�f�B)ir\��\�X�\�=�a\��|\r��<:�6n,\�v[�v͌��\�S���2+S\�{��-1++*�F�qs�hMW\�\�܋�\'8T_/\��\�1�\�%\�\�\�\�;O\�a\�\��&Y?h�Ag{xv*�M�>E���h���g~PӲo=�\�F\�\��\\[\���/��\�\�o*��g1:z�\�\�\�\�>\�*���}\�\�\�\�?a������5�\�}\��l\0�\�8\�׹;\�l>�����=B@�\���I�5�\�܉��\'��H�\���\��bN��\�Z�k� T\�lB�\�=\��wJ���#z\Z\�/�\�\�\�Y��\n=�A�m\�ݼ�F]\�fܖ�?8\�\�\��u��sé\�Y\�7�V�\�w\"1��M\�%	�z�\n�\�_���y4��\��|;oe׮X\�ˏ�~#)+.\�\���p\��3L2O�%8���x�\��~ݎ\�\�[\n_Y\���+~e��ɸڲ�B�`\��\�7��l\�\�v���\�Ӧ�_<?�	C�P[�\�\�\���Qo��A`\��B̘�\0߿��Q\�L�F��<�pw�\�|��*-\"\�\�\�h�	�\�j&|\�Ho�e\�\�`\�ƥ�RTVMH��2q\'v~1\�]=\�\\6mt,\�uZ�k9Q\�\�/w�鷳4\�\r�8{�U\0\�\�:ŷ�\�X\��=�P�8yx?�$\�\�\�����9���\0���\�a�8s�$ɈW�a�\n�߿z����\�\�ɧ��Z\��1\�\�\�7¬L\�k�\�9i����~�:\�\�փy❟�U�<h&<���3ih7<8��\�>\�\�Q���l\�\�Х\�%E�\'^�ǀa\nd�\'\"gl�\r��V%p��<cޝ�\0r\�	\�\�ᡨ�\�\�Ͽ��Gx��_\0�l\�d\�\�EZ�x�:�\��\�\�޶\�vDA`٢	7\��Ѳ,i	�֥y[F�4%1\��CP\n����_g\�D�\0\�9�DYe�Y�\�\�\r���\�\�\�\��\�\�6�ok\����N�\���T\�#�\�d�*\"��q�A!@vF\Z�Bm\�2\��\�B\��#S_X��(U�\��\�\�q�~\0��[3\��73\�\�|�\�Y7Sx����T�\�eIW\n\�H1zE4�\�@s\�*L<Q\�\�\�]}-\�%\�8��RY.�\�Pw��\�\�\�\�5;.F}���h(����\�ݞ7%�\�]�\�\\f�\�_~�Yx�Nϴ�c\�ӫI\�iɅ\��õ\�,��\�LR.�O�\��7a�\�<\�f�0ex�\���\��\0\�>�\0\\/*�\�\�\�\�\�z(���(RV\\�$I(m]�\�\�\�*��o?lQ^�{ʢ,&�=ۗ=\���Şo��ZI\�.�\�kͬ\�ƪ|��Z�5-���\�\�\�L�0?���(\�݉\�Z�^�������R\�E\�66FmC��p0���+*LP�7H7����h��\�_�5�g�2;eteY\\�k��\�I�pq`ߊyh\�����\�-��\�\���mhp4[\�Z�V����\�13%,H�\�SQm=\�\'\n\�\�+Yȝo\"QTX�\�h\�0�rÒd��΂\0]C���M��\�E_[�m	�3� Zzx\�x��I�\�f�\0ں\Z4�-\�f}m�\0T�@���\�hĠ�\�\�ƆRj�e�Ħ\0\�\�\�Wh\�)\�O�\0�\Z���\�\Zt<🵼��>3~��8\\b����.\�\�\�ᏹ��\�\\&*mq�gv\�\�1�\�/v3�\�5\�-Ƣo\�bhԡ��\�F��V�0P,�Ԗ�\�\�%�庚Bj+d4��\�Kx�s�bϬ<�V��</]��j\�*%_�:�-\�n��Z�d���JI\�,ோYhu�`Q�\�-��;\n�s3\��\�i\�Tr&\�js�\�\���6\�Ф+k\Z8z.���|�J�-\0�.�����|��]/6m�%�\�^\�\� 0�NnT��P]�CmU�.\��r7\�\�\��\�)<��\�\���<?\�\�\ZGl\�\�昀i\�%����\���>l�x�\�.\�u$����Ph�\�4���3(6�>][��\\\�\�n���������ϡ�NKoΧ^3\��J2\0�\�\0\�f��>��\�\�N���@p�s�)I��P6v\�]<���N<\�8~��%kN�kl�<?�y%�\�\��\���7�c�X�ӣ�},\�[I߀��Ȃ���&j�\�G2�/u/WG�\�7e�o8�J�S�(73\��)].\�%� ���i�\�����������V\�\�# �\�Xl� ����\"�qQ\�\���?��\�\n�~�\0[Gy;\�^�픈n�\�H�\�l#\\����u�\0��DT()�z�\�|#�\�!ܼ��r��N�,Ρ8\��\�YH\�\�\�\Z�,Y���*�\��>���\�p�R6�m<bV&�\�h>\ZA\�r\�I�\�[k�Y\r�\�T2\�o\�-,\'j\��O_��QǕ3G\�\�;й{O\0N9�G��c\"�=�\�ҫ�T\�a\�\�FDρԗgP]t�\�l��ԍ\�\�\���\�\�+�U\�Q_U�Aߒ�^�\�\"\�\�>͛�k.S9�\�!xNQ�5gZ���\��Ļ\�\�\�LRn\�C\��\�`د�\�\�\�I|�\�Q��\�\�\�+�\�g֐�_F\����\�7�\n%9O���!�WT*5Ws(ʻ�D\��\�P����?\"c1t$݃Bm�\�y :)hmu�\��2�̿���\��\�El�#���rr�kh\��3�}� \�8�\�\�\�\nϨ�B\�k�\�=��A�̔\n�^]\�\�\�ظ�CW�� �\�^9�<a�(\"�gk�\"\�W0\�ٯ\�-,�\�\�Lz}5b��^Ja�e^����h���=�\0X\�7�\�8\�\�ܵ����\��{\�@\�\�s\�y�9\�h=P|%�{7qaϏT��h���\�\�\�W\�NV\�\�-\�/�d⢯\�\�/#j\����5�B����\�#P�T\�<����=�\�a\�L��\0\�Ι�:\r�\�%���J2\ZGgb㧡\�VP���+	z�mj=�\"1�\r�ە\�#˷b\�\�*\��_ցm-{��}�\�z�\��\0�v�d�\\�I�\��g��8�\�\�\0���\n���g>����줛gdDQAH\�ػX�֚\�$\�Z(FQm���yB�$�N\�\Zݨ�&���yك\�=�\�S�J\�\�=�Ư��>\�\�o�6W���LEA.N\�퉹�A\Z\�s�\�O\�J\�S[u�Sj�$�\�:�ZsA\��\�Z�,��\�lD%.1\�p\�>\r�cK2\�5�1\�\�\�X�\�O�6*�\�o:�\0G\�}L}U9c|�� �s�ؿu��|�t����W�\�IFc�����{�\�͹�\�)�v\n��\�\�z\�,\"�m;Ɨ\�JE\�U�T3$\�]}�v\���Q\�\�Nù�k\�F\�nM��dDP��\�\�6+<G;N\\\�\�\�i�psnqdllԜ���\�;\�L\�(?�\";�>�\�Ύ�V����#���\�\�P�#r�$�@� �\�G�.=9�{\�ޞ�Ʃ#1�������\�\0���v~<%9i\�\�Ç��\�F�\�\�/��,��h4K�7� 4��&j\�{����\�\�\�>�Ƚ7�шpC;z]+g�(3�%�`\��\�\\:�\'�&I*:!\�5,\�\��@9H\��S/pϸ��G��t����hk�P��A�\�\���`c\�@\�\��H?q�Ĕl�s+\Zヾ��];J�m]�0Qk\�7V�\��C��R{;\�\���w�$\�\�Azʓ����g���%\"rf\�,Vo-\�zYSZ\�ިo$�\� �c�xp;�9\'A�0����pv��ZcO\�������\��\�Cc+n$I���\�Y\\�\0(��\�\�F�\"\�qꝃ�ȳ��\0}�\'~Z�w{>Z�;{V��2\��\����\'o�c\r\0	8<�{锭Ox7|ã	\�5����P�u�\�\r�A���oVBk\�_�|\�\�\"~@\Z\�\�7����O�\�P�\����\�^V�?����*v�,ߴ�� N\�\�\�/=P	�\�o\0���ə�>\�^<;\�>�	��Pze��\��v\0\r�\"n>\"ֶ�ZcO\�\��8@rj�u�\�v`4 IZ��u;O�[Tθ�\�8�Ӏ\�H~q9�Kv~��\�<8\�b\�K�\��5\���W�\�\��\�\�?\�%�\�i\�,z(\�ШՊ�\�O\�\�:ιx\�ٻ=��>@;O_�\�g\��S_]��oo�{��W\�\�l}5Ԕ�vA<\�WR\�\�Ͳ��,�L\�F\�+���\�A�\��z[v��%�����v,}�{\�\�՝\�o�st��xlL?}iQ����U����\�i��x��\����\�\��z�׮ *5�|�\��D�\�Da\�h}:\�u�fPW�6;��X�/�k\�k-l{f$��+�S���O�@����A�\��䔑�kY\�\n\�䫲m\Z0wtY\�ٻ=3>݆G@5�El{{>i\'\0\�\�M\�~�\�GPg%~!\"�¼���b\�Ώ�8+\�6�\�\�\�\�\�kٿ�cNo�ɨ�\��a��\�:\\\�=\�JM橩�\Zˊ�Mw\�C�\�&\�\�u���4;\'W&����>�\�\�s�7�\������\�\���~����*�\�@\�\�\�M��B.\�\�t\�5���8�y\�\�k\�8�vg�}���[�=�?�f�u�C����\�R]U��<�3o%��\0\0�v�xV\�~������PRU�ϡ5K9�g#�ܧ\�9���x��\�\'47_W/N\�P\�^��U)�M\��\�>���e�Ȑ����\�{x���N\�Ȳ�^fߺOM�Ώ�/Aݖ\��O�=��	\�H\���	�]zPQx�?7,\�̎�\��\�l�pj\�G�\�ػu\�\�;_O4�6(��T\�_mY1U%��\�$Q�}��\�\�4Tf`\�\�\�\�IS���\'iL�^\�Бc�}�i\n2A~F�8p\�\��/\0FV�}A f\�t\�Z\�|�����ԣ��|p+\�\'a4X\�\�\�!�\0\�\"\�ickG��\�~\��>�ʆ\�\rF�\�2ٺb)�l4\��_\�\�\��=���}�Z���ϖ\n���#\�ߴ�x5\�\�AJ\�\'��4\���\�\�H����\�\�J�\�D�>~���҉�>\�>`��\n��\n��\�\��n��K�~\�h0�\�{�9\�?�>܍��.�������\�ԍ\�{�1pl��Ԣ�TWF=��\�h4�`�$�F�\�K4\Z%*\nrI:����m\"?���z9�9�\�\n�\�&\�ͧ���<�m����\�H\�{\���\�!8�[���p=\'�\�9\�\�\\ \�\��,/��S��\�*\�gr�o)�Y\�e\��:�\"m\���n^FG7/��]����ȯ\�?B�\�\�u��+�-�@�����y�\�E^֥ȩ�\�\�\�-\�\�\�E�_0��E�;\Z\0\0\0\0IEND�B`�',0,'C:\\Users\\usuario\\OneDrive\\Documentos\\NetBeansProjects\\tienda_con\\target\\classes\\producto\\papitas-fritas.png',0),(23,'Celular','Iphoneee',-31,_binary '�PNG\r\n\Z\n\0\0\0\rIHDR\0\0\0@\0\0\0@\0\0\0�iq\�\0\0\0sBIT|d�\0\0\0	pHYs\0\0�\0\0�:\�\�\�\0\0\0tEXtSoftware\0www.inkscape.org�\�<\Z\0\0\�IDATx\�\�\�SW\�u��\�\��Ї��u�\�\�t�/\�i\�\Z�L��P��4��*T\�&��\"8�\\�T墐��Z���\\ \�!	/B\� \� a��[D&��t`\�\�w8���\�=瓓�{v��!b\�b$LL�R��!#\�!E,�\�X28�b뿨NJ\�\�@V\��6|�C�\r�H�����Y�\� \�ȟ�r�c$\�\�\�(D(:>\�\��C;��)�m�\��x�� \0d�@Bf�|�ۺ5\\\�\�\�1lGF�u�=� ga� ���\0x��={\"��8q�+\�&�N\�	\�+w\�F|	<\�Y1\0�F\0,\0p$wHx�ȶ��c��\��\�\���b)\�\0\0\0`\0Ԕ���Q�:��$��|~��&N�?G\�x�*��m\�4j\�wQ�6�̊�\0n���\�4@t�_R\�/ �S�\�\�\"���x��Y\�m �0(��N\�*R*J\�\�m�q��\���\�\�r=\���\�w\n@\�\�\Z\0� \�3�\�\��j*�?0\�5�vL	\0B\�6lU\0�U\�\�\�W����Q�\��\�x\�5\��@\�@�/�\0\\:W�g\0\�|�7Sc�&DnmMMU��Q|jVS=\0HV�w���F\�K{�%�A\�_x�cx��`�rI�&��9�\Zl\�uv�e�À\��q�I�\0`9���]�5\�Cו\�g\\�\�~d�y0h[��\�	�\�1� \�x�\�\�-\rs⥡���\�\�X\r@Po\�-�J��֤�O\�B\�\�8��ו�B,Gs�\Z\�2+o��9�k9Q\ZB�ґjm/{\�\r4\�\�4ό���7z\�zd8Gs\�5��\�\0�e\'K\�J	\�����kٌ\0���\���~6\�2\�&6\�m�z\�\�k$\�؊\�\�\"oz@7��\�*�\�\�?D\�s\�U^	=�_\�\�\0d���lb]�]�TZ��\�j.�\0\�ɭne\Z���\�\�ӌ\0$5�V�`�+j\�\�\�u=�\�p��������l\���b\�A��\�\�zT!R�\�c�t�\�\�\�\�p\�:`Z\�ț].���\��\��\�z)��\\tAlV\�{F%\r=.���^V���O\�+�sGxR\��Qȑ�3Fr`�̝,A<\�9�\�E\���s>^�p\�\�\�d-�}7���\�S\n.\�MO��\�t�a\�ux8��\�1\�h\�R\�81@\�561i	/n\�_0�\�C�ġx���3t2O\�7\0���~���ZcF\0mGg\�/\�\n��@Dqs��;V\�;]:\�u�\�6��P\�\�*��p�\� �\���l줯1`wI�\nr\n\��\�\�\0<ȑ\�UC�d�\�9\�\�\�`X�\�^،е�!\�c\�\�\�:pY��ٔ�\�1� �W�`L\�Bڞ�\�\�\�.pC$\0��D^C\��m\�\� zL$\�q�\0~�_MQU6\�|\nM�P�3>|�D#lsk�^\�@P���\�p#�_�u�ߵ?8&k\0\�M�\�\�t�F�%&NP��s KE\�\0\�k\�G\'&\�AP�X�֩\�	\�}��\�����1����\0\0��D�U����t}ئ\�|W��9_�b\��\��\�\��b\�A\�/ٲ�^^�f\��K+JW�p�}\0�?\�8\0\�\�|i\�]\r9?\�w\0י�\�; (C<ȩO\�G���g\��Y\�6]@0&\0�5N����\�\�l\"�\�%0�!\�ܑ\�0ؗU��=\0_O�!�j\0��=\�\�g\Z\�\�`�c����\�w\0R\�GS6�2�� \�oI.#\0 Y}\�`ԫ\�\�\r]X[-\�^D�\�gd���\�\��b\�A7\�s,Vh�r�]=�:p\0\0�>\0\�ēC�\�gmK)8f`��?8b\����\�\0l\�\�6�Xʫ\n�!aZ\�\�w \�\0ޱpr>m��{��P~\���\'�t��\�\��Re�\\:�\�O��\���汅\�ݶ{\�\0\0\0\0IEND�B`�',120000,'C:\\Users\\usuario\\OneDrive\\Documentos\\NetBeansProjects\\tienda_con\\target\\classes\\producto\\telefono-inteligente.png',1),(24,'22','Moto',0,_binary '�PNG\r\n\Z\n\0\0\0\rIHDR\0\0\0@\0\0\0@\0\0\0�iq\�\0\0\0sBIT|d�\0\0\0	pHYs\0\0\�\0\0\��\\�r\0\0\0tEXtSoftware\0www.inkscape.org�\�<\Z\0\0	IDATx�\�}�\�WY\�?\��\�\�\�\�{gfgw^���[��e\�h��\��\�-JcM[Z\r!Sň�#�C��!Ɛ \��%\n(�Zۂ+ڔJS��\�\�\�\�\�Ν;w\�\�\��;\�<�1Ô\�v\�\�mQ\�\'9�79\����\�{�\�y�0`��0`������\�\�*�㇔�*d�\n�\'�)E%\'�o��}�\�\���t�\�kMs%7�_΄?\��5�_\�K�\"v͊iXq����H\�\\O��?\�lΝ�\\�W\�\�\nP.O�z��1P\�f+�K�����!�\�7F�gS\�#}\�I#�%�\�\�2B*�V�j\�DP\"x(*���\�\�H3�sF�r+O�3%��v/sw��/|\�\\��\�\�m9�\�-ƺC��eo%QוBu0\�x���H\�2�Z�Q@y�HR��V+�:�.\�<5� ���\�\�y\�;�Ek\��z�N��5�;�^J�٣�[&��\�>\�]\�\�\�qrjv�P��\��\�GZ����S\0�V\�;\Zju[\�\�D9\n\�\��]ŐcI@1�w�\�\'O��U�\�(\'!�Z��\�]\��\��\�\�$��\�-~��7\�y\Z�Ņe\�\�\Z\�9\�\�e\�ϵ�/6\�2\�{k1\����\��gec��a���\�X�ڏE��;�sǮ�j%\�:>�~qj\�\�*\�(��\�\��k\�L�:�nv8�\�\�\�z�f��\�#of\��2�©��^o\�0\���s)w�\�1\�۶���L�\�x�3\"\�\�j�\�\�\"c�}��V,�\��NI\��<�\�Fc���\nP���a��嘂���T\��\�\�\�\���\���Ĩ���#��B��Y��\�\�Y[8\�J7E�\�#U�\�e�\�e*\�iڧ\�뼤S\�	��u�\�V���\�-�\�w��\�\����\�f}�_3FG���_\�~{8\�}����>*�\�I��c\�\�dfh)\�L/e�\�\�\�6K�.\�\n�\�Q\n��\�\�d�\�:�\�w_w�O�tx\�\�3�\�\�\�\�\��Dd�\�Z{uun�}�\�&0\�\���o\�\�Q?᫻�x\�Jۄ͝���\�Ѯe��\�x\�+%\�*\�\'	�J3�	\�r�v%1o\�=��}_\�\�3K\�kr\�X\��e��\�\�F��\�\�\�-����\�\�3���\�%	�_�+��+|bg�فgvr\�[Ϙ1�7���b	M\��NO�\'P\�=��C\�^_�\�ׯd��p��\��=×Zy��[\�\�ꋂ����3K?��E�&�㉞\�H�g\�	\�l\�\�[�T4\n<\�]�\�s�\�u+\�>ߦ+\�;]Ƈ$e�=��fQi��ǲ\�<�z<*+(,+\�h����Ǿ@�;\�\��}�l|�oy�cx6��|\�;b�[�Bn��\�\�=ç\�\�{��9Z�M~�\�X�K6��\��\��ŧt��\'��\�,w��8�(\r���g�6\�NƭCw\�\"�-\�R�;ڔr\�G\\\r��\�H�Lc\�s���<�k1ƐZ\��屄\�,K\�g	Ms+\�G4\�4�7���pS��>v.\�x\�P.ke<O\�\�\�\�[�(ş�\�5V\�oZ^O\r��R\��66\�\�\�\�\�\�wr�\�\Z\�\�}\Z����5w\�3�c1���ux�G!)�u��\�-��Xq\�h�\�Q\�\Zǝn�}~E��\�\�\��\�⟓�l	��1c\�X֍e\�8D��<\�?YeW\�\�\�זz,+�*D���R�1qX`�L���M>;^\�M���xV<\�>�b\�\�\�9r��O\�{\�!㾢\�)\"\�]��cx�HFl��\��ʵ�b)!\�	\�<9\�GGB���퀾\�3|h�\�]\�\�g%\��<�\�G��˯,\�\"9A)A�\�\���\�>_\�\�F�6R�\�3t�Ji�X1T��U�?\�����\�d���\\\�g{|\�f�\'C�;#7�\�y=���qR,a\�a���dP\�\����h\�O\�с�|\�0\��j�ۆ�\�,�\n4(�|\�\�\�\�\�\�谶\�b�٦\�\�\�\��\��S\�4\�X�s\"hO�\�E)���u+�\�jJP����bm�\�\�\�N�\�b~v��cСal\�0�Mvh8�Rn�\Z\�\��*O�R\�r�w/��w\r^a��\�5�P�y\�-7\�{\Z�`\��	�\�wI�]j�U\�ά2�9�\n_8\�_�x6u�A�̰r���I\�H2���@N�>E�����ߧ\�y��G\�{��O\�P�\�*:͔뮿��\�\�\']\���M6\Z)Qԣ66\�\�\��\�\�R\�uy.�<\�\�{J\�=>���j*бB�՟\�\\3�g�,M�	\"0���C&������\�|4p\�X\��i��\�\�\�\�q�X\�:\�Z\�\�6Kvk�((�P \'!\�\�%����������GJ�\�p\�x��dYJR���\���\rQ\�W\Z�O�	<�\�\��OԵ��`P(]Am�\�\n�u,/�e߾=hO\�\�[i	\�\Z��\�\�*\'\�_�M�[\�R\�=4\�\�_EGm�\�(n�YVDѦ�u�v�M��A�2�\�\�:\"A�\�\"\�r\�\�\0Ӻ�3��|\�\�f�<�\�\�z�%�B��-K�kT��\��)J\�2O?y��\���V\�	\�e�yqb \�Q�aqA\�\�\\�/��caf���\rl\'��a\�d���6\�Kw�\n�22�󞨇�\�\�\�h\�Z�B̀��b2�X�\��2�V\�L���B�~3\�u��\�\�\��=��l��3�/Z7pO�EK&\�dm� ��}M��2TO��0{�\�n�T���FӁ���-~|����Lܤ\�\0\"$J\��M\�\�\�.\�L\�(O�CQPdu)%܋RӯV\0\����KO������?�rk��\�(nL*Fiā\��fV\�\�{�� Ϻvܗ�tʉ�>�qn�\�E�\�\�\�\��8�� ?,:�>���&\�*����\�\'^m�W���N~\r���\���&���퉵jE9��Fcq����\�u�2:q\���y��Ң\�\�\n�N�ј��5\���\�S�}��t \n\�g�\�J=\�i�\�s\�\�,_\���\�wu���\�\���B��d݉~��o,..v_\�`��Ri\�?\�GA�Q�\�f5\�\������}0`��0`��0`��-�^t:��d�^\0\0\0\0IEND�B`�',0,'C:\\Users\\usuario\\OneDrive\\Documentos\\NetBeansProjects\\tienda_con\\target\\classes\\producto\\carro-deportivo.png',0),(25,'Carrro','Rojoo',69,_binary '�PNG\r\n\Z\n\0\0\0\rIHDR\0\0\0@\0\0\0@\0\0\0�iq\�\0\0\0sBIT|d�\0\0\0	pHYs\0\0\�\0\0\��\\�r\0\0\0tEXtSoftware\0www.inkscape.org�\�<\Z\0\0	IDATx�\�}�\�WY\�?\��\�\�\�\�{gfgw^���[��e\�h��\��\�-JcM[Z\r!Sň�#�C��!Ɛ \��%\n(�Zۂ+ڔJS��\�\�\�\�\�Ν;w\�\�\��;\�<�1Ô\�v\�\�mQ\�\'9�79\����\�{�\�y�0`��0`������\�\�*�㇔�*d�\n�\'�)E%\'�o��}�\�\���t�\�kMs%7�_΄?\��5�_\�K�\"v͊iXq����H\�\\O��?\�lΝ�\\�W\�\�\nP.O�z��1P\�f+�K�����!�\�7F�gS\�#}\�I#�%�\�\�2B*�V�j\�DP\"x(*���\�\�H3�sF�r+O�3%��v/sw��/|\�\\��\�\�m9�\�-ƺC��eo%QוBu0\�x���H\�2�Z�Q@y�HR��V+�:�.\�<5� ���\�\�y\�;�Ek\��z�N��5�;�^J�٣�[&��\�>\�]\�\�\�qrjv�P��\��\�GZ����S\0�V\�;\Zju[\�\�D9\n\�\��]ŐcI@1�w�\�\'O��U�\�(\'!�Z��\�]\��\��\�\�$��\�-~��7\�y\Z�Ņe\�\�\Z\�9\�\�e\�ϵ�/6\�2\�{k1\����\��gec��a���\�X�ڏE��;�sǮ�j%\�:>�~qj\�\�*\�(��\�\��k\�L�:�nv8�\�\�\�z�f��\�#of\��2�©��^o\�0\���s)w�\�1\�۶���L�\�x�3\"\�\�j�\�\�\"c�}��V,�\��NI\��<�\�Fc���\nP���a��嘂���T\��\�\�\�\���\���Ĩ���#��B��Y��\�\�Y[8\�J7E�\�#U�\�e�\�e*\�iڧ\�뼤S\�	��u�\�V���\�-�\�w��\�\����\�f}�_3FG���_\�~{8\�}����>*�\�I��c\�\�dfh)\�L/e�\�\�\�6K�.\�\n�\�Q\n��\�\�d�\�:�\�w_w�O�tx\�\�3�\�\�\�\�\��Dd�\�Z{uun�}�\�&0\�\���o\�\�Q?᫻�x\�Jۄ͝���\�Ѯe��\�x\�+%\�*\�\'	�J3�	\�r�v%1o\�=��}_\�\�3K\�kr\�X\��e��\�\�F��\�\�\�-����\�\�3���\�%	�_�+��+|bg�فgvr\�[Ϙ1�7���b	M\��NO�\'P\�=��C\�^_�\�ׯd��p��\��=×Zy��[\�\�ꋂ����3K?��E�&�㉞\�H�g\�	\�l\�\�[�T4\n<\�]�\�s�\�u+\�>ߦ+\�;]Ƈ$e�=��fQi��ǲ\�<�z<*+(,+\�h����Ǿ@�;\�\��}�l|�oy�cx6��|\�;b�[�Bn��\�\�=ç\�\�{��9Z�M~�\�X�K6��\��\��ŧt��\'��\�,w��8�(\r���g�6\�NƭCw\�\"�-\�R�;ڔr\�G\\\r��\�H�Lc\�s���<�k1ƐZ\��屄\�,K\�g	Ms+\�G4\�4�7���pS��>v.\�x\�P.ke<O\�\�\�\�[�(ş�\�5V\�oZ^O\r��R\��66\�\�\�\�\�\�wr�\�\Z\�\�}\Z����5w\�3�c1���ux�G!)�u��\�-��Xq\�h�\�Q\�\Zǝn�}~E��\�\�\��\�⟓�l	��1c\�X֍e\�8D��<\�?YeW\�\�\�זz,+�*D���R�1qX`�L���M>;^\�M���xV<\�>�b\�\�\�9r��O\�{\�!㾢\�)\"\�]��cx�HFl��\��ʵ�b)!\�	\�<9\�GGB���퀾\�3|h�\�]\�\�g%\��<�\�G��˯,\�\"9A)A�\�\���\�>_\�\�F�6R�\�3t�Ji�X1T��U�?\�����\�d���\\\�g{|\�f�\'C�;#7�\�y=���qR,a\�a���dP\�\����h\�O\�с�|\�0\��j�ۆ�\�,�\n4(�|\�\�\�\�\�\�谶\�b�٦\�\�\�\��\��S\�4\�X�s\"hO�\�E)���u+�\�jJP����bm�\�\�\�N�\�b~v��cСal\�0�Mvh8�Rn�\Z\�\��*O�R\�r�w/��w\r^a��\�5�P�y\�-7\�{\Z�`\��	�\�wI�]j�U\�ά2�9�\n_8\�_�x6u�A�̰r���I\�H2���@N�>E�����ߧ\�y��G\�{��O\�P�\�*:͔뮿��\�\�\']\���M6\Z)Qԣ66\�\�\��\�\�R\�uy.�<\�\�{J\�=>���j*бB�՟\�\\3�g�,M�	\"0���C&������\�|4p\�X\��i��\�\�\�\�q�X\�:\�Z\�\�6Kvk�((�P \'!\�\�%����������GJ�\�p\�x��dYJR���\���\rQ\�W\Z�O�	<�\�\��OԵ��`P(]Am�\�\n�u,/�e߾=hO\�\�[i	\�\Z��\�\�*\'\�_�M�[\�R\�=4\�\�_EGm�\�(n�YVDѦ�u�v�M��A�2�\�\�:\"A�\�\"\�r\�\�\0Ӻ�3��|\�\�f�<�\�\�z�%�B��-K�kT��\��)J\�2O?y��\���V\�	\�e�yqb \�Q�aqA\�\�\\�/��caf���\rl\'��a\�d���6\�Kw�\n�22�󞨇�\�\�\�h\�Z�B̀��b2�X�\��2�V\�L���B�~3\�u��\�\�\��=��l��3�/Z7pO�EK&\�dm� ��}M��2TO��0{�\�n�T���FӁ���-~|����Lܤ\�\0\"$J\��M\�\�\�.\�L\�(O�CQPdu)%܋RӯV\0\����KO������?�rk��\�(nL*Fiā\��fV\�\�{�� Ϻvܗ�tʉ�>�qn�\�E�\�\�\�\��8�� ?,:�>���&\�*����\�\'^m�W���N~\r���\���&���퉵jE9��Fcq����\�u�2:q\���y��Ң\�\�\n�N�ј��5\���\�S�}��t \n\�g�\�J=\�i�\�s\�\�,_\���\�wu���\�\���B��d݉~��o,..v_\�`��Ri\�?\�GA�Q�\�f5\�\������}0`��0`��0`��-�^t:��d�^\0\0\0\0IEND�B`�',120000,'C:\\Users\\usuario\\OneDrive\\Documentos\\NetBeansProjects\\tienda_con\\target\\classes\\producto\\carro-deportivo.png',1),(26,'Moto','color azul',0,_binary '�PNG\r\n\Z\n\0\0\0\rIHDR\0\0\0@\0\0\0@\0\0\0�iq\�\0\0\0sBIT|d�\0\0\0	pHYs\0\0b\0\0b_\'\�S\0\0\0tEXtSoftware\0www.inkscape.org�\�<\Z\0\0�IDATx�\�ytU\��\�?\�y\�{/\�\��\��@��b-Z�V�u��ڟ�ժ]j�ZK���S�\�_\�T�Uk�Z\0D \��I�$dN^^��Ƽ�{~ܼ�P���\�V�k\���{\�9{\�s\�\�߽υ�`#�F0��`#��=�3�h.�z\��\�\�\r\��P�RE��s�f��c�����\�\�\�\���$B��\�/zX�wK�a2���9`t�/�%\�\�\�X\��������\�@Ɨ`<�P\�}\�x��#\�\�\�σ�\�?\��\�`z���\�td�\�(Bνy���\�\�dۏ\�	�\��W+_\�^r��4F\�\n<|�\�F_\��\�<9c�b\�\�\�M>~\r耣�@>��\"	H�{�\\�d�,�2/\�v5�Y\��\�[\�\�ee<9cWb�X\�\�\�f�\�؀�l�mV�,���\�A���G[\�t	EUc�W\�\�\0�\07\�,@e��W�jOv%\�g\�Hq\�\�\� T5�\0mv\�\n\�&�\�`�|\�J\�\�\���������	�\�t�`��s����z�xg�7�\�t�3�sc?۶\r	�~&۫�K�]@\�(+�\"PV.\�\��K�\�g�\0P&�v5MvUt�Ay+v�ʆ�pr�.\�O�D\��(䏝Ĥ�3��>֯~�x<\�\0\����\"�y\�A\Z\�cx���\�B��H�����2\0�m��V+\�^�\�d\�h6�������LH)\�V;\�Y��6%\�\�^迶�-���x\�n\��\�E�[\�\Z��3Z093NACye\'O�q������qU\0\�@�� -��l\�\�O\��\�\�T��i�⹩\0��q�ih\r�\�u%0	m59\�\�\��)坝\\����\�霕�+\�\�\�\�p4\"tz\�Jg#� \�T�?\�&�9�0x\�jV�u�3�y�SR&̮\�S*\��XX2o+.(=�>�U�m@6�\�7D\�A\�2s\�M�6\�,�,��&ic\�\�fr��%L+v3i��Ic�t\���{=�!\�\�\�X\'K`6�.\�/\��2\0l.\'��K֭����=�q�s\�t�5\�\�|�@Wȡ@�\�]\�X<\�=\��3�\�|J哐\�ni\�\�Ob_Uװ��9�	��~�\�X��,F�َё>����-,�ɇ\0��$�?9E��!\�_���\n7�+\����\'�ˤ\�\�p0��]0v\�,<\�|<\�|�\��tu\�\�$\�㧧\�\'\�DB4�\�õ;�\�(�\�\�V=S��jM�S��\�ҕL�:��﹅O\�?��\�(\0��\�\�EX-F67z�\���sF&\�\�fZ|\�oI�Ϳ�V�Ɋ\�R\�v�\rS�_k#B(O!#���nB`0	tvpp\�R��\�(\�;g��\�,�\\�C�UU\�\�\ZX�lk�(�y&+�����g�ᆷ��S�SU�\��\�l3w,\��s�1YS\�[\�U��#[�x�\�Ϩ�\�-���y\0H~\n|C\"K�r��(��\�\'5\�KGS����&\�\�M~�d�\�B�@�7�4P�w;&�\�\�U\�\�\��F{\Z�*y}S�y��CG4\�g̚˵\�\�JɤR\�^�\n\�?�$\�M��Q\�ٸi���da��\�-��<�\�1~��=Dc��l�\�3�`\�\�n!�(?��\�:��|\�H�́Ǜ��\���]D�ݨ�\�pSlz\�?8�I�\'HٱNW?p�]�\0L?c\�^+�K\��\�\�x描\�\�ю�.nZ�\�\�3�\�[](z\�)\��@(�\�\�5$T��`ٹT\�\�J,\Z\�R�З5@,�9�;y&}�\�v\�kk\Z\�ؑ\�bL�$Lf+;��\';\�\�ƇJ\�\�4QYa\�\�t\�/�\�On��3f�ņu��\�C����\0�Q\��?.\���0ؾ�\�I��{\�>-�*\�\�/\�\�pR_SA$-����\0��rS\�锔\�\�h2\�\�!\n\�X[MGk󾹄�\�� \0F��\�XŚ\��\�\�\�\�Ϸ﨤�1ʲ\�Vr�m��\�\�\�ؽk\�)-ʵs\��b��p4F\�\�\�p�p\�\�h\�ͼ�\�8�H\�\�M^.�/�NF&\Z�>\�h�PP<WZ&f��ʶ�o��*w��9&M��^��\��[�c˦wq\��t��6cO>�\Zj��\�]x-\�M\�Hq񋂱�\r\��\�h���g�\n�6��k&g�\rO��Uu�\�߫xm\�qz\�C��\�\r\�>BK�\�1���\'3� p�H|��\�t{2�<��\Z,V;n��\"�\�\�g\�\';B�\�\�\�3�t*W]r>{\�w�4#�U��\�	�\�a\�j?�*���\�\�A6����=\�M䮫\'Ps<\�O\�g�\r\'S�$ڀ�\�.�\��S6�\"\�q\�\���hz�\0�pu��ۀ��\Z-nDcZ\�@(\�\�\�\��3c\�\�\�\�}8l\�D۷ld�\��X~\�5l�\��}\�	&\�S�C�dtB`4\�q��\����K��(�;\�\�\�&\�\�\�\"	Ic{�o\�:@�,&���p�9��`�X9\����\\����e��� �_�%9��Hj�wz&NW�FC=�6\�\�\�|����!����<B�������ȴ��\�+p\�\�\��?\�\�璛�O�\�mTW\����\�vj�ѕ\��h2�fn�2`ɖego�\0P�ܢI�:�5�\�\'��\�\�[\�G��\��z\����1\���_�K�yE�UP�+5�uh=a\�\�Y�C=ص���\��\�\��\�\�\�\�\��I)\�\0z\�n~z-\���z��o�p\�@i#���B`4�^y�	))\�0v�XUq\0)%\���R��ښX���y�S\�Tּ{�l\�䝏���\���\r6�\������3`s8IMM%\ZRu�0��\�NNAV{\n�\�^�7o;7�����\"pZ#`ڌ9X�V�oy�~y=G>;@�\�Kzv.R�T\�\�h�u`)\��\�z��X�\'��\0p�\�\�\��\�km�\�\�E�[;�u��\�.?��\�CL&�EF\�A�VA�N�`�\�df\�Y�0Yl\r\n��\��z�\0B�J�R:sR�|��m\Zkk\�9o!+��)��\� \�እim\�x¸)�\�\���;�|\�)\�s\n�!�\0�^�+݁\"N\�\�<�����!cT�9�9�s�/�f~�\�=[hoi\�~ڜ�����ٸ楤.\�\����\�@zI\�<\�\�T�;7�EgG+@�;\�1\�54GW\�\�\�bl���b\��|m(�\�9����g�U?$3ˋѠǓ\�FM\�پm3Y�c\�7\0�͎ݑ�3\�C\��c\��w\�5�o���b4\�Q�\�F���r\�\�\�HEǄ\�s��\�K4\"\Z\r1�`z���\�z\�\"�H\�lo���#ō+\�#j�?(��G��\�\�\�Y�=\�$�\�\��h=\�H�Hp+��Ob\Z��\�߁�`\���.\�\������\�\�r3\�q\�,X\�\Zk��T۫\�yE��-\Z�\�)�\�\�d\�/r_m5Q5�e���C�z�\��FC\�D��\�1\�U�\�k�KU5�ZI\�\�A��\��\�E�m�\Z\�[��\�Q�d\�\�|�X	�H\�_\nd\�j\�7\�\���\��n��h\��B�c�f��K.��\�\�}ĝ�>L^�h,&#�iN2Ҝ\�\�\�d9\�t�ؕ��ۓE8�`ձj�,\�զ��\�S\�W\�\�Hq�\�\�X��X	\�\�r�\�@jF6h~�-�{+袦�\��)\�\�\�ъ��ӳho(�ݍ\�-M��B��RJ�\�fg\�e+�\�kp���XMR\�V�Juw�\�\�\�b���#\�\�\�\�L\�h2\'C\�\0	-[�\�r��\�ϝGs]\r\�\�n\�RSq\ZD	vw��ٝDB=\0H)^B��\�\�\�L�\�\��\�\�km\�!\�\�\0\��5��Lo^rس�W�\�c0�@J��\�~�\�;������T.�\�\Z���\�\�\0�:O��N!\Z�\�\�	���Wx����J\�\�\��x�1\�Y�˭q��\�j�|mLHIa\�lmo\�\��:\�infk{;[\�ۇ�\�\��\�\�N�\�ĥ�k�L�\�lk\�\��&\�-n*��3\�~s3\�4MZ��z��M�\�\'�\�_<�c\�x\�\0�r�8�	{vm\'\� \����	tw\r�Q��))d�5:�7\ZBp\�\�\rMub뻯�\�����6 �{\'krAV�K&�*\n����\�\�����\rH\�E88`�`�\�\����\�Gp�\�Qt:\�Dbp°\�h2�\�\�\'�֡Z㽱|)%BQ��\�E�\�G�g�õ�-\��\�d�V�C$��\�\��tN�N\�kg\�E/&�\rk���HD\\�q#\�\�\�\���L�U>~\�bIN��`0��@LMOgj�V㻯�EQp�\�p8\�tj)�X�\ZxOq\�\�\�2fצ�I\�\�$��\�\�<Y\0��\��t*�1)%�m��exA+�^\��l]_<^��OCK�<hoL��P,Z�����\��\nؾ\�\�\�\�Z	+\n�\��X,��d	�/��5\��6[�.����\�\�\�Řm6�B΄��E\"\�R\�(�g\��\�\���K)\�E\���h�\�2�\�_[W��\�ז,\�T*h4_?y\�\��\����3:�����:��E.�X�v�[�=\�XW�|v3p�\"D\�Ç\�өU|\�\�\�\��\nQ�\�Ņ��\�\�\�ƨ;]Nv{;:��N\�\��\�tK�\"Ͳ����OB;a\n�MؓBN�.\�x�\�mQ�\0���*}q\�\�TF�/\�Tuڱ\�`F\�\��\"�\�����N�����\���=IC�R\�\�\'%?*\�M��UU	w�P\�S\�_\�b{�|tw��\�KP:k�B�\�N�U��m\�\0R���!R=Y\�{{�\�P^T\�f��xo�����?n\nc&��V6z�����\�6w\�tze�ً\�\�-$\��|\���Ӄ��xx�H0\�/�+\�K[O�\�\�n��\���8Ɂ\��!����|\'�\"k��&8\\Θ�EQt�o\���mh+�	x��/�I\�\��\0\�߹�\�X��Б\�f\�B�}H�9���Q�\�\�l6\��.\�\�E[\�q)�*\0�\�)\'J�\�ƞ\�BUl\��&M�G\0ޤ�X\rB��BJ9���SS��/\0���\�x��\r6�ԕ\r�v�57=+�	es�x2�T\�\�AS\�\�\�\�O�u2+�@��2Ov.\0\�{�\��A�v��\n4\r�6�bR\ZGSX<�˅\�\� \�\�G8ԃN�\�bs��:\�\��6\�\�\r�8r\�\��ɘ�B�Ğ\n\�\�\n@\Z?��^^B\�R�\�2)�>on:����\�A��=e@NUMph\�GT\�\�	BD��<�W�%�g	!\�H)\�Mf+9cJ\�)KFV��Ĥ���cU9Ry���8�N4_\�r\Z�jd\0\�:��QŌ�0���QC\ZŢ\Z�U�\��r-<\�C\�eh/���hNE��%�\�*\�i�ҕ�!Mf뉗�������\��*�\�M\�c0��+-C�ex�\�\�<�e��\�\�w7\�\�B\�gh����(�o��%~\�\�B+\�\�BKܒ\n\'Ў\�F{�\���WN�2ю��_\��\�m����i�F0��`#�F0��?\�x�r%��\0\0\0\0IEND�B`�',0,'C:\\Users\\usuario\\OneDrive\\Documentos\\NetBeansProjects\\tienda_con\\target\\classes\\producto\\moto.png',1),(27,'Papitasi0okoko','de pollo',0,_binary '�PNG\r\n\Z\n\0\0\0\rIHDR\0\0\0@\0\0\0@\0\0\0�iq\�\0\0\0sBIT|d�\0\0\0	pHYs\0\0\�\0\0\��\\�r\0\0\0tEXtSoftware\0www.inkscape.org�\�<\Z\0\0\Z\�IDATx�͛wtTշ\�?�NI&��IH#!�Ы���R|\"ņ�wŊؐ����\"A@\�J�\�R ��:���I2̄��\�z{�Y+9w���\�}v9G\�O^@\�B7�	ph\�*�2 �\�\0��\�xש\'�H$k?;{G����\�\�\�\�hg\�`l�H>z�7*\�Ŷ\�s�\�\�3\r@��P��D��1��\�����\�\�J�\�\�H!73�Ԅ�=~P���\�z�i�7�J�\�n�n\0\�,\�!/k\"�c9i:F�\�\�ǯ͊�\�U�T*5�v�Vy��qd\����AJ�t\�4\�\n`�1��\��o\0�9����B��FM�.L���a\�L:m\�ΐ��	�/�!\�jEy9T���\�Fc���;�B��&,*�\������\�$6���}[�z�\0\\^\0���B�;�P\�$ 	�(��>[\�r:C:����\�i�?2+��Vo���(�m5�Ze��\\�%ώ\�ox�\�\�I�wv�\�DQ��������\�m\�\�J��J�\�N�)	�`\�=��A�\�\n�|\r8�Fvc\�\�ψ��7\0�%���+����\�\ny�m�\�\�=��\�>t�\�[�`\�ݭ6l4\�)\�N� -�kIgI=��,�\�F�\�Ń;�\r\�Hhd7\0R/�\�\�\�H)\�\n@5�8���,���0k\�+(�J\Z\�j����i\�gh\�\�P(Ut<��#&\�{(J�͝�Ɍ\n\�/\��Ѡgل.hk�\�v&\'WD�^Ϛ_\�/?B�$�Ƹ�\�\���\ZXLurq�^�r�\�s\�0\0�\�\�\��WQRp\r�Ǝ\��\�w\���d\�WWQ\�\�\�^B����@�aO���_G�\�\r�F\�\�����*\�=��\�\�3\�$�c�\�����C�y}�cue��\�tw\05�\r�\�˯��\�\�=�pچz>y�Yvo�A�\Z6�Qߦ��os\��\�\n\�-O~ʅ\�\������b.~��\��\�\�^�\��ἴ�\\=�\�\�H\�G��D`0�[�p+\0D`05 4�\��\�\�\�KAn6��Hvj\"�\�>L~mA=�U��(e\�\�q�_fpl(/\�\Z~ӎ�\�q����\�\�ǟ\�_\�\�ɻ�M�3�\�9e&\�\�\�òvх\�<�~`�173ʹ\�&\�\�V\0,���\� �\�uT���%39�g������\�\�Ø��*�\�z\�ņ�\�\�\�ڨ\08v>�\�]Q)fu��\�Sla��8{w`�ʽ8{w�\�\���v���;�ǡ�3\�}��\�>(.\�cn�\0cq�5�\�Z\�V��>\0S��ݤ[���$_8\�\�)#�*/�\�\�YL~c\r6\Z�J7�\�\�<�\�\�r�7��Y=A\�7���2\�\'���\�>\"��\�\�α\��\n%\�q��v\�w~߱�\�\�q�G\�{\�(\����F���/��lR\�6\0!� \�D\�\�5?	Q\�{��s�SFRSYƠYK�\�;�x\�\��8\�q\�l�\��!\�\�\�R A`T���J9w1�\�\�{�<;\�\�Ա{vN��\�˱}�\�?b,��\�Dtl\�$��-@\�\�\0`R A_\���<FUEOLFi\�5�<�#�iQ\�V\�\�k\�LK�\0뾀	�\��:�y�:\�/���\�oD\r��-@h��QG������^FM�NpD�\r�B\�\���X`-�\�tS\0\��\��U\�#�\"�\�{��s\'�2��^�A0W�#|koE� 0�oIW\nI��FƩ?�\Z:��\�M\�\���j�\�OPp5��c\'ѽ\�@�\�\�i,�^\�\\\�\�\07v��yq\�&�ٱ~\r�V}��_3�oA�67jn&|u��Ҍ_P�A2��iuz$IB!�l)�(26.�\�\\JH&�\�D��\�V\�&\0� \�s	�o!�\�	��	�\�FH\���\�l\�6��+��^\�g0{\�����	%xd�/���1\�U��vA<i�\�wo>\�,��C���\�:\�b��rk\'wf\�[ϙ`4\�X���QϜ77�\�\�%\�D�P��0�$\�S�q�r\nή�w\�\�&\0\0J�\r�\�\�\\س�\'�2�\�9t\�Bѵ\\\�/\���!k-\��y\n��<�|��\Z\�j\�=\�	�\"b,�ouί{�!l\�-���Q@u���\�-n�\�\�	A�Ai\�rlV\�4��WJAI%u\r�٨�|�\�C,[4��&#b�๑���{�CT���×\�f�B)ir\��\�X�\�=�a\��|\r��<:�6n,\�v[�v͌��\�S���2+S\�{��-1++*�F�qs�hMW\�\�܋�\'8T_/\��\�1�\�%\�\�\�\�;O\�a\�\��&Y?h�Ag{xv*�M�>E���h���g~PӲo=�\�F\�\��\\[\���/��\�\�o*��g1:z�\�\�\�\�>\�*���}\�\�\�\�?a������5�\�}\��l\0�\�8\�׹;\�l>�����=B@�\���I�5�\�܉��\'��H�\���\��bN��\�Z�k� T\�lB�\�=\��wJ���#z\Z\�/�\�\�\�Y��\n=�A�m\�ݼ�F]\�fܖ�?8\�\�\��u��sé\�Y\�7�V�\�w\"1��M\�%	�z�\n�\�_���y4��\��|;oe׮X\�ˏ�~#)+.\�\���p\��3L2O�%8���x�\��~ݎ\�\�[\n_Y\���+~e��ɸڲ�B�`\��\�7��l\�\�v���\�Ӧ�_<?�	C�P[�\�\�\���Qo��A`\��B̘�\0߿��Q\�L�F��<�pw�\�|��*-\"\�\�\�h�	�\�j&|\�Ho�e\�\�`\�ƥ�RTVMH��2q\'v~1\�]=\�\\6mt,\�uZ�k9Q\�\�/w�鷳4\�\r�8{�U\0\�\�:ŷ�\�X\��=�P�8yx?�$\�\�\�����9���\0���\�a�8s�$ɈW�a�\n�߿z����\�\�ɧ��Z\��1\�\�\�7¬L\�k�\�9i����~�:\�\�փy❟�U�<h&<���3ih7<8��\�>\�\�Q���l\�\�Х\�%E�\'^�ǀa\nd�\'\"gl�\r��V%p��<cޝ�\0r\�	\�\�ᡨ�\�\�Ͽ��Gx��_\0�l\�d\�\�EZ�x�:�\��\�\�޶\�vDA`٢	7\��Ѳ,i	�֥y[F�4%1\��CP\n����_g\�D�\0\�9�DYe�Y�\�\�\r���\�\�\�\��\�\�6�ok\����N�\���T\�#�\�d�*\"��q�A!@vF\Z�Bm\�2\��\�B\��#S_X��(U�\��\�\�q�~\0��[3\��73\�\�|�\�Y7Sx����T�\�eIW\n\�H1zE4�\�@s\�*L<Q\�\�\�]}-\�%\�8��RY.�\�Pw��\�\�\�\�5;.F}���h(����\�ݞ7%�\�]�\�\\f�\�_~�Yx�Nϴ�c\�ӫI\�iɅ\��õ\�,��\�LR.�O�\��7a�\�<\�f�0ex�\���\��\0\�>�\0\\/*�\�\�\�\�\�z(���(RV\\�$I(m]�\�\�\�*��o?lQ^�{ʢ,&�=ۗ=\���Şo��ZI\�.�\�kͬ\�ƪ|��Z�5-���\�\�\�L�0?���(\�݉\�Z�^�������R\�E\�66FmC��p0���+*LP�7H7����h��\�_�5�g�2;eteY\\�k��\�I�pq`ߊyh\�����\�-��\�\���mhp4[\�Z�V����\�13%,H�\�SQm=\�\'\n\�\�+Yȝo\"QTX�\�h\�0�rÒd��΂\0]C���M��\�E_[�m	�3� Zzx\�x��I�\�f�\0ں\Z4�-\�f}m�\0T�@���\�hĠ�\�\�ƆRj�e�Ħ\0\�\�\�Wh\�)\�O�\0�\Z���\�\Zt<🵼��>3~��8\\b����.\�\�\�ᏹ��\�\\&*mq�gv\�\�1�\�/v3�\�5\�-Ƣo\�bhԡ��\�F��V�0P,�Ԗ�\�\�%�庚Bj+d4��\�Kx�s�bϬ<�V��</]��j\�*%_�:�-\�n��Z�d���JI\�,ோYhu�`Q�\�-��;\n�s3\��\�i\�Tr&\�js�\�\���6\�Ф+k\Z8z.���|�J�-\0�.�����|��]/6m�%�\�^\�\� 0�NnT��P]�CmU�.\��r7\�\�\��\�)<��\�\���<?\�\�\ZGl\�\�昀i\�%����\���>l�x�\�.\�u$����Ph�\�4���3(6�>][��\\\�\�n���������ϡ�NKoΧ^3\��J2\0�\�\0\�f��>��\�\�N���@p�s�)I��P6v\�]<���N<\�8~��%kN�kl�<?�y%�\�\��\���7�c�X�ӣ�},\�[I߀��Ȃ���&j�\�G2�/u/WG�\�7e�o8�J�S�(73\��)].\�%� ���i�\�����������V\�\�# �\�Xl� ����\"�qQ\�\���?��\�\n�~�\0[Gy;\�^�픈n�\�H�\�l#\\����u�\0��DT()�z�\�|#�\�!ܼ��r��N�,Ρ8\��\�YH\�\�\�\Z�,Y���*�\��>���\�p�R6�m<bV&�\�h>\ZA\�r\�I�\�[k�Y\r�\�T2\�o\�-,\'j\��O_��QǕ3G\�\�;й{O\0N9�G��c\"�=�\�ҫ�T\�a\�\�FDρԗgP]t�\�l��ԍ\�\�\���\�\�+�U\�Q_U�Aߒ�^�\�\"\�\�>͛�k.S9�\�!xNQ�5gZ���\��Ļ\�\�\�LRn\�C\��\�`د�\�\�\�I|�\�Q��\�\�\�+�\�g֐�_F\����\�7�\n%9O���!�WT*5Ws(ʻ�D\��\�P����?\"c1t$݃Bm�\�y :)hmu�\��2�̿���\��\�El�#���rr�kh\��3�}� \�8�\�\�\�\nϨ�B\�k�\�=��A�̔\n�^]\�\�\�ظ�CW�� �\�^9�<a�(\"�gk�\"\�W0\�ٯ\�-,�\�\�Lz}5b��^Ja�e^����h���=�\0X\�7�\�8\�\�ܵ����\��{\�@\�\�s\�y�9\�h=P|%�{7qaϏT��h���\�\�\�W\�NV\�\�-\�/�d⢯\�\�/#j\����5�B����\�#P�T\�<����=�\�a\�L��\0\�Ι�:\r�\�%���J2\ZGgb㧡\�VP���+	z�mj=�\"1�\r�ە\�#˷b\�\�*\��_ցm-{��}�\�z�\��\0�v�d�\\�I�\��g��8�\�\�\0���\n���g>����줛gdDQAH\�ػX�֚\�$\�Z(FQm���yB�$�N\�\Zݨ�&���yك\�=�\�S�J\�\�=�Ư��>\�\�o�6W���LEA.N\�퉹�A\Z\�s�\�O\�J\�S[u�Sj�$�\�:�ZsA\��\�Z�,��\�lD%.1\�p\�>\r�cK2\�5�1\�\�\�X�\�O�6*�\�o:�\0G\�}L}U9c|�� �s�ؿu��|�t����W�\�IFc�����{�\�͹�\�)�v\n��\�\�z\�,\"�m;Ɨ\�JE\�U�T3$\�]}�v\���Q\�\�Nù�k\�F\�nM��dDP��\�\�6+<G;N\\\�\�\�i�psnqdllԜ���\�;\�L\�(?�\";�>�\�Ύ�V����#���\�\�P�#r�$�@� �\�G�.=9�{\�ޞ�Ʃ#1�������\�\0���v~<%9i\�\�Ç��\�F�\�\�/��,��h4K�7� 4��&j\�{����\�\�\�>�Ƚ7�шpC;z]+g�(3�%�`\��\�\\:�\'�&I*:!\�5,\�\��@9H\��S/pϸ��G��t����hk�P��A�\�\���`c\�@\�\��H?q�Ĕl�s+\Zヾ��];J�m]�0Qk\�7V�\��C��R{;\�\���w�$\�\�Azʓ����g���%\"rf\�,Vo-\�zYSZ\�ިo$�\� �c�xp;�9\'A�0����pv��ZcO\�������\��\�Cc+n$I���\�Y\\�\0(��\�\�F�\"\�qꝃ�ȳ��\0}�\'~Z�w{>Z�;{V��2\��\����\'o�c\r\0	8<�{锭Ox7|ã	\�5����P�u�\�\r�A���oVBk\�_�|\�\�\"~@\Z\�\�7����O�\�P�\����\�^V�?����*v�,ߴ�� N\�\�\�/=P	�\�o\0���ə�>\�^<;\�>�	��Pze��\��v\0\r�\"n>\"ֶ�ZcO\�\��8@rj�u�\�v`4 IZ��u;O�[Tθ�\�8�Ӏ\�H~q9�Kv~��\�<8\�b\�K�\��5\���W�\�\��\�\�?\�%�\�i\�,z(\�ШՊ�\�O\�\�:ιx\�ٻ=��>@;O_�\�g\��S_]��oo�{��W\�\�l}5Ԕ�vA<\�WR\�\�Ͳ��,�L\�F\�+���\�A�\��z[v��%�����v,}�{\�\�՝\�o�st��xlL?}iQ����U����\�i��x��\����\�\��z�׮ *5�|�\��D�\�Da\�h}:\�u�fPW�6;��X�/�k\�k-l{f$��+�S���O�@����A�\��䔑�kY\�\n\�䫲m\Z0wtY\�ٻ=3>݆G@5�El{{>i\'\0\�\�M\�~�\�GPg%~!\"�¼���b\�Ώ�8+\�6�\�\�\�\�\�kٿ�cNo�ɨ�\��a��\�:\\\�=\�JM橩�\Zˊ�Mw\�C�\�&\�\�u���4;\'W&����>�\�\�s�7�\������\�\���~����*�\�@\�\�\�M��B.\�\�t\�5���8�y\�\�k\�8�vg�}���[�=�?�f�u�C����\�R]U��<�3o%��\0\0�v�xV\�~������PRU�ϡ5K9�g#�ܧ\�9���x��\�\'47_W/N\�P\�^��U)�M\��\�>���e�Ȑ����\�{x���N\�Ȳ�^fߺOM�Ώ�/Aݖ\��O�=��	\�H\���	�]zPQx�?7,\�̎�\��\�l�pj\�G�\�ػu\�\�;_O4�6(��T\�_mY1U%��\�$Q�}��\�\�4Tf`\�\�\�\�IS���\'iL�^\�Бc�}�i\n2A~F�8p\�\��/\0FV�}A f\�t\�Z\�|�����ԣ��|p+\�\'a4X\�\�\�!�\0\�\"\�ickG��\�~\��>�ʆ\�\rF�\�2ٺb)�l4\��_\�\�\��=���}�Z���ϖ\n���#\�ߴ�x5\�\�AJ\�\'��4\���\�\�H����\�\�J�\�D�>~���҉�>\�>`��\n��\n��\�\��n��K�~\�h0�\�{�9\�?�>܍��.�������\�ԍ\�{�1pl��Ԣ�TWF=��\�h4�`�$�F�\�K4\Z%*\nrI:����m\"?���z9�9�\�\n�\�&\�ͧ���<�m����\�H\�{\���\�!8�[���p=\'�\�9\�\�\\ \�\��,/��S��\�*\�gr�o)�Y\�e\��:�\"m\���n^FG7/��]����ȯ\�?B�\�\�u��+�-�@�����y�\�E^֥ȩ�\�\�\�-\�\�\�E�_0��E�;\Z\0\0\0\0IEND�B`�',0,'C:\\Users\\usuario\\OneDrive\\Documentos\\NetBeansProjects\\tienda_con\\target\\classes\\producto\\papitas-fritas.png',1);
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
