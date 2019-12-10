-- MySQL dump 10.13  Distrib 8.0.18, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: mydb
-- ------------------------------------------------------
-- Server version	8.0.18

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
-- Table structure for table `administrador`
--

DROP TABLE IF EXISTS `administrador`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `administrador` (
  `idAdministrador` int(11) NOT NULL AUTO_INCREMENT,
  `Nomina` double DEFAULT NULL,
  `Usuario_idUsuario` int(11) NOT NULL,
  PRIMARY KEY (`idAdministrador`),
  UNIQUE KEY `idAdministrador_UNIQUE` (`idAdministrador`),
  KEY `fk_Administrador_Usuario_idx` (`Usuario_idUsuario`),
  CONSTRAINT `fk_Administrador_Usuario` FOREIGN KEY (`Usuario_idUsuario`) REFERENCES `usuario` (`idUsuario`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `administrador`
--

LOCK TABLES `administrador` WRITE;
/*!40000 ALTER TABLE `administrador` DISABLE KEYS */;
INSERT INTO `administrador` VALUES (1,84848484,1);
/*!40000 ALTER TABLE `administrador` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `art√≠culo`
--

DROP TABLE IF EXISTS `art√≠culo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `art√≠culo` (
  `idArt√≠culo` int(11) NOT NULL AUTO_INCREMENT,
  `Nombre` varchar(100) NOT NULL,
  `Descripci√≥n` varchar(255) NOT NULL,
  `Fecha` datetime DEFAULT NULL,
  `Precio` float NOT NULL,
  `Unidades` decimal(10,0) NOT NULL,
  `Categoria` int(11) NOT NULL,
  `BorradorOPublicado` tinyint(4) DEFAULT '0',
  `Activo` tinyint(4) DEFAULT '1',
  PRIMARY KEY (`idArt√≠culo`),
  UNIQUE KEY `idArt√≠culo_UNIQUE` (`idArt√≠culo`),
  UNIQUE KEY `Nombre_UNIQUE` (`Nombre`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `art√≠culo`
--

LOCK TABLES `art√≠culo` WRITE;
/*!40000 ALTER TABLE `art√≠culo` DISABLE KEYS */;
INSERT INTO `art√≠culo` VALUES (1,'Unidad de Estado S√≥lido Kingston A400 de 480 GB, 2.5\" SATA III (6Gb/s)','Disco Duro tipo unidad de estado s√≥lido capacidad 480GB interfaz SATA III (6.0 Gb/s) factor de forma 2.5\"','2019-10-17 04:08:41',1099,29,2,1,1),(2,'Procesador Intel Core i7-8700','Octava Generaci√≥n, 3.2 GHz (hasta 4.6 GHz) con Intel UHD Graphics 630, Socket 1151, Cach√© 12 MB, Six-Core, 14nm','2019-10-18 00:45:43',7399,29,2,1,1),(3,'Tarjeta de Video NVIDIA Gigabyte GeForce GTX 1060 Windforce OC','6GB GDDR5, 1xHDMI, 2xDVI, 1xDisplayPort, PCI Express x16 3.0','2019-10-18 00:50:41',4899,29,2,1,0),(4,'Bocinas Logitech Z906 Digital','Autentico Sonido 5.1 Dolby Digital y DTS, Certificacion THX, 500 Watts RMS de Poder total','2019-10-18 00:51:43',4299,22,3,1,1),(5,'Regulador Koblenz 1400VA/600W','con 8 contactos','2019-10-18 00:54:56',299,19,5,1,1),(6,'Kaspersky Anti-Virus 2019, 10 PCs, 1 A√±o','Tu protecci√≥n comienza con la de tu PC. Es por eso que nuestra protecci√≥n esencial para PC la protege de virus, ransomware, phishing, spyware, sitios web peligrosos y mucho m√°s.','2019-10-18 04:35:47',49,14,6,1,1),(7,'Mini Mouse Rosa','Optico Inalambrico Logitech M187 USB Color rosa','2019-11-22 04:53:31',249,25,3,1,1),(8,'Mouse Pad Primus','PMP-10L Gaming Arena color morado','2019-11-22 04:59:37',369,29,3,1,0),(9,'Laptop Lenovo Legion Y730','Procesador Intel Core i5 8300H hasta 4 GHz Memoria de 8GB DDR4 Disco Duro de 1TB SSD de 128GB Pantalla de 15.6 LED Video GeForce GTX 1050 Ti Unidad Optica No Incluida SO Windows 10 Home 64 Bits','2019-11-24 04:24:47',21699,29,1,0,0),(10,'Memoria ADATA Premier','microSDHC UHS-1 de 32 GB, clase 10, incluye adaptador SD','2019-11-24 04:39:52',79,23,4,1,1),(11,'Eset Internet Security 2019','Para 1 Usuario te brinda la ultima tecnologi√Ç¬≠a de proteccion para tus actividades online en computadoras o smartphones.','2019-11-26 01:14:16',269,8,6,1,1),(12,'Audifonos Logitech','Audifonos con microfono bluetooth','2019-11-26 20:01:36',2600,29,2,0,1),(13,'Workstation HP ZBook 15v G5','Procesador Intel Core i7 8750H hasta 4.20 GHz, Memoria RAM 8 GB DDR4, Disco Duro de 1 TB, Pantalla de 15.6 pulgadas LED, Video NVIDIA Quadro P600 con 4GB GDDR5, Windows 10 Pro 64 Bits.','2019-12-02 22:45:23',25999,16,1,1,1),(14,'Smartphone Xiaomi Redmi Note 8','Procesador Snapdragon 665 Octa Core hasta 2.0GHz, Memoria RAM de 4GB, Almacenamiento de 64GB, Pantalla LED Multi Touch de 6.3','2019-12-02 22:47:14',3999,19,5,1,1),(15,'Kit HP de Mochila y Mouse Classic','15 pulgadas, compatible con Windows 7, 8, 10, Mac OS 10X y superior','2019-12-09 01:22:17',449,145,3,1,1),(16,'Television Samsung LED Smart TV de 55 pulgadas ','Ultra 4K, disfruta tus contenidos HDR con mejor claridad y una expresion de color precisa. Samsung UHD TV ofrece detalles mas nitidos, incluso en escenas oscuras o brillantes.','2019-12-09 22:10:52',9999,161,2,1,1);
/*!40000 ALTER TABLE `art√≠culo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `categoria`
--

DROP TABLE IF EXISTS `categoria`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `categoria` (
  `idCategoria` int(11) NOT NULL AUTO_INCREMENT,
  `Nombre` varchar(45) NOT NULL,
  PRIMARY KEY (`idCategoria`),
  UNIQUE KEY `idCategoria_UNIQUE` (`idCategoria`),
  UNIQUE KEY `Categoriacol_UNIQUE` (`Nombre`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categoria`
--

LOCK TABLES `categoria` WRITE;
/*!40000 ALTER TABLE `categoria` DISABLE KEYS */;
INSERT INTO `categoria` VALUES (3,'Accesorios'),(4,'Almacenamiento'),(1,'Computadoras'),(5,'Electronica'),(2,'Hardware'),(6,'Software');
/*!40000 ALTER TABLE `categoria` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `chat`
--

DROP TABLE IF EXISTS `chat`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `chat` (
  `idChat` int(11) NOT NULL AUTO_INCREMENT,
  `Cliente_Compra_Art√≠culo_Cliente_idCliente` int(11) NOT NULL,
  `Cliente_Compra_Art√≠culo_Art√≠culo_idArt√≠culo` int(11) NOT NULL,
  `IdVenta` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idChat`,`Cliente_Compra_Art√≠culo_Cliente_idCliente`,`Cliente_Compra_Art√≠culo_Art√≠culo_idArt√≠culo`),
  UNIQUE KEY `idChat_UNIQUE` (`idChat`),
  KEY `fk_Chat_Cliente_Compra_Art√≠culo1_idx` (`Cliente_Compra_Art√≠culo_Cliente_idCliente`,`Cliente_Compra_Art√≠culo_Art√≠culo_idArt√≠culo`),
  CONSTRAINT `fk_Chat_Cliente_Compra_Art√≠culo1` FOREIGN KEY (`Cliente_Compra_Art√≠culo_Cliente_idCliente`, `Cliente_Compra_Art√≠culo_Art√≠culo_idArt√≠culo`) REFERENCES `cliente_compra_art√≠culo` (`Cliente_idCliente`, `Art√≠culo_idArt√≠culo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `chat`
--

LOCK TABLES `chat` WRITE;
/*!40000 ALTER TABLE `chat` DISABLE KEYS */;
/*!40000 ALTER TABLE `chat` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cliente`
--

DROP TABLE IF EXISTS `cliente`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cliente` (
  `idCliente` int(11) NOT NULL AUTO_INCREMENT,
  `Usuario_idUsuario` int(11) NOT NULL,
  PRIMARY KEY (`idCliente`),
  UNIQUE KEY `idAdministrador_UNIQUE` (`idCliente`),
  KEY `fk_Cliente_Usuario1_idx` (`Usuario_idUsuario`),
  CONSTRAINT `fk_Cliente_Usuario1` FOREIGN KEY (`Usuario_idUsuario`) REFERENCES `usuario` (`idUsuario`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cliente`
--

LOCK TABLES `cliente` WRITE;
/*!40000 ALTER TABLE `cliente` DISABLE KEYS */;
INSERT INTO `cliente` VALUES (1,3),(2,4),(3,5),(4,6),(5,7),(6,8),(7,9);
/*!40000 ALTER TABLE `cliente` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cliente_compra_articulo_detalle_de_venta`
--

DROP TABLE IF EXISTS `cliente_compra_articulo_detalle_de_venta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cliente_compra_articulo_detalle_de_venta` (
  `Cantidad` int(11) NOT NULL,
  `Subtotal` float NOT NULL,
  `idCliente` int(11) NOT NULL,
  `idArticulo` int(11) NOT NULL,
  `IDVenta` int(11) NOT NULL,
  `IDDetalleDeVenta` int(11) NOT NULL,
  `FechaDeCompra` datetime DEFAULT NULL,
  `Activo` tinyint(4) DEFAULT '1',
  PRIMARY KEY (`IDDetalleDeVenta`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cliente_compra_articulo_detalle_de_venta`
--

LOCK TABLES `cliente_compra_articulo_detalle_de_venta` WRITE;
/*!40000 ALTER TABLE `cliente_compra_articulo_detalle_de_venta` DISABLE KEYS */;
INSERT INTO `cliente_compra_articulo_detalle_de_venta` VALUES (5,2850,3,2,6,1,'2019-12-01 00:00:00',0),(1,500,3,7,2,2,'2019-12-05 21:51:02',0),(1,2750,3,10,2,3,'2019-12-05 21:51:02',0),(1,759,3,11,2,4,'2019-12-05 21:51:02',0),(3,1099,3,10,2,5,'2019-12-05 22:08:49',0),(2,1099,3,11,2,6,'2019-12-05 22:08:49',0),(5,1099,3,13,2,7,'2019-12-05 22:08:49',0),(11,1099,3,11,2,8,'2019-12-05 22:11:15',0),(5,1099,3,13,2,9,'2019-12-05 22:11:18',0),(4,1099,3,14,2,10,'2019-12-05 22:11:20',0),(1,1099,3,11,2,11,'2019-12-05 22:13:34',0),(1,1099,3,13,2,12,'2019-12-05 22:13:35',0),(1,1099,3,14,2,13,'2019-12-05 22:13:35',0),(1,1099,7,7,3,14,'2019-12-05 22:15:24',0),(15,500,7,10,3,15,'2019-12-05 22:15:31',0),(5,750,7,11,3,16,'2019-12-05 22:15:34',0),(1,2750,7,1,4,17,'2019-12-05 22:28:55',0),(3,1500,7,2,4,18,'2019-12-05 22:28:55',0),(7,780,7,4,4,19,'2019-12-05 22:28:56',0),(5,590,7,6,4,20,'2019-12-05 22:29:13',0),(1,400,7,10,5,21,'2019-12-05 22:29:13',0),(7,1500,7,11,5,22,'2019-12-05 22:29:13',0),(3,780,7,4,6,23,'2019-12-05 22:47:54',0),(5,650,7,5,6,24,'2019-12-05 22:47:54',0),(7,899,7,6,6,25,'2019-12-05 22:47:54',0),(3,500,7,10,7,26,'2019-12-05 23:33:48',0),(6,200,7,11,7,27,'2019-12-05 23:33:48',0),(1,29300,7,13,7,28,'2019-12-05 23:33:48',0),(3,2850,3,4,8,29,'2019-12-05 23:54:40',0),(4,780,3,6,8,30,'2019-12-05 23:54:40',0),(4,450,4,5,9,31,'2019-12-07 05:24:32',0),(3,62,8,6,10,32,'2019-12-09 01:31:14',0),(4,350,8,7,10,33,'2019-12-09 01:31:14',0),(2,480,8,15,10,34,'2019-12-09 01:31:14',0),(1,4500,8,4,11,35,'2019-12-09 02:08:57',0),(1,350,8,5,11,36,'2019-12-09 02:08:57',0),(1,55,8,6,11,37,'2019-12-09 02:08:58',0),(1,280,8,11,11,38,'2019-12-09 02:08:58',0),(1,4500,8,14,11,39,'2019-12-09 02:08:58',0),(2,4500,7,14,12,40,'2019-12-09 22:12:23',0),(3,550,7,15,12,41,'2019-12-09 22:12:23',0),(1,10500,7,16,12,42,'2019-12-09 22:12:23',0),(1,26000,9,13,13,43,'2019-12-09 22:31:20',0),(2,4500,9,14,13,44,'2019-12-09 22:31:20',0),(3,15000,9,16,13,45,'2019-12-09 22:31:20',0);
/*!40000 ALTER TABLE `cliente_compra_articulo_detalle_de_venta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cliente_compra_articulo_folio`
--

DROP TABLE IF EXISTS `cliente_compra_articulo_folio`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cliente_compra_articulo_folio` (
  `Cliente_idCliente` int(11) NOT NULL,
  `Tipo de pago_idTipo de pago` int(11) NOT NULL,
  `Total` float DEFAULT NULL,
  `IDClienteCompraArt√≠culo` int(11) NOT NULL,
  `PresupuestoOCarrito` tinyint(4) NOT NULL,
  `Activo` tinyint(4) DEFAULT '1',
  PRIMARY KEY (`IDClienteCompraArt√≠culo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cliente_compra_articulo_folio`
--

LOCK TABLES `cliente_compra_articulo_folio` WRITE;
/*!40000 ALTER TABLE `cliente_compra_articulo_folio` DISABLE KEYS */;
INSERT INTO `cliente_compra_articulo_folio` VALUES (4,1,7399,1,0,1),(3,1,249,2,1,1),(7,1,249,3,1,1),(7,1,1099,4,1,1),(7,1,49,5,1,1),(7,1,4299,6,1,1),(7,1,79,7,1,1),(3,1,4299,8,1,1),(4,1,299,9,1,1),(8,1,49,10,1,1),(8,1,4299,11,1,1),(7,1,3999,12,1,1),(9,1,25999,13,1,1);
/*!40000 ALTER TABLE `cliente_compra_articulo_folio` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cliente_compra_art√≠culo`
--

DROP TABLE IF EXISTS `cliente_compra_art√≠culo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cliente_compra_art√≠culo` (
  `Cliente_idCliente` int(11) NOT NULL,
  `Art√≠culo_idArt√≠culo` int(11) NOT NULL,
  `Tipo de pago_idTipo de pago` int(11) NOT NULL,
  `Total` float DEFAULT NULL,
  `IDClienteCompraArt√≠culo` varchar(45) DEFAULT NULL,
  `PresupuestoOCarrito` tinyint(4) NOT NULL,
  `Activo` tinyint(4) DEFAULT '1',
  PRIMARY KEY (`Cliente_idCliente`,`Art√≠culo_idArt√≠culo`),
  KEY `fk_Cliente_has_Art√≠culo_Art√≠culo1_idx` (`Art√≠culo_idArt√≠culo`),
  KEY `fk_Cliente_has_Art√≠culo_Cliente1_idx` (`Cliente_idCliente`),
  KEY `fk_Cliente_Compra_Art√≠culo_Tipo de pago1_idx` (`Tipo de pago_idTipo de pago`),
  CONSTRAINT `fk_Cliente_Compra_Art√≠culo_Tipo de pago1` FOREIGN KEY (`Tipo de pago_idTipo de pago`) REFERENCES `tipo de pago` (`idTipo de pago`),
  CONSTRAINT `fk_Cliente_has_Art√≠culo_Cliente1` FOREIGN KEY (`Cliente_idCliente`) REFERENCES `cliente` (`idCliente`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cliente_compra_art√≠culo`
--

LOCK TABLES `cliente_compra_art√≠culo` WRITE;
/*!40000 ALTER TABLE `cliente_compra_art√≠culo` DISABLE KEYS */;
INSERT INTO `cliente_compra_art√≠culo` VALUES (3,1,1,1099,'1',0,0),(3,2,2,7399,'1',0,0),(3,3,1,1099,'4',0,0),(3,4,1,1099,'3',0,0),(3,10,1,1099,'2',0,0),(4,2,1,1099,'6',0,0),(4,7,1,1099,'5',0,0),(4,10,1,1099,'7',0,1);
/*!40000 ALTER TABLE `cliente_compra_art√≠culo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `detalle de venta`
--

DROP TABLE IF EXISTS `detalle de venta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `detalle de venta` (
  `Cantidad` int(11) NOT NULL,
  `Subtotal` float NOT NULL,
  `Cliente_Compra_Art√≠culo_Cliente_idCliente` int(11) NOT NULL,
  `Cliente_Compra_Art√≠culo_Art√≠culo_idArt√≠culo` int(11) NOT NULL,
  `IDVenta` int(11) NOT NULL,
  `IDDetalleDeVenta` int(11) NOT NULL,
  KEY `fk_Detalle de venta_Cliente_Compra_Art√≠culo1_idx` (`Cliente_Compra_Art√≠culo_Cliente_idCliente`,`Cliente_Compra_Art√≠culo_Art√≠culo_idArt√≠culo`),
  CONSTRAINT `fk_Detalle de venta_Cliente_Compra_Art√≠culo1` FOREIGN KEY (`Cliente_Compra_Art√≠culo_Cliente_idCliente`, `Cliente_Compra_Art√≠culo_Art√≠culo_idArt√≠culo`) REFERENCES `cliente_compra_art√≠culo` (`Cliente_idCliente`, `Art√≠culo_idArt√≠culo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `detalle de venta`
--

LOCK TABLES `detalle de venta` WRITE;
/*!40000 ALTER TABLE `detalle de venta` DISABLE KEYS */;
/*!40000 ALTER TABLE `detalle de venta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `detalledehistorialdeventa`
--

DROP TABLE IF EXISTS `detalledehistorialdeventa`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `detalledehistorialdeventa` (
  `Cantidad` int(11) NOT NULL,
  `Subtotal` float NOT NULL,
  `Cliente_Compra_Art√≠culo_Cliente_idCliente` int(11) NOT NULL,
  `Cliente_Compra_Art√≠culo_Art√≠culo_idArt√≠culo` int(11) NOT NULL,
  `IDVenta` int(11) NOT NULL,
  KEY `fk_Detalle de venta_Cliente_Compra_Art√≠culo1_idx` (`Cliente_Compra_Art√≠culo_Cliente_idCliente`,`Cliente_Compra_Art√≠culo_Art√≠culo_idArt√≠culo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `detalledehistorialdeventa`
--

LOCK TABLES `detalledehistorialdeventa` WRITE;
/*!40000 ALTER TABLE `detalledehistorialdeventa` DISABLE KEYS */;
/*!40000 ALTER TABLE `detalledehistorialdeventa` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `historial_de_compra_cliente_compra_articulo_detalle_de_venta`
--

DROP TABLE IF EXISTS `historial_de_compra_cliente_compra_articulo_detalle_de_venta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `historial_de_compra_cliente_compra_articulo_detalle_de_venta` (
  `Cantidad` int(11) NOT NULL,
  `Subtotal` float NOT NULL,
  `idCliente` int(11) NOT NULL,
  `idArticulo` int(11) NOT NULL,
  `IDVenta` int(11) NOT NULL,
  `IDDetalleDeVenta` int(11) NOT NULL,
  `FechaDeCompra` datetime DEFAULT NULL,
  `Activo` tinyint(4) DEFAULT '1',
  `IDFolioHistorial` int(11) NOT NULL,
  `IDDelDetalleDeVentaRefencia` int(11) NOT NULL,
  PRIMARY KEY (`IDDetalleDeVenta`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `historial_de_compra_cliente_compra_articulo_detalle_de_venta`
--

LOCK TABLES `historial_de_compra_cliente_compra_articulo_detalle_de_venta` WRITE;
/*!40000 ALTER TABLE `historial_de_compra_cliente_compra_articulo_detalle_de_venta` DISABLE KEYS */;
INSERT INTO `historial_de_compra_cliente_compra_articulo_detalle_de_venta` VALUES (4,1150,3,5,8,1,'2019-12-05 00:55:40',1,0,0),(4,1150,3,5,8,2,'2019-12-05 02:43:28',1,11,7),(1,520,3,7,8,3,'2019-12-05 02:43:39',1,11,7),(5,2850,3,1,8,4,'2019-12-05 21:25:32',1,12,7),(1,1000,3,4,8,5,'2019-12-05 21:25:45',1,12,7),(5,2850,3,1,8,6,'2019-12-05 21:28:59',1,13,7),(1,1000,3,4,8,7,'2019-12-05 21:29:07',1,13,7),(4,1150,3,5,8,8,'2019-12-05 21:30:53',1,14,7),(1,520,3,7,8,9,'2019-12-05 21:31:05',1,14,7),(1,2500,4,9,9,10,'2019-12-05 21:36:08',1,15,10),(1,750,4,10,9,11,'2019-12-05 21:36:11',1,15,10),(4,1099,4,11,9,12,'2019-12-05 21:39:07',1,16,12),(8,1099,4,12,9,13,'2019-12-05 21:39:09',1,16,12),(1,500,3,2,2,14,'2019-12-05 21:53:14',1,17,4),(1,2750,3,3,2,15,'2019-12-05 21:53:14',1,17,4),(1,759,3,4,2,16,'2019-12-05 21:53:14',1,17,4),(15,500,7,15,3,17,'2019-12-05 22:18:34',1,18,16),(5,750,7,16,3,18,'2019-12-05 22:18:34',1,18,16),(3,1500,7,18,5,19,'2019-12-05 22:33:20',1,19,22),(7,780,7,19,5,20,'2019-12-05 22:33:20',1,19,22),(5,590,7,20,5,21,'2019-12-05 22:33:20',1,19,22),(7,1500,7,22,5,22,'2019-12-05 22:40:25',1,20,22),(3,780,7,4,6,23,'2019-12-05 22:49:47',1,21,25),(5,650,7,5,6,24,'2019-12-05 22:49:47',1,21,25),(7,899,7,6,6,25,'2019-12-05 22:49:47',1,21,25),(3,500,7,10,7,26,'2019-12-05 23:35:58',1,22,28),(6,200,7,11,7,27,'2019-12-05 23:35:58',1,22,28),(1,29300,7,13,7,28,'2019-12-05 23:35:58',1,22,28),(3,1099,7,10,7,29,'2019-12-05 23:50:45',1,23,28),(2,1099,7,11,7,30,'2019-12-05 23:50:45',1,23,28),(5,1099,7,13,7,31,'2019-12-05 23:50:45',1,23,28),(11,1099,7,11,7,32,'2019-12-05 23:51:27',1,24,28),(5,1099,7,13,7,33,'2019-12-05 23:51:27',1,24,28),(4,1099,7,14,7,34,'2019-12-05 23:51:58',1,25,28),(1,1099,7,11,7,35,'2019-12-05 23:51:58',1,25,28),(1,1099,7,13,7,36,'2019-12-05 23:52:23',1,26,28),(1,1099,7,14,7,37,'2019-12-05 23:52:23',1,26,28),(3,2850,3,4,8,38,'2019-12-05 23:56:18',1,27,30),(4,780,3,6,8,39,'2019-12-05 23:56:28',1,27,30),(4,450,4,5,9,40,'2019-12-07 05:25:55',1,28,31),(3,62,8,6,10,41,'2019-12-09 01:35:49',1,29,34),(4,350,8,7,10,42,'2019-12-09 01:35:49',1,29,34),(2,480,8,15,10,43,'2019-12-09 01:36:01',1,30,34),(1,4500,8,4,11,44,'2019-12-09 02:12:20',1,31,39),(1,350,8,5,11,45,'2019-12-09 02:12:20',1,31,39),(1,55,8,6,11,46,'2019-12-09 02:12:20',1,31,39),(1,280,8,11,11,47,'2019-12-09 02:12:29',1,32,39),(1,4500,8,14,11,48,'2019-12-09 02:12:29',1,32,39),(2,4500,7,14,12,49,'2019-12-09 22:14:14',1,33,42),(1,10500,7,16,12,50,'2019-12-09 22:14:14',1,33,42),(3,550,7,15,12,51,'2019-12-09 22:14:27',1,34,42),(1,26000,9,13,13,52,'2019-12-09 22:33:06',1,35,45),(2,4500,9,14,13,53,'2019-12-09 22:33:06',1,35,45),(3,15000,9,16,13,54,'2019-12-09 22:33:06',1,35,45);
/*!40000 ALTER TABLE `historial_de_compra_cliente_compra_articulo_detalle_de_venta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `historial_de_compra_cliente_compra_articulo_folio`
--

DROP TABLE IF EXISTS `historial_de_compra_cliente_compra_articulo_folio`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `historial_de_compra_cliente_compra_articulo_folio` (
  `Cliente_idCliente` int(11) NOT NULL,
  `Tipo de pago_idTipo de pago` int(11) NOT NULL,
  `Total` float DEFAULT NULL,
  `IDClienteCompraArt√≠culo` int(11) NOT NULL,
  `Activo` tinyint(4) DEFAULT '1',
  PRIMARY KEY (`IDClienteCompraArt√≠culo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `historial_de_compra_cliente_compra_articulo_folio`
--

LOCK TABLES `historial_de_compra_cliente_compra_articulo_folio` WRITE;
/*!40000 ALTER TABLE `historial_de_compra_cliente_compra_articulo_folio` DISABLE KEYS */;
INSERT INTO `historial_de_compra_cliente_compra_articulo_folio` VALUES (3,2,299,1,1),(3,1,249,8,1),(3,1,249,9,1),(3,1,4299,10,1),(3,1,299,11,1),(3,1,1099,12,1),(3,2,1099,13,1),(3,3,299,14,1),(4,2,21699,15,1),(4,3,269,16,1),(3,2,7399,17,1),(7,2,NULL,18,1),(7,2,NULL,19,1),(7,2,NULL,20,1),(7,1,NULL,21,1),(7,2,32000,22,1),(3,1,11289,23,1),(3,1,17953,24,1),(3,1,5574,25,1),(3,3,4798,26,1),(3,2,11670,27,1),(4,2,1800,28,1),(8,1,1586,29,1),(8,2,960,30,1),(8,1,4905,31,1),(8,1,4780,32,1),(7,2,19500,33,1),(7,1,1650,34,1),(9,1,80000,35,1);
/*!40000 ALTER TABLE `historial_de_compra_cliente_compra_articulo_folio` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `historialdeventa`
--

DROP TABLE IF EXISTS `historialdeventa`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `historialdeventa` (
  `Cliente_idCliente` int(11) NOT NULL,
  `Art√≠culo_idArt√≠culo` int(11) NOT NULL,
  `Tipo de pago_idTipo de pago` int(11) NOT NULL,
  `Total` float DEFAULT NULL,
  `IDClienteCompraArt√≠culo` varchar(45) DEFAULT NULL,
  `Cliente_Compra_Art√≠culocol` varchar(45) NOT NULL,
  `PresupuestoOCarrito` tinyint(4) NOT NULL,
  PRIMARY KEY (`Cliente_idCliente`,`Art√≠culo_idArt√≠culo`),
  KEY `fk_Cliente_has_Art√≠culo_Art√≠culo1_idx` (`Art√≠culo_idArt√≠culo`),
  KEY `fk_Cliente_has_Art√≠culo_Cliente1_idx` (`Cliente_idCliente`),
  KEY `fk_Cliente_Compra_Art√≠culo_Tipo de pago1_idx` (`Tipo de pago_idTipo de pago`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `historialdeventa`
--

LOCK TABLES `historialdeventa` WRITE;
/*!40000 ALTER TABLE `historialdeventa` DISABLE KEYS */;
/*!40000 ALTER TABLE `historialdeventa` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `imagen`
--

DROP TABLE IF EXISTS `imagen`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `imagen` (
  `idImagen` int(11) NOT NULL AUTO_INCREMENT,
  `Ruta` varchar(255) NOT NULL,
  `Imagen` blob,
  `Art√≠culo_idArt√≠culo` int(11) NOT NULL,
  `UsuarioOProducto` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`idImagen`),
  UNIQUE KEY `idImagen_UNIQUE` (`idImagen`),
  KEY `fk_Imagen_Art√≠culo1_idx` (`Art√≠culo_idArt√≠culo`),
  CONSTRAINT `fk_Imagen_Art√≠culo1` FOREIGN KEY (`Art√≠culo_idArt√≠culo`) REFERENCES `art√≠culo` (`idArt√≠culo`)
) ENGINE=InnoDB AUTO_INCREMENT=38 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `imagen`
--

LOCK TABLES `imagen` WRITE;
/*!40000 ALTER TABLE `imagen` DISABLE KEYS */;
INSERT INTO `imagen` VALUES (1,'css/images/ProcesadorInterCorei78700k8va.jpg',NULL,2,1),(2,'css/images/TarjetasdeVideoGigabyt.jpg',NULL,3,1),(3,'css/images/BocinasLogitech980.jpg',NULL,1,1),(4,'css/images/BocinasLogitech980.jpg',NULL,4,1),(5,'css/images/Accesorios-Herramientas-MOD-HUELLA.jpg',NULL,5,1),(6,'css/images/Accesorios-Audifonos-y-Microfonos-Yeyian-YAO.jpg',NULL,6,1),(7,'css/images/Electronica-Proyectores-BenQ.jpg',NULL,1,1),(8,'',NULL,2,1),(9,'css/images/ProcesadorInterCorei78700k8va.jpg',NULL,3,1),(10,'css/images/user.jpg',NULL,5,1),(11,'css/images/user.jpg',NULL,5,0),(12,'css/images/user.jpg',NULL,1,0),(13,'css/images/user1.jpg',NULL,2,0),(14,'css/images/user2.jpg',NULL,3,0),(15,'css/images/user3.jpg',NULL,4,0),(16,'css/images/user5.jpg',_binary 'ˇ\ÿˇ\‡\0JFIF\0\0\0\0\0\0ˇ\Ì\0úPhotoshop 3.0\08BIM\0\0\0\0\0Äg\04yvNO7M2v0b04LLy5Fda(\0bFBMD01000ac203000047100000081e00004f21000008250000a42900001137000094390000ae3c0000c53f0000e9570000ˇ\‚ICC_PROFILE\0\0\0lcms\0\0mntrRGB XYZ \‹\0\0\0\0)\09acspAPPL\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0ˆ\÷\0\0\0\0\0\”-lcms\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\ndesc\0\0\0¸\0\0\0^cprt\0\0\\\0\0\0wtpt\0\0h\0\0\0bkpt\0\0|\0\0\0rXYZ\0\0ê\0\0\0gXYZ\0\0§\0\0\0bXYZ\0\0∏\0\0\0rTRC\0\0\Ã\0\0\0@gTRC\0\0\Ã\0\0\0@bTRC\0\0\Ã\0\0\0@desc\0\0\0\0\0\0\0c2\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0text\0\0\0\0FB\0\0XYZ \0\0\0\0\0\0ˆ\÷\0\0\0\0\0\”-XYZ \0\0\0\0\0\0\0\03\0\0§XYZ \0\0\0\0\0\0o¢\0\08ı\0\0êXYZ \0\0\0\0\0\0bô\0\0∑Ö\0\0\⁄XYZ \0\0\0\0\0\0$†\0\0Ñ\0\0∂\œcurv\0\0\0\0\0\0\0\Z\0\0\0\À\…cíkˆ?Q4!Ò)ê2;íFQw]\Ìkpzâ±ö|¨iø}\”\√\È0ˇˇˇ\€\0C\0		\n\n	\r\r\"##!  %*5-%\'2(  .?/279<<<$-BFA:F5;<9ˇ\€\0C\n\n\n9& &99999999999999999999999999999999999999999999999999ˇ\¬\0∏∏\0\"\0ˇ\ƒ\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0ˇ\ƒ\0\Z\0\0\0\0\0\0\0\0\0\0\0\0\0ˇ\ƒ\0\Z\0\0\0\0\0\0\0\0\0\0\0\0\0ˇ\⁄\0\0\0\0\0¿JiV\€e!\∆\·LÖ0.¡\\)Åui\nWVãáp¶¬òãÖ0/îï≈§\'t§∂Sl´”≥ô5z5ì\È∫\ŸX%e	£ä+ö\‹\Î•]öue£JñQ\“hf^\€À±ùs*p∑.\–[´^0ë\Z>\"sª@\Èm=Nëy\È\Êö\ræÒ\–]S\Œ4Q´y\Z¶[F™2UµEZÉz5l¨ï©≈ØMâ´K]\÷∫@l+\„%9\›:´Zr©≤µ∏¨œπbz|ej\Â2{πZ-5™\ƒHçP\Â\Â-ÚΩ\0\·j\⁄© †\–P\0@UA\n\"ê\„ãE6N8”ãAì¶íæ+3:H‹•4ê,.∏\Ï¯í–Ü∂õUf(\Ÿzæ\÷\\U W{DìO?aÒ\…\—\·ø+S(LΩB˚%lÇ+¥0ßä^7©\0ç¬¢Ä(4P\0A@\0\0Fà\‰\n\r\0P—£nF+d≥#I%V\«<ì\◊drÖw6£\'Ωç´à\Èh¯≠S\”\Ÿ…∂ıìw \…\÷\…^£iñÒà\‡¬öΩé7™\0ç¢†\n \n®†&*+Aäéà†4E[P ∫R2KI$RW¶[\Á™\◊\0õcñ6m\·na:\–u},\Õ-ú})a~\ÓS≤5ÚAñ\Í]dÆé$J±<0l’µ\«ı\0∏\0`(*†0TIÄ\’\0@@\0\0(\0\0®\0ëK£JFIw=\œdê\—$ı\ÁÆ«Å N-^s±\‰gLb°¢Æ∂>\÷\ﬁ5—≠\€Ã≥ì≠ö\Ó—∫«èj=¡\Œ[ßoè\ÈÖh\0®\’\0\0Ä\0†\0®\0(\0\0\0\0 Ä±\…çW5o¿˘\"íI<\◊k¿åìK7d´cî\Î˘\Îr\‚5R;\Ë\ÔÛ˚;¯ví)5\‡µR\ﬁxCr•∂*>DC$m\Ÿ◊π^ä@)\ÿ\0HëïZ\·Ä!\n∏\"\ƒ{Fà≠mUX§ÜU\◊X§ª\ÂäH_$\’ÂÖ≥ÅùF\È\–\»\ÿ…ª1\‚áJñ\Œ/CøâtŸ´\rhRc/R∫\ËDHëFWiZ\Êw-ü§\01ÆkåékîÑ\0<LëUD$R0∂D%&Ö\…¿\“H≠sH†ô¨ïyÚF˚˘Ú\Àµ\ËYbñ\Œ%/E\œt/5º]úã3Ûµ\ÏW7\—Èπæõw\ÏR\◊’ÖŸ∑\Ë1/Q\—\n§Ç+ì9ú\‘K\Ã\Ì\ﬁstÄ	\rRU9\⁄1î\”+\”¿†H\ƒ%aåï\◊\ÕZ6#^•±±F\"®!ècé|ë\…>W±ı\Èt\–\Õ	ŒÅ	M\–Û\›¢\∆nÜl≥Ûµ≠Uñ\Ëzûg•\ﬂ¡x\ZrW°<•ü§’™±XU\»s{w\‹\«gËää¶\›l\Ì)\‡\ﬂtR\ÀG\r,r*2ù®£éQAò€Ä˘˚\0≥ú’æßë—É\Â.\ÔÖè\”N>ù\Á6\Âë$rGs¶Üh\Œ`+úΩ9\—<ˆ1ı˘πWB≠™≤“Ω\ÔK\œHu(ﬁ§\Ì\≈(Px\–}∫ˆëEo7∑u\ÕN\Á+_h\⁄|ñrSWh©*\ÿ\Œe\Î-†V∏Z†¢T\"dU\‚@ö\œ9i\Zlb±\◊Ú+#kçµî\Ïs\ÿ¯\Ôt\–\Õ&πÆˆ€¶~o{ùckXØ9œ±è±\”Û≥©¥\≈F\ÌYX/Rh\—a∞(`\«,|\Œ\‰ˆ®ﬁØK62ˆäl≠G<2l\Â\€diT\n\0*(\0R\›A\ÂøC%éæFî¶]\\P£ô\ÿs•ô\ÔéHÙ4R\¬…ïπxõN∂\‡h\Á9∂Ωä”çù\\\Õ.ßùµYTtØRcØQ\”&\’ìéFr˚Ò‹•`çΩlõı\Ÿzîe\œ\‘YgŒä%A@r 8kÄE`gQû1\Àf›©9~\ﬁ)«ä\Èn\Œx>€Ñç\œ{^˜\…±∂¿\»\⁄\≈\Ÿud‘öjV≥V\ o‹°©\Á\Ó◊±Íäù∫Ä∫yZL≤`ëãòdå\Âzúâ:tmUöçõµ.$˘FÆ†\\#ê@(\n\–TP#ëö\–\“\…\”b≥1\ÍÉpQK	£∫\√\ÿ˙∑:XÊçì\◊\'m\„\Ó:y\»gÅ\‹⁄ñ\Ë€üF\Ì+\›N\ÿfÜU¡V\›PK¥m3AZ\‰69+á<\…#\Âz\≈%M˘\Î\ÀNŒÅ¨Ü|ôu®\ÿco1\Ë\0\0kÄä@ Æ¯Gü≠∂P/@µ˜T<ı\'ÜwX{$´sßÜXY2°	Y\‹\ \Ÿyy™öYØK(ﬁ•vm+‘¥:|+P\ÕZU∂•∫`\Ÿ\‡ôΩ71\…JÅ\ÃG#9^ä4TïWÆ\Át\Ÿ%{µ\ﬂ>\ÓÜ6»úÄ\0\0(\0®\–re\ÿ¨äòj:∞\râr«Øë´;h\‘G9\Z∫À§ïíUπ\“\«$,ïB\’\’\Ã\“xst≥∏\ÈÿØ~-}*ó∫\\R≠öÚÉ+\»\∆G#\ZNG!QP9vπºüD∆æ9\’>\ﬁòO¶éïÉwπ˝Ò<A•\0s\Á\\\Ë°/\Íp∑±\›u\‰∑Y[°=\ÏgD∑*†l÷≠¢å*=h\ﬂKæ™Æ\‚\Êc°æ`+≥[O]\‰¿Œ∑U\Í§\’vænıö◊∑Ú!é\”\Z¨ÀïÇã\ÿ\ÊjπÑE@\Ê\“\Áp˚\Ÿ1…µlp\Ón;;\»”í;(oA\ŒtV\‘\Ê\“\ÕkF\Z–èv\«>°\–\◊H\—\ $»∂&¨¿Ø8&\ËU\Ÿy\‹*∏g\‘⁄ç\Ôp\ ]˛w-ltë\…^˘ê!mΩåMGü\'#\—J\’k\€y\È\Â\Ën\Â\ÿkêN\ÓxWs\\\Õg5\»\0Mç≥ü·∫æ}\Ë<°Ùßd<#\ÂzÆ;®ÀØ\«\Í\“\Ÿ-\ÕK\»ÿèBe¸\ÌTµs;[11WA!:µµ+ßõ-\◊E\…ôß	\Â\Ã|ägKb\‰≥Ù.ªrü´õ\rc\‰ª	\–[\‘	Y\–Ã≤·ò∫Vk9´˜kn\Ê6ı],Qé\ÀaünÑ\∆:zÚZ\Ó´f Lô,\Ë´◊Ω\Ê6˘\Á†Ò]\∆÷´ë≠ÅG\¬˜\\B\›=\Ï^®®cπ‹áE]\n\Ã-Hhv\·ÆV∂ò\Á\Ïd\ÎÛ&¸\›,ú2πkò\È\‰7oöSa\Ó@É•\Áı∆ØUÅøLé∏\·\ÁfáQ\Àı¡8NÔÑ∫»ª>Ælç¸zª\ÿkhTqQÙ\\?£\Õ\ËWsÙ<\Óä5v\0\≈\Â˙n{±_KÆ/\Z\∆7è\«\‹u/\ÿ\–sΩR£ù\Èπ∫\“>æ\‡/∑¢\ËπŒè,\ÕÙ¥\Â\n⁄±KCØ\ÀuY›ò:p£≠ì≠ÃõÒ6Ò2JØI\œÙ•\ƒ\€ƒ®]¨]©=\–ÛLE\Àı∏\·\ÂnáQ\ÀıÇpˇ\0	{\ÿ\Èyﬁá2g\Ë4fW\÷cÛïxû\Á£-KÙ\Ós¢UõÑ∫Zë\‚\Ót¨\Î@\·\”\¬”πG\—\ﬂ¥\·˚.u\ÎY\Œ\¬`v_i§è\Œ}œØûˇ\0M\Õtπ`cls”å\ÈZﬁ•Vh\ﬂz\“\’\ZZ¯\€\…Õá∑\œdë\–s=\Èp˜0\ÍonA\ŒÙ\\\Îã~\√˜<≠\—\È˘éûN?∞\‡Ø}˜7\“fäs˝û\€-\”?SA_oö\”.ˆ˛~á∫¸y¿\Ôπvq6ı\›\◊¿\«\¬PøC\—kµ\÷r]\\˚\ÿ{ú\ŒP\Ìxæ\“\ŸG\Á˛Å\ÁˆŸΩ\”Òùïß\r\‹Ò\√g{9UÃù\—\◊(U\ÈB\ﬁ\œ-\‘Ú\Á/=\–s˘eI\»u˜%¿\ﬂ\Â\Í-oq›åÉëÎ∞ôS®\∆ŸÄp˝\«$Ïõß\¬›ÇNæ\‡tKo§\„˚\ny\Á°Ò\ZΩ6\Œh\◊Û~˚\œzRÙM˝Tjp=˜–º\€\√\‘\◊wl\"1pî6Ú}Úls\œG\‰+Q\ ivûs}ùóü\‹Œú\ﬂ\◊rñz;xõ82ıÒryrèL€∂:¥g«¢Ÿô];7\÷sU\ÈS$\Ó|\ÎZs\Ï9‹ñ\∆;]eÆ\œo\Îqdóq_ó•ëıZ^qn\…˜|–ærv|:\Ÿ?NN\◊:û\ C.e\ÏU:∂z&áü\⁄\Â«¨\‡o\Áiπ\ \’—Ø≤\÷Û´¸\Ï]´9T¶º\'5{ûÄ≠PT0EQS)‹ät+´ós%#òOI-BY-\”$≤uH!¢\∆ví\¬¸W\Ÿ“∑&[ı\«\€\nrh\"ts∑\Îπcª_B\⁄˘á\Ô\»\ﬂ6Œ∫8KîMÃ°¿íD\ÀJ\«’±\Œj\∆¡@õï1Pw\"ŒáU\ÃT@j\0\nÇk†ù-≥^\Ï˘ˆf ë\Z	û¡\Ë¶kE¶f<v!zíY!R2£+TMVÜ∏Næ≠ß_p±=\÷˜D†¯$¨¬Ü¯/9≠\È\Èo4¨E}ÅÆßr¢âÄÅö≥≠\‡F¡QF\0á5PnE@m+¥,\…j\Â[FfC4HùA0\0\0\0\0\0\0\0\0BiF(\ÌÁÖ©kŸí\ÎüJã\Õdi\‘\Ÿ\ƒ\Ëe»•h`ÚﬁÅ\…ÿ±dj\Á\ÍHw†\rˇ\ƒ\0.\0\0\0\0\01!23 \"#04@A$BCDˇ\⁄\0\0\0ıU\’T/WPΩ]Jıu+\’‘ØWRΩ]Jıu+\’TØWRΩ]JıU\’T/UPΩUBıU\’T/UPΩUBıU\’T/UPΩUBıU\’T/UPΩUBıU\’\‘&\’T&\‘LπÛ.|Àü2\ÁÃπÛ.|Àü2ı&\‘\ÃjúY-Lπ5sØURΩ]JÜy\ÀD“£,òtÛeì\ÃHñDfë•\\˘ø¥î }\∆˙∞\‰\÷\Â8t¡\Ã\r¯v~Ò5`ßÇ¥ï\À?ÉØ≥a`¨vV}Ÿ∞∏C\⁄vN(ª(7(\Ìõ\ﬂkQ\Ÿ\›\—?|˚0ÑkñπahHZ\–,-!aiZVï\À\\µ\À\\¥cZ\n\–Ví∞≤≥l!pá¥Ωj\ “É1s¥=^:£≥˚ÅM)˛∆µ\0±¸òXEà±c\ÿ=ôF@¢VíÉBÇ-jVhuùµ7rm§\ÓQl\Ê\Âh[&?®µ9∏ˆejZ÷¨¶ÇKFµ ¯\’w\Ÿ õt\‘v~\Í‚≥î\Ó™1\”˙›±\È\Ï¡B5\ 	≠\∆\–téweˆz¶b;;πBûÇ\ f\ﬂ\ÿÖ\¬\√fxΩ§T›∏Aü‹¢O	≠N›ü\€\'∞!\Ï+˝Æw¥äõ∂\Œ\Ÿ€®Säj=\—ˇ\0V.˚`ﬂØ \ﬁEK≤j;;uëø\ÿˇ\0µ\À˝!\Ï`\…xˇ\0ú\Ôi7iŸ®\Ï˛\Â\ZxMj Éˆπ∑{ {\«Ÿêa»ß™n\ÕH;™îuQ\' VÆ±ˇ\0kó˚pá≤ëΩ ¶\Èë;g*r9y@≠aHshì∑˝è\Â¥!\Ï£\Z∏Ézßm˛\ƒp\“z∞åú\'û™ à\Í\ZèD\‘?î{\ﬂq`ÅˆRéÅWéâ\€\Èç%•¶⁄ç\·\Ÿ«Æ•∫∑˘\n˜\‹\\]ª\√\⁄wiO\ŸSª\‡∞ò0m\Œ\›3Û\Ã˚.\€\≈\’\Ï\ËÅU˚)6Tùâ\›?∫ãb~N7è\ﬁ?.∂;Ñ.\€\√\‰*—ê§X ¶bwTz4\⁄>\‹|ú2\Z\‘TòXõü\¬\‰w\∆^ _\ÂOiRmÃçiAKaªv;ù£E3\⁄P®©r$•{VícäÙÚcj\»Zê\÷PÇW\'A#VlQ@,{]±\‹{xºçGj£R®;ôµ¶\Ÿ0uˇ\0ø˘E3€∫ç°0a´KVëg09:ç•2ë≠AÄ,\'â\È2å…ê®\ËâQ\”5°Ù\Ìpíç¡zY(T¥ÉD\ÊÆY$ç>\∆^>ˆ\Ïv¨8\nE\Ï\⁄\”Zé\ÿ˘8tåuM\ﬂ¸ºCS\›Ò1;S?æGÜ7ê¿∏ÉCHª.\Œ\Ëˆv\’\‘\Â*Ö3∂\” 2£nN\‹\‰à≈Ço≤ïòR∑-£}\‰ëD\Ï˛\'\Œ\÷/V\’Íõì3\05LB±â≤±\Œ,Åç™ìò\Î∂\„x{fv„í§Q(ˆ¥\€Ñ$\\\ƒ\\ö¸.knÕêL\Zåc\r;R˜ßlXsÄêt∆ãâ{ú\Ë\·(FÄù+2@™jyà˚\Ïß\Ì™\Ì≥\‘[E≤zj®`Nârä\Â\È\‚\¬	\€SwX\≈Q/-ê±\”›ÅXˆ\Ã\–˙E#f\ÌˆSmV~6zèhQNO\ÌCp“∞W\…›à&w\Î¯\∆¸ôN?\ÎA\Ÿ¸sE\Ã^\ŸÛì	\Ó\rO®-´~òßíUOê\Àò ó\Í\ÌˆSˆ\’;.6~Òéê¢äj≥oaA0\⁄>≠kp¶=X>\ﬂ»ñ∑ÚU…Ü¡êµπ\Ê:L©i\⁄b|Z í<2sˆ\Â9}«≤åõ∫\Œ\Ógl6)\«‚Çèotv¶6õx:≥ë\€\0d0F\Z3gF\◊!atU\Ô\”rn=ç\È˙∫\Œ›õCb∂¥;X¢ä)Ü\‘\›\ qëF¸è\»\Ì™2#∆Ü!\’«¢ 9j Ò*Å#á±∑ov>\”˜E\Ê\Ì\râGkBnnS7\nùµ7ë\Ô-L9å¥+yOÜvπ°Ü⁄ö\’YY\—\«$!v\ﬁ/#ªd\ÓE\Ê\Ì\rú¯m\r›µ€∏P˜Ö!\√h˙π\ƒ-N\’¯û\Ì!íá)öü¬äzÄ\Ól\Îô:í)\nöFÒÇ\‘,oy\⁄^\‰W˛Ü\–\Ÿ\ƒY€®˜(\‹n6è∫7eTîc\‚¯ÚZ\‹~G¿Ω2…±µ™Whc%˝j\0\ÂO\‹.Ω(Í™ªë\€ˇ\0chEûN\›Gæ}\Ì\⁄e5∏U\nê¸?rã±g<5õs~Mü\Á<|\∆¡™¥µ ®\‚)N\\.oH-U∫z\ÌLE95;t\Õˇ\0¡sv(¶møS∂â¯í†Ùâ‡∂•\√1°≤e”≥Rí9\Z©\Â\∆RD™*	c∑g±∑§µV\ÍE|c+(ß\nvÈªçÆn\≈O6oI}\Ó:PïÆ5ü\Œ|Ö¥˘eSK^\”&+\„s\ﬁÁµì∞µ\—g≥\·cîú9éGÜ∏\'Q\»\‘\Ê†SoIj£ó)Tc¨MZÑXπI\Ï≥w\\›àt-ì£S<\√L\“\≈,Æë\Ã8s*\„ù\‚I\“ut r§è27òëhQT!\ÏñºH\Õ6Ùß©\⁄cÛR(∑â\◊()l\›€∑¥¶\⁄2ô\—S˘¨\ÁßU4/Z‹≤vπõJˆÜ∏\ÊBTc®\nFjQô\Z°Ñ\Áñú=Iä©èA¿¨ÖSP#iv∑ã”üúßR§P∑†L9†¶\›7v\Ìo•ïUF`\nûÉöﬂ•/¶9}=\ÕQ\ÂFt\ÃJâC@k\‰_ià\‰<≠)≤ò\Ão5–¥)pdlzàè\Ÿ\…\„\ÿˆá6•úπ3\¬\Á»≤MÖ\‡ÚTÅ\›;vä-ë¥Ω…ª∑kÒ1ò\⁄!àm\'lg\ÓN\Ã\Â\ƒE\‰\»˘ú\»J\·Òê\Á\·TB\◊6ô\Â≤\‘;\·\r6µ,oçG	{ddë†\Á∏EÛp¶“Ä1ÉHÕé’ÆÃ£\ÿ/í®¸mˇ\0±hèK…∫n\Ì\⁄ı£0˜)Ü!¥ùå8ù\›[‘ñQHG”úùE*ä^PkÑäFtPX•yçbwÄ\Ÿ¬ï\“4≥S◊£ì\'õ\Ê3O‹ôrdZ\ﬂôˇ\0e∞æ¢O¶ æü2í7F\Ë |\À\–LΩ»á5\—wœó®\Ë$r˙sì∏s¡s¬òp\÷\«;á&°>)\ÿ—ôîÔç¨ﬂòõ\Œç¯Så\«sY\√-\'cè\ﬂŒ•ON\ÿ\¬.œçØX0JñÉôî\›\Ï\ÌUPÛT-cZãAN•HÙÄ•`{@\»\·≠\”-´¸\‹\"\«jü<C\\ê@\÷^\–wRD◊ä®y/oe\'ÖUå\√EL\ﬁ%\„gUKJ\Zp\n)µH\·ë1\ƒ\‹\”\œRvI\Á°n©N\«R8ñ™∂\Ê>fòiF\\¶\Ôgj´wXæ\‹ˆ´À§É1\ÀfÙûó\œjˇ\07±⁄ß\œ\√ó£µ\\Ø\Á\—;T+à≥T9ê\n◊øÒp\ËÀ•\‚2<\Àø\ÎQ≈ä≤°9´RvK\Ê\·ñ;k\“\Í+O\‚\…$m\“˝\Ï\ÌU^g~¿\ŸK˚˛ãâ\Ë\ŒgµõÑX\ÌV~˜\n\Ÿ?∂vûwD™z\¬¯ ¢˝{K;#UïLëº/´\ÌW\Ák±^¥åø∂åˇ\0÷§\Ïî˝\ÓwS±≈å¥˛*få\⁄~ˆv™ø+º\√e/\Ï˜¥æ^ûm´¸\‹\"\≈O	ñ£Ü∑E\Õ3\Ê¥4)¸GO*óƒ§:YQ!|ãÖw⁄≥\œ!\≈dG,U=\"°˝Ö\'eGóÑmgU;_™zınO¨.m.÷ü∫>\≈W\Âòl•˝è˛ˆwûåb{W˘∏EéœóD\‹8ÇQRW\È‘ó‘îúCSá_Æ™</\Ô\\+æ’ûzü=1\Ã*∏\‚\ÂRvN>\Ô	\Ÿô\Âé3+˝íà5¥¢ı\≈\„\\@\·¿˝¡≤óˆ?˚\ÿ˛\≈/ö\’˛ncµWüÖ\ÿ\ÌQ˚T¢uÙ\÷)8sZ\…>&áı\’WÄ\Ó∏W}´<ıûZf\≈à¯gëI\Ÿ7óÑÿß\ÕÀ©\·\Œ\‘T˛*kœÇ¯˚x\ÀÙ\‚Q≤®pl\Ìptˆ™sõ?\’ÃµõÑX\ÌW\Á\·V;Ty¯> £§SüπC˙\Í´¿w\\3£\Ì[\Á¨Ú≥\\YÀÜ˘TùìyxlödEV”øô\√!tmUØ\”4\Õ\√\Í@ïÚ¢\…±ˆ*˜h|ss*∏ÉuIDû\⁄Ëã§ˆØÅ\⁄¯l&0é\’~~ là™™wÛ∏t&&*\È!q…°˝uU\‡;™iî[à@˛egüÑ∫\‹P\Â¸7 §\Ïõ\ÃóRUµ\Ì\ŒQh+e$ç` ‘∏–µ6ç∏\‰:\È≤¯\œ¡q2©àıeT\›s\∆¿…¨˝¸$cÉö¶sZ\⁄ZÅ)\ $b¨˝ˆ<±Ùumïπ\“H\÷6æßú\ÂC˙\Í´¡˛¨\È4u!\ÏDú\\ÛéÖﬁ∫d˜∫C\›ı\”#Y+ñ\Âu:πXæ°\"<BDÍáæX$g/ò\’\Œb3∆™$ç\»Uê\rsîìÛâ}T\ÿı\”Œï\œ3KØ\’ÕÅW*º9Û¶T∫ 8ãîÛæaÚBçt¡z\ÈQqq@ê¢≠ñ5ı\'ßq)ïíÒUKıÛ\'VJˆ\‹+%j˙Ñüö@£Œû`\\\∆.cS\◊)~+öW<Æa\Ãg!\Õ‘û\≈Ú\'C\‘a\‡æ\'\È‹õL\Â\Èì!¡í$\ÏÖ\’ef\«\⁄?ù…é\\í\‰)äÙ\È∞i$9-\\ñ£C,-x)\À6\ÌÔëÅ\¬4/ßµ\„\ÈèM\·Ø_MGÜ/ë©\—9ßI[!¸\Œ\⁄1î	bcı{2µ-C:öàj)•°sZπ¡só9sä\Á\Œr\÷\Â©\È¡\Ó\\6W\Ê˘≥\„có§è\Ê8IL¯›≤\œÚ<®m’®LQï\ÀS\◊Ã≠\\≤πh7Ñ™âÅˆaó>\Œh*Æë=ÖÆ\∆Û\÷gm\Á$ØëD9k \Á\"è§\·\ÿZ\”NTè\–ù;£å0_UtÅ\ÍX\ƒ2=øˇ\ƒ\0&\0\0\0\0\0\0\0\0!1 2\"0QAˇ\⁄\0?\¬4£\¬0å#\¬0ç(“åD“ç(ñ\nQâ¢?Üà˛\Z#¯(Gù(ì\”\¬*\√I\'πñd\À2ÃâIù©3±#±#˘§.ôü\Œ\Œƒé‘á	#\‰e°»Ñr»º\n˙\“%ôê•É≠\⁄#ÒßK;ä)˙0iCßKß¸\Z\“DSHïdà\…\ÃT»øêéΩ¸|©/è\›\‘G˝Eää#≠k\–~T}~\Í´1#\…¢ü6\Î¸®=æ\È/b7o°,å\Îû|®p/∂|í7™˛%	|á¡\÷ytÚõÜE\„S\‘\\ë´Q˜&ˆ:Ø*<ä\“≤7d¸jp.Hä\’\ >\Â_S®\„\ Hç™MD]TN¸E^,\ÓD\ÔE®§jC´)°\Œ(rMÿà≠X•\ÏUı:á\Â˛ê∑U?\ŸI£Ω#S\⁄\€#VHåÛ\"7¨PYe_Rø∑îà?â9a%©˝î\÷\‰oWÉßEoR∑∑îä(\Í$\◊\€πZØ\n\œ\‚U\Á\ E)aùJ˙\⁄»ëOíµBöÿØ¡Sü&q\"≤¯}¥\÷\‰EjÑ8:ó±Sü&•_O∂ë™Ω\ \\S*s\‰\ÌR_∂r\"µObó©\’Hü>L{:†5á\Â\ZyY1∏\‡±\‡û\÷hß=J\’=ä~ßR˜óq2r)\’“äòoo*~¶Öi\ÏÓ£í4[)\√M™-\»˙ù[\«\—;b\ÿ1u6kf¶Iò¥UGz$j\∆L®\œ\ÈX:ú\Õ\ÌnÃé‘âAƒç9H\Ï?\nk,\∆\„vj\—Ü\"B)Ú>J>\ÂYfWùΩÑ∞`ú51,/Rxc\‰hD≠ë$!àá#\‰ã\√3ë<Z/åu<ß°Z1\⁄\ÏÑr\Ï\Õ\«håâ!D9%\…ôí\‘∆¢à\Èµc®\‚\–\‡ó%\…Gík1iZ#»åâÜ>J~ƒπ \Ã‰ç®{B\⁄—ö¿\‡\‹HRñI—ñJT\‰ôVé≠\–\ÈHqq∫f°&\…aà»¢\»E\Í\'öY•â\ZF\r2Q\ %AÆ‹ø<\ÎG1w4ö\r%\”‹ù5.\ZM(¡ìª$w\‰wé\‚5ëbBÒ™ˆ9∂o©õ\€-5‚™¥S\Í2+f\—Ò\Í\¬˙ëR\Í¸^cˇ\ƒ\0+\0\0\0\0\0\0\0\01 !2A03\"#@BQˇ\⁄\0?˙3—ì\"$Ÿñs3ôâ≥,éQí+±Ñr£ï´Lú\»\ÁG:>D|á\»s£ôGm0=\Z\’!aY(\Ô\’)\r˝Y9Ö3qò1•õ[}ız\ÀÓß¶G67ëkmæã¢[˝\—èE≠∂˝S\ﬂ\Óâ\ÎG¢\÷\›h∫\'˜-^àkJS_tF1\Ëâl\"Ü˝R\ËTuz!\ÏD£øS\€TéSî\ÂfSóLiÅmàdJ+\È]x\Íc\—âKn∑πÅ}¨z- RÒ\ÍDÖı\„&4d∫!πKn§Id_RBx1£\—iû⁄ΩQ\Ë_o°í\—iLÜ\›KEø’ù}ñãJd6ˇ\0ã\ÎG\—Lé\›h{˝Ú]ê∂\Íç\≈9<&J¢áy∫§˝î\Í\∆~=y\È∆íz-(.˝v\Ô\ƒ%¸R”á{3Å\‹SOr5°-µî£\≈RbU\·\Ÿ	\∆[\‚≥#%-âUÑ{6*ëñÃî\‚∑bîe∂éº≤⁄Ω7\ÔGyIn\»\‹\”}ÚS≠\Zû%Köt˜g˚*?˙r∫rY/\ﬁyI√î\·˛\À\⁄\Ì>T[\—˘Y,“ñi[û\ZqEø3übÍìÑãW\'.TÀänú∞p˘º\‡æ\ÿXyóø°aÏΩ™\”\ÂEµôí\Õ)\·W|Ùªó˚´µTYV¯\Ë6U´*í\À)˛x\Á%\⁄\√LùOë¢Òa£á˚.ˇ\0B÷∫§˚ïß\œ,ú?ﬁú@≥˝!\‰ã–øÛ8ô}˙e\Ô\Ëp\Ì\Ÿy˙ï\’-\ \”\ÁñNˇ\0ã+y≤\÷\ﬂ\Â‹´\n-!nRE\‚˛¥\ +3E˜ë√û\Â\Á\Í\À:Qõ˛EH\€¡\·ñ\ﬂ˝4\‚;\"\œÙ8èí,Bˇ\0\Ã\·˛e˜\ËXyóø°\√˝ó°eJ53íq∑É\√-˛<øõ,<Yq˘±nRE\ÃsEã˚Q\Êpˇ\0e\ÏqS\'íOπw$\Ív8|Zét\‚>ã/\–\‚>H±˝ˇ\03á˘óﬂ°b“ürÚI\‘\Ïpˇ\0e\ÏZ®p˘$\ﬁK∑öØã\Â+˘≥á¯≤∫\Õ6l\ 3è\"\'Köü!oh\ÈÀôó6Œ¨≤ãj\ÂZ*™\Ó;)ßŸî\Ï»Ö5É›ª´±oe(O,ª∂uoh\È\À%Õ£´,ñ÷Æî≤]Z¸ª\Ï$ür•Ü_f[Z∫Ej\n™å\”\ÏCá…ø\‰B\n\¬*\ÿ\ R\…mA\“O:U≤\ÊyG¯u:\‚v2ëîs\"xdeÉò\Á9\Ÿ\Ã\ƒ\Ã!¡0`\\P∆åé\«m;é\⁄&g£©˝P‹ñÁØ™&:b\…Oˇ\ƒ\0/\0\0\0\0\0\0\0!1 03Aqí4@Pa\"Q2ë`#ÄÅˇ\⁄\0\0\0?\Á\‚˘≥üã\Ê\œQã\Ê\œQã\Ê\œQã\Ê\œQã\Ê\œQã\Ê\œQã\Ê\œQã\Ê\œQã\Ê\œQã\Ê\œQã\Ê\œQã\Ê\œQã\Ê\œQã\Ê\Œ~/õ9¯æl\Á\‚˘≥üã\Ê\Œ~/õ9¯æl\Á\‚˘≥üã\‰\Œ~/ì9¯æL\Á\‚˘3üã\‰\Œ~/ì9¯æLıæl\Á\‚y3ùâ\‰sg\‰sg\‰sg\‰sg\‰sg\‰sg\‰sg\‰sg\‰sg\‰9g;\»\Áby3üã\Ê\œQã\Ê\ÃÒ±<édˇ\0≥ô/\Ï\Áby\‹O#ô/\Ï\ÊK˚9≥Ú9ÿû_$˛Mµ[q¸ª\‹ˇ\0\Ëì˘k¸\Íˇ\0@∑ó\»/ó_.∑ó	ndhd©ö¶Fï∑≥T^\⁄\"¶Üî“∫VÒÆu ôô\Z\Zp∏B\‚\È¿\ÕS-ı[{K\“\‹}b\ÁS≠2\·/p¯πëx•b\»¸∑>Ωæ[ˆ/W\∆⁄ñÜ\ƒKΩw≤3¯ˆ\ÍÚ.©ôtgçb\Ï¥K\Ãq±f≤?]å|Ìê∏Õ≥\Ë πö¿\\∑ñﬁª,∏6∑|m≠◊ò\„¸G\Ì€ß\◊Ù…üãEéáB\ÏøQ˚ãÒµftΩ,?èŒ∂,Ãá∑£2¡[Ñ\À\—fkKäUºMñ∏/y{\róƒ±µ&&ãS13eõp–∑Zfåå©ö\›{´\ÿ\‹\\=®ôÙëuD-\ƒ\Ÿzq,ı\›y\ro?km\›wô-\ÂmKsÍö£S#ku˚\“ıπ(æï\ÀRÛy2π÷∑∑ı‹∞Û553\›^\…\“;ì6ï.l£63B\ËŸ£ì2.^ñe—û\Î\‡-\≈∆ëb=™\…w£åkë≥%πòîÖ≤˘-c˛4\\¸¥.~:SÛ–∫éáB\“\…\–\Ë8À†ãDŒóE§®À´\'b\ÀR\ÓñZù*\—o±*≤]\»\≈u/÷ö\”2\›\‰EDYV˜»¥h\—8~â˜‹ùg\‹QG\›5•ö>ò\»ˆ£H\⁄z\—$)=iõiˇ\0¥µ.\Âˇ\0UõoBœ•>\«\'Hää?≤*\Ô:\∆≥f≤\ÓOæ\‰\Î>\„uñz24oÙ4C∂\ÍΩlûÖæ\È∫>Ùdªé∏Ñ®Õï“± a\÷\"´\ÓOæ\‰\Î1\÷uê\»vÆeê\Î!w•\È.Ùdªí\‹ ån± aV$k\"}\Í\…\÷]\…*∂\À*2Dh\Ÿ*J≤\Ó_\ÏTê˚—ìZ]*\÷\‰EHuâ\Zæ\‰˚’ìÆ%ˇ\0d™\„˙´TájHtïd6Fí´%\‹uô/™6:\ƒTâÖXë´\ÓKæ\‰\Î!\÷}\«z64Cµ%YVC-VHïe‹õ£bÖHòUç\»⁄øèÏìïY:À∏\Îâ‹ù$HájHtuë*\≈Uí-˚´v\‘w\ÎG\\à\‹Tã0\Í∑q\÷\Ëmı¨ªé?∫\À-G~¥cd;RC›∏˚íTUdã°\'Æ\Ê¶\≈\\\Í^nÖDB±HçY•\‰J\›+.\‚í,ı¶îªeñäê\ÌIóBM\Á[≤Ò•\‰^5m\”-≈¥≈ö5F¶•\’\"Ò:6Æã\›\Z£°¥\⁄3fNöñUª¶U\»\Õ\÷\»\ËY\Ó]{Y´5f¨\Î\√\Àv\Ë\œ‡≠ªû˛\\-âóÖ3∂\ÂöfüóeΩ\Ï—°ëk˚åΩ\÷fZW4^+‰≠Ωx\Ôˇ\0ˇ\ƒ\0)\0\0\0\0\0\0\0!1 AQaqÅë°0¡±\—\·Ò@ˇ\⁄\0\0\0?!\œ)˝ˆD˝ü\—?gÙO\Ÿ˝ˆD˝ü\Ÿ?gÙO\Ÿ˝ˆ/\Óü\œ\‰\”O<Û\œ<‡¢óÇ)¢òáR3\Â˝\ÿˇ\0∂?\Ìè˚c˛\ÿˇ\0∂_º?˜aE∑ØP\Ì2zÑ^\Ó\—\Œ#Ù\œ\‰Zlz±˛\·\'ˇ\0ñ&\ﬂ\»/˜\Ì±˚\„\⁄˘\√ˇ\0x¸\“N$û3Œ±UèB|t üc[61∫$ë~8JA/{π\À$~ C!ç1\ngôáñI9díI√°\"àLqπZ\‘=¨çP%á±|	\ﬁL•î\ÔÄQV<–îE 5cB\rç	\"K\ràPë1Ü\‡Ö#)Ωà	F*˜JI∏\ÿD…ëF+\”ƒÇRØ¸&A`\‘C\Zá2EÇbbd\\gN\'l@Ä\ÂO®%BDå\ÿI`\÷%]dÇef¸ã\„û\"\¬bB$\∆Õ±JQÑ)õrıÄò\€7at4\"Å(πrO\'óH\·í\√IâñC&\≈\Ê4∏\–C\ﬂ„Åûá•=\«\‡]õç\ÿmk\Z\Ëüd\r\‡îhH\\zgA®7zs®πõçòΩ\rpK±*ëØ)$üÃ≤¯!¶!fZ\‡b≠\Ën\ÀQ†õ¥ﬂìc\ËV#Ñ¢,A\◊,B\‡˛Ü\‹[\ZM\∆¸hàQô\Z˛ˇ\0â\Zö\‚\Z\Âê#Sz85bû\r\ÿ\È%ÑwQà\‚ø+eë!r\‚}E¥x$\÷M\"¬îîk\\úw!c¸!~H\ÊŒÜè$.\\¡s\À…±\Ë46U\‘^dÉ¿¨\Ï/»å\◊\‰XuÖ\≈c=\¬Q\n5ë\‹D (8-\–eD∏-7\√4\Â\"|§Ç2˘ê\‘&\'Ç‰úîBõc\ÿˆ†≤–Å\ru\ XÜ\"x≤Ü\r+óQqQÑà |\Ze≤s©6,ç\÷RTX@\√\–\ÿa*F4!\ﬁ\—-4&,¢é£\◊5\Õ!e¢ wó\≈h\”\‡#eîÑjvm2u4˙a˙0wcit\–\'D\rÀØ\¬XHFÖá\…l/∑ü∑éÇ%®§Å»ì°6¢\‰õ< pcX*À®ô9âYEÖFoáà\„ß∏æ\ﬁ:+.¸bÇy§∞ÄıçbA\ﬁ#\r\‘iä\◊\rö°≥ãMπ§e`ü*\—ı˘tAˆëπC\ÎHêàh˙2K£##e\\O©k¿âÜièH\Ô\ZÑL¶ãômâCX∏5$ÑÑP\›\–$Ù|ª!3MÚ;õ5HC≤\ÂÙ#ˇ\02\—Åßi~ëTî∏Ü\»aÙb6µù¯}yj\∆¬Å…§\Ë\«!–®Zpå\Ï]ÙG∞8.Ñ;\']á¢≠Q¢NúŸ™<+\';2Jë\ËN4Dà¿\"*\Z∂2åj$Lz 8ë>Ã°R!Y±st2á/\–rW\¬(åü¿Ç\œbJê\–k\‡I?ëê\Ê\€-Pïap\—T^Ñ\√:ñ0Lo\ZHQ6Nâ\÷UóÉ!DR®Hı≤\Zí6t64Ûv{°è\ WÅ´gÚ\"¥K\–_S$…ê\≈\ÿ…â\—\"\„yAæ£\€)\Ë\«\‘SD\»\‚Xè4\‹3F\√√õ\ﬁNÉR%\"9\Ã>£á¢;Ú-z\Ã\ËÆ\‰.Pÿ≤˘#Å^*µ£\„I\ﬁ8DjbY\Ì.±°çcJ(Ñí@\◊&VwK’â–°âkÖ\Ë#\›ÉcI5x?≈Ñ°d1°\⁄(c+.JÉ∂]Öñ	9urheY$!äàü\–˙[\ƒ~lÇ\Î¿\Óiú˙àZ-∑∞P∞\€\›˚òı?a£Zç\ƒ<l¯qºÜ\√\–1∞\Õ∆û4:x=U\œC!$ëep\Î¡†/CG\’\“Pñ%m\·\ÕˆêO@ïjZ,±p¨+˜\ÿyöâ∞\ƒ1◊Åßp≠.\Âhë~Ñ	rb\‡≥}ûLN,IXúe£±Ç\÷+ëe\”\ÿ%cCA†\›\‚\"\Ô\»\–c¡Ü≥A%\—4Ö‹çI2æ\"p¯oê\Ï\ÿM∂±R$\÷h%\»H\◊6Û!.ëK$)=öçCI∂n§\ <5\Á`\∆5ÉDi5$ôb\Ó\'ÿ™êM¡?ãû∂G»¶~A$\∆’ØÄ\›	ã\’\ﬂfC\"\ËLçÇ\‰e∏±ãQ\Íjc¿\ŸN-¶yi\Z!\ƒ˘$<òÑU\≈apjv8õ^\Â?\»w\‰QH[©B˚[Bú\Î\Ëc\–\‚¿Öïcw3ƒ¥@1HUô\·DX≈º7üA)àâ\‰áB^°Obr•bKYC\"ôÜOºy1ÿ®/†{8c±B»∞ã|6Ñ]òHHJ\r6UAø\ZNé#\√M¯FaYíD\÷ìm\ÏDQãB†(î–ñ!i\ngcêñû\»kC\Èey⁄üA\¬NK\ZpN5	å@u\‹zTL\·ãk5q<47C¥=}ÿπ•,\ﬁ%láBYâ·øëtI\—2\ÍuBÚLÆ\‚˝H8uâ.\Â\'˚∏ãC;	84BXñúßCR=ÿ±,»¥õ∆≥W#sH\Œ¯Z£∏¢º\∆a=é êIüB\ÁL\nHp*çLäˆ\nTì!AÆ∑´f\·Aì”ú¥üA\ƒW§¯nè&\„†•YQá\Èç&ú±¨û…î]!\Zi\Ó\"`E-=MK¯\”¶%KÙBë\ËÂëëá-	ò}åáa©QFöòÇ°@\‹1|áâÚ6IH\Ê∑VuXäá∞áïèF\ƒR\Zê8\”\√Iß?\÷E@\–Û\…k˘?\Ë˜öÚX\Ô´$FàSù(ı\r\Ô6\«°•èäaS\Ÿ\⁄∆Ç\‘LP¢+5Rä*á¶[\ e}\Õ#¸çÇ\\≥dpºz\ƒ<á¢Ò\"^Ç\r&ûé∞Emgh¶û≤;∞\rkn\“\'^Ö]%\Õ\Ó0ö©\Z]^Ò(\Ï$êø†ˆ\Í\r	@\ƒ˚/Z$	hú\Ÿ&o±\Ë;â:Å\Ëë\·ÿèõâ9\Z&>G±\ËaÆ4	$l∂:Mïèoì©ÜÒG†\È*ÜH\‹Y\n≠àΩ+\…\ƒ˜Åd®%qÙë\0Xïê≤Æ\'ÇTê∞ëP®\‚}FBW\n\Ôd∫hù\œ9LªGô\‚^´¡\›ç\rç\ƒÄöï,Çaª˛î∆º\ÁBv∫uô\„\0E3bàöT\ÃKöÄôgy˘°x9≤ $˙òúî∂\»K°∂OëCRÖà[$Ñ\√\ËMÆÃ®\Z¢Ñ-¶\·!I\È\∆\√D∑c\Ó%BD9ﬂÇ\ZìYnı\‚Œ§b€â\Í!v!\r\'\‘Pî3%c+\›C*^a\Íñ–úãˆé˙\√\\±	-\Z1{ûe@hW¶r(Zh5\—~\„i\—}\Ë3å.|0\ÓpóQaëù¥m7\◊>˜¡=sl*=ZxhëF†=\Ê\Ó1+A84uX5&ç˛ÉKDƒÑñ(JD-Åçu±D>O\0dQò°üV]7L_\—4PÖ\‰t_ú—è∫.f<lı\·	^±v\·%í4±b{a`x\"PX\»[b˛H´¿xz*è$+Rtc\ÀFt\È\ﬂ-\rÕã\„3.geåá\‹?õ=/seó\ÿÕ°\ÈXï\Ÿ\ ¬∂t—è¢l¢`˙\ÿâ\':íèS?iC¶Ã¢∑rw\·∏Rw,=\”+çé\Ê\ﬂQ48≥|bÑ√£p˛l§´É±¿ßPdÆØ\rÛ˛®˛®ÚOÅ◊Ω\‰>ÆG\⁄\√>\·O(ˆ\Ê=¥u|Ü˚9ùB\„b£\r\Zè\Ÿm+\…\ZN\‹7\’\≈Hü9˜\Ê\·è9\€=rn>\ÈÆs	Œè[\‰T&èL\Á>ôøk˚ÉGÆ+\“c\‘\»i˜\‰}Ò•a†\Ó\»yΩ\‰¶3\0HF!\‰s+á£M\Â¨˜ç\Á\Ïq”Ü\…]Üê˚3\Œs\Î\Â:\Ó\€\œ\ÿ>∂\Îü¸ŸülDﬁ°9±%)∞kbL˜¥m\\\r™#ÄJ\ﬁ\ÿÒôn\“fïç¶e\“rë»§AF¢^]ç∑ƒ†3¿ˆ≈ê√ï~bZ∑µ¬å˙˘KLıcJú1\n\€\≈F\‰\ÍJ\ÓF\ {â]\«[≤=[ê\÷\Ë$—å≠!%†\¬\⁄br]ì\‹F\Ï>¿!\ŒMmJ\Ó)2\‰=\∆P%wC\›*D\"\ÓJ\ÓJ\ÓÖl\ÍSZé¢\“5xnÇÑD C∫$-\ƒ !;âöhor\–P¥=!CT\Ã∑!+∏\Î\€@ô{ëN%>®\⁄$«ù\Ïñr\ËW\Ã,]\‰.Ü\–\Ájd\n\√4V\Õâ|\rä;`\”˛büë%0-¢zù`B9\–\‰˜®tì	ùKàq.£Pn\√\r2M7¨g™bR:Ç\‘Jw2GÚ\ÕG¢C\–v\ﬂ\‹1)^°\rrb±N\ﬁ$s#í\‘v\¬\‡∞˘X7ÇÚ5\Ô\Áœºs~—ï0\’ÿªCíó\–ﬁÆ\÷{·ìç	\Ì3\‘/YgÚy_\»\«_±≤\Îˆ>i\']LPòpS\–¯yhbr∞∏,,.¯ôâ-°\rêp\\\"3\–xq«§3j6`äFU=,Ö\ŸsÛÇi\‰%~OO\‰M˛\¬€èëıQ>•∫èì\Í\ƒ>˚\‡i\Ï=!\Z$Å2x.=y6n$1\ÁÅ1ßq\"\ÍE≤å~\ÿ\ÏñYπì∑#\Ì≥\“\…ˆ<gåìCj\Ëz\'h:ÇLë4Zë]ÖôÙA—´ëÛB.≤±<Fg+åÒgI\r-êòÂêíÚ5°øwS∏˛\≈\‰\ƒ˜\"%D.\ƒ.\ƒ.\ƒ.\ƒ.\≈gC\Ê\nâ\¬p-$( Z\¬w¯\'ír;\Í\'¯ü∏x∏ÖCx\ﬁ,\…ÛL¢;BCàb\“%ëﬁÅ?∞ï¢¿yWHàı\À\Z\—\„F0\„>ˇ\⁄\0\0\0\0\0∂\ﬂ<\«9®G¡˛ˇ\0®bæ\∆\Â:•\⁄G\’:º≠\Ï\∆Lg5ı9)˚Ü\ÎUÛº¬Äc&πdO¸Ñe?\≈≠pcø˙–ìB$x¸ü\ \Âø4\€8˘un\\\€˚˝¥b6ãü\Œ\€w\–+\Ô\…\\û\œ˚éˇ\0\Ô\È=ë<9\≈.ô€Øo˝ûπ\œ˚Øø\Ì{Ä¸o3¶\„>Ù˚Éo´r≤~ÛõT≠bKº\œ`¬ù7g\ﬁˇ\07\Ô\·aìwº)Ü≤.u¨Ø?\—\Ã-Eû\Ìıˇ\0˘\›÷∞D&T\Œ\'}X7t?N≠\›˝\ÔBö´X\‘\”(:\nC∏u˚_	\0S\·º?˜¶†¡Wˇ\0<\Á$…áπOÉ\÷ÕÜR\œ\€#¯\›-å˝UaS\ﬂ\‰\‚\ÿI\‰PQ	©Óâ¥Õ¨ïRs7h≈ú\Í>%m\–uøh∞ˇ\0_±v\¬E\ﬂN¶W\Ó\⁄e∫ó¿n◊ºsJ≥o6^y7çI\ƒc.3«úxÀ∫∂\È\‹\'°˝ª\÷ˇ\0˝≠\’(\”i-ΩŒ≤Ñ6\≈\¬EW\‘yêq\ÕKïò8\Ê_ä˙{\Á\Õg”è\–D∏?∑ù>§`ı˚~_<l  bƒ£@Ø\‘\œ2jgˆc¥3GÕØáM\ﬂ£üÒL\ÌN´\€Œµmóªä!Zß¿q0*M2•ˇ\0\œ=´\—}è±t	Z>c˝\0¢\Á\¬ı\÷4\ÌØ7ßD∂iı®ü==´;ÄF!Tó≤†<Ø\"[üV\‹Wﬁ∑ç\…Pg∫\‰9ı˝\ËΩ˚_hp7≠\ﬂzlák\‰§+u_\Í¬ãN&%∫+\‡&TGµo`O†˛b\0\0\0‹∫/\ﬂ\€Aê˚ˇ\ƒ\0\0\0\0\0\0\0\0\0\0\0!1 A0Qaëˇ\⁄\0?_\ÍEó\’¸πSı\ﬂ\Œ˛wÒè\”\rı;˘⁄∏é\À¯ø\À˘?\À˘?\ÀÙ\ﬂ\Â\Ì\¬”¶π6Òø•Ø\›˝/\È$î–øJgo®f˝π˝\÷7\—@>Øπ#\Â\‹0t%§p\√w^GŸÅK]¯˙Qô%øÖ\Í{c(¿û\Í[D<ü.Öô¯∑ñ:Mu?´\Ï@\·	\ÃZôÚZ?.¡3¿\‡u±\Ó˛\»Gh\Œ\„rV\Ï∞˘•\Âx°ª\ÊXG16°~_G,$ºÆM[1´\Õ€Ö\Ê\÷,h\”~K3ºp\‚–∑Äv{\‡jõ≤Û¡ºDÑ:O\‰r¥\‡\rm9˚+õ9{>\ÊòÙ˝ç\Ë7Rok\«¿3\ﬁ\›œêae°,Kl9n›ºñ\ÈÕó}æ\ ıõ\Óf\ÏüQ«ô\„¶gÚtv\ÍCΩ\‹\œ\„⁄ú\"#zˆÙüoë∫F\ÎO«πh\ÃWßH\\î˜\Âgjm˜¯\Ê\⁄0\‡^N\"\«>ˇ\0#n6⁄ì!∞ûúI˜≈Ö\Ï˛d\Î3¸\œ\‰s\œ¿\÷ﬁã≥˘\‰\Ôo<O\‚\Œ/üÇ;%Ø\Â\Ó˚•Í∫á\‰X\Zì6Y\÷0i¿É.*z¸ñyGã=C\„ñgf\»=@\Ë9o2\÷^\‚\ﬁåí]~hsÉD˚Ñ)\\lC?aª\…a2$kñN6$èfB$w!\r/´/vÒΩóXvÍ§ä\¬Ù≤\„\œ§Lêê˚ó\\>í¡o6oñoLªÃò›õÉ\÷Ã≥8l\≈%¥0\Á\ÊÛ\√\≈\ÊÛy\„ˆª˘\”d][¶∂¶\›f¡}\Ô	1ÉzÜ9\≈&)<Ö[˚\·^xxº\ﬁo7ù\ÎAJf\ƒ.3\€\ƒzÒ\Á,5Ω\„∑Hê˚\0y\√8yãy\·\ÊÒdµ%\·wm:l{^fKú$ m$l-\⁄_\Ÿ¡|é‘ó^3±°\È¥.\ƒÚ\Ì\‰\„ai∂\È!\“FûJ.ÙZtÉ&ixc#\ŒN§=Ü≤Pò\È.\ƒCˆn\∆\«a‘≥®˝QøKodhê&\»F9->cz\Ì\«IVÉÒï:\ÿÚd\'˚x2˚-xèÉ4Ò}˛ªë√ï\◊/m\'\r\·øˇ\ƒ\0!\0\0\0\0\0\0\0\0!1 A0Qa°qëˇ\⁄\0?\€[[Y[[V∂≤∂≠Zˆ˙íO∑Ùø•˚Vøp\r[d8\“?\\˛ò˝7ÒÇA\Ìó5ÑãëB\€0|àÃì~\‰•ghysÑ≠∂¸ıµøl \“πV25\‰*8úã\◊\Ê_Sìò\ﬁJª∫Gë˘Y?\‰ÒüS{\Êq”Å<è\Ãı=\«\·fq\›\…\‡Ω~os\‰Û˜d\Ï]≤9,ªû	¯l1<e\Íp<{±≥\Ã[º‹üx>\r≤‹é¯xı>Oãû\„¿üÑ˚\∆”´Sµ(≥!H¬Ç<\√}^\Ï\›\‡üy{$\Œ|,YeñB˘\√\ÃÒ˜{#ú	˜ì\»d4\√?3\œßª\◊19uu(\„∂?¸K.\Œ8,\»AƒûUí|g\‡\”\€\Í\⁄çõ\ÃÒ\€\‹3â\»\‰˜¡¯\·\ÓD\‡Ò»Ü∞\√¡\'\r\ÎÄ¸&-\€eûæ\Ì\ÓÒ\‡ûè,\∆˙èñs\·\√\‘yëœïòéaÚg%æπ\◊2nÆ4\»\Á‰ΩÄã”©NßÆ\ÿ\„ÆWÜ\√\ 3f\'\‡\“fpO:è\Ìó\‘¿\÷\≈1ƒùie\Ó2w5òB\ÎŸù!7µ\‚Üo)º¡à\Ó1Å\€7ås÷â≤	Ééë\Óº\‚dòRb\Í|\Ô\ﬂ√ïÖãS\…;û\Êhb\"\‹\›€£≠òßm…πˆüy\Î\0$¨/ñ¢y6\ÂP˝ºZ˝\”3K#\Óó˘Rç˙≤_\»\Ï\Í¶\’$˙\·\‰º\ÔÚ^|~∑Ω\Ôˇ\0/xéí\Ô(˛÷ô.Ç\Ôˇ\0h¯9p˛≤\œG	¸≤\·L_,π\‡Gù˛s\÷ıΩØ{ª9|∞?pK0\œ˚F˛E3|M£\Ó^)ö∂Pæ\ÏºO¸úh\Ôs®âWπ®~\Ì \Z\ﬂ\ÍÖ!:\›\“v;∂Â¨•ﬁΩ≤æ∏UØQ¿\\\nçø∂Õìivµıv˝R.ªgﬁõ∑mÇâR˚OmóÅ\Ëg\‚[.\œs\‰îv-x\»˚û∫Z\‚k˜\¬\ÿwgDÒgúôûKFx\Â˙\"\ÁŸìˆ∫Zp\ÿE\œ\'Hõl@^\Ï\r\'åûè\ÃÇ>»≤@yG®ﬁ∏ˇ\ƒ\0(\0\0\0\0\0!1AQaq° Åë¡±\—0Ò\·ˇ\⁄\0\0\0?h\”¸wü\Œ~\„\Ÿ?éˇ\0˘(\0\0@\0\0^\‡?ê˝\œ\‰?s˘è\‹˛#˜?ò˝\œ\Ó?s˚è\‹˛\„˜?≥Û?≤˝\œ\‰øs¯\◊˚,Ø\Í˚\«\'Ò}\ÂÒ~c˝ó˚\n\‡}\“0∑û[˜(_\Î˜(\Ô˛˚\œ\Âˇ\0s˘\‹˛_˜?ó˝\œ\Âˇ\0pk˘˛Ò8˛ˇ\0së>X™ a?\Ì)8º\0˛\Ê≥z\‹\»~/˙E±éÆ_\Ó4/7ıπd\r˛πÇ\‘\Áè˚¬¥ùó˝\∆~ˇ\0˚G?ÆÚ⁄á†˝\À\»ûóQ\‹â_MÀó•!)(\À˙BøC©^%°Å		p\Î\ƒ\€µ8M\ \‚!j\0h\—0\ry\»\Ã}p\‘!@Û,∂\Í`æHUˇ\0≤\‡¨\À\ÈI∫=\“\∆tî˙fX\ 8\‹Cò—å\·\"\\D4nW8\"Z*,ÖÒ/	0a§[\ƒ!£tfßº«†\’,ÉÙnò9Ä® ¥nIá\Ì3â\Ó\nÑ¥\¬»´\—?3)}\Ã±¥óµúE\€\Ì\ÂÊß≠gr\Ÿ`πk2™Q∫\'äxET0™X]¿N«âb\ÂúFæb-\Z\‚a%¶¨F’ëSÒî8\"¨\ÃtsÙÜTZﬁ•y}TºÖ\Ê\'Q°\Á\ÃPf&,Ò\0bÇÜ#\Ê!Ω°õ‹î≤,#QjU≤Ÿà\"ì.\–+¶•ì¸ó.Y7	pbÒ\‘/hÙkÿî8#ùN\Zg\ﬁMKq[öWh£ô¶®I∏#Û/∂7Aáƒπx\Ã\∆q*∫µ<HÙ®© ƒºû!∏2°yÖ**âêh\‘Av˜\rxÉõ\0:[\È]Jï*∫s7ûà\‘.Ò\–q1o\—\‡Æ%+	v%pu\ÃCO®Üò—¥º≠Wï\ÌôE˚∞jeNTn\Ï<BXU\Ëé\‰ÙJ\◊Ç†Rhõ≠‘¥∂[\Ë\“Yó\Ê5¸K4A\ 3Qº@πÑJïâX:\‹Ω\Èw\ﬁ\'¨âëe\"√¶˘¥MZèDz\‘„Ö≠#S\Ã¯\”\Ê\∆\0EêE7á?Vn\Á>\"@å´å ∑-ªñ˛e ºÛ\Œ\–\È¥ı®ı4®bî∞Ä™\—me’àëÆ V\ZÜéú\·[äúª\⁄fùﬁ´2=_\Á\ﬁ\n8ü\Z|ò\Èä\ƒxA,V≤˘èÈõõtw\’\‹t\‡ï+\‚_\‘xõEa6#2∑6\√giù=˙{ÜŸ´£8LÅ7~Óπú«Ü(2\‚ØD∑ﬁé£:ñ◊â\ÕJç¢U∆ß˛\Ãé^!R\ÂAe¨.0âòåDõBÛ(\À9\‚\n÷•Y.~†\Z¿1\⁄0z2\Â\ÕYp;∞ÜJœ¶få2\È;Eµ\ÎâÒ°¸˝1Éj#lkòIg\ƒU&æΩ≥kQÛˆç@©Xàlú¿ø©Ä\\\‹	KŒπú\Î\\Nü˙\ŒP\‚Z+˙=X\Ê7xò&D\Á>4D\◊ñ∑®S\ﬂ\r\√d\\\ÓKÑÅ©π8˙àrõòf9\œ[®.qˇ\0Äuu0T6¯çØ\ÊI°9Mz∞o_§®1âù„¢°a™Éª©Ç\no\ƒ¥#\Óc\ÔWyñ\÷<í˜ıHRõî∞+\È,_◊£\Â\ÓI°9Mz≤€±ü%∆∂A\‚mé\‡F\Ó\ra9ñ;D4ß®Cüå\Õm∏\Ì∑,TH{à\ÂıÆÆ°Ü\ﬂT\◊E®6_WQpJÉ`e^üJ^&ΩtÇ]¥öh6B õ†r\≈\ÁxKî\∆ÿï:Q2âgâg]\Âïuà˝∂R#ım1y\Í\Í\nÅ\’uòç\ÃAó}Y\Î£+¢b*ôû•/°ïjKòî\ﬁ∂	∫U*\’\Õ;&&\–`ª\…k§sª∏òñ@+wÇU*$V%/ˇ\0òmò3æñL®5\ÃU\ÁçCmD¨;:k\nt,\‡á\¬Zı\ƒ‹ú†ØSo°)YuV† vÉC\⁄nÜ+ü&\Z;D\Z\ƒ,¸ÅP):}•(€õãB∑æèN\“\ÍffQb¿\Á•3\Ô\Ê \Œ\„ÖÊ¢µCF,\À\ƒZÑ -Ò(iú¶hÆÖ}o)0\‘1ÇÙûµé{«á©uxÖÒë\ÏC\–[/\√uôeºÙ\‰à\ﬁ5\n¯ô\ƒ¡u}.•,,z\Ë¡\ÃeA\ÊW©t\"ñP±[\  $7ûcﬂ°\À\0®ó*°Öu9NLÛ◊π\ÕpáaY≤=-∞ﬂ≤0i1ùë_K\„K\”[Ñ\r1é\…j{Lû!Ù\÷RºBZÅp\\XÅA*8≤\Ô†\ÃU\‹\"@¢¶ù6\ÎòMÒ\€ ¡Kß\’\ÓP2BSà\Õ^ßlX§J\nääÑJ	\‚-\√`˜Çu˚!3Ÿõ#¶j\ÌÙ*Pî*CùK\„ª\Õo@Fg\‹	\0Ç\’2\Œ\–TP>¢ãU˚\\\rO|E¢ã\ﬁ!¢HJö≠C\Ê\‚\'9ôΩEY#\»\«Ü\Í\'i§\Ÿ3b†Üj˙DßàT¶ò´\—\Zá$v\‹t Kyé\€:ÅEq\‹C¯:/û`Q|HÂçïn••R\ƒ Ωb¡\Á™s\r±\‘e3)ÅU*ôÛ∂\ÔQ\Î/Ùèˇ\0ë3Pxé™ûò5	>Ú§¸(¸\"¿g\ƒvÅ{ôÅ£U1˛\–ÛP\Ê3©\‡SåKMU\¬¡	Ç\…wLﬁπbG!\»E¿ãè®\Ók3\◊\Ê\ÕP~8\‚xE∂<∂Sò-¸t\nn:&Uka,ò¿{ ˜\Ê;EK∑róD∞’á0§\Ÿ\0XÎ©ã\œC2æÇ\\_e˚O˛\00€®<\ƒ¡UA≤\‚î\Ì/|\ÍÄ\Àx\ÈvÑ€™Ød\r¸AsA,\Õ*\')\‰Kë\Ìu8Ñƒ°u6\Õ\ v±p@\rô\ZT¡ñôidy\∆j√ôvZ\"?Œ£ãc6f\"\ Xf\œB–ÅmQ\Ÿx\\±?+\ZΩ\‘“ÖtK≤=úüî\À	ü	|°\Ó\Ã\n¡Kï\Ëá$\Ÿ˜\’XÛ\È\÷eˇ\0ºw5f\“\À1d±\◊4Ò+\Óé\ vÄ\»˘7!yà^7\Õ	\≈N\—9é\Â‘å#òV¶1\—	|&=≠ \‚XM¸\œ,2Åâu}oP)ﬁ†Ñ_yπVz\\*Jî–Çõ¢*Ä}\«∏\ÏEñ>\rL\ƒ\'%∑\0Üö%m\\\nxÄBp\ËÜ„ãÄå0\ÊIπ\€(3Q∫Gè©\ jAè\‹¸\«3˘é\≈~eù∫7MdA.\–\ÍQ\ÿ\\\Ê:WYÇá\\\Ã¯RV®UJ\Z ≤\nT∫`è~¶q∂Ò.{+ıò\‘¬•ºØ@ÜYj/1˘ú£∏\€P ~æ#3î\÷8\Î™\Ïba~gyß\‘\“∑ô`34zÜW*K¨¡˛ƒ†lø,2\Ã,Dâ¯`Bã\‚Â∫∏&\‡/¥Ù,8Ù\\ΩCgÜ£éó./R≥∆Åﬁä\œEàP\–T\Â%\‚\ÂAú°’ä´äkÄ\ﬂ!Ä˜Å\ÈE\Â∏¡Åq\r\r\ b®©®QË®æ\'\·Ü∫]-¥ÑE0¨;Ö¡\‡óñ<›£Q’àΩx#ßd\Ê¨E\Ëf\Â ä\ﬁH@Gdhk+P¥ﬁ•1.B_Vë\r\»bb¿s\Zx\‘Ah\Õ£òÆ≥.ñ≈•Öˇ\04®Ñ+Ñó®π#¿áàÉsD\–\Ë!nﬁîA/µUblò¶Xπpj†•äã∑\–3\“9%úÙ^ê¿ı;Dà\ÊÇ¡ñiM_W\ \Èl[}m\—\¬¡\rÖ-BÙSº2pÛà\”AO∏(w\⁄Zîû p\‚™QÅ∂\÷å8ó7&ù\rÇXpEt±:ôìªq®Ú˜-Oh\¬˘ç.\Ì\ZE7\”l\⁄iPNÜπ\Êf\"\–`%\–Ïî≤ô≥®B\÷qS\ZÖsƒ™zq.Ü\“W-ñ®™Ú@V\ \€C¯õâa†ƒ°™\∆) Z\Â\·SF<ªä\Í\‘ÿÜéû\Íé≈ç°Ü\‚.K\Ÿ6GãÃ∑T˘Qºﬁ°¶{\ƒ\Ô\–.°∑£ß5a≤\rüæ&…òC`ºCÖigkàî\ËLn8TU ß\Ë%¿s>“É\Zn†A@fÒ\Z®7ŸîYBã\"Y-\Ô\Zã\nçfYc]\Œ\\°!Å®\¬#\ﬁvB™S\„`å\\#πq\›˚©ª\‹RXµπOzáô\Áò4Ù\Íö3I©Ö=˙E^\Ÿ\œ3 bÛ1B9˘Ö8]\‡îKK∏¯\Ë\◊\—kEÆ\–L∂ÛâSc\Ê)\ƒCï\–\’¿nN`ÅÒ\Ó\»[¢\‰‹©U_àé;M	±6\Ë#\‚º¡ªöóîrƒ∂<\‚>¸¯Ú\Âyò°ú0*”àm#S˝¶áAn11\·5\03\0\Ó\"iâRj8\ÿÛ6\√\Ì)\„QªK\À\–ı\0ÄORæ}ã\√\‰√±Yˆ\◊)e\∆1å9®a45O\Zb0U\‚VéÚò\Ô\’qñ%ªú\0jn`\Õ\–X˘çP\—(ØxäFi5	\ÌÛ}(^aë\”M∫u≈áàê…ööàjQH\”Zã}*]e\◊2ùöu,∑|≥P\Ÿ0.%t/m=∑EëT–ñ¢p£5ì¯Ñ\Ôì9ÄC\€[\ƒ58\Œ\Â˙ÑLLeKæeçÌóß\ﬁPπù\ Ù ^e\\D¿rc}>to\‚£8z6ÅôV˙ünYgâü2Ñ¨mçCà\‚\r7\n_òß¥°SYÇ\‹E\ŸŸ¨¿\0\◊x*íéõ\Áò#˘P.\›5∏1;y®Ü>7:8\ÃF[M\ƒÜîSQz\¬[\…M\‘càM∫ëhX≥\Ó¿‘†=O\»\¬\·T⁄ß\Ê0¬ôKFe¶z|\…xczNcY7Åúj\€\".úó“≠óc-A}Cåë1ú¡±lbZ\Âò]&Òàß,û\◊KhÑ6MN.\Êf\–lÉ\"ò*{\‡á\‘\…Vº≈•¨\  +öÄ\nˇ\0&\–o¨T¶\“1\∆fàäuyî]àû_\Ãˇ\0\ÓM0@]{ÅU≥\œE^…ø—âw6\"Y1`s\ÀT¿Q¥E±\ƒkâà†˜^!9ä\Ëë\–[g-\ \‘\·Jã\'C1+íAÆ—∞\07d[0OhFäaPëEá\‡`V∞\ﬁ-Ä\Ô}&Bz∏-*¬°:∫â!®ja|\∆^U/^s/K1r\Œclª\È\….B Sûü\"|>é¶\ŸH\„eF8\ÃlèR\”q\rã*TBº\«aoE¡Ç	ëæ ˆá\”,2µQ äµ∏±s≠0∞•\¬ ¯Ü-L(∂#\Âˆ\Ê\r!•(ê∑ã4ö∂°\«v‘æ(Ùâˇ\0\≈-\\RN\Ê¥ﬂ†\‚0úòÆ!T\⁄\Õ\“\ËÜıÒ\ ,:nÇ©ñ3\‰Oá\◊\ B2≤^\Ó|í\÷\‰Ω\Ãl`$\0Ä08%™Ä,\‡\…+qF\r\Ê%syTü|U‹∏I{Aöç√õ˜πâ>\Ícàe\Ã@\0°ÆGQKÅ∂`B\Z\œK;ê	rf\·6¥Ûtèß•B2\“g$(#˜\nó¸\ƒ6ùïafa*F\Ê•\«x-†7s\Ì\ÃÙ\—Î†∏\Â\Ó;g»ü\ËÑ,/\ﬁqlö˙QØ¯¿¢\ﬁPHMjîWôzNº&@é\‡V∫¨ºDaN\»CP±\ƒû0ª\¬^\Èk&U\œ\ƒJóW¿åïòÒÅ\·\rp#ﬁ£™m\Ãeô¬ò!¡\Ó\œ˛§™Ü\«4ìµπaô∏BVòÉ\‹`¡\ÿ\ƒd[j®lÑ\‹(gK<•R\È\Ó1\Ÿ˘ÇΩqCs\»~z8\«v.ß†~:¥5Bì\‡ºJ¯˜Ä\r~\Ë1U\⁄\‡ƒ§~\‚£\Ã6ïu∂VJúB\Ë3JK¡\…kQz7Q\ƒ9Ö‹î*^⁄§<\‡[ÖB\¬	\È !ÖÛôJ6µD;\\8JÇYï∆ä-\Ó\Ô\Â\’F∞\Õ{º\‹˛ß\ÿÛ+b\ \ƒ}\ÂØ.†@ÛSà:*\‹\√\‰^¨ \ÃBæ\Ë#≤\‚€é:}±ã◊âG\Œ8ä’´fäå`∏∞Ö´\√%áys\…¢¯d∏6°\ﬂOâØt\ÏEP¿Ú\”\ﬁ\–˚Dh,!PåRõ0\Ã»±≥\ƒ ÉM\ÀR´ØDs\Ã\–\rvûÒ\0y\ÕDy\nªQôëÉò\\F§\ $£±	ï•]E\‚\≈\rK)J;\‰\Ê˛ƒ£±7kS\‰%\›_2`¥©\\ä#*`—ò\‹\nè≤7≤B8G	\‡~&Å\0¢_∏\Ô<1Ñ\‡Ùä\'±\ZSy\Ã(\0}•q\‡\⁄EI*í^ΩFdYjÇÉ˝å‘≠*pvü+~Râ\0\0\”`ö¥ïEò4J\0\\Øå √ï≤p@\À\‡Ùc®b£RÑ\Ã\÷XÑ\Î•\Z14\‘h*ló•\\\Z¢˝JÜü\·œüõ{ù>$VC∏\‹t∫\√\◊b(` o=*FPÄ•≤≥Ip%ê\0\ƒ\nD∞∑ÑA3Du !Ü#N\ﬂ\Í}πòf\⁄c\‘v∫ó;_Û\rOâ@6Ω\r®!Z?Ú:!≥ã\'É`Ûnµê\Õ@\◊TøOõ(N˝QATΩ\‰\◊AKÖ.\‹å˘˘∑π\”t\„oˇ\01\0Vk¢låÚ≤±X\Ë£|•∑S±(”•\‘Eø\∆eØT£7\–6éÒ\Ì∑ä\'.:6Å`róñ#¸®j|IeTì–ñCö\Œ\ÿƒ∞Ù¯∞b.ÛBÉ†∞ü}MQ\È\À!Æñ\Ó/?é\‡Ñg\ŒÕΩéõ\Ê†¿\0´}B\"•\¬!@ÆàÑü*+ä™∫\Ëmh\\nz∫Å+\Ì\Î&ëWΩ^»õ\ËQ\ZB∂\Â\rOÅª≤É\\ù.;!Ö≤çD2\◊\Ì.ˇ\0q,+QJ¢ÆÅkD@öpú\∆!ÅÖ\√>$z\‘5–ñ\Êì\ŸG¯Cß\ŒOÙ:nÅ\ﬁ>\“\ƒˆfs\”s\—àS¢q™\ÕC*\Ëwé\“\◊z™¸Òl\ÎZOüèæ2WèLY¶æNp\‘¯\ﬁ\Ì†ØF…øıó∞\≈\√Q•ö`\n\·∏\Õ\ÓUø™2\'jô¢€π™=j\Z\ÍúOáOüü\ËuJΩ∏Ø\Ìt\›*\”6\\S<ÚXÆ/pyïn+éîón\Ó\‡ı≠\'\œ\À\ﬂ*W!æé¢7ßƒü?o~õ\Â≥wˇ\0âJ8¥\Ë\Î\”(øv±	•¢Û(-O#J$\’—ÅT\n\Á\rt¶*∞L\–xıü;\»\Èª\‘¸Ö)Uˆ\È∫ë¯t(ä:\ÈU?ª\œS_öáOD\Í\n˜\‚∞ÛÇu∞.q\Ãfc1&ß¬ü?--@\0bG†àâäh\Œ|¿\ÏñQ/c\”i™Ã∏ 1úE\‹m\ÂûI\–.¥´\€cî ∏úN\ŒöäF6\‹:3\ (\”£≠\ƒ+k]7L√∫äh \Ÿcp™c0≤\›@\0*&zg•é\œ\ÓÛ\◊˛WK\›D\ƒ∆ùGR\¬Qí†™8\\¿Ch{\Ã\ÕBaï‘îi˘ö]\„\’[«ù2J\‡ê7\ﬁ`û^ò˘!T\0=\‘@∫∏°∞’∫\ƒ+}D%t\◊*(òº∑ò€∞ÒD\n!}\”¿¸\Ã)x\‚k\«+&\‰E?\È•ê\Ê=\Ÿ\€0£O\Ãˇ\0\ÏFbcæ\"ö[\  .ÆY‹ñ˝nVë\Ë\—?˙ì˜\n\"¶Ú\Ê5T∑\0⁄¶EGÑe\Ë^P¯òˆóWÄàLfQ∏¿¸Õå˚\·_t¥\ﬂ)dÆÒ\·ú\'\ﬁ^îe\‚6[n8æ†\ƒU®ÄOà“ÖÒ¯mÜÅ°¿\‘2°ÚÃ≥ˇ\0\ÃR\»H®ç≤\\†M\€\œ\‡F\’˝ë-Æ,ÖoäÅÉC(¯ï1§\≈\ l\"\‡\rØi*+K\À3orΩπV\Õ˜\·≠\ÃCó;\ƒ\’ªrò\ \ÔF¥\Z\"\∆\Ê\Álb\ÍQ¯∂Znn\·® \À\Âò˜øä/ºçŒû\nGo/ñ\\Ø2Å\nã\'¯¡\Íöhñ.«°\›5öÇã|¿^~%∆¨[\Î±\–_i\«–Öq\Èc\‚>¿&ÿ∞yK øú•ÅÚï7\ \ÀH3´\”∞\À\Ãb\—R«µf\‡ö\n‰òôko3≤eª_vv\Èef/p≥\"\Ÿu\Õ¡˜o¥πˆ‹≤\r54\√ghê.xÇ¬æ\'ô\√qO\‚Zp\≈+,J¡Üh\ËÙ0\ÃY\Ínaìq2| ãP\Ë5\n\ËM.ñ,“óºrˇ\0\‹(3˘Ä\·\Ôê“°Y8¸+&4\ƒQ\Õ>£Cñ!¨\ﬁ`ùÿî\¬Qÿîv £\”\≈H0\‡\Â©c£,ò˝ﬁ†^à±\\ºC?B\0Ah\ÕC⁄¢è\ 8Q/π\n@nµ\0\¬\«h\≈ÅæÑ€©åM+nïÑ¢9\›¡¯µ)+¸üâe∞fJJ5\Ó4ü1\ *IrãwQR\n5∏yb*∫_\‘m\Áπ˚çXW\‰üÿüÿÄZ\‰Å›ΩGø-ä\Ï\‘@àSwû#SqFn\„VLnR¢™˜.(¥vâ_\ƒNÜ§ßh\ﬂ@Oóq/0q\–E®Z\"ji‘ø¥ªoàeøúk¢\—\Ã_í-éÉ9ááF\\6Ø\ƒ\Ì±\ÁJç¥/-Éº\’\ÓBæÒÚK˜qk	\‡~\'Å¯û\‚xâ\‡~%v\⁄Y¨t\ﬂ	.A,ﬂ¢+%Ç\0öp?P#@ﬁ°ìéPxJ3@\‹>iâq|0\Í\¬\r§:\ËC¥\Á‘∫óbwáS\ƒW¥é\‰uCc∏vƒ£±(8ˇ\0\–h¨\Z.QÛ0G\Ì<\·û\Â\"	kàT\Ï@Wöï\‚zxÄÜQû¢ Ä T\Z∞k7¸à6‘æq\◊ˇ\Ÿ',6,0),(17,'css/images/Accesorios-Mouse-Ratones-Logitech.jpg',NULL,7,1),(18,'css/images/Accesorios-Mouse-Ratones-Logitech-910.jpg',NULL,7,1),(19,'css/images/Accesorios-Mouse-Pads-Primus-PMP-10L-327308-FJtK0dt7lO0e7mvD.jpg',NULL,8,1),(20,'css/images/Accesorios-Mouse-Pads-Primus-PMP-10L-327308-FJtK0dt7lO0e7mvD.jpg',NULL,8,1),(21,'css/images/Almacenamiento-Memoria-Flash-A-DATA.jpg',NULL,10,1),(22,'css/images/Almacenamiento-Memoria-Flash-A.jpg',NULL,10,1),(23,'css/images/Software-Antivirus-y-Seguridad-eset-INT119-Internet-Security-2019.jpg',NULL,11,1),(24,'css/images/Software-Antivirus-y-Seguridad-eset-INT119-Internet-Security-2019.jpg',NULL,11,1),(25,'css/images/Almacenamiento-Unidades-Flash-USB.jpg',NULL,12,1),(26,'',NULL,12,1),(27,'css/images/user4.jpg',_binary 'ˇ\ÿˇ\‡\0JFIF\0\0\0\0\0\0ˇ\Ì\0úPhotoshop 3.0\08BIM\0\0\0\0\0Äg\05JhB8HcSgEUwA0_iheM9(\0bFBMD01000abe030000f40c0000811a00009e1b00000c1d0000842700007d380000aa3a0000b93c0000ec3e00008a550000ˇ\‚ICC_PROFILE\0\0\0lcms\0\0mntrRGB XYZ \‹\0\0\0\0)\09acspAPPL\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0ˆ\÷\0\0\0\0\0\”-lcms\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\ndesc\0\0\0¸\0\0\0^cprt\0\0\\\0\0\0wtpt\0\0h\0\0\0bkpt\0\0|\0\0\0rXYZ\0\0ê\0\0\0gXYZ\0\0§\0\0\0bXYZ\0\0∏\0\0\0rTRC\0\0\Ã\0\0\0@gTRC\0\0\Ã\0\0\0@bTRC\0\0\Ã\0\0\0@desc\0\0\0\0\0\0\0c2\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0text\0\0\0\0FB\0\0XYZ \0\0\0\0\0\0ˆ\÷\0\0\0\0\0\”-XYZ \0\0\0\0\0\0\0\03\0\0§XYZ \0\0\0\0\0\0o¢\0\08ı\0\0êXYZ \0\0\0\0\0\0bô\0\0∑Ö\0\0\⁄XYZ \0\0\0\0\0\0$†\0\0Ñ\0\0∂\œcurv\0\0\0\0\0\0\0\Z\0\0\0\À\…cíkˆ?Q4!Ò)ê2;íFQw]\Ìkpzâ±ö|¨iø}\”\√\È0ˇˇˇ\€\0C\0		\n\n	\r\r\"##!  %*5-%\'2(  .?/279<<<$-BFA:F5;<9ˇ\€\0C\n\n\n9& &99999999999999999999999999999999999999999999999999ˇ\¬\0ï†\0\"\0ˇ\ƒ\0\0\0\0\0\0\0\0\0\0\0\0\0\0ˇ\ƒ\0\0\0\0\0\0\0\0\0\0\0\0\0ˇ\ƒ\0\0\0\0\0\0\0\0\0\0\0\0\0ˇ\⁄\0\0\0\0\0˜2G¶YL#\’]Üπ\ÈE\—5è1\Ÿ\È\‹\”\“ViûeÛ\\¡®Ùffi\ÈL6ç(\«\œ=La\Â\»¡∞\Ÿ<\„\·dÙ”çIæb™z4≠\√=$\·tmÄ\0\0\0\0\0\0KR\\<\∆›π¶o≠_0\Ôù\‰é:bO ˆ∫#i\Ê\Z\ﬁCWH_/\”\„à\ÌNk\À\\,\€ô&ö¬îhÒ´óöÙ\ﬁ\–4\Ë\Ì\Î\r/9\ËÛå\≈tπ7¿\0\0\0\0\0\0\0Äí`®¥I\¬glí ï≥w\n\Ï\0\0å\›0Æ¿\0\0\0\0\0!fÄ\0\"@\0\0\0\0\0\0\0\0\0\ /µÇ^\›;õ\€Ã∞ÇáJ®)4\◊]\“=Oñı \0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0ª!\\ˆY\ÿU\Õ\·_Ö|^\ÿ\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\\\«eaa¿vVEá\Ÿ\ƒAa\\ùï\ÕvVëa¿vpúeaaXXqáXVÖÖaaXXpWg\Ÿ\œT\0x\Îi∑\≈\⁄H4í9≥™k\Ï≤≈πF®\‚¨5cûr\‚W≥™»â¢:\Ê\Ê\n\“\”Fr\√PM¨¶j\‚K\ÂH±Æ(\Ïíz*-®\Ôõ-öE\Ï˚¥\Í\Ó)∑Å\Ï€ñÙ2Ù˙s\›&;^ÄØmV¯{ÄnÚõ–ãwlY\»s\'Kˆ∂M\ËÙ˛eZøktUπfgy’Øù\œeÒﬁßJ5m%∫çYûâè\'\÷∞ÛO\Êk˜Ö•!ml∑I\r*\ ÕäØ†•è/^ÜÆNæc\€\Á\È@Ù\¬bk\∆]UûÚs\Œ\ÂÇ’£∞åXÙ\"+äÆa≥ñ# µ\Ë\Ëô,\Â\∆^ø1\Á\ÕJuï{\Îb˘pßrLÙmYVßõ€´*\„\Ÿı\‰ΩOìÄ™¥≥4SuQ\ÀØ£eñÙn>ûD\ƒ◊Ñ!ˇ\05Œ≥RŒúÛonª)\œ\Í\Ó}UΩluÆ¶\Â\\Ú\«\ÀnP\¬\’v÷ôü°ŒÄ4Qyg=¨0!]ŒôïehôhÚ£ç\∆˛6Û\Ë\Ï¥Û\ \ \Ê(iV®™⁄ã+∞ÉKc´\\W\"bk\Ã[U∏\‡Lsìu\\˚_µÒÙÛ\–gPª\Ê_\Ê¥R\Íî\⁄\Õ\’u®2í•—öÛl\ﬁmù=Lo}\Zº\Ó-ñÛ\Ë·èµÖπ©\◊Kã\⁄oÙ∏”≤∂i\Ë¸∑\Â/U©\ÂØ=fùïùM\Í#g3hßo\\˙ =x&&ºsô¸Œ≤ä©•õ\Ÿ˙|}ï\∆wqI%ä_àV\œ\\w\Èõz\Zπ\Á\“T_\ÌYµºUØmö\ƒ&\’<∫G.Sù’Ω˘˘\ÊúUöv1∂q3êıf^Z\ÌéäØ^¸\›\'0u¸˚·µôõÑ›•ú\Íˆ\’DY\œ\”\Èç\¬\'Ÿíbk\∆\›LpV)µçø\›Qé∂\Õy@∂˘≠åÕö\Œ\“\ƒ\Î÷ÆÆj\‹\«\€∆´U∂zs\—\Îé˛mjz≥:\Ã;\Ô;rU\Œ\Î\«cK+:ø/s#û˝P\«s\‹/ûW\”y\“\Í´=^s\–fE7\—-\”á•õ•”û\‘\ƒ˚9ìoéÆ\Œ8\»Ù\nig•3i7T\Ÿ)Ya9€û[n	ΩïÎû≥œùúml\ﬁ5±u˜\œøCÉ\ÈÚoha\Ì\ÁJO\„}g\Ì©€á4j+çÛR\⁄<∫£ØÅø\ ùÇî\“À§H7ô\È0\\gZ´+∆≠&A˙r⁄êˆdòöÒq\≈¸∑GS§,H\0a~kç\\\Î\Z\›\ﬁe\«W\—yÙ∑W^\ÈÖ\\ßY{ºãF≥n\È\"\ƒ\Í][∞˚\ﬁ=y˙iè∑Å£ù—ª\Â\«7Ûz∑û\‚A∞òUf,ggäƒ∫\\áSsØ-≤\'Ÿíbk¬ΩùßÁªíÄIÑyØJoCO3\Zb	ÑR6.≥\\∫Z\Èº\◊w\…\›\Ó\\\€{\ÓZ¢¶\Ã\’ﬂ∫k\Œ\Ÿoz.ñÆ.ö\ŒGõ\∆=,¶\ﬁ/A\»@´+4ë°ì≠ú^5î\⁄\Ãv\Á∑1>\Ã^S/S\œv\ÊIûC£éÄ\"\Õ,\‹iÄ+YUZ\‘\Èe‘ãi\÷^]\Â˜à±•ƒòb°;÷ªü\\k\Ë7W\Â=\Ìbº\›lπy\◊Ûå\∆\◊Y\Œf1*ê2õòQßü~q´cY∂v\Áø1>\Ã^	µ\€\‡\⁄/\'Z&\È(/¶˘Ö\”\“\Õ∆òî´≤®\Í\‚\Ã}|Mπ∫8h^WdNWh™\Èª$G%\Ê:£ÜK\Óiôg§∫ñ\Õ|\r\‰*\Â\\\Ê\ÕWy«°^ÙP\÷kV3º∏∑ë16¯û\Áû3\“ ≠N≤D\ êLDfi\ÊgLLL≥Y0dX•\€\È∞duùj◊ñ©≠JSsU\ZQy\‰ı´ﬁÆB⁄¥^yT\Ì-s\¬,≤	hcK,ÚÇ\Ì®\Á<ë\’Xz≥éÒ–≤ª5\"}‹ââØ,ß£OÇ≠O\'\Í[∞âö\"@\0å\Õ<\ŒuâÇ&¬æ\‘2öEÆΩ{\Ó´oA7\«=ô∏\œ8\ƒ\‹ƒ∏øí5§`†ë\"cµx™\◊N®\Ó≥=\ƒ\€\Áœ™mß\‘\ŸM\‹˙\œk5∏‹áªë15ô}Òπg\Á\Íz\Ê*ØüVJ≠	âàE¯ó8\—#?¶ñóã0≠°ú\Ìn≤\'}°G\œ?A0s\Â\∆&¶n\Â≥™ó™\Á\»\0r/\\ıM¶\Á1U\‘bz{\”g2B˛∏Ù¿zLM®8ãº©\‰=Çªœä\ﬂ\œ;—Ø)\ﬁ{{¥sDbn\∆Fö˜\…\Ê\‚¨\ÔW7¨·Ç£∂nV ≤\ﬂ\ÁH\Â|\ÌNq©WQ\Õ\ﬂJ]\√4\Õ|π[<MÄ\œm.[å7\œY∞Úò\Œ\Àt3\œx-.ﬂ£ü°\’	â2\ÿcãV\Ãﬁì¨M5Me3∑1\”]πŒ°¸\ÈπVO1m¨3E9∂-¯;X\Ã\›¡∆≥r˜R◊´ûå_>¿\∆ÀåÚ\›ƒà°ª˘Æ}\Z≥ZZ≠Mfˆ\ÂS¢≠Ò9Ω(\¬S\Zó©vsê\ﬁsù9zÄ=bkÇLê\Â<2_E\√µ]ºk7Ωy\Œ\≈\ÿ#}ıiØXC;[ã2ﬁñiÙÅõ£fieºu´\'3vLM	\œ5\ÈL\ÿ\–\0\0¢\Á\Ã\ÎÙòl™\◊^[\‡lLMrra\—\»tÿÆ≤Üg°°ö\ﬂÛ\◊r\Î∏W\ﬁ7\‘D≠t4	R\‰\nŒâfa¶©n≈ò\Ê∑+ö=Œ™≥w6U=Û\Í\Á\⁄6)\√O\»\Ëë\rß\√\“8XL\–\«n[\“\ZÑ\ƒ\€Qdı\«`/Uµk Múek°ù!≠ó°\ÀoÄ‹ÄG=FJ:£\'Dt%s0PDÇ\0Ç@Q\◊\'$ñ\«Sõé\’\rÔû∞_ˇ\ƒ\02\0\0\0\0\0 123!\"#045ACP$@%DEpˇ\⁄\0\0\0\÷yF¢1ñ?ÙRQ˘´´\ZîOà\œ©´ ≠™®*Hg\n~\Î\Íbêeéæ´\“D|Fp_4äñ®\'ßıÛH©*¶*\ÍèKN\\B£+®©´dú˝|\“*j∞û\‚J©kΩ@QO\Íi\‡´\›Qq)ßkJj~,∑ñ¥˜©+7ç¯âo\“÷î≥®¯å≤™*\›˜í∏˜©kwdóàò\‘BDQI˚\‹ı§3SVîì˛N\'\‚\‚ﬂ∑TÙ‚ü†©˝\ÿ\ÌpK˙9˙n#˚\r˝7\ÏÙq\÷=7¶:v„ü∑µΩ<_±{ˇ\0â\·Ò\÷)R\…∑°\·›ºˆ\Í\Ó˚\nÛN∆ñ¢¶zv1\„<;ı\Ô˚\Í‡Ωü˝\ﬁ\€W˚µ\'\Ó\ÍO\ﬂY\Á´ê8\«‰öç¶\nòZx$§éZW\·éc\ÈA\È∆ì¥`1Öm3UG<[\–S≈≥- \”\≈˛4ÅR”ç4|sˆˆ\·\‰q\…J%Ia¯\ÁÇö:h¢Ü8,l—∑\rpzZ¶\Z:v•Üñô†8®vj$\·˜öüáåS43zVı´áS<\ÕIF4\Íj¶•¢\n:Vé©=3=d¸?9°\·\√G˝ô¢	Åö\Õ\»t4\∆B\Ã-¯¢Ü8\Ìæ4ß)\≈¸p É®ã^Q$\Ô˛ûíb\Zh\‚i¿jdìÖPSHJıíSçDpRTî|\nN.ó£Ù\Ï®\Î¸e5$ì\«¡/˛¢Z_¸u1p\Ìô6üÖP˛ázéu\√\\û\ZhûnOƒ©⁄ûÉs¸e,¥M√£\ﬁ\·T|B\È∏+\ﬂ˝K\≈>-fk\"à	Yì3mL\Ã\Àl2a[@\‰\Ã\Õˇ\0\‚evWevWevWY2ª,ôd\À&Y2∫∫ª,ô]]]ñLÆ\À&Weì+≤…ñL≤euí∫ª+´≤ª,ô]ï\Ÿ]ñL≤eì,ôd\À&We~Y;◊ø%\÷\Áæj\È˙C\›}7·æó\“¸ô,ôn-\«YíÃêæmggéO±]¿è‰çúPñîD˚úíy9\ÏΩ\…b\ÀXØì(\Âì,ô1≤\ÃU˘û@dı∞≤ı±Ø[\Zàâ]d\ÀqñDæN±X≤≥+hnÅ¨\À∂\Ó+ÿòK\Â \‰\›∫¢ÚÚIﬂ´Ù˜Y≤…ï\€Xª±π3[n1còD+>q¶{£1uÃ∑\Âï:Öë\n)n.ÒM0ºnôõwç\ÂN.\ G˘d“Üî^^I;˘l±e∂\À\‚\Í<ØHY*ˆß¯\‘\»\‚\ÕW+±fâôó`]Ôãí\Ÿe¥[b∞≤i%5\Ê(+£$2±,ñN≤t\‰\Í6’º∫J>Òæ/¸\Ÿ¯õíN˛{≤…ìõX\rùR¿üw\ŒUû\ƒ\¬\Ã\’\‚á\›;‹æ,≥YØõ≠πlHΩ9≠ìO\'çáÇ¥I5üôº∫qäç\Ó2⁄É\œ\…\'z∫Õñ\‚\Õ\÷DΩı\≈…†ÑÚ( ≤o¢!N∞»¥!ª=;[\”0∂\"Üô *\÷\Êx\≈\—\”#â\Ÿ\È\ÍJ\'å\ƒ«ëº∫roÅ™Q˚˘%ìÁõØt¿NöMß`O}!Ç\ÎáΩ≈ùqvû9Öﬂªò£»ô≠¯\»XïM=ï\Âô´\Î˝\⁄r6ˆàÆ\‘˛NBà∑X§X±ñJ\\\–F\œ2~ê˜\'˚*N6ëm\…äg7\Áf)@S‘≤\ﬂ42\ k˛Bº\Îx\≈5H¶1tˆvñ¶\∆h\nô>bòôvá›†¸dßÚrIﬂ©öC\ÕAn\Õf∂∞wHX\«ï\'\Ì\0`\Zπ\'uº\ÃLSíÙíõd Ãü•1\„>LÆ\⁄1∫*AN∆Üv%@x ü\›I\‚0õ4\»˚¥ëQΩÀíN˝f;®É2am]C÷æTØaâ∑f\—\…å\À|â4\Z¶£`_¡\Ÿ;µˇ\0ì¯U¢ˆM*bmdÄdD\“SO£#i˝\∆LP¢/}h=•\‰)>\∆&\“b≥7ª\√\»\ÈèmÉ\Ï2\Ï©?å!Ä#ïô\Ó\Í:k®`Q\¬!•˛W$\›\€@û(\’t‹°bäè”ßåîî.àfç4å˙O\“OÇÇl\Ÿvì\0í8àSîçˇ\0#íQ˘\‡K\‰(ÆOK\≈b∞X,V*§Æá\ÿe{_l§B-$\ŒH\È∞\‰4†\rÑ∂\¬hlƒúYr/N*™îJ*C1é¨1*YwcOÓ•§F@ÚH˜Nÿ®O66á\’Iík±Ryy$Ú)Dì{7+Ùú™¥æ∏\Â\‚\ŒD¿\"8±YÇî^ûMdç§`\Îm\…4~îæ\“*Sxg‘ôâ™(\›7rg\€;\ﬁMÆíy\È<ºíyAf\ÃU6\";Ç∑nä\‹∫+pTÚ∂\Õ3|T\¬RI\"ù7N\Èfè6\n¨NH&S¸d¶S#∫j#Õã\·WR´Ü\≈\Á≤ñÑ7h$¥\⁄]&ÛRyy\ﬁI\"4dm[hÿ≠±X\n¿V∏É3S\≈\Ÿ\»ËΩÇ\"πÆ!\ŸO>MK\—T¯\È˙UiM÷µ¨SΩ\‡™°\·•xµ¨ó\'≥i\'¥ÒñBèÆï>jO/!y]Qè\‡™\‡Å˛:≤N•\Ïq\⁄q|Ü@cihJÙí\Ì≤ù\ÓYm\»¯õzt\¬’Éx†=\‘}º7øJ©Ò`I<î\«bG\◊JØ%\'ìí_\"Ñqèù˙I\ﬂ\ÔCÊ§£!é2∫u\"®år`òòôIö)ŒïC8ì0\Ô-¶QN./4l•2î(lﬂß\rÚ:û•ô5\›˘\ _ª]*˚\È<úì˘\‹€ß5EAë\ÓK≈ØÒ<{2øCS˚©bqCgYLæ\“L•ßfﬁÖø\…¥sâmûb≤h\Íf©å\"†©lI$B\«\‰>î•p>∫U˜Ry9\'ÛA\Â\Áí)\"òi‰î£\Î§Û\Ì¶ÇIó•≥K\‚≤o\‚(r\‹3´∂èd[	\‡\Õ;%É¨mÜ*X∂\‚\Á?\"¶{ı“Ø≠ìío\‘R˘?Ù∫Aˆ\‘\È\’Q¸Zoh\„l@û\Õ6\€¿	°gü”ÇêGqH˜õO\‘U?K\À\"¶ìv.SÚ!¯\ Z\÷*>˛IºÙæ_¿\Ë;¥á\Í©_¬ì&y7\ræ\Â9J\—\»#∏ˆÇOm\Â\ÀN≤*πp\nH∞\ÈG\ŸB\Ó/íÕñM¨ù\ÍD\ﬁ\„•gm$˛z_/%˘?Ä\Ó“¶\∆\nõ/Q\r¶öCQñQ\„µ(õO§≈åQ∂!9cx±˚jYZ1Ñ¢M)|\√.\‘˛±\‘\r#´6è‹è§/“≥≤Ö˛\ŒJè=4cª¥+hV–≠°[B∂Öm\n\⁄dÒ5£\Ó”¢ Ml§£¢-5ˆg\ÍM0íıƒ¶B\"*hûaår\›6©à\◊\nıÑ©zèÿ¢\Ãm\Ît\Õü<ô˝˙U=\’X?$˛h|øÜ>\Ói~öûr!¨)0£MI\ZŸÅì\Ï)\‚S\‘\√+5âQ|¶R>Ö‹òîeˆ\Ë\‚◊èªío ˚vÛ∫èªöΩ\ÓQá#êäy\≈<≤:6wñ≤:Ñ\‘\“\€\“zAdÙÄ¶¶èz·î™°\’(m\∆\›\r¥>∫f±˜rH\ﬂc™wº|\Ó£\Ó\Ê/ùIˆ±Ikö≥ß1\ﬁæ*år:ü.íøæíBﬁëîpÄ!e\—\…Y]∏zh‹íDm)? êø†\Ó\Â7\ƒi\”Ù\›ô\Í∂c[Q¶fd~ÛÙ–∫Ú3]30\ÍMt}t>±ˆh‹ü\›\ƒ cå¢!&6\Ê~Å\ﬂ\ÀW\·äAsnç˙≠≥G\Âod\«}H\Ï§Î§äck\«\›\»d\√&a \ ?Fìù\‚+¸\÷N≥Y2\‹\Ï\ÌZ√π7]ˆ¥2\ƒ#\Î°ı\Ê˜^˙¶°Ò™üåîRëI\»b\«!PÇ¨Ç¶&Ç∏X\€C&\≈¯0(Ñ04£≥4k#í¢&Ø˙ù*Íè¶í7∑\·ìY96\ﬁL™â∑8wõì˚”™\ÍHÛß\È\ﬁ*¡wqkê&vvÊù≤Üô\„\€¯ØeRˆóqn-\∆F˜ó\‰\À\'Ur{	5Æ⁄ì[ö˛4¶\⁄≈ïPé\Áf\›\‰.ì\ƒ\“\‹F:Äx\Á•x™\„ëOı\«TT7¢5\È\ÍEoT¬£≠åì;ï\«ÉT	\Í\„∂\„\ zøë∫YïPI≤6\ŸtÒ\Z±≤{ß+,\Ÿd‹åH`G≠ëE¢N\ﬂR™ÚPwÚL,oµ$hkrÑçWHI¿¢6êg•éTT\’‘±îPß¨Öàeå\⁄Jhç<\–(\ÎìLãhë¥}ZHÜV\≈\Êko1K∫\Àuñ\Î-\÷[âÒ$@*\ ƒõ;\∆…çñLç\Ÿ]ï\’E≠é\Íß\…\√¸úÉΩô8äíçñÙ©û3QH\‡ÒõÆ\◊jxÉvZ\'\‘B¢´å‘êÑ¨Ù\“\¬\„Z‚¶™à\‡èµ\ﬁ\ÃQìÒ*âÚäG\ƒ#¸ùî1[Lm\n\Ÿ≤+dUL,¢Å∞\ÿeS\€\√c\∆_\√-$R*Æ</U\\8ãìzı\Î$%Kõ®£RA≠öàP÷∏¶ûûET\Ìvõ]<ª‘¨MlÜ\‹:_ïQ∂\€\ŒJ\…˘\ÊÚES\Â†Ú~/‚¶û\»å¿˘]Æÿê+Ñà\Ë\‚$¸<S\–/Dj\nmß\⁄\ÈcAN\0ıy[ß<ùA¨<˝\”\ÈS\Â†\Ô¸f\ÍhnΩ¡‚ùãòÅâ\\Åô,gVû◊ùe:›ïoö˜\À6Y≤…ï˘G\ﬁ^w\ÈM\ÓzT˘(;ˇ\0=µ8Ñ\—\∆@¢ù\≈	â7)Fò\Ì\ÕfX\n\Ÿ\È¡zaOLΩ2Ù\‰∂$[3\·2\∆e˜,•Yö\›%ºé\\öúq\r*ºî¸óWW\‰>K]M\n≤Ñ\›€ó™&\€v\Èˇ\0K\Ÿ{,[í©æTg\‰ˇ\ƒ\0 \0\0\0\0\0\0\0\0\0\0\0 !01Apˇ\⁄\0?ˇ\0\·\œÀüØÆ~\Í‰∞¥Öï\Õ+Xj\’tıhU\ \‡¢y<ûO8tâ+˘êÙ»°RT≠W£\—\Íö¬ß¸fDb:*ïv∫\'ó~H¿ä\«>≠ûÖ3£yB\√\ƒEh˛©æ\ƒw\Ës*V©\‚8Ü$N$jQ\"%qYxY\È\€Úx<ç§*b©Z\⁄G+ß£–æ\≈\Z\ÊªYTô\‹!Wköï¨¨D\·\‰ÛéûéçäGi\⁄\"±&\"L\ÌDï°\ﬂ\·b,D∞\ÌêáÑ-\ƒD\Ìé˙vêáòΩ!\»˘Ô¥©£ñë\‡\‡âe	\È“®€®°a\ÌKJ\÷U∫{Bó\Â\€\È”∂ˇ\0!e~nˇ\0ˇ\ƒ\0 \0\0\0\0\0\0\0\0\0\0 !10pˇ\⁄\0?ˇ\0≤\À,≤\—eñYe¢—±eñãEñYeôl∑-≤ÿ¨∂Yl¶{=â≤\Ÿeñ[7eâòπ\\∏\∆5èC¶h6W)\∆°\"°âeó6X≤=3,\n\Á¢ÖÄ∞(n\„¸(®±ãå\n2\»nÇîÑåŸéB\‚è&.|E	õ\ró©E`,£#qdgœè\Ë°åT8\ƒH¢Öå1\√Àú>ä\‚ä8Fz&8Àá8\n1\Â≤\≈6nlll/¶}YÄ£rjT(j˚Òä,QB\ÂN¶É«èÆ\\®≤ÕÑÑªq\„˙(_9ÀÑçMJõ/á>?¢åG\∆RÖ±v\·û?¢å∏£RÑ\'1\Ô(gåQÑ5î#\"Ñ•.|säñ∫]—©Ejjaè\Ë•~.1\È#Q\„¯YeÛsàπPˇ\0˘c?ˇ\ƒ\08\0\0\0\0\0\0 !1\"02AQaqÅB#3@RrsëP°±¡Sbpˇ\⁄\0\0\0?µ\’\“\‘◊∑•\¬G¯\–=nœ¶Î∑Éä\ﬁT\Ÿh˘ú–™xß§yUmî±Æ\Z •Q˙\\z˝åä^oföˆÙî*]Ωú-\„∂2)yú\’˝üf/¶>Ø+}†\Ô\Ëã\Ël•ÙºŒ®Tf^à’ª{5Ω∑>g4vñ\¬4@ˇ\0n[F&˘D\Ï\€6Úò˙¶%\ZΩ7rp=ë}îæóôUùr4⁄∑bU~\›SCd.ÛûIœßFj4¡dßç\◊yóOJ4vj;\◊7®\Ã\0ùJ•=\›V˝*≠\Z{9}F(–≠KwP	ã\⁄;1{ös\œ$˙of\Ó´5j4∂z;\◊7´\¬4™S4\Íå\·>Ö:\‹\›K\€q—òTmn(R\ﬁ\‘\Z˙#Bµ-\›Xûn\≈˙¬≠Ïø¶\œNJø≤˛ü=7Ñß\ﬁ\ÈÑ\ﬂrô˚ÅW˝\ná\Ëjè\ÃU3Kh¶p™ó™5\ÂŒúìøPR\"≠\‚ÒÖ√Æ\Á˛ì\r°çgÇ’∂<=\œí°ïP˝ES˜?Ú∂ˇ\0\÷S=\ \€?qW˝“™çùÃ¢\∆&\ÏíQºv\ÔX[w\ÍM˝ª+˛\Íˇ\0è5¥~m·ï≤]\÷3ˆ[_∞≤ó\ÌïRñ\ŒYOw\‘\Î≤J§*‘æ\Îö\ƒsh¥º˝ëüt\ÍD\≈\‰\⁄\ÃëWj\ÌU\ﬁ¡\rù¸M\Ì\€]SKÚ†∆àh\—DN•1xBe9\ÈùNK√å\Êæ\√i©Iá\ÈW\'ºî\Ô\‘[˝\’AJ:QŸön∂!6û∑D#∏\⁄IßVÑ\·%”õâÓã®\ÌŒßCªUgˆnw¯Gu¥‘ßL\Át*ÅÆ<kt¬™˚\ƒ\Ô¢˙uúLñ\'U£]ÙK∫°oõQ\‰\∆s\›U´xù\Èî6´\∆n›ã+=ïüI\◊\»\…9◊ã\Í?WkQ™\Í/:\«tj∫•Gj\Á*ï\Ôk¥\ﬁ\Ã6!\Z‘´>ãŒ∞õ[z˜;Ω\Óˇ\0äπQ∑ö£\r\ÁPa*\0Å\À;∂Ü\ŒgÒFjk2\„¸X˜Tåü+\ﬂ˙tà\⁄6«íA<#\—oj\Ì•µNpìUr_ˆîÚê©m5+Ω\∆:{*Üæ\‘˙u≤`tB™\⁄ŒΩw•ﬁã~\„y\‚u˜B≥∂™¢©ÆJ≠\‹\ﬂ|ˇ\0*vçº∂ø£Ú	\’\Íf\ÊJmzõMP˜\Ê#≤\⁄Cµ\ﬁà;;?.H7h¶\∆UoPp[C®\“›¥ˇ\0µGÙ¯G˚\ lßXdem\\hÁªΩ\·\Zc´8˛So∫*ù\÷—∫\Îºa6ÛC´w≤IU©\rd¶≤´ÆTfEßU¥ù&ß¯ôu6ì\‰ÖíÄ∏ò\”\ÓvP\0\nı\∆\ﬁÛ Ø\\m\Ô0≤Ø\\m\Ôeêˇ\0\‚:≠qjµ≥_\√\Î\ \’kè[uZ≠V∂jµ≥[u≥_¿jµ≥Ωπ ë)\¬\ÕuMZ≠V®â\ÌÑru\Ê\Ê\‡µ]\◊u‘µ¡™◊êÂùçi¡ÒÑr\ \·\\Jap±p\‰|.!g\\\r≥7)6h∏\ÂE‚∫πÜÃäi≤l¯\¬9E{Õóû\Îç}éä\\mõ3Z-,\…\À\'Æ!+\¬\·\Õh¥\ƒmnå#îlè\n|\"lΩ\·qYy™p\ÈÉE\”fJßí\’6ül#ï¢òSá\Í∂VVB\…q9p7\ÂKä\—iãE\√dïyºÜ\‡üL\"\›-\“\Ÿr\»Z;(^ò§Û3Y+Ωè!ºê≥Z[6z#ñCäˇ\0µ\¬TG\"V´ WJ\»-JÕã<ñ∂µq¬ñïò\¬\ﬁH\≈\'E\nqÙNuóG|Yï\r\‚]+ç»õ“∫T]Nd`\È\\&\Ê\n\ÎÇ,ÛÉ\ \Œ\∆\€>1°@\ƒ)59OÑ]Éà®cWî\›\ƒõ\œw“ßäZõx`p\¬-éCù\·îP`ÓÖôÆ/:Æ\¬Ûd≠∫\È§&æ\Íä‘∫WñcH\Ó\"T∂ﬂå!u.¢§π_%jWQZ≠V•jÆqWº-T0&=\ÁP∏¢\ƒıü]nY=CÑ:\ﬁ˘Y\…N∫HP\Ï\„∫ﬁµzãdpï≈•î˝îÑ06€´\„≤(Òà¢lè(õäó¨êB\„˙∞AEé\Í\n\Áaô¥ß\”=”©ä\Èˆ¡)¶£≈íömnå!jµS\Áî\ÿr\\X>l›ª™…±éÛíqÚl\÷\œt\«¯(TM8	D\⁄kp|aD-ãE¢\—h∫VãN¯∂}7yeˆ´Æ\ÍF¡\ÓàP∞¶πT\·\·8x¡q∏@\ÿ\‹B(ûCÇèÕ±\Á$[\„0ß Ö-\ÏÆ?™∆≥\Â^˙JâZ\Ÿ\ÏÉ\"3\·<[I\¬[c}|a…öj.Ø\nı\Ìx≤ü∫Ω›™Õá˝)\ﬂ\Õ\‡\"˜u.\È≤ê°«à.§Z\œ\Â9à˚\'õ!ô©v•Jm°|ar7t˚ oJú\ÿ\ŸL˙†\œ\ÃU\Ê\ni∫=SVo∞ˆï\‰M\Â\“3ÚÄl≠BôN7ª\'ê∏≈û…∂ÖÒÖ®rn^K\≈÷å\‹\‹T\‘r\·rˆWø(∞æ`í∏Ö\Â‘µˆYæ™Z\ÿ\Â\»mÑ&\⁄\∆ÚÕÆ>-Ñ\Êw94\"Å gö\—8I∫\—5Ä≥\√H^\…ı/ê\'\\B¿õh_G(\‡{O|\⁄}\”\0x3ö˙Q\»fÄ\›\Ë\Ó\ s∑nÃØªzuO6dw*N¶ É\’=ãL-≤S-\„\Á^oPWjèI]JCKZ>UÒõ|x\\%SMé?Ñ\‹\—6IW›•µ™yâ_v¢ €™∑\–\⁄zafV•jWu\›w]\◊u\›jp\Ê–∫B-N¶{Y \›(8ã–≥i	¢æ\n\„<+ äˇ\0\⁄4\\n\»(oe“æ\Ïß\‘vHª•øÚß\È\¬-è[C;©ÔÖ®~;±\‰fT3/U\ƒıô]ó“µ.˘(º2\\U\nyÌÅ∂∑\÷\€—à)Cêy\rb\⁄∞j≤ó,°©†f\‰\Â˜ã:ÖIyZï-ôT\ÿ5}*/\ﬁwÖÎ≠ì`µû¸ë`¸èÑW\ﬁ÷∫ä ã]S[\·fÚ¥\¬-oø\'IQ°ãy\'>ù\‰·Ç∫\Ë!\Œ∑\›@W\„à!{O*G9\»\ÔÄ`<\—k}–≤1IP3E™\ZaC±»≥KzÖå\0\Ã\r¥¢y¢\÷˚°dÖ\∆=\◊-W\€∆∏\≈“§Aï√ò\‰Ëãº+\Óv™X\ÈÑ\À\„D06\”¯\ÓÜvjè∑ \»_f\ÈoÖv†∫\Â?\ÌgòÛ\»xÙPÓ†∏jî˚C\Ÿt≠,i¥p¡•øE∞£¬á/*Y\ƒ\ﬂ\në®\ﬁ\ ˆÚ\Ë_~\Â\√VW\⁄2ÚœÑ©\Õ\Ì/\·q≤E\«}\Ï\—if∂\Ê1\‰h[öã≥\›}ùiQUãÖ\ ÛT©S]\Â\\º\‘\Z\Î\"Ú\…¡f\’4ü-¢´nïëïõ°ù≠ãC\"¥(\‰VÖhVÖtï\–Vt\ \Ër\—\ÀB¥*\\ñ;Nï¢\–)¶nï[x+\‘\œ¬êßÕ§\'\—x˘R¬ø3Ttï\ƒﬂï4ù!EJi¡∫\⁄*	µæ»¢yR¥Z`\ÓÜe\ \Í+Râû‹¨\ƒz´\‘!f\…S∫+Óú¢ùçZΩVp®{nª\»_f˚\ÕQVô_J.d^¥≤8õk© ª\Áì*y\0ZQ\Ê^môF)o†Ö§.¢∫óR\'Y]!t©G$0Û!KlÉè<¬öekfãE“∫T∆øÇ\'¸\»\‚ñ\‰T<|\‚\—tÆõzóR\Í]Jf\›J\È]+•@n∏O∑>\n\…u,Ò\‰	¢\—iÑú?ˇ\ƒ\0+\0\0\0\0\0!1AQa qÅë°0±¡\—@PÒ\·pˇ\⁄\0\0\0?!\ÊÙ\Ë\Õéˇ\0\·_ûló\Õ¸?\Í∞%ˇ\0ôCÉ\„®G±&üâfCSiòú⁄æ\„+Üé\„\Î\’QÉ±±ùÅ\‹\\Ûiñ(\‹\€d\◊\‡@\Á\◊|%`\«z?B“∂3¶@TûZ}J\Z∂∫möñS¡π¸π\”\⁄ITu\‹¯Ñ;f-\ﬁ\'~∑ô|πΩÆ\‡V}\“∏Æ˝dÚ≥~®æÛCæ+8â¢`\0∏\”k6±!©Ö≤iã1\‹\≈˚ã°(ªr\Ê\»\«:\◊r\Ï\Ô—ü‹âRKŒà`•Ü\ÏOÛ˛◊∏Û˜\€ÙJF’™eª\’Cíc\’ë\‘m¡/\‰\√L\ÁPPΩO˙O1T•l˙®˚Ö\ ˝\"£ÒÜ]ÆJ\÷eÙzL©Ø˛‹ÄLóõπq¡\ÿ.Ùß\√\„ˆòèÆiöZV<kÄód\"dã ∞BÅíµ1VKÄ\Ï=\ƒfﬁ™ô\Ë\rù∆°/˚\ÃA°)ñ∂ ¶\∆UB&ÿã3˛ î\Œ(Kccd\ ÒA™ÇÒ±jc0ıª\Ÿ∂\'πjlX†\Ï\né#Ú\»I¥í¸Û\ÍIKlf˚#xüıciCwÇÒ\«{˘\√2¨Q\\¿≈é¨g\Ô\Á`n\Î¿¥HÆÉK\Í\Zó†ksπ#˜ÑëLÚ˜?\"\‡¶iÜCÉ\„fmC \r_\„\0àvˇ\0\‚‹∏$æÑì\‹_å%)CX\ƒ5,´\‚¡ç¯:ˇ\0\‘=\Œ.¡3\ÕC¥h≠˙%\—`â\Ó\ÿyÿ≥\\ï∆ÖF\‡à\“0ó®i_≥T¡J/\Ã>≠C¢πbãˇ\0®goå.\‚a≤:;êØe¢)∂Q@Ò\Ïj\0üà“Ñj\rå¡›ò©∑aYcQ\Z˙.ˇ\0PÜ<H•É•&!\n\05QªG\»0\"á\“UÅ\‡*\ [\–y®˘R˝\⁄\…-®t¸C\›=N\'∫{ß∏ïÚOa=I\ËOdÙ\'≤WÃØô\Óû\…_2æO\‹˜\Ÿ=\”\Ÿ=\”\Ÿ=\”\Ÿ=ì\ÿJ˘îÛ+\Ê{•|üæ\'∫{\'∏û\È\Ó\'∞û\…\Ï\'≤zæ∫S˝•¸R\Ÿ˜3\Âó\‰˛\ÂæR\ﬂ)oî√∑\ÌèR¿ø˛\‡ù/‹µ∑|ør\ﬁYnr˛\‚i\Àˆ\À.\⁄\Ó+\Â˚a~_‹∑\À\∆]ù\À|\À\Î-Û˝ñ˘˛≤\ﬁ≤\ﬂ,∑ñg\À˚ñÚ\À|≤\ﬂ/\Ó[\Â˝\Œ\Ÿ~\‚]ør¶ïû\"=LÚ\Ó:π\Â~c,_‹∑%ˇ\0gbM≥<ÜòÉk˜\⁄˝¡|øs\"ë∂ˇ\0\ƒFˆ\À”ÇQ\‘S©cJX:a\ﬁ\Ã\À4ƒªï;Çb\Â¶c\◊_s\Ã\÷zñ4?1î\œ\Îå7Ñ∂Ø\ﬂ)`IWd.\—R∑@¸†^Xx•<Lxò1\0x´\’:TmÑbUÜ3)H\Ïño\Ê\⁄$äëa¢™N+éòF\¬\n≠¶\‚\‹TÚZÇ´\‹\\´0\∆!\◊O˙\¬Ydº\Â	≠c˚Ö\€0¡\’&Vß©[Å\ÓhK˘ï±ìö\ÁÒ¡ß\‹˙Ü\·ù\ÊGé•\‚\¬0ºŒ¨\Zc∑\√\Ã\Î\ÊhÒ*ÙK˙\‡\«KQå]\‚ñ]!õåS\Ôp\Ã\„\ƒj3ÅQ&^qÚw\ÓAòU›≤¸Xó≠Xg…ÄO°5OU˘ï6M&Ù\\\Ã\¬\‹!\‚b™é€æq\‰5\r\‹z\ŸCˆüWxä\—\«˛!Øª\'∞û\ÿëî7	}\‡Ùã\ÔgSß∏D¶ºuK:	ö\Ã\Ô±N\Â3C-\—á<hv\Ízepm\·\nıQãÒ+=\ƒ4\…\ÊbQ\‚TÆvÇGd®ô#¶\Z\Â˛\"\‚=\«ƒãK;b\∆|9V\ƒ-R\ÔOp\‘\≈Hª®™\Ê[‘†:pµ/Üì)ä\ráq¥æ=î\–Lxï/äí_Ÿá\r¨ß˘Ω¯0A¯\Ì¯8è\Èw\‡w«®kÅ\∆K;ôj!¥v\ÁyÄ˘u-Íß®˛7P@¢nÄ¢LÙQ¿/	n∫\Ã|L\◊ `\œ\Íyò˘F%”é•ì\Ï∏YPõ\‰\Â˝;bQ\ﬂSw\◊òkÖD~P\r	U\◊\0ä+Uä\nQÄ\ƒAX&…æ`∂?µÜ Sy¶\‡Û/øî\œ!*m\'≥#”åM˛P<ªªNı≠¶¨¿ÅáÜ;åœí©Fã\ÁHé\Ís˝f™<]3g\◊òkè?\‡\≈^£Ù4\n%EBóáL/°\¬¯Ü•\ŒÚ\ÍYóãö\À∞\œ˙G4í\‡m\≈Ië¶\‡©¨¿\◊Z£2\ÓØ\›\ É6\"#≥51\‘6	Rw±r\…0ƒ¥\“mç=D:ùEùâü\\\◊C_{ä—®≈±\‹&\ræbF]\¬ÿõ˝	phq?\›¡0fd‡±ã8ÄıY˘á\≈S‹°¢J4}\«`\‚Y\⁄#®å=J\\Å°ßêï3\’b≠¥%jk\\\„Ùä¨~≥-V\„ÖCpGPâbEÙ∞ùC\\lHé¯\ZéX¨\ÌwÒ\—˙ÑÆ/ü\Á\—D,.(	û\Á\Ê4\ﬂ%@(Z\Ã√ø\nıº\‘0ºø|_§´:D9û\ƒ;?D\Ì•Ü)t÷£t}.\›~∏◊Ø$\ƒk\Ó\ZÄM¡w\÷H]Ñˇ\0èÅR;ñ©d\…Oæ(O\\zÜ∏$µ*”ñYÄjbmÀ≤º>\ŸˆÒ¨h\»\Ós	\‚ πê%Øj- \Íb$Q~\‰a˙”Æx\…]∂@oLë\Ì35qP\Â_\–\œ.\"Àö\Ãåæ±C\r˜W\Ÿ¿0A%∞˝3y>d\"å¢¨\∆\√\ \œ\0˛\Ó,]>b[noxu\r|\ÀH\¬5\‹ çp>π\–OU8©0H–ãçC©R≤\ÿÖ\‘\«Aª/\‘)\Ôü\È~\„Dø\‡\Ía\€˝r\0\‡\Ÿ>#\0b)rsOC\◊\‡UhÇ\\«ât˝àï\\©=Û˝úäswòkÜ	∞µπ±\›9\ÿOdˆOw%åvJe\‡(Ù<C¥ò4T\“k˙â\·vÑ\Ôf•k∞Û\n\Á$:\‹…≠y&πÀ®wõÕõñ\'•ı0˛£ë\0\Ï¯ßóU\ÌîBÖ\⁄˝_?\Ÿ\Œ-õ8t\√\\\rFBß°\rNã–ûø—ãíå\Z2¶!Ü\Ó\·5ä\œ\»˜¿lå\√\–\⁄qπâ[=c˜\‡\Zrò[£É\”\œD∂=¢≥\€\·V\ÿ\Óa°¡Øïgé?ªú\0ùC\\nGlV/\‡\Ì|b\Z^\‚\Á\ÊTóp©\·\ÓkÙ\  =\Êfu\√1∫Ô¥®\«&2@;wifGü\”4\">≥\÷Vân¡É»≥\0èí$\Îq˘Ék{ØÉÉb3Æ:¯Ê∑åpkÖPÓº∞æaô¥ıÒ2≤YM\¬∏ß3≠∏\Î6˙ aˇ\0¶\Ê\„\·w$ùpoÜè‘ènæ£´®\”;Zt\›GC6@2?¡°)R∞\Âü‹Ç$¸ñ\rfπûæ% XF<O\Ó\‰g˝|!Æ5a£]\Õc\‚Â´≥,Zò\Ì˙L;©D¨Ö\ƒd˙ë\r\…¸	¢\‹N\Œ˙\√k}\ƒ:R\'TzÜ\Ÿoó,é£:\ƒPi\ËAfWe≈µ†ù2µ6/1ß\›’ñVÅ\ÍÒ©ÑÕø2\Ïè\Ï˘}\‘5√≤Ü˛%q\‹	•ı\nn\0ÜòrZ\–j!\‚_c\Ê\‡OjF\0lç\÷_òßì\ƒ+\…5t}\‚	§¸\Ã\‚!bá\€*\ÿ\◊¡3q¸†€õ\€\‹¥ª∂\‡\·Weîq(ñFÛ¨˛éwyùC\\\Õw˛êúZ∂ûQ˚ó\”¯îi&e\Ê\ﬁ\Í;\’A§\—èD{3ìo_¨Oªäük\ÓaÌöè\‘&\"µ\«\Á\Õv\À-FW\‘\ﬁ\·æo\·|\«x\’À™˜\»Á∫Üπ\ÁOñëæ#0≥Ij°¯à\€\…/6O\‚Q:\‚Ö“•\‹˙aè≠M14±≈≤ôµ\ZãÄı‘´\‡Ó•î∞æ(ú\¬\Á4Åj]C\nÛ\ÈÉ\Ó=ˆA\Œ6∏C}GgùûwP\◊Qaü\Ï«í~eûeèdßôgí˝πè$jŸõ˘}êâb˙Ç±B\›\”3C\Ëaxé\ﬁ\‹Ù˚\ÓÄo\›j%\r\‘wlL˘\Í9ñéäÒ?\“b8@ˆ\“Oz˛•õ\‰‹°\Í0“ó\œÁåù–ºÚD6à\'P\◊\«\Ãˇ\0u3\'˚ìˇ\0°?\Ëg≤=ü¥˜Aˇ\0\Ÿ=ø¥\n≠f\Ó74˜6˙+è\’bäè\Ï%@ª^çK&Ü8\√\√RëS\'(\'˚¡(∞å—∏\…’µÑX⁄ø r«Ñ9õ	.VR•tQò\¬\r;\‹6÷°Jû\‡F\ÌL(äπOSyülq\”\rròpı\≈|]3t T\ﬂ5\n)2úù öπàKu<\Õˇ\0_‘≠U{aóóc\Ï¸\√t¸\ÿˆæV¡ë.ºbáç\"lkx1G\rB\'U*∏ñ\∆\"b\Ì+|,¨π:aÆXÄˆé\”¸\ZF\Ë|®-\Ó>\ÎƒóS|^X!S\÷\'B?ll\ﬂ#∑˜.Eò[_+k˘ç/\r\ `9ó®Ÿê˚∏	ë:hîÇeî∫YCh\Â¯1ÉG\ƒ\Í\Z\·Ç¢Ò≥\«\Z≥g\À\√åç\„≠JódnyÛ,Uòí©r\È¸\\VK∏^%iw	˙8∆úìZø¨C∏Ow\‹ERÅü\ƒ|\≈y\‹˛æi§v^uq\‘5¡$∏Åt{XftwØÖÒ\\h\œ\Ï¯\‚ZΩ!Q m\Õ\\ö2∑®=bQ∏fdˇ\0üTN≥=Ã¨P∫û\«\Ôá \ÌΩ|n°Æ\ZïN\¬/0u\Ï~{&œíJ∂\≈ivt\ƒ\’Õáó\¬X¡.8Û1_á\‘Wp7s,4\À<¿\—\Ãv\ﬁ\·\∆\‹\„ùÛ\…\‘5¿7†%≥1hd˛L\“˙ùM?\»gM¸^\·@\Ïe;p> ûeNCÛ:Tü∏\0Ò	U\Zá\◊®Wê\Íeƒ®i¯\‰Ã∫\‘.Âπ¢_î∑ªõ…£\‚3m)àü\ ®kÇ\'`óUO∏qjo∂¿π∏¿¡\·Ö\Ëè&ü\Zy>;)≥¯¶#ÏÖÇkÅ°π¢*ö>s∑©r\·	\Ó%Ky∫áw.ı5ûè∏h\Âk\…\Ì8\‚ÚN°Æ\Z§\ƒRb#ª\“O\Ã\›∆¨`9fÅÙ7/Cs3ı\…√èΩ\'MlÛ\Ë˝\ Z-°qh=ì\‘\ z\'S)ª\"àï$ˆqW/,ÛÚ8ˇ\0R\rév	)†Œ¶	§\Z\·-G#\\\\\€5\nV˙æh\À7\ÎîeT\ÎR\‰K<}\≈yˇ\0(uó©T~d\"ízüè∏¿l\Ó4.˝A<èSèöäì\“Q\ru.\ÿeC§ªâj@a&måtè|˙ó˜\Ó\\/èD\Ì?i	—öA!\Ô˙Ü∏5\√àÅwÙúW\‰òæ/2üws RnV&\Ë\"˚«ò¿\Ê\Áüzµvôî<K•\Ïâ\ﬁÚ%\rˇ\0,0ı\rÌüà\Â[¶&\Á\œø.1|LÙ8\Í?\ŒXøå£˛9ˇ\0\√\‡\Ï\Ìî\Ìó˙	qTNkÛ¡\ËY7°Äƒù\—XyÖI_$∞\‰\‹gÛ@n\„/?ìè0\◊zû¥QK~#\€Û˜PñT^\÷Â¨≥º\¬)ˆ\Á†l©ë\‰\…X?3e*\’˘f>ë˜≠±\Ï?®\ƒSÎåë`ˇ\0R\r¿q	L!-\rJØñQ\‚Q\‚$*Q\‚3\”)kp≥mîxK0\ ˜ÑÜl≥v_\‹˜F\›+\\\0v©Uñ9\Z\‰9A3ò[ï\·3\√◊Ñ\—}p\ÿyÄo#ÅsÉ˚\'ÚÑŒÅéG\—6Ø\‰O\∆¿\ 1`\‡b\ZâQt?âR0\ÍTvÉ_\‡*πzö\‚†J9ªì\«3¯!:Üø¿ÇÜ*KÒá\‰Ü\‡Ò\04|≤XV\√jé¸&f{\'©”ï7_‹´RÎ∂Ö∑!F\ƒ\«\ÊQ\'\0!Øï\≈pôüâ¡-\ƒ1\∆\…¸–ùC_\·∂ˇ\0x7\Ÿ\≈gX∞Dªøé\√U-W\€\Ót£˚<F\”\Ã%[º´sÉx∑9H&íS\ÃÃ≥\œPa~?πû7\ƒ<iy¸\–\‡\◊._7(G*\ﬂ∏¶ \‚cÚ%\»8≥ÉÛ¿]ü\ÈEm\·ñ%ô8\Ã¸J<\'®\≈˙M´§û⁄É“óÚû8}\ËT≤û\Ó∞y\Árçπ(÷Ç7õw\»˘3\È>ì\È¡π\ÕDñ\n6H^\œ\‚e˚\‡¯!äD}^\Ó\’.WÚ7Û©è°^	oYZ9ªx6*\◊5\«ˇ\⁄\0\0\0\0\0¢Ü<Ò<\„\„O8\‡8Û\œ<Û\ <∞C\¬¿CÄ$\¬!\Õ<Û\œ<É\r0\‚E<\«Û\œÛ\œÛ\œ<Û\»0RKS\œ<Û\œ<Û\œ<Û\œ<Û\œ<p\À,0\«<Û\œ<Û\œ<Û\œ<Û\œ<Û\¬MÜ≤M8!\√ÛÜ˚\·ŒÄO<\“t¥˜<Ûuı∞´\Ô˙¨ñPo˛\∆<`TLÛΩ\Ã’ø&¨µ\ÕÚjÆˇ\0îÛﬂô\‡éÇx˛<Ωÿ†Û¢G˜ˇ\0lO-+l/±¸\√]Û\…ö,\„\‡R¸Ùª\€\\ˇ\0≤T{˜LÒ™i„ØîaOòCo®µ?ˆ∂ØÙ?m\”H1í˚íx\Ô\«æù>™€Æy\Ãd\·?%E/ª\ﬂ\÷¸4<á\Èé{æ\◊¯h”Ω˚æu\Á\œ76>Û\œHco\∆c¥ü\·Kæ\ÁD\ÎO\Z˘Ñz”é\Ï\€IùÇ¿K\€I\Õ\Á\Ó_n\"êy\«\Ô\›ˇ\0\‰†9E}˜\€k[\À`\«\Œ7\À\«nûk]w Ti\œy\‘å\–O\Œg¨∫\∆˘so_QGöw\ﬂOÀäå±ª∫ö0\ﬁ?\Á}\‡j=û\ÎNJÁøøMJ¯#ñ{˚tıF?r_KNXáe_=\√¡¨Úûoj\ﬂ˛˜Q\„Ü˘2\∆\Ë<\÷≈çÚôwyL“¶|ˇ\0\€hπ\À#\"\›;î0¿8\Ê}\ﬂ˜èÛ˜ˆÅÔùï\Ã˜µò_\’{Ω/Ñsp¢˙l%_ºˇ\ƒ\0\0\0\0\0\0\0\0\0\0!1 AQpˇ\⁄\0?ˇ\0\∆\∆’´8\∆\∆\∆\À,±µeè\Œ6|ÜƒãWWV\\).\Ÿeô\ÿÛH\›˙<0\€I†\…\∆À¢V∂l$≥∏4\À\‡π9±n£Ñ\Z\Õ\∆\Ìa\Ïãvp\ÿYÆ¢X\›[\ 	›ßí{-Ëª≥u\"z\‡à\r£¡ñ\œ©o¿\„ \‚ê\∆\Ï\√wπ#\‘?\ﬁ\‘u∂l\÷H∑gú\· \ÿB9´{ï|∑\Ï+)€∂[jÀæ¶õ&|!›Ä¥-\",ì;áSà\ƒ˜Äá\'§r:…ñ\¬o1¿Ò\Ÿ\„£nì\”Cm]Çu:¡∫8ˆÀπ6Lc\…¯\«ë∂ﬁ°ﬁô\'lòXØèrüáªÚ>Mû≤c\„ÇBı\…¿uüá∏≥üe\≈7ª,a\›‘∑	\Ì\…ÏûõﬂÉÚ<∑çºr›â/°víì\»!\‹^,GÆWS”ùº|uX\œVót∫ómZ\¬9¡\Ì\Ê=<∏%\◊9=∫2^e\ÍMg¢Z{g&\'Ø\È\Âû2\ŸxÚ\€`Xªxº_êwxÜ<ã\\zºOñ/√ù∑á˝∞:≤á—∂Zœñ≥ã8V‘±ñÆ^\Ï∫6ñ¸nK`€§ΩX\€mÅ0˙\ÿ%rx˜Ù9w\›,\Ó^≤9Òö¿∂\÷\\z˙]íq	\∆I∂Y#[*\ÿq\Áb\ÌΩG∏˘c\Ê<üì\„\◊?ˇ\ƒ\0\0\0\0\0\0\0\0\0!1 AQapˇ\⁄\0?ˇ\0Åc˚b≈ã±b≈õ˝Øˆ±f\«!õ6,@m9|ÊÖµâ\œ\…K\œn¯Y+õWºz˛€∑e6Qùc\‚[lÌéíw%!pÑF˘!‹≥\ﬁ6Õõ+Únë\œ:¥„Ñç∂l.\·›ó9VHc\ÀQ\∆Bù^(\….ﬁØ[.ì\Ô=ê\Ï&;1û,∑ó\€\Ÿ\ÀÕ∂è¨M∂]m8p\Ëõr=XXX]\Ïª.ú}ñ„ìÑÙµy\rlba∞-Ã≤å˘bZÙÖ˚GI1\ÁaÉê\“\ŸñY~ëô9„π≥€ª’±&{\Í8√ì%\È&Gß/7k±\√\œ?Úy	∂\„fOe\Ó8\€~Güe\„è√Ñºö˚g|uåë¶:[=qº3\◊\Ÿx\„\ƒ˚\Œ\ﬂ\’\‚\\Ú\„≤b!ód∂6^\“gVY\√«¢Ò«û^\0\€S\»wÜ{c/YI{\·Ñ\Ã\ﬁ\»ÛÄ\Á\√Úîêãwãf\0≥É‹û¶N\‡\Ÿ.úª\«\ﬁ^ú\ËJ\€Q\ÍP?náe\÷\À\‘\À\ﬂ\∆n|ópı©ı\¬…ù˛CèS\Á+\«K[\Œ6wl¥@\‡<\„Ω>ΩL£\Ÿ\…ı¡≤d6\À/d˛G∏B{\ŒHór˛ÿ∂\ÿ˜3\€\Œp8\›\·\·`\ﬁ\‰èr\‰Ω^±{!;\‡\ÊT∂^[òv>G©1∂m\Àe/vﬁ∏8\€IyÒà˘\“f\\˜w[GhªKKN{y˚_8<?ìì\Ÿ\‰qˇ\ƒ\0+\0\0\0\0\0\0!1AQaqÅë °±Ò0¡P\—@`\·ˇ\⁄\0\0\0?úÙ£µå\»và¨?%ˇ\0í˙¨ˇ\0._CsèOÛô\Ÿ7\ÿ@+®}Å424™\ÊC\∆?\À[B\Õ\÷˜¢`íù2\‹AãB\”\—\—\·π1ßçù\·Tw_»ÇyÃØxçPQó∫(,-\‘d7C\‹P\…TD 3\"Jp≠†\nö\«#\„;B®u∏Q¬ãud5.¯ë	\"îzQF-\¬ªà∞=ª\n≤z& U°gµ\Í\”\“U!\Ë˘\"ï\◊~É—éfA\—_˘[ˇ\0O∑D•¯7\'∏¯òªöø`¿\€~\Ì\—B!ZZ\"ö\…F,+P.ë\”\"•¥\√\ŒI\ÎHπÒ¶Æ\Ïj\ÎÀê‘ÜÄQ*!°˛©1Y\‰\Ï\À\œ:v€ë(\ÿ\Â\ËÙ\–\‘&E≤\Ó)D5¬Ø¶j–Æ<\Ã\'ñˇ\0,l–Å¥1Çú®\⁄Z\“}!Ñ[è\‰_èO0Jî^î—âhL\‰ëÑIFÚë6RK3nWB†9˙\"úBU•\œy #NT@®J\ÓŸõ+ª\‰\ÿf\Œi <D˘76D\ÔIπ≤úääQ\∆l\‡\'F[Eò\Ó\≈xò¿M@5út\œoe¨es\„\"®cTUµÑ\ƒe%#° çh µp¨â\«˘x¸iÛ\√\ŸzîEi. l•@Å\‡?∏\„p\»\‘†8ˇ\0Cù˘\◊˘ª∏yöj+ì\Óz~\Â¯ç1+®u®Å\Í›èQdò*\Ó$\«¡Ñ+\“\Ô\ÃB\‹ª¨b†84Ø¯Üú\Ãt–´if\Àaòî-\‘SIúhÑ\ÍÆu(πSb§\∆WpM´â[ ™+\„0,¯zIG˜o¸Ff\…Û0<6zCqN)ùÚ0Ø9QÑê\·\◊wo{¿\nóC•sD/êº\ÂÚèãÄ59Ò5¢hßhX&DëS4¬¥\ÌPxBÄ† c]$%DÄ†T• \ŸHLZ£TAôtΩ\Ÿ\·\“°KhΩ\·a\Õ4%©V\–˘ˇ\0\Î\’+Ò¶S˛\Zï*T\Ã\œˇ\0•u©_ä[\'\…?∏%\‹>\…\‚˝ì\ƒ˚ü\ÿO\Ô\Âù\Ôs˚\¬hOaª~Hv3¡˚ÉÒ˚\'â<≤x_d˛Ω?≤%úgãˆOxøs¡û,Ò\'â?∞û4˛\…\·}\œ\\û\'\Ÿ<S\Êx?d˛»òµ˚!ˇ\0VìΩ˜¿˚ùÜ˘1<_îü\–\'ÅˆN\—~H6≤v@æfÖ,\ﬁ\œ\Ó˚¶p\œ\Ï≠ÇQG∏\≈X|©∞à≥%´º\ -Æ\È˝új\“ˆé\Ó@æÒs\\¶˛“ü‹∞Xkvûe˚ûF+\Ásáù\‹O\ÌX±2∫Uˇ\0tÛoàÒ\‘\√ Ö3d\\˝£\ÿ˘ü\Ÿ1.{N1Ü(ƒ≠*\ÂNGû\–\ŸX∂Qi_#)`_tFëÚñÜ\œjXx\≈\ÊΩu\Àø\Íé-ªr©UY\ŒSÅq\Ì√í)§5\Z˜\ÃÒ¶\–\\¡\ÔpMñªò6\’%˙b\”˜,\≈(\Ôà˜\Ï\≈êfòΩ\—\‰Q\'[Ø\≈Ñ\‰Sü∂wS\Ã	\ÿ®UJ\ƒ\Ôó•õ+äf\⁄wK&jÛ-W.\rK€¥qI&\Zãü¥¸c¿˛\ÿjjõí;ºı8±˜+\„·èôq+fπÄ≥&\Z\ŒP\”\ÿ[á\”q®˝Ah\ _íı˙B@£t0jè\ÃAzì‹ö≤¿á™\Èa\◊\ÃP™è`0≠µπ(\·=\¬˝˘ÚÃªù*•˘Eõ=MÙ‘ø¡—≤>X\Ó\Ì3˙6R\ƒœº¨\‚kØr˘º\·AßÆã®Æ\‰{_®\Ë}QﬁÖªûòˇ\0‹•\Ë†;ö\–t,\rÇï#W\∆¡R\€\"ñ+\ne\‹5îc∏©…£JU\Í\ 3\–ÑO∑$j§xÜPi≈ó\ÃÒÜ^˛)Cë@ñ\·\≈\‹~°ê\rOπ¬èqı;ü\‚[ü°-T\Ó\'Ò\—\ﬁy\È~\Ÿ+x\ÏN#1™\¬G~6\'ΩPé£OÆô˛\⁄¯\È˙âr}\œE\Ê;i˜0\≈√©aM8Äå$N\0≥h§æ“∞\‹]`¥1iº¢\–\Î‹ãîG4J^\Ë\Ô(Ñúeeá\¬%Ä^Û6Uãy=JÜg∏£Ö¯ë\‰æFgïêñ≤\ÏAØiÑ\“J®ºY\‡>•;WÃ∑KãäöeKws*\‚i¥=ôÅj\Ê\Áá\‘4˙\Ë°~Sj~\Áw\œMbûòíÆ\')G\‹\”tóú∏Û-Hr	SN\»\ÿB\‚LG†TJ2î\”@e\ÃsâEÄC¥\Œ ôıIÇ\≈8gïP\"∫\r∫âA\‡è\ƒ^\ \ÃJk¢è\Z\n¸M=âπ∏ieπ\Ï\‘:J¡ëé&:πòzß2\‚˚¢ı6%/\Œ	•&:sı4˙\Í°\Õjˆ	c≤Õ®ˆMÜΩAsØiu£\‹a\›Q\‚SuÀπcalqÄvû.°◊ß±V??¡¬ãv2©\\x¸+\\ó\nL\\v	u.˜—ÇK˚ı>©Ò+U5a©zØaõ ¯@õxc¨#ƒºq~ˇ\0Sg©S]B§g‘°még\Ô:ç>∫:%\….©ç≤@|Jè¡uãbK¿Kb\€YHJLíëà8ó\«zõ\—y\0\ÕJﬁí\’lˆ;I«ØQ^I´\Ôπ\◊ıE¬üL\Ê\rE\‰√∞>¢\ S\ƒQl˙ACS∫m\‡ö`ìâ\œLﬂ∞\ﬁ\«‹Ω<\‰Ñ]∂\“hñ\¬FWª\–#\Â]ŸãFq/\Í:Çjã\‡Ω\Z?U∫ç>∫[q!”àà\Z;\À\r`s\r\‚Y°D›ä:~£)\‰#\÷îU\ƒ\œh ªpõAa3ncéá\r¿5‹å°5\◊\≈)Dù»Ñ\¬ hÅñÇTU¥öP\Ï%\‚&|ô°6˛\„˚¨@Û_r\ﬂ\»\≈xöπzß+1\ﬂ\Á\»\Ÿ\¬<\ f’≤_]\÷\Â˜EóK\ÎHLÖ%Uã.T\Â4˙\Îçtkn!\0J\∆\0Pﬂá\È3\‹s\0\ÂìANc†\0\‘KãÄ®¢—Ä<∞ç\Ôj`c`ØL\‡bfÖ[Q*\Zt\"E\¬]\Ì\\\ﬁÃål~·¢à†]UÒ1µÅ\0\rSB˝\À\ÔA(xºT<†2Àò0HP6ï\Ó˙a\‹Ey\ŸQ)´ç≥0LÜ\‚øP˜6F\Ïm\Ëˇ\0Iß\◊M\Œ\‚jˇ\0yg∑ƒ≠27Ñâ©Éî7\‚]œí|ù≥yòGî\Ì!óΩ\ \—©∑Qô8\‘ˆ\ \—0æh7)(ròP£hX¡\Â0ç)\·	rj,ºeß\nJª!ç\‹\÷b\≈H;\ÍéLæä`ôK	w;@É$L[\›2¬•`˘&∂\Œ3COv\ÂG\‘~X´ÜÙym\“Jˆ°u›å\0	\√Só©ß\◊L\…U\√~å._,z\Ã˙P,\Ê}ê\‚˘\√ˇ\0£?Ùcxx\ÂéH≤“äFiñ¡A\ÂAl\"¿\‚\·ˆù\ÿ\Œ\√xX\◊Rˇ\0;yàj\„ñ|\¬\„\·\„É\Ëç\ZÇ\n6´\Ï+D}óñ∫E|\“P\¬Vò`ôJT—ö\÷ ∂\·ë%¯˜îÆ\r)fCz\Ì(†≥\0aô•µùx\Ì.˙|\Ãq†ØY[0—âó2\–g)ß\◊\‡\Ã\nbm¥≠∫d˛\€	\ﬂÀãéº\ ı£D\'∂\ÍÜR˝cd´–õzèRπ“†üÑc,<úÙ~\ÿ\ƒH¨tûy&\“˚•¿h\rMcDi§jdf_\∆wYù\∆k\ƒ:Us/ALòÒ\ZàOª3mÉ2øº\‹À∂¿˚ùiı”ç¶\ÓTêæc™83Q\‰\Ô«â\ﬂS\À˙\Èh\ÂgçÜ\œ\Z∞B˘Å(èQ.\ƒ\“\ “è:Ω\œ\Ê]?â{\Êî¯&¢-‘ätd¥\÷@ı\ÕA8=º¨ä±\ÕÔÖçÜx1\ÂßÉê+(\ÌA5Àîó≠\0¬¢ïπå7Åpå4åa\ŸÃ∑:Ωìç[ï∏Ø\‹\Ë\√OÆõ\‹ç\Ô\0´,Ø\n\Z\ËÖ«£yQ¿ü\‘@≠\⁄˝>äµ\◊•w£î\“jˆ2ºi¥˙ÉNb_ÛQ÷•vÖ¡©ºA¡ç∑àPKJf[VTïà—∫\'çjvÜ£T($E*¿\ƒ3\÷bZ!’ï&√£gxˆS<ìókg\Óe\—\\•\”?ù\—\ iı\—á,\Ÿf\œ~xÒE°\¬œÑØOlcN\Áb¡\Ô3Æ˛cJñºOx\"m	*∂/j˘LJU¡@ñ§xb\»\√\ÏFç0≥\Óc¿‘†\…‘°j\·\‘4ûÚ\÷—∂•§æãî(*e\'µóL£Ç7€äNÅ€°N:˘ù|M>∫\’\‹\Ÿ\Œ\ÂC)èÂ∂ñQM\"Æôf8ï(yT\‰\—\ÃZÑ≈é[L\∆z3\"\Ôa>\«F=RÚ\∆\ÿ]a\Èz\◊\ÕJ£ZÇ®˜6!nfã$c¡T“ë%c•îæ]≥/¸8áYñ™ÄZ¨	\‹\–Oµ\ƒ\÷4!Æãè3¯L\⁄\"|?\n\…7Da2qÒ4˙\Ë˚uõ\‡¿´7S\Íe}2¥å»∫ù°≠òuhöO\‚}\ﬁ#tñu\0e°˜â\Œ\—]a®H\√\r±‹èy≤\≈*LÄc\Ì©[r>¡Dl˝^\ZãúúQ\ qjh\ﬁsπHK°Ä®V\rì¡Æ\Œ\‚æebTÆßoñ•ÛÒïSéØõSön?\∆iı”æu=~rÙ7¨k+\rF$a¯e¥Os\Ó†®&6\0FäÜ!Ö\Ê\Ÿ^ É\0˘cùJ¥°W{TöÄ`<Ö5\⁄~Ä\"˚\·ÇvÇ\nq\«37÷òXß∫\Â∫˛c\Ãoº∂\"òπ[\"ZC\Êø?ì\ÊL.73:o°Æºø\∆iı\—zje\‘s¯$s¿˚\'©áP]\ÓãL¥)]8ÇÒsäÇºK\÷K1cë\∆\‘¡hπqTé£†U\‰GîHVò\rm\Ê—ÖØ–ÇûAç\⁄sÇ|J^s#^eKØ\ÏLÇ\ZÉAÉ7\Á?Ç˙wóôk©FèF\›kø^ˇ\0ß\◊Mi|5\–Jñtæô˙ò\Ô\‰\È@\Ìe`d‹ã(<&aP¡∫N{\√¿\rWò®\»DY¡àj\◊ìF\‚iÑS=\Œ[jE¥,÷Ç<Véb\»\ZRq\ƒDjÆ\ZRãKAªæ$LK\Ï ∂Gí\«\ÂÇa˛f;\◊F\Á\‘˚`ù˙æ¢c•˛3OÆò?L:Öˇ\0ı¡;~\Áã˜æx?s˚πÈÖ∑7π\ƒt\ÈÖMB\\ı&rg0L\‰*\ÌÇE~\∆¬äO.I\ËMz†πò<!\Ê,R¶™Œ´K(§¬ö3CÑ˜û¯2Ú(\ﬁXb\Z2\Á\ËBbÄò\ƒ¬Å;J\ƒY¿G4¸∂OLR¿˚Äg,s;ó~†TûBfî\”\Î•Ût\rC`0\Í\—Ëóö_3\Á§?πùƒΩd$≥òÙ1\”\«0´£6èíX˜`í¶Å7\r\‡®\€|œôSJ\'w \‰K¿r®\‚+d\Ó(ò\Ï\⁄c¥§@y`˜ŒìPí—ù\‡\ÈP\·L	lK•¡mAîzQ…ñ\nî\ Lc;ßˆ¶k8∏\' ˆ\«)£íq˙ö∫Å∫wF\Z}t9e´\ﬁ]ø}*WK¸OÒ0˘ π\ \√W∏yû&~!´∏\ƒbµ\Èıg¥•Üì\‘†GΩÆl\‹\ÁÇ˜ó0ñ\÷˝p¶rK≥:\Ê-snÇ¯H\'\¬f\"î\∆\Ï†Y)Øç\"Yôf\'5^/•\€jv&@pO,\“\Âi\ﬂF\Z}tø}%™\‘9≤q˘˛≥?e\Ëø¡[ò/\Ê¨YÚ2û\…\Ó´º∆±F)\—\Â$˘\Ã√ò\'p_5•{,∏\—c2(âeR@+®e<Æ@]πX\—g*DáU¥$~àíV~\'\Œf∑µã\–ı\”\È\È\œ\‘\”\Î¢7AÃ≥E\ÿ\Ê+9LtØ\»˝f~\√*áwW/\–brH\Á^%cQ\‰ñW≥\¬\Óa\‘-,\ ¯%mkR¶oîR∏\‚Tp \ƒ;çäéKïÍÜë$06A\Ãr4ÅQÅïÚî\Z>ıSéî/Ùâ\◊ıûúΩM>∫<bËÑ∏ôVî±b\Á´% Ñ]_®\œ\‹uøôs\Ì π]€îèé\Ã\ ˆO\œIô[ø\ŸS%n°qæ&r\≈[cUÒ’ò]¿un©Ü\ÎÑ_\nºìÇ\·•\Õ\"\«\«FûºøÛ\”_¶˛3OÆÑWöÉÑùQV≥N\Ã@!\‚y¸n Øc˘]\Ï\Ê}\0®9\≈€ÆÎì•\‘\\>\„w¶ò¥AgÖn7w\Ãn©/sø\·ó3fÉpß(ó\Í5Z`ñ/d\„˚G\◊G^îb¸\◊F\”\‚˙¨\”Î¢•\œ18\—Uq™;4ó\Ãî≠¿π®f®\Ó0¯k©πê9e]6\ﬁ&UD[ãÒ9gî{çxhe°E	`ô\Œ\ \ÏÒ)¿<!πµéxõå¸¶Um¡ç\»¸\Â€•\À\≈Kµ\Ó\ﬁ5Z(\€QnS\Ã1˝\ƒ\À\—/1\ÊU¥\ﬂC*¢\√(Ç\Èrö}t\¬Y\‡Ç8ª:¿qÅ9\·‘©seß\Œ@BÒ€°ı2\Ó%Ú\«˜ú\ÿÒ\≈4WKsä˚¢#,\Ÿ;nlO([\⁄s/G∂R[iôE©\«EIp(ùâ\œKåJ\ÂÅ¸\«V¯WW\Áæ@˙âQ’µYFÙõ`¿ï°[A9M>∫á*ëEfhI¡Ee\ÃD{dV\«¿xK\ÏØr¸˝°Úì^&ó\”z$\ r\Ì`§?ÄE]à˝\’i\Ó«∏˚ûö±¸Lµ\¬<\«xümöÚAvÉΩ¡9\À\Áe[í\‡\ﬂa”∂´!ÒÇ\’\Íùé`d´]æ&ü]≠Yç\„\ 5QûÇ\ÍC\·W•`ò\\IπYÑ`´\'.Er2óJò¶S±\‰•\·CÜ\…~\ƒ\◊`O00\Ì% `CLô/\’‰®µ\n0HÉ\√⁄∏\‡\Z£è\ﬂ\Ÿ~©qõIô\"Ù\ Y/çxÅ≤m2h2\Ì\À8zgõ…ä•\‡\€Z@Éf%#ßí;à}NÒâÚ\Èˇ\0y\–uÒ4˙È©êá~u\Ÿ\√0X Æék	ì\ÿ\Êê%\"¥,∏:p¢Y¿›±Ç\"ı~Ÿï+†sñπ!ØljAõçÇS7$tò\œFÒqrT\‚.\ÿM˘ÙßP\\‘Än˛¢wÉ\‘Si\Ê)x® <:42ü£\rªì\‚¿ê\›U\⁄?êBB∑iB\œ]\Ê/˜Fæ^\Ê\0+îï\≈f\"±•\—\‘iı\“‹èôyΩEGè¿bW\'®1ã^\ÿ\¬\Z\‰&oõñbÜ\¬$:U2Ü€º@∂Qå\Ÿ\ÌNl,Q¥k|¢ê–àvæÄ\r¶à∂eâA\÷GÜ0•L$óK!†ﬁ•[+<©go©\È);≈é\Ÿ~\"Q]KYÄ\”cåEèÙ\≈4Dw\r·ñÇ\‰\≈™Tî\\	£G,ûûòV™å¶\◊\ƒ\”\Î•=Z¯é\0º»â\À7Å,ü≤=\ËqÉÅÑ0F@M\·§v$ºb\ÏâdŒá\‚ÜSÒ;ù!\È\“yí\ÿ\‹z{J4/I∑Ø$≠%H∂$\Â∞\◊5rò\◊o\√_Äπ˚ã{w z%tw?	dI,`\„\«L∫íˇ\0Iß\◊\Êó\ﬁe@{\À≈°@\Ê\ﬁ¸	®j∏:\◊\Ã˝ÑãGîÕû&	òò˙ht\ÿF¯á=%(\ƒ\„\”‹î!êªYóÒ∂áôKå3.)6î\¬\⁄\Ê``©}pùÊìõG∏)˛\·0ü\Ì˙9M>∫\\πr˙ø\ËwH˚\'*Pd@{Mıq\Ó}\‡\Ê˛¿ÉÅ: \·9Ä!`Ä\Ï1MÄñ\Íˇ\0DoŸ≤›≠^IO\'\Ïä6¸\√`úS\‹kR\Ì\Ã]N\Ê•6@Hä\‚?=?]Kùô,ΩÛÄ_¥\Ët˙ö}~>\ÂÙjj\‚vµéº\Ã¡¶Æ\"]/a	ÛêSk¸Aß\…\Í?v]éQI;®K\»ÓíôIΩ$m\≈_â\„0¶\—\‰õˇ\0Äñ\nã5)·ñªè,F©0>ô\ÿÄÚ\ )î]aàˆgf}ìßƒ¨Åî¥hóúé\”?BT>Û\Â=\—=\‚(¶]dTı$P\‹ ´Ú^ôd˜uY)∏∏î\ËN#âSÉ°+=9úÙ%4û\'L3ùΩ•\n+≠m©\Â!¯Oˇ\Ÿ',7,0),(28,'css/images/Servidores-Workstations-Hewlett-Packard-4.jpg',NULL,13,1),(29,'css/images/Servidores-Workstations-Hewlett-Packard.jpg',NULL,13,1),(30,'css/images/Electronica-Smartphones-Xiaomi.jpg',NULL,14,1),(31,'css/images/Electronica-Smartphones-Xiaomi-6.jpg',NULL,14,1),(32,'css/images/user6.jpg',_binary 'ˇ\ÿˇ\‡\0JFIF\0\0\0\0\0\0ˇ\Ì\0úPhotoshop 3.0\08BIM\0\0\0\0\0Äg\0vjvlxHuF8DZx4BL-3kh6(\0bFBMD01000ac0030000ac0b00007712000045130000b814000047160000c71e0000ed200000562200003124000055350000ˇ\‚ICC_PROFILE\0\0\0lcms\0\0mntrRGB XYZ \‹\0\0\0\0)\09acspAPPL\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0ˆ\÷\0\0\0\0\0\”-lcms\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\ndesc\0\0\0¸\0\0\0^cprt\0\0\\\0\0\0wtpt\0\0h\0\0\0bkpt\0\0|\0\0\0rXYZ\0\0ê\0\0\0gXYZ\0\0§\0\0\0bXYZ\0\0∏\0\0\0rTRC\0\0\Ã\0\0\0@gTRC\0\0\Ã\0\0\0@bTRC\0\0\Ã\0\0\0@desc\0\0\0\0\0\0\0c2\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0text\0\0\0\0FB\0\0XYZ \0\0\0\0\0\0ˆ\÷\0\0\0\0\0\”-XYZ \0\0\0\0\0\0\0\03\0\0§XYZ \0\0\0\0\0\0o¢\0\08ı\0\0êXYZ \0\0\0\0\0\0bô\0\0∑Ö\0\0\⁄XYZ \0\0\0\0\0\0$†\0\0Ñ\0\0∂\œcurv\0\0\0\0\0\0\0\Z\0\0\0\À\…cíkˆ?Q4!Ò)ê2;íFQw]\Ìkpzâ±ö|¨iø}\”\√\È0ˇˇˇ\€\0C\0		\n\n	\r\r\"##!  %*5-%\'2(  .?/279<<<$-BFA:F5;<9ˇ\€\0C\n\n\n9& &99999999999999999999999999999999999999999999999999ˇ\¬\0íí\0\"\0ˇ\ƒ\0\0\0\0\0\0\0\0\0\0\0\0\0\0ˇ\ƒ\0\0\0\0\0\0\0\0\0\0\0\0ˇ\ƒ\0\0\0\0\0\0\0\0\0\0\0\0ˇ\⁄\0\0\0\0\0Û\¬;\…	ÉSX´g-s0>ïë\…;v«ü=-âÂó≠≥7«û—û.^\–<lΩÇè\'\È/é/\\\„W/z^r1\ÈO1ıÛ5ûúÚA\Í©ÛÅﬂ´äz˘¨\€,5UØü;:∏+\“YV∫¨†∞ì£,*\Îß.Zé≥\„®\Ï.::g1/Ba+¿[∂º≤çl\\\ÊR]8\ÃˆXº˜“úr\ﬂTóó.ú•\ÊO¢£∏¨r\‘Fwy\ \‘V≠âõsjr•w\ÁY:…Ñ\Ÿbsé\…\\µ•Ò\Ìï\È≤\\Oté{\Ë\ 9\÷mqñ;	q\ÀS3])e(®òiFò\⁄h&Ö(∞	ñ LÑiU\Z)\ﬁx\Ó/ø\Z/ßEr\⁄E•{&_Bn1!1âÄ\n\0\“N\0))%Iàò+i†öDí@@\ƒ\0ìH´∂ΩN$\«\Ë\Âü^.ë¡≤S≥ ≥\À\ÈuŒ∏î\·\"DØ\ƒ\ÀnÀ≥0ΩØ3∂J1ös\◊D9p\Î\ƒ\‰uß$\Í\¬\ﬁk\›rGE\ZD%j\ZYBÇƒúm#(Y\»RØ∑\›NCr4¿\\fΩ»óì\–\·%ò\ÔóC63ûAò$\»CDöàÜ\"àHã\‘m=fiE[\n\ÊSÿÆ\Îên«∫Ün§\’ P&≠!5g\"´Û˜\Âò∑jQìtè>z@\Ë$y{\ÀM]>RL|†—ò\⁄ \0\r¢\ZÄ\0M¡’é∑¨\Õ\'D&´N\≈}/)i\Õ\”iJ:†!≈ñs1\Ì¡\Ë\‚Z≥j[øÅÙ«óa*\ÔÒw€Ø>é9m<Ä2bh&•\0\0P\⁄!àëÄ\0ÜZ\”H\⁄u\"%ç\∆T≥j6\„√ØÉÆ≥\”I2\Œw;£\Œ\Ô\∆uJ≠\Á<¶\Î(ùæØ°\œ\Í|\Ó˙\'	Ûí…Åê–çà2\0∞\0B1\"DBDX\ƒ\ƒSRpMJqÙé◊å¨´´;•\ÕÙrîä∑(≥=ÄH≥\–uπ}Oü\Ë∫Pü9&û@¡Dí#\'Åß(\0ì+VX≠É XÛaÎû≥Ûuızìçªï\÷\·,Vê0h‹ßô\€\ÊvúÆg[ì\Î\Á*mØ§\Œi∞\Á^´´\»\Î|˛ˆNπsñ∏9$\‚\Âd^L@\ƒfÄ@\0	\r$≤u∆Æ)ïgLKçv?£\Ê\Âm◊µqY\›_?”é˘æv,@`\Áuz\'\Œ€ômv=\œ3\…Ù~sŸã%\ZªI\Ï\„\ËNôàNè_ç\÷˙/î%\ŒX\·(ú¢Ú`≤#\"T–†Ãê\¬\nq!\r%\'Qr.L\Z¯\ﬁˇ\02rC\…ò˙\‹{JZì\”Uï”çk9≥¬¨\÷p:˙y:ùâ\◊>Z£\≈˚Ø\Í¬Ñ\ÎÙfv\∆E•Ei\Îqz~>\€\ÁUúeíÉâ	\√ön2…àÜ\0–°ëD\“ òã)\Âˆ≤{x`Z-ÙÚ\…\Ê˝\›:¯˛∑\'m{ù?<øsﬁø%\÷\Õ\◊^\≈\Œg\‰€û„ΩØùá”≥ªS\ bˆû+\€\Œ˙\Ï]¶#@∑\Î\ÀgóßfÏ∫∏ß(º$\‡\…89©88ë,*E\∆p∏≠≈•mfëBoJãK#$E~;\⁄«∂~u/G\Á˝|\Í\Z\È.\ÍÒdœ©èûÙôùJÀº=\Á}S\Ál\·ˆül¯´tS\Ï\Ã\r¶h æ{Zπ\€x4J©\·\'B≤1ñ¬¢.(£\\ïÄ\r\"s™QiQ-ä%X\Í¬∑S\"¶oY\·Ú˝Ñ∫g\√\À\€\Zûw–ë≈¥Æ\ŒV2hôYπô\'\Ó¿L\‘Ûq\Â\◊G_\œvy∂\œ=º§\‹l\‹I\\¢+àDc4EçF&»ì©Ñ[`&\r¶D±§ …Ñ\„(nì+Ul©{äuøf.*5<únX\ÈM\Íw-|WK=∏’Ñl•\0¥¶EàP\ƒJ\ƒ(2’Äë2ìÄLà4ã´eÖeX™\"“π†6©En22\Îõ4Qo|X@Ø6¥,\Î45\¬3t≤›ãsÑy\€gí\Ôxm5™ß\rF\≈In(#Iò4ô\√B§ãäÚáW*Uóº\ÎM2\»\”YAWî\ZöuµÚ\«]ù\'\…Z\œZ<£S•&öå¡≠\\r\’%≠iw<≥\«Q˙:^Tz\Íπ\Í(\Á\À|c,\Óv\–hiò\“MQL\ÊàUr#§ùJÀåÍ¥ô^•Ò§I$P\0\ \‚\\QAöÖﬁº˚\‘Ôúæë ≤5\√c\‹Jíäïï\∆\À\÷hŸÆ9\"õ8€≤ï_\nÇqB$*ë\nÀñj\◊s\Ê\ƒ\È«ñéú9\‰mé9\ZRYy6õL*ÏÜ≥Àí}3≥´\À\Ï$I\“Yeõjå\»+gT+\‚µ9QeÜj\r\ÎïTu\„≈Çˆ´\„V¡wUú-çl`D6ú6ò\–Rîe,•%rå°¥\’B\ ıécGL\Ï\Ó=DêñW\ÁT◊†ØÇŒ≠X}uÑ¢`¢a±4\0\r0q`”Åß\r¶\0E≥qn.&\„(n2\…k<íU\Ô:˝\'úÙ§	\ÊPM1¿\n\0 b b\‚4\0\—\r†ìÉâ$≠≈¨öq7\0h.yî\›FÛ∑\”yOTZ\‰àŒ∑Uñ\œ<ñÚ∑\"DíàFÅFÅà$Eå@\»\»b!¥S\“n∂XV\Ínò¶£:]R\…5\÷‹öJh\›-L˝\ŒkÆ\…\»#à\–J,\0D\'(™ß-•s\ @dT0C4)D©ZJ\"‘êò\Îv6\’MLZ°©*ı\"ç≥®\ŸNÑ\Z-ô\‰ÇiÉLI\ƒ%	5+-ú\'Ç5Ä&òÎ≤Ω £i–ö©\∆Q≤M5@\◊ee“å¨rÑ÷à\ %∂\’mîN,å¢\0[ˇ\ƒ\0,\0\0\0\0\0\0 !102@\"PA#3BCˇ\⁄\0\0\0˙∏≥	S8*\≈\¬T\„\◊trD\Âà\Î¡ÙèSM[Lz¯£¸Äµ˜µï5íôNG\'y6™í;ÙŸòLT\ÊpT=5QhÍûÜ©˛>®øçô˛1ü\„Ò±Ò\‘\œAEñÇ84\Ë\«Lå¥\»\Ê”£\‘Q=]4zÿû∏ı≤≤g´®zäß=SñcîôfX±dYƒ±ââ$Iµ-;¸m˛¡\ÌË®ûíä8(t˛ÑgDÊ§èULıë=jπû∫c\÷\‘Æ´9\ÎïYzá\Êb\ÃLLQd~\'b\Ëæ\÷f28\‰q3ÖúG	\¬q#çh¡#X¨ªO\ ¯Qy\ ˜ër„úåôr˝6[πX\ÂG*9ÖQ≥Ú1ô\«P\‚®\Œ	ãL\œLzxú08\‚`åW–≠Òë⁄Ç≤¶\‚Ü\‡\»¡H\‚EÀó\Ë≈ò3çäì8áA3\”@Ù8`FúQeˆ\Î|fG∫\”\›\ZØsG=S`åä,øD˜´Òôeyj~\⁄≈ã~¶ß\∆e27¨ØL©˙\Ÿ¯ôO\Ã#iˇ\0\‚P\∆ZèmE≥âúl\„g8NÖúLtŸã,\À?≠/)¸ì|\ﬂ˘QR5âS9\„÷ï\≈Iäôon≈ëä8ë¬áDt\⁄˙2\'\Ê\\ó3¯©\Z©\ÂO™π•ıqC¶áHt\⁄\Z~\„\'\Ê>\\W5˚(\›jc(\«	t”ßq/¥\‚ô*CM{u|\«\ÕHæh\∆\‰\·â\≈:ãtSá∫\‚ô*CVˆk|£Ú™⁄®ıúû£\'\rTıQ\ﬁºW\Ë%\…”∑±®Úº\‘qN∑»îl[e\ÊÙV%I1\≈«´Q\Á˚´ä˝§UÛµ5\›~íQ»©N\›:è?\›k∏\÷Ò∫ﬁö˝Àó\ﬁTì%M≠ı˜Q\„î©è∫¿èï˙è%X\„6Wñ¢\·S˛hl\‰d>K\Ó\\πu\Ì÷ÜQ+¯~d≤ß5ç$M=©|ó⁄∏\‰N•âjí±^û°HçR˛\Õhb\Îx~_¸\‘eRöé*øƒ•Ú_m\ÿ\’SçC—ª\—–©7¸{E8N;\'\◊V9F™\Ï¸\«\„J¢∂jNúncó\…næÖÀó.d\\π~\’*\Ô•ñ\÷,X±©‘™˛GΩD*\Ï∂\÷B…ê\Óï5áºT\—˘î˛K\Íÿ±b≈ä\’:(©!NG*H≥∂˙\›/:áÒ§Ù§i\ÍrEm©étdC\≈$?1.A˛Q}W._⁄±n™é\—-≥4ÛäÖ\”1ã8†\«I£˝êqMôaZ/(è\≈Ui¿•?\…˘./4¸}ä\ÀÒﬂéSçEVî©\Í\Í\”)ˇ\0&C[NG,e≥å$Jãâ\À\ﬁu1M˜°?\√\"\Â}$*∫∫WA\≈\«/\ÓR≤\ÀjO≤ÿï—ë\Z${\ËF¥+–ù	ΩïZà•Æî\nZ˙R#R2*RåïU$\‚ûQÏîàΩ™\√8qaYò\ﬁ=∂†»±{W._\›\Ówﬁµ(÷é´K*\ﬁ\ƒjN%|ë*±¨Rˇ\0¶%à-ı∫[»¶[j.\”B˜n\\æ˜/\Ì\…)-^Å2pï>ö\¬i1JL≈ã∞∂}\’Z-Nöq\ﬂ˚è\∆=w.\\ø÷ù(TUçR%†´\È*ãGUî?èhPQ^Ï∂∏¸\‡ô\√ôßy$/n\Â˙\Ó\\π~´ó.\\πr\ÊCû\÷\Í~U\Œ˚–ï¶.´ó\Î±o£rKÚM-¸eîK˛ö\ÂÀôπcä3\∆WæÀ¶ˇ\0b\›7._{omââb\≈)\Ïô~´ó˙w.\\øMãHs2π\ﬂd\\»±b≈Ö\Ÿ\«\∆\◊22/\”r\ÂÀô.\\πr\ÂÀó.\\πr˝Yä\„L≤.å\‚r\ƒ\ÊCÆs»±b\∆&$vπôëôò§\\{\\π}\Ó\\π~õô£4ff\À\»\ÓX\Ï^\'\"G0Íúí3ëw\’b≈ã,X\ƒt\Œ6q\»\∆g\Êå\ÊrHU\ fååãó.w?#Ú-#	r8\ÃQ¯óÅö9Ÿì.˝õô!M33\"≈ã11,X±cå\„G\Z8\—\∆`åQä?Ò2â»éCêÕô?j\ËsFh\‰33eI;JR#v¥Ωã}£$féCêÕô3\'÷∑\…à\Â9écëôHø\\¸HÅ§}˙\Ódå—ò\Êf\ÃŸìˆÓå¢:©\Á9\Ã\ŒI?~~$SÛ¶∑&\Ÿôgr≈åK,[f]°‘âÃét:\Á4å\ÿ\‰Àø´/)¸¥\Í\’Kmb\∆&&\'c(°’ÄıC\’Dıc‘∂=DáZLÕó˚Øƒä*™\Ï\Áö(ı(z±\Í\ÿı2i≥9•dà|©?˜mw˙\È˘è\ \rs~\¬~WïˆØØ®˝#ÒøCeˇ\0As$].)._jël\‚eö)‘é<ë.\\o\Ó‹πr˚\€tˆΩãóÎø±r\Â˛ç˝\À\‹y<	˛°ob≈å2-åºã±(\‹[¢˛˙ˆ_∫∂C\Ÿy¨C¿∂]ˇ\ƒ\0\0\0\0\0\0\0\0\0\0\0 0@Pˇ\⁄\0?àXBµBÑ-ê∞Ñ\"•Jï(T©QB\¬\'TTEJà]Û¢ÛOK\∆1å∞\«\—$¯ôa\Î;Obè2Oû\'3‹Ñ,¨!3\‚ôÛﬁÑL£ó3á\"6ü\…Ù\‰IÛ\"F<<NWl¡œÉ?#è,1ë.HÇ|HD¿≥D\‚c Ñ,\…>ôıO[\À\∆1ñ,X±b\√\Èc\∆X±b≈á¢∫X«∫\’f}S¢ñ}S\Ëcˆ?ˇ\ƒ\0 \0\0\0\0\0\0\0\0\0\0 0@1!ˇ\⁄\0?íK!b\ÂÀó;√∞∏´<I<\…$ñ\÷≈ã$±b≈ã,X±b≈ã,XE\÷≈ã,Xí\ƒ˙∑\ÍoÇ∏πr\ÂÀó.X±bwA5U¬Æ\“I$ñ,XGjÇj\Â\'\ I$íF∏GrÇh™*¸(\· Çhø\Z(éMŸ¨ì®V∆çQ™7Gz±íb\¬eHº¶1[Fh\ÔD00D2$ãÑ\\\"\‚ÇUì\∆\Ì\Îá$ù\Ô\Ë\◊O\n\—q¢ïÑ˙5\–ctÚ®.\–AräYIí\‰\'áπ wpúπ<†çQ\ &U;Ts\…\·£9r\nû—ªo\·<*\nÇ¸0@ç\Z\—4r\n“•JêT©R•Jï*P\Î\‘&#¨\ÎÑ¥*P°BÖ\ne\nêGî*T©¨ì§Ò\"i|©ı\'\—	§A\„T©R•H+¨F\–A¥yÆâ\Ôˇ\ƒ\0(\0\0\0\0\0\0\0\01! 2P0@\"A`apÄˇ\⁄\0\0\0?ı>\»dN#ZóÇQ\…ë(íiH?KC \‚q è\—ÙB!àGÇ+$ír9â¨Abo|AâƒÉÇ)\'#ë\»\‰\…\'tzHb1≤I\'\Àmí}wOë(î}y¯êG∫\Ã\◊\Zé_±;Uv\r\’z±\Ìˇ\0ä!2=xˆ-\Ÿ\ﬂd>µ\—Sªw8ÙxÚi¶K\◊\ÈøUèû\ÕX\”\Ÿ\\Zª,ñQ\ŸX]íIÜg\ \ÀV=\Ï2iÒ\‘[Zøö\„Í†ú\Ïnåi2ND˚ñ[.å™N\ƒ‘ôg\Â¸l\Œ5*\ÍTc\Ë\ÂSç0\ÈÚ¡5∫£\Z£]ù\…>Dòt\ /°ñx{Æ_\Ëv˜Ò≤\ŒKjX¶G»ìø\Ÿgπ°\“\‰R\ﬁ˝µ\ €çEµó\”;ˇ\0∑OKmH¸¥‘∑-Kuám´°\ /¶ê@µj˝›¢˝û\ﬂ\Ëi$ù≤O≠i&∞GíI0˙©\ﬂ#…ü\›Á´û\Œz\Ÿ\ÏfüfÖˇ\0\0ˇ\0ˇ\ƒ\0*\0\0\0\0\0\0\0!1A Q0aqÅ@ë°±\—\·ÒP¡ˇ\⁄\0\0\0?!4zãHûdÆ\…]íã{>ôÖ˙	ø\ÿ\'\√˛èkÙ\'\·øC\‘)§\nKí\∆\…]Ø\ÿ\÷\Ô˚ü\ÓQ,å¢òQ“û\nDtX¡{¨Ö(í[±+\ƒ\≈%É!\‹G¢Lí}1&\ﬁ˛∏ì\–\ﬁƒª	€åÑ˝	\Ÿ»∂±*\À\÷#ñé\¬q°∞ä£†m`∞êã@\◊Lu1¶ô!&fX˜\Õ\–o\À1±$l\ÓÇ:\—l8/å\ﬁY\ÿ\\rG¢J»ÖWê ê“ç*¡Ø¸ø\‚Hˇ\0§zâ.Än¿\⁄]∞\”eç\Ì\«\»Gl{\È¿ûß†H\È	˙Pç∞L/b¢\‚\ÈÖ)ç˙&5haZï\‹LüC\⁄&%\€,ˆ\«≤ÃÖA\«TR›å>b3\≈\€\ÈàQ\'Ÿ∞/Û\ŸÙ\œXìÑzí\ÈKæ\nu&W°&&r_cmj:D®Mó!í\Ë˘\ƒ{B9Q+¢\r!tåH$™\Õ˛£1QÇ\ËFeí\≈wklL\À\Ì\”\ZJë\Ë˘ß!·Ü±FÚ&lY¢hÅ\’UC\‚π:™ø+ÆC&làñf=	\√»ëÚ\„?äº∫´ÆQ2|˝\‡\Ô\»\ÀdHF˛ˇ\0CÕãÑ\‹ƒÆ\"ódª=î–¢ı£\Îã\‚\≈Õö¶sc˙\⁄a\⁄O	F≤oÉ”´¢◊∞–ïë\"¬™\Á¢§7\Ë6\Ë~\—f,\Z{G\”,!¯]pfjx\ÃR\Ët%–ãódU\—l	1¡\÷DI4ü\r\⁄:gY\—ì\„≤\ÈFjqmí\€\À ÅQ5ûèÙ>4±¬π_\≈∞\Í\ﬂ∆∞¢\“\√V¥h¡çâ@XI\"π5\ÀBP∏/¿íI\ÂôT\ÕkØaÇIaé\È+	¥.\‘¯æa~+¢$íxeQ§a¿¯\Ó´ã\Ì\ZëÚtæë`_îπ]î_2C\„∫(]\ÁAE«≤ìH∞!yg¿¸´\»kJ∏\Ë≥Tùíπò7qr¢∞•\ÏB¸	$íy\…$íI5\»\“y1v/1Mô!Ü´!©p6¥FÒ.Qb/ÚI$¯\‰íI\ZIÜî:úäFÜµÜ™ç(∞/\‰¯\\ø-ë\Ïˆx§TõFÖ≤É⁄ÑV\“p!vâ.¢Ö\Œi>VÜ8\—:\⁄e™ÑV\ÏÇWáU\√fl^¥ó\”;QdC\ÿzì\—uàá\ÿ˛ëàÑ\È?É<a<°cua,\…\"∆≥,H1±,ê¯$í\‘T\'NìCã5∞át+ä[¥zPˇ\0¿åRF™ô$ì\ I®\√\·[5ì&v&\∆H∏\“y#•DÜ\…5~Ñ\Â¸\ÿE\–M\Õ\∆&\\w$\∆Ah\«\'.***AäI$í\\ë±æ@ìdjb$ãª-$»ì-\Ë	—£\ÓåqÑ¨a2\⁄EüBÃÖí\⁄_%â¨C/B†\ƒ\—ì°QQ5\ŸM`Ç)—πø	é\Óre$	\nÒ\Ë±\ﬁ5ù(mó_\…r\‡ˆ$A\‡WŸëe´ê\Z\÷lO™.=\€\€X1Z\‰G-`Ñ*.\√5±b4Dê\È0ã)AíΩ•\ÿ˘H^\⁄# Sübhº0ë,K\ÿˆ\◊ï2Æ&\Ë—ç\Ï\\Kó∑@Llô\\å`\"E\‡üì\ÿ\⁄y¿ÜÃÅª6∞‘Ö’é A\Ë∫s$D\√\‰îe`˝¢Úí$Ht\‘aT–™JÂºí\ ÛC§lù\rT**\…$í@ÄÑ¢Q*D\Ó[ù\—2\…=Ö6íX»µàëï†\œ\’á∑ñÚ7LïÚ+L\n°&¶tÜ3\ÌCráôµàtAf\ZÛJ\·&¯≤Y*í|îê¿\ƒ8}phÖ7n˙-Ål	Ç<Üö\"slÅñ]\ÈQ8V<¸[\"|f§(ô,4á[\—&6I$íI4ÇD≤\‰¿\¬\ƒ\ﬁC0\„\'°i∞¶\Ì\—#\ÿÙãMÖM√àbI¨IE\È1J∏íQbI\'âM&í|8ï0Ùz@\∆Kbì ±5vãhâ\Ë1ëÚ»òƒíI4∞Ä\ÿ\—) äﬁ≤I5ö\Õ\…bLHB$ö°Wëå{,à{bm1	$íHLÇAñI<†ésX\"íOWPS•åeõMAêò\ƒ\÷hMV|§íOÖâD\◊fdä`c	b*0\Ê\…\Ó$∏!\"uëRîˆZì¡ÒíI\'\Ÿ$Ò\…tHB:\'ÅA+hbC,e§4\—0LU3#<^\ _óeâ\“Q(ï\Ÿ\r\"ZC;6Ñ¨êÙ5lj±˙G®teô*8çk∞ÇV ∏fK$:R\…%Dâ\…d≤iiR¯õB\Ô@\“≠èªHfÜÅâ∂\Ã\ÓëKWâQá1\„˜ëmç]ü0ìô=l\€az\ƒ8?DOFz&GVz	6v2b\'Åñà∫>`˙@}É\Ì&\Ÿ}∫\œã(àrÜd<S(!\—©àt>ä¢/b\ZM¢DT\Zå>\√\ÿK•\À\÷=åï\ÿ˙B6öO°2A+1ñt\…1	!\Õ\“)zJ\Ïˆlf\◊Cy\»˚èp˚	uµ J6ñ∆≠£\ﬁ5C^Ü\⁄D\‰\€%Ÿû~C\√éô\Á\ÿ0à\›R`˚Iocûœ≤-Ç8\ \Z6E≥∆É~á§n\ÿ€≤˝ë¡QxSñfÅ´êG±†‹ï)b]\—\"tÃôÇ±ˆâlb¡\⁄˝ålˆg\›/º¶y3BLêúN#\»Lá¥Ñ6éòÙÜëÉ{¡è¥nˆ\…}\’R9*.+\≈{Dwq$Q\rè`j\√-\Ï“ëå6f~\ÿ›∂/óK#Œπ1QqU¡ñ±\ƒ\Íôü!\À\€\"¢¸\ZáCDY|˘™ì\ jÖ\≈\Óñ!JhÚ§.\‡íI¨íOâI!1px\‚Ä”ï˙∏\0å\’_ë*D¢$âra`ö¨D&\œo\0ö&&I>U\·í\Œ\ZF|®\›r\‡í\‚\…j´.Ü\Î$íH™\'\œ#…¨ìs¡§>§∑∏ê©z.\ƒ\‘\\#\≈\"b¨x$ö≤8¥4D3•\‡1±Ú(TÖëP∞\≈G\›]W\‡j™ªF…ç¿db¶\Õ\›?ˇ\⁄\0\0\0\0\0wt—ÅZ±S≠J\Œ˚GàQˆEåSU≤ê¬í~=>q\Z&Aå\0™\0\‚jS7¶<òV\∆V\Èj\ÿ\À#)√Ç\◊\n2G\œ\Ïz§\ÍbÈÑ§O	{\‚Û\Z\⁄i@\ﬁ<añ”êD\≈\Î!ª\Á_<±\– m¿4q∞D#≥@J\·!PS∂ô≤i\Í\nÅb\÷Jhp\‰É\ËX\ >I\“H?\«≠å¯}$7˜˜”∞*\–\À=xãÕà\—\0\'x;ﬁá\ÏpU\'áº£Ä\ÏjÅ8F\–803N∞j2¡f†rö2\0¶ij\÷~\‚Ú$z¨y¿®É†XDø|S2â!\’}%W\ÃP“Ü \È	6Rx˙ß´ö8Q\rçÅêÀ¨qDí8Yi[˝$ñ—ê§)[\Í4\'x\È¿ı0\ !™ª¢Vèπxå)\'q\\\√I!édÚZ¨\„c∑\“G≥G,B>Fæ\„∏P:F4ÇÛ\¬OP07R\nC≤\Íq&i∫C\r•ÇÆn \…\r‚º£\ƒ\Ÿ#q\nøk˛T\∆Ú,Ñ,@\\≤)Ù≠\ÔéH\÷,Ä\‡É<ä0\À-ÅF¶!>0\ÿ\\\„\Ã\0s\À\0@¡\ŸKy\0^`Wπª\⁄˝\0C\Ãò$)E\rY ò•ß\« \œ∫EF˙|D?+@<OV&ø£\Âi˘Uº˙≤ä¿@ˇ\ƒ\0\0\0\0\0\0\0\0\0\0\0\0 1!0ˇ\⁄\0?èÑ\“ÄK8Ü\⁄Úâ\—+ZBI Ç\'¡åx≤íêA!\"-∏¯Y\‡~êòHÑ\’˚¯Ω1Ω(¢\ƒlA)%(˘zÊççåYBá\—W\—~\“d(\ÿ\»BÑ\»L0\—ÙLAg\“=•\«˙≤Öö?x±èÑ\‡Bba\·Z¸KP≥\‡Ñ.,cÑ\«\ …≥Iá\—\ÏoÖ)V=2å{∏L¯\\ÜlGxj3\ÍÉ\’¯F0h≤#\‡∞AÜÉZıt∏hí1n4∆õò¡˛\·ùA§=r]\\Æ)J&6[\√\”\ \\E)F,£‚î£«ïRó\·JRàRÙ	#Ä\√äQe)K\»>†¢ºÖ|r\ _Ö\‡RåÇD\ƒ!∞ë5VQ<Ñ!	êùNèíw\—ÒK˚¶T^X\≈˘\Œhûå{¥πJ&^^RÙ\∆<D\Èj◊å|1c’üˇ\ƒ\0\0\0\0\0\0\0\0 1!A@aˇ\⁄\0?Õû	±<¯ûo¥¥±b\ƒE\€|ØN,»≥fÃûZÛ‹ªv\Ì[1Ûõ\ÕpÛT´r≠Z\⁄\⁄ﬂºŒΩ/®8sm\Ó\Ài1~[\‹¯˙èú<.XJ\'Ü\Ì\√\ÍR~≠âÒ˜|\ÓÖ\„lΩ\nRÅ\œ~Øü≈ã\›\„\∆\÷(•9tæÛ\Í˘\ÊmçÖ∑áå˙\"l≠\Â∑\’Û√∂zıÛù!ñ\ f{|\ÌíN3«ô\”ˆ_ãy\„oMi\ﬁ\Ÿ\„6¯,ù\Ÿ}≥˛N≤0Lõ\"úÙ$\„<I ≥Öım˚`GAx\"Çd£∞j+v˛OI8Ûˆ\»˘åf\…~†7†&úIäˇ\0º–ÑÒ,≥\»<BR*ç≤\⁄s\0ª3üì\“\Ÿ$:\Ÿœùa2>r)O>\Ôáv\‡ñq\„\Ô8\À/Ÿ≤ÕøYg∂\Ê,\‚q,≤,≤\ÀZÑ\Àa8\⁄In›ØP’´P\·∂\‰Ö¿$ ñ8\…adF#qC\Ã¸¥¥Ü\Á2\∆\€j;¸,/\Àxf\€k*\÷\‘„∏±fwm∑õ\◊\€\‚¸ü[\√\€\Ìˇ\07;ù/ú\ﬂvkå˜ëæ\Áíøæ3ôgfx»Ñ£ ±g3\À«á¿àâ\·”ß?ˇ\ƒ\0(\0\0\0\0\0\0!1AQaqÅë° ±¡\—Ò\·0ˇ\⁄\0\0\0?w&\ƒ8¶xb\‹\ \ƒ\…\r˘“ìFáˆG	\»\ÊFó˘òY˚%\Œ\ﬂ\"Ü∏ê_\Ë?Ö—Ω2ºù3ë{Oíb>\—ªq\»\œlZ∂\Ÿ-ìTæ\»\·ƒáo\ÏG){.\“G\–\Z¸\‚*/\"E&74Ã§\“\Ïa\”b\»rxbñﬂÜ>À∏›¢q/\">\"<\Ÿ\ÏÖ\Z\’\„ÜÃ£d.fGï>Eÿö\‹}goÇÑÇàCn^äK\Èd#\”0m\«*Yzf ˛ö_ˆb@º±\«Ú3øy3\ÀW\ŒL≤I\ÿKñ<˛qΩTˆçı¯?¶ê\Ÿ\—]!¥\”¸9˝1µ\‚mC∏Æì@\√#°∫ö	\Z=åø|L≥Úìf˚{]ã-0ùî~ã!1\‡RQ+ì\“¥\ÓÜU™\ ÇpEÅπ&\ +ì%\ÀbWYd˝òq\«\ﬁ-t4iat<D¯#®üc	–Å¥£†Z¸P5\¬[Oÿùˆ≤¶\ﬂdØˆ$\À\‰i\‹I\ÀL≥=âåc\Ë%\Â¯0º∫\À76\ﬁ\√7\nôb%Mà!\ÿ{Éf@\–`\‹WC°4cePˆ≠®1\Àj¸üÅ%ñ\Óé\ƒ‘•ß\»\ÊáÛ#˘\»±\·Åä¥ê}Q9¥Jõmê`=èÑÑù=bOJù\Ër\"óh†î7/\Ó2∫˘KóAL>f\‚ybV\rFõ∏O˙ã	a¯Û§í*\ﬂDd:/‡πõ≤Æò\È∏b-ÚB™UHlèô\níΩ£ß\‰Ün;nv…û\‰ª2M2ô\‰cw¿≠ˇ\0Zq\\4\¬rùSg°=h\Ëh¿Ù ∞ó°øñCí¶&\ﬁT˚=\"«ëS¢D\Ëo\‰S:∆åY(Üd$ı	é\∆ú_¢	°{êÑ˚g\»£$›°1älA/a,aúâ\È0&^à<\rõèF,âàC\ƒ=ø\·\»\…0Åã.<™0PA∫Pë=\nÑsBB«ê°l\Ë,\"[ãHIB-Ä3t<èåÑ≠h\√\ﬂLç–∞<±°°-∏Ü<C_¢-x.íπ≤,:\",ÉQ;îiK\–dEÜ†GLb\Ïtáa2Eì&\‰X\›%C T8àç?#P%¯\"4f\Ê\Ê\¬\Z°hﬁß¶2BHL¸ä¡\Ï\„&\'E%\Á\ÿ@õ4¯\\*\‡Ò\ZÜ°∞\¬b—∫A3\"\ÿLtÜ≥DXM#\ÿò\Ì\∆\…\Zπ\rd–ï\ËŸñí!d¡ò˛õ¸&ˇ\0EÉ˜è0Å˛ò¢\nëHGJõ±$ßhˇ\0ê;àÛ¶\’d±]d\Ã6]\"~Öt!\»\”(&Qh\“yC\„\Ïø¨ú\ Ú3Q(∂&\⁄m,\"oXÿÖ£6H\ƒ\–ÛË≤∂î\‚\Õ\Ã6Ñ8/ëêiˇ\0B˙p\’’ôûJdâ°®\‹H[|ä≠¢Y∞fA±M¿ñ==Ü\—	D	$NF\‘\‡ï$)!}ØYle∏_ëá∂HW†≥±ëX‘ëXá#9\”`\‹!o&bT•MPÑ?–•ìlz\∆9ò\»\€	íT¥b¡\ÿÙjX’âÚüBD-\'\‰ìq44π\Z7hqa2\ﬁqE<Hn1´”ìd,…ªXìÃÉK\‡gX)%E,£\Ÿ¿B\ÿ\€5C#™\Z˜–ëjI)\ËS\Ë˛Ö∞ﬂ≠¨b¿\È{ü\√;\È^C\Óvâ©\'çíHõë,ã»∞\Óã<A1∞[˘ë¯TÆhPÖ\‡\ËÜ\‡vJíÖ/Iπ9&ãù$íI&	$ŒèE§ﬁû\√o\–\⁄´èDŸºà^F™∞9\€f\‡\‹(m£ìA#Ãöw#\“\«Ÿ¥S\Z\›BcÑ¶§à¶c	PL`áü≈èD=Wˇ\0z@ó∞Ñ\…21¢\≈¶ài°€ë¢ëa¶\œE$uˆ-$∂\‡é\«¿s±xC\‘hz#t!õåC$N¥I:≤Iö±–†T…íz$ë2^v3PE†eÙJF?‹ä6â˘&±\\¸eé\‡à|18~\≈=?0î\r\ËYãIÚLç\Í≈£Çõ:>±∑¯L9<5e\—2Y$&\–‹≤sÑ\Ÿ\‡ûI$\…I\ﬁxiDóvRkí©<6)%1¡;úã*S∑\‡Hùï+Éiê≤=\‰CŒ´]\ Dˆ=6¨NÖíI?Ññõ\Èpkîx&\∆t,ßPLe£\∆\»<\—\…\–[ ∞å\√5±à\‹X—èMÙ?\«`Ú9\‡~∆≤(Kë>\ƒ\Ô°\ÁCÿ•\«\‰ªë54&?¡êLH™pç\ Uåë’ô2óæ\—6CÅlî1ëí\‰§Y&6Ñ)tD≤ClLMçí;¸ô\Z\‘H\ÿ\ﬂ\—îWE‰à£î2ô!≤±∆âü%úì£c6¥P7b§0ïß±5xOT—îuOÄõM∏3T\–\‰Æ\Âq±ˇ\0\Á\‰2Ñ#ë1XNDPø=7\“F\∆\…âDÆGîÜa7p\Ÿ\«˛:æ)x¥Iá/ÚE\ q;ä\‡\‹\r©Bã\œ–õn,\◊ﬁÑ5E¨úL\Œ%÷¶äùCâ\\î,\Ã^F¶ˇ\0Q˜\√2	–≠†◊¢G†\ƒy\"I#—Ω0◊¢REö±ªMò#Ûe∞∂fÜxáGId/¿†é_ˆL\Á§tCoÉI{¢1MA\Ÿî¶Fe\n92∞|êR|ïÑvF•é\ZHi±\ƒı\‰n\Zq°Q\r¥»ó˘\rÚ˙r4q\Ëmf%àK†Ør(ñ\≈ uhL\‘\◊\ËB\“]\r°	ïé ú\⁄m®i\nò6Å%\Áf\Ãˇ\0ë∂Ü≤\«tc@Z\nÚ&\€#ÿòî¢\ŒS,§lA.I$\Ï*NáP,à*mç˛éœ°´\ﬂ\Ëj\›âI1íjd\‡	O•1iù\…b≥Ω¨ŸêYC´àúWr\‡â*º\√B á∏ˆè\≈Úı6e\n^Bî*à‘àL[Ãô\rjßå9¶ñX%p)ùá5îõ®QZà®bàôHGò¡∞ÚàÑäw8ƒåM\È7°àyCÚnI\r\ƒ\÷\√kàbdh∂\Z\–JJFPí<ân∂©â\Á∑NGbr¥\Ÿ!-\Ëlô1n\‚\r˚I\‡˜∞Kbn\…]Ö8°\ÍIô\›å\Ì\ŒQE\Ó(H\ËìTdÄ∑!\Íµwë\\ëøb66<\‰V\«	#±\Áp\÷Xc±fÙó\"dçﬁâ=¿‘∑cûD\ËO≤I)†¢x1õ	së(m±ö¯\ZK¿©&A(iR!,î\nâfV\Zp4ë∏=áOÄh°\n\ﬁU9Q+f\∆ß◊í°ç$ÚdûH®K§h¢˛ªòE®9§<rG \ 0=¸\\45Ù!çÛ§HNàëi\"•2\'!6ù$lLcVC\‹=\∆\À_#dIÉ¨zñHbG§ñ)H˜‹∂ÅL[Eí	ÚÑ\'E\–tEÅ©9CJ$\Ë@\‘\ÏJÇIı∫\‰ÄJ¥+/xªDtÃê∂®\‚LËëªf\∆LçÙv∆úç\’%Éa\‹k\ZI4JÙ≠\ ]ûÜ£c–°Ü3\»wÅÇVKΩå$(ﬂÅ√µ/≤≥e\·cVÊùÜ7§ôë\‰%OÇââêoFò@áë[\Ze≤\«\Œ@ññcdJÿòDä§û\≈\»NHr\"ÛàB\ƒZ\‰û\Ÿ\‰*\Z\ƒ †Ø”à\—Ô•á%\ﬂKP\‘7èZl∞EFúü¡°uIzBHÌêú\≈!-ßëÀ¢$1a\ÈÇS)2-ª[k&C\‚?\‡q~\√∂ óò>ù5á¢V\»\Ó=`A\œ$˜ùD\·±$êÿÄ\‘Ië;–ùä/˙í|}ì\·ñX±^\ÿLîJˆç\«Ù\Zg\Ë(øD‹ôÜ(ç†\√r?\ŸÃ±¯öhS5ÜQ(≠2gÄêS\‡ë¥<	£\"nIr`6.wzˆCåä,&\‰nˇ\0i%#s¶I∏\÷\ﬂd		~ä1∏Éw¢\À=†œØ£¸√å\Ÿ:\‘ñ*Œ¢\'FH°ô\»\ZÚ öãâaAB#RâF7c\rê\ƒ\√dA$îh®\‡0\¬]≈án\‡ç\œá{mB,ì˚\—(∑\Ë\ \Ã=íHô1>\„J\…[ál\r\À*5[£lë-\ﬂLâbpI\ÏzDº–ÇBÖ¶4DdC,Cv6hÆ]°í¡-d\»&0\ \“ìP´drêÜÜd$ô&ùà0\ 2Ú%rè$&πD˜§F\ƒ\Ã2>\¬\Ó\"i\ m	Ü\‰\∆ŒÖñ\\¿ñ\∆Ò©\\ac1∫\\4»¢ò—ì\ﬁ\ƒ.\–\Õ$JüBk}\¬S±mBÇ]\n[¡FHp+åâ\”$S$4$»ã¡\⁄%\Zî\ﬂV:Å>bæD∂¨t˙;\Í±N\"Q \€C\'x\⁄∆ØòΩ8ˆ\'\Í1m©º£\ x!D:è©!#\ﬂ\‰≤ E•¥±CI©˝å∂\—UF\Ã\\CDW\–\…ÿì\“n$<Õ¥Eg$\Î\‰G,i¨èÄk∞rG\“,?aiøπêOì+/cä°.^§6\·#\–\Î\Ë0§¸çá˚á\ÿ»°xÚ@Ñ\‡r|›∞ÇU\\\—\0\⁄1ßLJ¥ãqâ\“A˛Ä\÷\·¡xW!9∏\–\Œi±àâf\œ\Í\'v¬Ñƒåy~\ƒ¸ÜÙ?$\‹t\ZqP\¬<àVƒ∫¥Kô˘0xe4¯1°^aÛ8\„¯-å\ÎCd.Ç±•\Zèthtá¿$\¬_2WjÖ\¬f\‰ﬂà\0ç\·\"Ìà∏ \ ñ\r{°‡°£kt5ÄﬁÉs∂˝éG˛@ø\»;3ÇA#tr!JAç∫â\∆>b&≠C6	im∂|1§´{â0KPêÖ¶\Ë\„T\·˚\ZÆX◊î\Z∞£\ÃOë5õ7°™\‹\"\∆”â|çôli1\‚ò\”a\r5∞\ŸÙXÂ±¶¢\◊e´_ë%ìKà…èÅÁø≥Äªp\'\»\Â,¿≥¨ûs¡§uò¿\ŸMï¯4JYcJ\…ö=îlòv!\»Û∞ﬁ±\‹\Zól04\‡Ö8Fî\nl°\Â†‘¥\“_°ô˛ydnI2\ÓKÂôñ\„]≤∂˚97LNXùíz\“\Ó,?b^!»∏\⁄ÀÑ8\‰A≤c~>bnEΩ!º\ƒ?ÅeÅ#(}=\∆5U)∂4*ªMê/Ü#ÖÙa!–ç,\ÓÚJl/##–öd-\'MÜXz°dB—ôº˚\ŒGL5ñ\⁄%ì<O°çü¡ê2lh\ŸÚJ≠{3ü0ø˘áõ\n0ıÜVc~Ö˘\Õ\”¸ü\€Cb∂/ñ=I$à\”qiñçbd\ËÛ°LâËøëdXéÙè\ÿaFQ;{Bä¢˘rë~£x±tà\⁄>àuπ|ûYB/&G\Ê\‹\…\€\Zu$Kñ\√ˆ áí5â\◊}Z$ëîâ£s&\‰˛åáÅ;\Zòòò¨U™|ç_B\À<äJ¯Ö&`û\ÕQ´ o\ÏàZ\≈PÕÖ¨í2?9\÷lìqãD-≈ìq	\–\€Ù5h≤#mÑˇ\0\–\œ\‰hn\”bâ-è\·¥7(û	î\'zΩ\ƒI$çãﬂÑíI:3}2\—	$N\∆,ä\∆Xµˆ,\Ë\ÊÚB&Ωp!ˇ\0\Ÿ\‚\’8â\Ïö&D2I–¥õÅj$ë2I$y\”t4=	àHò¥YD0≠F\·ß\‡Öüc\"∂˜z\⁄¯-tê{<âG0îN|5íH\ÁS$OIÚ,Ëá£77\“gF/b~E\Ïï$•¶aà;\ŒNÜæÒçB(<|ûƒ∂\‹rª\'n\Õ$u\"äåêlπ\◊s!ß≤tùø	,ç–ê›â\—7¢\»ƒí4aXóD\€ÿò\…\—F\r/±ï”èd\‡m¸ç1?:ü&˛\ƒ\Ï\ÏÖ“¢|\Ë&$9\'q\\N7°˚°xjß´¸#Ys±<ª%C±∫ÿ†nyâ$:ëc¶\'.\≈4Ù`\\ë∫6Ü“¶©èq(√àrÑµbM™d>E\·û\⁄Cú\r\ﬂ¿ﬂüÅ;°¢D\‰Ø#N\ÎE¢ ç\Z|∑!\ Ü\‡ó#8Öú3\Ÿlrò\«f\‡|¯L¥ª\⁄\ÕEH±ë9P™Aöá\‡•\ﬁŒØ:o£n≠å˘sëcD∫±7\ŒL\rø%ù2D#qôŒΩåπYó\»\Ó\Z3ı°U±\Õd\ d2^wf\Ì?ˇ\Ÿ',8,0),(33,'css/images/Accesorios-Mochilas-y-Maletines-Hewlett-Packard.jpg',NULL,15,1),(34,'css/images/Accesorios-Mochilas-y-Maletines-Hewlett-Packard-1FK04AAABL-328972-D6WxVXXs9VQtprmW.jpg',NULL,15,1),(35,'css/images/Electronica-Televisores-Samsung-UN55NU7090FXZX-195498-go5pBYsdotHEaWFw.jpg',NULL,16,1),(36,'css/images/Electronica-Televisores-Samsung-UN55NU7090FXZX-195498-fmuIeqWNW2xYmBXH.jpg',NULL,16,1),(37,'css/images/user4.jpg',_binary 'ˇ\ÿˇ\‡\0JFIF\0\0\0\0\0\0ˇ\Ì\0úPhotoshop 3.0\08BIM\0\0\0\0\0Äg\05JhB8HcSgEUwA0_iheM9(\0bFBMD01000abe030000f40c0000811a00009e1b00000c1d0000842700007d380000aa3a0000b93c0000ec3e00008a550000ˇ\‚ICC_PROFILE\0\0\0lcms\0\0mntrRGB XYZ \‹\0\0\0\0)\09acspAPPL\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0ˆ\÷\0\0\0\0\0\”-lcms\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\ndesc\0\0\0¸\0\0\0^cprt\0\0\\\0\0\0wtpt\0\0h\0\0\0bkpt\0\0|\0\0\0rXYZ\0\0ê\0\0\0gXYZ\0\0§\0\0\0bXYZ\0\0∏\0\0\0rTRC\0\0\Ã\0\0\0@gTRC\0\0\Ã\0\0\0@bTRC\0\0\Ã\0\0\0@desc\0\0\0\0\0\0\0c2\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0text\0\0\0\0FB\0\0XYZ \0\0\0\0\0\0ˆ\÷\0\0\0\0\0\”-XYZ \0\0\0\0\0\0\0\03\0\0§XYZ \0\0\0\0\0\0o¢\0\08ı\0\0êXYZ \0\0\0\0\0\0bô\0\0∑Ö\0\0\⁄XYZ \0\0\0\0\0\0$†\0\0Ñ\0\0∂\œcurv\0\0\0\0\0\0\0\Z\0\0\0\À\…cíkˆ?Q4!Ò)ê2;íFQw]\Ìkpzâ±ö|¨iø}\”\√\È0ˇˇˇ\€\0C\0		\n\n	\r\r\"##!  %*5-%\'2(  .?/279<<<$-BFA:F5;<9ˇ\€\0C\n\n\n9& &99999999999999999999999999999999999999999999999999ˇ\¬\0ï†\0\"\0ˇ\ƒ\0\0\0\0\0\0\0\0\0\0\0\0\0\0ˇ\ƒ\0\0\0\0\0\0\0\0\0\0\0\0\0ˇ\ƒ\0\0\0\0\0\0\0\0\0\0\0\0\0ˇ\⁄\0\0\0\0\0˜2G¶YL#\’]Üπ\ÈE\—5è1\Ÿ\È\‹\”\“ViûeÛ\\¡®Ùffi\ÈL6ç(\«\œ=La\Â\»¡∞\Ÿ<\„\·dÙ”çIæb™z4≠\√=$\·tmÄ\0\0\0\0\0\0KR\\<\∆›π¶o≠_0\Ôù\‰é:bO ˆ∫#i\Ê\Z\ﬁCWH_/\”\„à\ÌNk\À\\,\€ô&ö¬îhÒ´óöÙ\ﬁ\–4\Ë\Ì\Î\r/9\ËÛå\≈tπ7¿\0\0\0\0\0\0\0Äí`®¥I\¬glí ï≥w\n\Ï\0\0å\›0Æ¿\0\0\0\0\0!fÄ\0\"@\0\0\0\0\0\0\0\0\0\ /µÇ^\›;õ\€Ã∞ÇáJ®)4\◊]\“=Oñı \0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0ª!\\ˆY\ÿU\Õ\·_Ö|^\ÿ\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\\\«eaa¿vVEá\Ÿ\ƒAa\\ùï\ÕvVëa¿vpúeaaXXqáXVÖÖaaXXpWg\Ÿ\œT\0x\Îi∑\≈\⁄H4í9≥™k\Ï≤≈πF®\‚¨5cûr\‚W≥™»â¢:\Ê\Ê\n\“\”Fr\√PM¨¶j\‚K\ÂH±Æ(\Ïíz*-®\Ôõ-öE\Ï˚¥\Í\Ó)∑Å\Ï€ñÙ2Ù˙s\›&;^ÄØmV¯{ÄnÚõ–ãwlY\»s\'Kˆ∂M\ËÙ˛eZøktUπfgy’Øù\œeÒﬁßJ5m%∫çYûâè\'\÷∞ÛO\Êk˜Ö•!ml∑I\r*\ ÕäØ†•è/^ÜÆNæc\€\Á\È@Ù\¬bk\∆]UûÚs\Œ\ÂÇ’£∞åXÙ\"+äÆa≥ñ# µ\Ë\Ëô,\Â\∆^ø1\Á\ÕJuï{\Îb˘pßrLÙmYVßõ€´*\„\Ÿı\‰ΩOìÄ™¥≥4SuQ\ÀØ£eñÙn>ûD\ƒ◊Ñ!ˇ\05Œ≥RŒúÛonª)\œ\Í\Ó}UΩluÆ¶\Â\\Ú\«\ÀnP\¬\’v÷ôü°ŒÄ4Qyg=¨0!]ŒôïehôhÚ£ç\∆˛6Û\Ë\Ï¥Û\ \ \Ê(iV®™⁄ã+∞ÉKc´\\W\"bk\Ã[U∏\‡Lsìu\\˚_µÒÙÛ\–gPª\Ê_\Ê¥R\Íî\⁄\Õ\’u®2í•—öÛl\ﬁmù=Lo}\Zº\Ó-ñÛ\Ë·èµÖπ©\◊Kã\⁄oÙ∏”≤∂i\Ë¸∑\Â/U©\ÂØ=fùïùM\Í#g3hßo\\˙ =x&&ºsô¸Œ≤ä©•õ\Ÿ˙|}ï\∆wqI%ä_àV\œ\\w\Èõz\Zπ\Á\“T_\ÌYµºUØmö\ƒ&\’<∫G.Sù’Ω˘˘\ÊúUöv1∂q3êıf^Z\ÌéäØ^¸\›\'0u¸˚·µôõÑ›•ú\Íˆ\’DY\œ\”\Èç\¬\'Ÿíbk\∆\›LpV)µçø\›Qé∂\Õy@∂˘≠åÕö\Œ\“\ƒ\Î÷ÆÆj\‹\«\€∆´U∂zs\—\Îé˛mjz≥:\Ã;\Ô;rU\Œ\Î\«cK+:ø/s#û˝P\«s\‹/ûW\”y\“\Í´=^s\–fE7\—-\”á•õ•”û\‘\ƒ˚9ìoéÆ\Œ8\»Ù\nig•3i7T\Ÿ)Ya9€û[n	ΩïÎû≥œùúml\ﬁ5±u˜\œøCÉ\ÈÚoha\Ì\ÁJO\„}g\Ì©€á4j+çÛR\⁄<∫£ØÅø\ ùÇî\“À§H7ô\È0\\gZ´+∆≠&A˙r⁄êˆdòöÒq\≈¸∑GS§,H\0a~kç\\\Î\Z\›\ﬁe\«W\—yÙ∑W^\ÈÖ\\ßY{ºãF≥n\È\"\ƒ\Í][∞˚\ﬁ=y˙iè∑Å£ù—ª\Â\«7Ûz∑û\‚A∞òUf,ggäƒ∫\\áSsØ-≤\'Ÿíbk¬ΩùßÁªíÄIÑyØJoCO3\Zb	ÑR6.≥\\∫Z\Èº\◊w\…\›\Ó\\\€{\ÓZ¢¶\Ã\’ﬂ∫k\Œ\Ÿoz.ñÆ.ö\ŒGõ\∆=,¶\ﬁ/A\»@´+4ë°ì≠ú^5î\⁄\Ãv\Á∑1>\Ã^S/S\œv\ÊIûC£éÄ\"\Õ,\‹iÄ+YUZ\‘\Èe‘ãi\÷^]\Â˜à±•ƒòb°;÷ªü\\k\Ë7W\Â=\Ìbº\›lπy\◊Ûå\∆\◊Y\Œf1*ê2õòQßü~q´cY∂v\Áø1>\Ã^	µ\€\‡\⁄/\'Z&\È(/¶˘Ö\”\“\Õ∆òî´≤®\Í\‚\Ã}|Mπ∫8h^WdNWh™\Èª$G%\Ê:£ÜK\Óiôg§∫ñ\Õ|\r\‰*\Â\\\Ê\ÕWy«°^ÙP\÷kV3º∏∑ë16¯û\Áû3\“ ≠N≤D\ êLDfi\ÊgLLL≥Y0dX•\€\È∞duùj◊ñ©≠JSsU\ZQy\‰ı´ﬁÆB⁄¥^yT\Ì-s\¬,≤	hcK,ÚÇ\Ì®\Á<ë\’Xz≥éÒ–≤ª5\"}‹ââØ,ß£OÇ≠O\'\Í[∞âö\"@\0å\Õ<\ŒuâÇ&¬æ\‘2öEÆΩ{\Ó´oA7\«=ô∏\œ8\ƒ\‹ƒ∏øí5§`†ë\"cµx™\◊N®\Ó≥=\ƒ\€\Áœ™mß\‘\ŸM\‹˙\œk5∏‹áªë15ô}Òπg\Á\Íz\Ê*ØüVJ≠	âàE¯ó8\—#?¶ñóã0≠°ú\Ìn≤\'}°G\œ?A0s\Â\∆&¶n\Â≥™ó™\Á\»\0r/\\ıM¶\Á1U\‘bz{\”g2B˛∏Ù¿zLM®8ãº©\‰=Çªœä\ﬂ\œ;—Ø)\ﬁ{{¥sDbn\∆Fö˜\…\Ê\‚¨\ÔW7¨·Ç£∂nV ≤\ﬂ\ÁH\Â|\ÌNq©WQ\Õ\ﬂJ]\√4\Õ|π[<MÄ\œm.[å7\œY∞Úò\Œ\Àt3\œx-.ﬂ£ü°\’	â2\ÿcãV\Ãﬁì¨M5Me3∑1\”]πŒ°¸\ÈπVO1m¨3E9∂-¯;X\Ã\›¡∆≥r˜R◊´ûå_>¿\∆ÀåÚ\›ƒà°ª˘Æ}\Z≥ZZ≠Mfˆ\ÂS¢≠Ò9Ω(\¬S\Zó©vsê\ﬁsù9zÄ=bkÇLê\Â<2_E\√µ]ºk7Ωy\Œ\≈\ÿ#}ıiØXC;[ã2ﬁñiÙÅõ£fieºu´\'3vLM	\œ5\ÈL\ÿ\–\0\0¢\Á\Ã\ÎÙòl™\◊^[\‡lLMrra\—\»tÿÆ≤Üg°°ö\ﬂÛ\◊r\Î∏W\ﬁ7\‘D≠t4	R\‰\nŒâfa¶©n≈ò\Ê∑+ö=Œ™≥w6U=Û\Í\Á\⁄6)\√O\»\Ëë\rß\√\“8XL\–\«n[\“\ZÑ\ƒ\€Qdı\«`/Uµk Múek°ù!≠ó°\ÀoÄ‹ÄG=FJ:£\'Dt%s0PDÇ\0Ç@Q\◊\'$ñ\«Sõé\’\rÔû∞_ˇ\ƒ\02\0\0\0\0\0 123!\"#045ACP$@%DEpˇ\⁄\0\0\0\÷yF¢1ñ?ÙRQ˘´´\ZîOà\œ©´ ≠™®*Hg\n~\Î\Íbêeéæ´\“D|Fp_4äñ®\'ßıÛH©*¶*\ÍèKN\\B£+®©´dú˝|\“*j∞û\‚J©kΩ@QO\Íi\‡´\›Qq)ßkJj~,∑ñ¥˜©+7ç¯âo\“÷î≥®¯å≤™*\›˜í∏˜©kwdóàò\‘BDQI˚\‹ı§3SVîì˛N\'\‚\‚ﬂ∑TÙ‚ü†©˝\ÿ\ÌpK˙9˙n#˚\r˝7\ÏÙq\÷=7¶:v„ü∑µΩ<_±{ˇ\0â\·Ò\÷)R\…∑°\·›ºˆ\Í\Ó˚\nÛN∆ñ¢¶zv1\„<;ı\Ô˚\Í‡Ωü˝\ﬁ\€W˚µ\'\Ó\ÍO\ﬂY\Á´ê8\«‰öç¶\nòZx$§éZW\·éc\ÈA\È∆ì¥`1Öm3UG<[\–S≈≥- \”\≈˛4ÅR”ç4|sˆˆ\·\‰q\…J%Ia¯\ÁÇö:h¢Ü8,l—∑\rpzZ¶\Z:v•Üñô†8®vj$\·˜öüáåS43zVı´áS<\ÕIF4\Íj¶•¢\n:Vé©=3=d¸?9°\·\√G˝ô¢	Åö\Õ\»t4\∆B\Ã-¯¢Ü8\Ìæ4ß)\≈¸p É®ã^Q$\Ô˛ûíb\Zh\‚i¿jdìÖPSHJıíSçDpRTî|\nN.ó£Ù\Ï®\Î¸e5$ì\«¡/˛¢Z_¸u1p\Ìô6üÖP˛ázéu\√\\û\ZhûnOƒ©⁄ûÉs¸e,¥M√£\ﬁ\·T|B\È∏+\ﬂ˝K\≈>-fk\"à	Yì3mL\Ã\Àl2a[@\‰\Ã\Õˇ\0\‚evWevWevWY2ª,ôd\À&Y2∫∫ª,ô]]]ñLÆ\À&Weì+≤…ñL≤euí∫ª+´≤ª,ô]ï\Ÿ]ñL≤eì,ôd\À&We~Y;◊ø%\÷\Áæj\È˙C\›}7·æó\“¸ô,ôn-\«YíÃêæmggéO±]¿è‰çúPñîD˚úíy9\ÏΩ\…b\ÀXØì(\Âì,ô1≤\ÃU˘û@dı∞≤ı±Ø[\Zàâ]d\ÀqñDæN±X≤≥+hnÅ¨\À∂\Ó+ÿòK\Â \‰\›∫¢ÚÚIﬂ´Ù˜Y≤…ï\€Xª±π3[n1còD+>q¶{£1uÃ∑\Âï:Öë\n)n.ÒM0ºnôõwç\ÂN.\ G˘d“Üî^^I;˘l±e∂\À\‚\Í<ØHY*ˆß¯\‘\»\‚\ÕW+±fâôó`]Ôãí\Ÿe¥[b∞≤i%5\Ê(+£$2±,ñN≤t\‰\Í6’º∫J>Òæ/¸\Ÿ¯õíN˛{≤…ìõX\rùR¿üw\ŒUû\ƒ\¬\Ã\’\‚á\›;‹æ,≥YØõ≠πlHΩ9≠ìO\'çáÇ¥I5üôº∫qäç\Ó2⁄É\œ\…\'z∫Õñ\‚\Õ\÷DΩı\≈…†ÑÚ( ≤o¢!N∞»¥!ª=;[\”0∂\"Üô *\÷\Êx\≈\—\”#â\Ÿ\È\ÍJ\'å\ƒ«ëº∫roÅ™Q˚˘%ìÁõØt¿NöMß`O}!Ç\ÎáΩ≈ùqvû9Öﬂªò£»ô≠¯\»XïM=ï\Âô´\Î˝\⁄r6ˆàÆ\‘˛NBà∑X§X±ñJ\\\–F\œ2~ê˜\'˚*N6ëm\…äg7\Áf)@S‘≤\ﬂ42\ k˛Bº\Îx\≈5H¶1tˆvñ¶\∆h\nô>bòôvá›†¸dßÚrIﬂ©öC\ÕAn\Õf∂∞wHX\«ï\'\Ì\0`\Zπ\'uº\ÃLSíÙíõd Ãü•1\„>LÆ\⁄1∫*AN∆Üv%@x ü\›I\‚0õ4\»˚¥ëQΩÀíN˝f;®É2am]C÷æTØaâ∑f\—\…å\À|â4\Z¶£`_¡\Ÿ;µˇ\0ì¯U¢ˆM*bmdÄdD\“SO£#i˝\∆LP¢/}h=•\‰)>\∆&\“b≥7ª\√\»\ÈèmÉ\Ï2\Ï©?å!Ä#ïô\Ó\Í:k®`Q\¬!•˛W$\›\€@û(\’t‹°bäè”ßåîî.àfç4å˙O\“OÇÇl\Ÿvì\0í8àSîçˇ\0#íQ˘\‡K\‰(ÆOK\≈b∞X,V*§Æá\ÿe{_l§B-$\ŒH\È∞\‰4†\rÑ∂\¬hlƒúYr/N*™îJ*C1é¨1*YwcOÓ•§F@ÚH˜Nÿ®O66á\’Iík±Ryy$Ú)Dì{7+Ùú™¥æ∏\Â\‚\ŒD¿\"8±YÇî^ûMdç§`\Îm\…4~îæ\“*Sxg‘ôâ™(\›7rg\€;\ﬁMÆíy\È<ºíyAf\ÃU6\";Ç∑nä\‹∫+pTÚ∂\Õ3|T\¬RI\"ù7N\Èfè6\n¨NH&S¸d¶S#∫j#Õã\·WR´Ü\≈\Á≤ñÑ7h$¥\⁄]&ÛRyy\ﬁI\"4dm[hÿ≠±X\n¿V∏É3S\≈\Ÿ\»ËΩÇ\"πÆ!\ŸO>MK\—T¯\È˙UiM÷µ¨SΩ\‡™°\·•xµ¨ó\'≥i\'¥ÒñBèÆï>jO/!y]Qè\‡™\‡Å˛:≤N•\Ïq\⁄q|Ü@cihJÙí\Ì≤ù\ÓYm\»¯õzt\¬’Éx†=\‘}º7øJ©Ò`I<î\«bG\◊JØ%\'ìí_\"Ñqèù˙I\ﬂ\ÔCÊ§£!é2∫u\"®år`òòôIö)ŒïC8ì0\Ô-¶QN./4l•2î(lﬂß\rÚ:û•ô5\›˘\ _ª]*˚\È<úì˘\‹€ß5EAë\ÓK≈ØÒ<{2øCS˚©bqCgYLæ\“L•ßfﬁÖø\…¥sâmûb≤h\Íf©å\"†©lI$B\«\‰>î•p>∫U˜Ry9\'ÛA\Â\Áí)\"òi‰î£\Î§Û\Ì¶ÇIó•≥K\‚≤o\‚(r\‹3´∂èd[	\‡\Õ;%É¨mÜ*X∂\‚\Á?\"¶{ı“Ø≠ìío\‘R˘?Ù∫Aˆ\‘\È\’Q¸Zoh\„l@û\Õ6\€¿	°gü”ÇêGqH˜õO\‘U?K\À\"¶ìv.SÚ!¯\ Z\÷*>˛IºÙæ_¿\Ë;¥á\Í©_¬ì&y7\ræ\Â9J\—\»#∏ˆÇOm\Â\ÀN≤*πp\nH∞\ÈG\ŸB\Ó/íÕñM¨ù\ÍD\ﬁ\„•gm$˛z_/%˘?Ä\Ó“¶\∆\nõ/Q\r¶öCQñQ\„µ(õO§≈åQ∂!9cx±˚jYZ1Ñ¢M)|\√.\‘˛±\‘\r#´6è‹è§/“≥≤Ö˛\ŒJè=4cª¥+hV–≠°[B∂Öm\n\⁄dÒ5£\Ó”¢ Ml§£¢-5ˆg\ÍM0íıƒ¶B\"*hûaår\›6©à\◊\nıÑ©zèÿ¢\Ãm\Ît\Õü<ô˝˙U=\’X?$˛h|øÜ>\Ói~öûr!¨)0£MI\ZŸÅì\Ï)\‚S\‘\√+5âQ|¶R>Ö‹òîeˆ\Ë\‚◊èªío ˚vÛ∫èªöΩ\ÓQá#êäy\≈<≤:6wñ≤:Ñ\‘\“\€\“zAdÙÄ¶¶èz·î™°\’(m\∆\›\r¥>∫f±˜rH\ﬂc™wº|\Ó£\Ó\Ê/ùIˆ±Ikö≥ß1\ﬁæ*år:ü.íøæíBﬁëîpÄ!e\—\…Y]∏zh‹íDm)? êø†\Ó\Â7\ƒi\”Ù\›ô\Í∂c[Q¶fd~ÛÙ–∫Ú3]30\ÍMt}t>±ˆh‹ü\›\ƒ cå¢!&6\Ê~Å\ﬂ\ÀW\·äAsnç˙≠≥G\Âod\«}H\Ï§Î§äck\«\›\»d\√&a \ ?Fìù\‚+¸\÷N≥Y2\‹\Ï\ÌZ√π7]ˆ¥2\ƒ#\Î°ı\Ê˜^˙¶°Ò™üåîRëI\»b\«!PÇ¨Ç¶&Ç∏X\€C&\≈¯0(Ñ04£≥4k#í¢&Ø˙ù*Íè¶í7∑\·ìY96\ﬁL™â∑8wõì˚”™\ÍHÛß\È\ﬁ*¡wqkê&vvÊù≤Üô\„\€¯ØeRˆóqn-\∆F˜ó\‰\À\'Ur{	5Æ⁄ì[ö˛4¶\⁄≈ïPé\Áf\›\‰.ì\ƒ\“\‹F:Äx\Á•x™\„ëOı\«TT7¢5\È\ÍEoT¬£≠åì;ï\«ÉT	\Í\„∂\„\ zøë∫YïPI≤6\ŸtÒ\Z±≤{ß+,\Ÿd‹åH`G≠ëE¢N\ﬂR™ÚPwÚL,oµ$hkrÑçWHI¿¢6êg•éTT\’‘±îPß¨Öàeå\⁄Jhç<\–(\ÎìLãhë¥}ZHÜV\≈\Êko1K∫\Àuñ\Î-\÷[âÒ$@*\ ƒõ;\∆…çñLç\Ÿ]ï\’E≠é\Íß\…\√¸úÉΩô8äíçñÙ©û3QH\‡ÒõÆ\◊jxÉvZ\'\‘B¢´å‘êÑ¨Ù\“\¬\„Z‚¶™à\‡èµ\ﬁ\ÃQìÒ*âÚäG\ƒ#¸ùî1[Lm\n\Ÿ≤+dUL,¢Å∞\ÿeS\€\√c\∆_\√-$R*Æ</U\\8ãìzı\Î$%Kõ®£RA≠öàP÷∏¶ûûET\Ìvõ]<ª‘¨MlÜ\‹:_ïQ∂\€\ŒJ\…˘\ÊÚES\Â†Ú~/‚¶û\»å¿˘]Æÿê+Ñà\Ë\‚$¸<S\–/Dj\nmß\⁄\ÈcAN\0ıy[ß<ùA¨<˝\”\ÈS\Â†\Ô¸f\ÍhnΩ¡‚ùãòÅâ\\Åô,gVû◊ùe:›ïoö˜\À6Y≤…ï˘G\ﬁ^w\ÈM\ÓzT˘(;ˇ\0=µ8Ñ\—\∆@¢ù\≈	â7)Fò\Ì\ÕfX\n\Ÿ\È¡zaOLΩ2Ù\‰∂$[3\·2\∆e˜,•Yö\›%ºé\\öúq\r*ºî¸óWW\‰>K]M\n≤Ñ\›€ó™&\€v\Èˇ\0K\Ÿ{,[í©æTg\‰ˇ\ƒ\0 \0\0\0\0\0\0\0\0\0\0\0 !01Apˇ\⁄\0?ˇ\0\·\œÀüØÆ~\Í‰∞¥Öï\Õ+Xj\’tıhU\ \‡¢y<ûO8tâ+˘êÙ»°RT≠W£\—\Íö¬ß¸fDb:*ïv∫\'ó~H¿ä\«>≠ûÖ3£yB\√\ƒEh˛©æ\ƒw\Ës*V©\‚8Ü$N$jQ\"%qYxY\È\€Úx<ç§*b©Z\⁄G+ß£–æ\≈\Z\ÊªYTô\‹!Wköï¨¨D\·\‰ÛéûéçäGi\⁄\"±&\"L\ÌDï°\ﬂ\·b,D∞\ÌêáÑ-\ƒD\Ìé˙vêáòΩ!\»˘Ô¥©£ñë\‡\‡âe	\È“®€®°a\ÌKJ\÷U∫{Bó\Â\€\È”∂ˇ\0!e~nˇ\0ˇ\ƒ\0 \0\0\0\0\0\0\0\0\0\0 !10pˇ\⁄\0?ˇ\0≤\À,≤\—eñYe¢—±eñãEñYeôl∑-≤ÿ¨∂Yl¶{=â≤\Ÿeñ[7eâòπ\\∏\∆5èC¶h6W)\∆°\"°âeó6X≤=3,\n\Á¢ÖÄ∞(n\„¸(®±ãå\n2\»nÇîÑåŸéB\‚è&.|E	õ\ró©E`,£#qdgœè\Ë°åT8\ƒH¢Öå1\√Àú>ä\‚ä8Fz&8Àá8\n1\Â≤\≈6nlll/¶}YÄ£rjT(j˚Òä,QB\ÂN¶É«èÆ\\®≤ÕÑÑªq\„˙(_9ÀÑçMJõ/á>?¢åG\∆RÖ±v\·û?¢å∏£RÑ\'1\Ô(gåQÑ5î#\"Ñ•.|säñ∫]—©Ejjaè\Ë•~.1\È#Q\„¯YeÛsàπPˇ\0˘c?ˇ\ƒ\08\0\0\0\0\0\0 !1\"02AQaqÅB#3@RrsëP°±¡Sbpˇ\⁄\0\0\0?µ\’\“\‘◊∑•\¬G¯\–=nœ¶Î∑Éä\ﬁT\Ÿh˘ú–™xß§yUmî±Æ\Z •Q˙\\z˝åä^oföˆÙî*]Ωú-\„∂2)yú\’˝üf/¶>Ø+}†\Ô\Ëã\Ël•ÙºŒ®Tf^à’ª{5Ω∑>g4vñ\¬4@ˇ\0n[F&˘D\Ï\€6Úò˙¶%\ZΩ7rp=ë}îæóôUùr4⁄∑bU~\›SCd.ÛûIœßFj4¡dßç\◊yóOJ4vj;\◊7®\Ã\0ùJ•=\›V˝*≠\Z{9}F(–≠KwP	ã\⁄;1{ös\œ$˙of\Ó´5j4∂z;\◊7´\¬4™S4\Íå\·>Ö:\‹\›K\€q—òTmn(R\ﬁ\‘\Z˙#Bµ-\›Xûn\≈˙¬≠Ïø¶\œNJø≤˛ü=7Ñß\ﬁ\ÈÑ\ﬂrô˚ÅW˝\ná\Ëjè\ÃU3Kh¶p™ó™5\ÂŒúìøPR\"≠\‚ÒÖ√Æ\Á˛ì\r°çgÇ’∂<=\œí°ïP˝ES˜?Ú∂ˇ\0\÷S=\ \€?qW˝“™çùÃ¢\∆&\ÏíQºv\ÔX[w\ÍM˝ª+˛\Íˇ\0è5¥~m·ï≤]\÷3ˆ[_∞≤ó\ÌïRñ\ŒYOw\‘\Î≤J§*‘æ\Îö\ƒsh¥º˝ëüt\ÍD\≈\‰\⁄\ÃëWj\ÌU\ﬁ¡\rù¸M\Ì\€]SKÚ†∆àh\—DN•1xBe9\ÈùNK√å\Êæ\√i©Iá\ÈW\'ºî\Ô\‘[˝\’AJ:QŸön∂!6û∑D#∏\⁄IßVÑ\·%”õâÓã®\ÌŒßCªUgˆnw¯Gu¥‘ßL\Át*ÅÆ<kt¬™˚\ƒ\Ô¢˙uúLñ\'U£]ÙK∫°oõQ\‰\∆s\›U´xù\Èî6´\∆n›ã+=ïüI\◊\»\…9◊ã\Í?WkQ™\Í/:\«tj∫•Gj\Á*ï\Ôk¥\ﬁ\Ã6!\Z‘´>ãŒ∞õ[z˜;Ω\Óˇ\0äπQ∑ö£\r\ÁPa*\0Å\À;∂Ü\ŒgÒFjk2\„¸X˜Tåü+\ﬂ˙tà\⁄6«íA<#\—oj\Ì•µNpìUr_ˆîÚê©m5+Ω\∆:{*Üæ\‘˙u≤`tB™\⁄ŒΩw•ﬁã~\„y\‚u˜B≥∂™¢©ÆJ≠\‹\ﬂ|ˇ\0*vçº∂ø£Ú	\’\Íf\ÊJmzõMP˜\Ê#≤\⁄Cµ\ﬁà;;?.H7h¶\∆UoPp[C®\“›¥ˇ\0µGÙ¯G˚\ lßXdem\\hÁªΩ\·\Zc´8˛So∫*ù\÷—∫\Îºa6ÛC´w≤IU©\rd¶≤´ÆTfEßU¥ù&ß¯ôu6ì\‰ÖíÄ∏ò\”\ÓvP\0\nı\∆\ﬁÛ Ø\\m\Ô0≤Ø\\m\Ôeêˇ\0\‚:≠qjµ≥_\√\Î\ \’kè[uZ≠V∂jµ≥[u≥_¿jµ≥Ωπ ë)\¬\ÕuMZ≠V®â\ÌÑru\Ê\Ê\‡µ]\◊u‘µ¡™◊êÂùçi¡ÒÑr\ \·\\Jap±p\‰|.!g\\\r≥7)6h∏\ÂE‚∫πÜÃäi≤l¯\¬9E{Õóû\Îç}éä\\mõ3Z-,\…\À\'Æ!+\¬\·\Õh¥\ƒmnå#îlè\n|\"lΩ\·qYy™p\ÈÉE\”fJßí\’6ül#ï¢òSá\Í∂VVB\…q9p7\ÂKä\—iãE\√dïyºÜ\‡üL\"\›-\“\Ÿr\»Z;(^ò§Û3Y+Ωè!ºê≥Z[6z#ñCäˇ\0µ\¬TG\"V´ WJ\»-JÕã<ñ∂µq¬ñïò\¬\ﬁH\≈\'E\nqÙNuóG|Yï\r\‚]+ç»õ“∫T]Nd`\È\\&\Ê\n\ÎÇ,ÛÉ\ \Œ\∆\€>1°@\ƒ)59OÑ]Éà®cWî\›\ƒõ\œw“ßäZõx`p\¬-éCù\·îP`ÓÖôÆ/:Æ\¬Ûd≠∫\È§&æ\Íä‘∫WñcH\Ó\"T∂ﬂå!u.¢§π_%jWQZ≠V•jÆqWº-T0&=\ÁP∏¢\ƒıü]nY=CÑ:\ﬁ˘Y\…N∫HP\Ï\„∫ﬁµzãdpï≈•î˝îÑ06€´\„≤(Òà¢lè(õäó¨êB\„˙∞AEé\Í\n\Áaô¥ß\”=”©ä\Èˆ¡)¶£≈íömnå!jµS\Áî\ÿr\\X>l›ª™…±éÛíqÚl\÷\œt\«¯(TM8	D\⁄kp|aD-ãE¢\—h∫VãN¯∂}7yeˆ´Æ\ÍF¡\ÓàP∞¶πT\·\·8x¡q∏@\ÿ\‹B(ûCÇèÕ±\Á$[\„0ß Ö-\ÏÆ?™∆≥\Â^˙JâZ\Ÿ\ÏÉ\"3\·<[I\¬[c}|a…öj.Ø\nı\Ìx≤ü∫Ω›™Õá˝)\ﬂ\Õ\‡\"˜u.\È≤ê°«à.§Z\œ\Â9à˚\'õ!ô©v•Jm°|ar7t˚ oJú\ÿ\ŸL˙†\œ\ÃU\Ê\ni∫=SVo∞ˆï\‰M\Â\“3ÚÄl≠BôN7ª\'ê∏≈û…∂ÖÒÖ®rn^K\≈÷å\‹\‹T\‘r\·rˆWø(∞æ`í∏Ö\Â‘µˆYæ™Z\ÿ\Â\»mÑ&\⁄\∆ÚÕÆ>-Ñ\Êw94\"Å gö\—8I∫\—5Ä≥\√H^\…ı/ê\'\\B¿õh_G(\‡{O|\⁄}\”\0x3ö˙Q\»fÄ\›\Ë\Ó\ s∑nÃØªzuO6dw*N¶ É\’=ãL-≤S-\„\Á^oPWjèI]JCKZ>UÒõ|x\\%SMé?Ñ\‹\—6IW›•µ™yâ_v¢ €™∑\–\⁄zafV•jWu\›w]\◊u\›jp\Ê–∫B-N¶{Y \›(8ã–≥i	¢æ\n\„<+ äˇ\0\⁄4\\n\»(oe“æ\Ïß\‘vHª•øÚß\È\¬-è[C;©ÔÖ®~;±\‰fT3/U\ƒıô]ó“µ.˘(º2\\U\nyÌÅ∂∑\÷\€—à)Cêy\rb\⁄∞j≤ó,°©†f\‰\Â˜ã:ÖIyZï-ôT\ÿ5}*/\ﬁwÖÎ≠ì`µû¸ë`¸èÑW\ﬁ÷∫ä ã]S[\·fÚ¥\¬-oø\'IQ°ãy\'>ù\‰·Ç∫\Ë!\Œ∑\›@W\„à!{O*G9\»\ÔÄ`<\—k}–≤1IP3E™\ZaC±»≥KzÖå\0\Ã\r¥¢y¢\÷˚°dÖ\∆=\◊-W\€∆∏\≈“§Aï√ò\‰Ëãº+\Óv™X\ÈÑ\À\„D06\”¯\ÓÜvjè∑ \»_f\ÈoÖv†∫\Â?\ÌgòÛ\»xÙPÓ†∏jî˚C\Ÿt≠,i¥p¡•øE∞£¬á/*Y\ƒ\ﬂ\në®\ﬁ\ ˆÚ\Ë_~\Â\√VW\⁄2ÚœÑ©\Õ\Ì/\·q≤E\«}\Ï\—if∂\Ê1\‰h[öã≥\›}ùiQUãÖ\ ÛT©S]\Â\\º\‘\Z\Î\"Ú\…¡f\’4ü-¢´nïëïõ°ù≠ãC\"¥(\‰VÖhVÖtï\–Vt\ \Ër\—\ÀB¥*\\ñ;Nï¢\–)¶nï[x+\‘\œ¬êßÕ§\'\—x˘R¬ø3Ttï\ƒﬂï4ù!EJi¡∫\⁄*	µæ»¢yR¥Z`\ÓÜe\ \Í+Râû‹¨\ƒz´\‘!f\…S∫+Óú¢ùçZΩVp®{nª\»_f˚\ÕQVô_J.d^¥≤8õk© ª\Áì*y\0ZQ\Ê^môF)o†Ö§.¢∫óR\'Y]!t©G$0Û!KlÉè<¬öekfãE“∫T∆øÇ\'¸\»\‚ñ\‰T<|\‚\—tÆõzóR\Í]Jf\›J\È]+•@n∏O∑>\n\…u,Ò\‰	¢\—iÑú?ˇ\ƒ\0+\0\0\0\0\0!1AQa qÅë°0±¡\—@PÒ\·pˇ\⁄\0\0\0?!\ÊÙ\Ë\Õéˇ\0\·_ûló\Õ¸?\Í∞%ˇ\0ôCÉ\„®G±&üâfCSiòú⁄æ\„+Üé\„\Î\’QÉ±±ùÅ\‹\\Ûiñ(\‹\€d\◊\‡@\Á\◊|%`\«z?B“∂3¶@TûZ}J\Z∂∫möñS¡π¸π\”\⁄ITu\‹¯Ñ;f-\ﬁ\'~∑ô|πΩÆ\‡V}\“∏Æ˝dÚ≥~®æÛCæ+8â¢`\0∏\”k6±!©Ö≤iã1\‹\≈˚ã°(ªr\Ê\»\«:\◊r\Ï\Ô—ü‹âRKŒà`•Ü\ÏOÛ˛◊∏Û˜\€ÙJF’™eª\’Cíc\’ë\‘m¡/\‰\√L\ÁPPΩO˙O1T•l˙®˚Ö\ ˝\"£ÒÜ]ÆJ\÷eÙzL©Ø˛‹ÄLóõπq¡\ÿ.Ùß\√\„ˆòèÆiöZV<kÄód\"dã ∞BÅíµ1VKÄ\Ï=\ƒfﬁ™ô\Ë\rù∆°/˚\ÃA°)ñ∂ ¶\∆UB&ÿã3˛ î\Œ(Kccd\ ÒA™ÇÒ±jc0ıª\Ÿ∂\'πjlX†\Ï\né#Ú\»I¥í¸Û\ÍIKlf˚#xüıciCwÇÒ\«{˘\√2¨Q\\¿≈é¨g\Ô\Á`n\Î¿¥HÆÉK\Í\Zó†ksπ#˜ÑëLÚ˜?\"\‡¶iÜCÉ\„fmC \r_\„\0àvˇ\0\‚‹∏$æÑì\‹_å%)CX\ƒ5,´\‚¡ç¯:ˇ\0\‘=\Œ.¡3\ÕC¥h≠˙%\—`â\Ó\ÿyÿ≥\\ï∆ÖF\‡à\“0ó®i_≥T¡J/\Ã>≠C¢πbãˇ\0®goå.\‚a≤:;êØe¢)∂Q@Ò\Ïj\0üà“Ñj\rå¡›ò©∑aYcQ\Z˙.ˇ\0PÜ<H•É•&!\n\05QªG\»0\"á\“UÅ\‡*\ [\–y®˘R˝\⁄\…-®t¸C\›=N\'∫{ß∏ïÚOa=I\ËOdÙ\'≤WÃØô\Óû\…_2æO\‹˜\Ÿ=\”\Ÿ=\”\Ÿ=\”\Ÿ=ì\ÿJ˘îÛ+\Ê{•|üæ\'∫{\'∏û\È\Ó\'∞û\…\Ï\'≤zæ∫S˝•¸R\Ÿ˜3\Âó\‰˛\ÂæR\ﬂ)oî√∑\ÌèR¿ø˛\‡ù/‹µ∑|ør\ﬁYnr˛\‚i\Àˆ\À.\⁄\Ó+\Â˚a~_‹∑\À\∆]ù\À|\À\Î-Û˝ñ˘˛≤\ﬁ≤\ﬂ,∑ñg\À˚ñÚ\À|≤\ﬂ/\Ó[\Â˝\Œ\Ÿ~\‚]ør¶ïû\"=LÚ\Ó:π\Â~c,_‹∑%ˇ\0gbM≥<ÜòÉk˜\⁄˝¡|øs\"ë∂ˇ\0\ƒFˆ\À”ÇQ\‘S©cJX:a\ﬁ\Ã\À4ƒªï;Çb\Â¶c\◊_s\Ã\÷zñ4?1î\œ\Îå7Ñ∂Ø\ﬂ)`IWd.\—R∑@¸†^Xx•<Lxò1\0x´\’:TmÑbUÜ3)H\Ïño\Ê\⁄$äëa¢™N+éòF\¬\n≠¶\‚\‹TÚZÇ´\‹\\´0\∆!\◊O˙\¬Ydº\Â	≠c˚Ö\€0¡\’&Vß©[Å\ÓhK˘ï±ìö\ÁÒ¡ß\‹˙Ü\·ù\ÊGé•\‚\¬0ºŒ¨\Zc∑\√\Ã\Î\ÊhÒ*ÙK˙\‡\«KQå]\‚ñ]!õåS\Ôp\Ã\„\ƒj3ÅQ&^qÚw\ÓAòU›≤¸Xó≠Xg…ÄO°5OU˘ï6M&Ù\\\Ã\¬\‹!\‚b™é€æq\‰5\r\‹z\ŸCˆüWxä\—\«˛!Øª\'∞û\ÿëî7	}\‡Ùã\ÔgSß∏D¶ºuK:	ö\Ã\Ô±N\Â3C-\—á<hv\Ízepm\·\nıQãÒ+=\ƒ4\…\ÊbQ\‚TÆvÇGd®ô#¶\Z\Â˛\"\‚=\«ƒãK;b\∆|9V\ƒ-R\ÔOp\‘\≈Hª®™\Ê[‘†:pµ/Üì)ä\ráq¥æ=î\–Lxï/äí_Ÿá\r¨ß˘Ω¯0A¯\Ì¯8è\Èw\‡w«®kÅ\∆K;ôj!¥v\ÁyÄ˘u-Íß®˛7P@¢nÄ¢LÙQ¿/	n∫\Ã|L\◊ `\œ\Íyò˘F%”é•ì\Ï∏YPõ\‰\Â˝;bQ\ﬂSw\◊òkÖD~P\r	U\◊\0ä+Uä\nQÄ\ƒAX&…æ`∂?µÜ Sy¶\‡Û/øî\œ!*m\'≥#”åM˛P<ªªNı≠¶¨¿ÅáÜ;åœí©Fã\ÁHé\Ís˝f™<]3g\◊òkè?\‡\≈^£Ù4\n%EBóáL/°\¬¯Ü•\ŒÚ\ÍYóãö\À∞\œ˙G4í\‡m\≈Ië¶\‡©¨¿\◊Z£2\ÓØ\›\ É6\"#≥51\‘6	Rw±r\…0ƒ¥\“mç=D:ùEùâü\\\◊C_{ä—®≈±\‹&\ræbF]\¬ÿõ˝	phq?\›¡0fd‡±ã8ÄıY˘á\≈S‹°¢J4}\«`\‚Y\⁄#®å=J\\Å°ßêï3\’b≠¥%jk\\\„Ùä¨~≥-V\„ÖCpGPâbEÙ∞ùC\\lHé¯\ZéX¨\ÌwÒ\—˙ÑÆ/ü\Á\—D,.(	û\Á\Ê4\ﬂ%@(Z\Ã√ø\nıº\‘0ºø|_§´:D9û\ƒ;?D\Ì•Ü)t÷£t}.\›~∏◊Ø$\ƒk\Ó\ZÄM¡w\÷H]Ñˇ\0èÅR;ñ©d\…Oæ(O\\zÜ∏$µ*”ñYÄjbmÀ≤º>\ŸˆÒ¨h\»\Ós	\‚ πê%Øj- \Íb$Q~\‰a˙”Æx\…]∂@oLë\Ì35qP\Â_\–\œ.\"Àö\Ãåæ±C\r˜W\Ÿ¿0A%∞˝3y>d\"å¢¨\∆\√\ \œ\0˛\Ó,]>b[noxu\r|\ÀH\¬5\‹ çp>π\–OU8©0H–ãçC©R≤\ÿÖ\‘\«Aª/\‘)\Ôü\È~\„Dø\‡\Ía\€˝r\0\‡\Ÿ>#\0b)rsOC\◊\‡UhÇ\\«ât˝àï\\©=Û˝úäswòkÜ	∞µπ±\›9\ÿOdˆOw%åvJe\‡(Ù<C¥ò4T\“k˙â\·vÑ\Ôf•k∞Û\n\Á$:\‹…≠y&πÀ®wõÕõñ\'•ı0˛£ë\0\Ï¯ßóU\ÌîBÖ\⁄˝_?\Ÿ\Œ-õ8t\√\\\rFBß°\rNã–ûø—ãíå\Z2¶!Ü\Ó\·5ä\œ\»˜¿lå\√\–\⁄qπâ[=c˜\‡\Zrò[£É\”\œD∂=¢≥\€\·V\ÿ\Óa°¡Øïgé?ªú\0ùC\\nGlV/\‡\Ì|b\Z^\‚\Á\ÊTóp©\·\ÓkÙ\  =\Êfu\√1∫Ô¥®\«&2@;wifGü\”4\">≥\÷Vân¡É»≥\0èí$\Îq˘Ék{ØÉÉb3Æ:¯Ê∑åpkÖPÓº∞æaô¥ıÒ2≤YM\¬∏ß3≠∏\Î6˙ aˇ\0¶\Ê\„\·w$ùpoÜè‘ènæ£´®\”;Zt\›GC6@2?¡°)R∞\Âü‹Ç$¸ñ\rfπûæ% XF<O\Ó\‰g˝|!Æ5a£]\Õc\‚Â´≥,Zò\Ì˙L;©D¨Ö\ƒd˙ë\r\…¸	¢\‹N\Œ˙\√k}\ƒ:R\'TzÜ\Ÿoó,é£:\ƒPi\ËAfWe≈µ†ù2µ6/1ß\›’ñVÅ\ÍÒ©ÑÕø2\Ïè\Ï˘}\‘5√≤Ü˛%q\‹	•ı\nn\0ÜòrZ\–j!\‚_c\Ê\‡OjF\0lç\÷_òßì\ƒ+\…5t}\‚	§¸\Ã\‚!bá\€*\ÿ\◊¡3q¸†€õ\€\‹¥ª∂\‡\·Weîq(ñFÛ¨˛éwyùC\\\Õw˛êúZ∂ûQ˚ó\”¯îi&e\Ê\ﬁ\Í;\’A§\—èD{3ìo_¨Oªäük\ÓaÌöè\‘&\"µ\«\Á\Õv\À-FW\‘\ﬁ\·æo\·|\«x\’À™˜\»Á∫Üπ\ÁOñëæ#0≥Ij°¯à\€\…/6O\‚Q:\‚Ö“•\‹˙aè≠M14±≈≤ôµ\ZãÄı‘´\‡Ó•î∞æ(ú\¬\Á4Åj]C\nÛ\ÈÉ\Ó=ˆA\Œ6∏C}GgùûwP\◊Qaü\Ï«í~eûeèdßôgí˝πè$jŸõ˘}êâb˙Ç±B\›\”3C\Ëaxé\ﬁ\‹Ù˚\ÓÄo\›j%\r\‘wlL˘\Í9ñéäÒ?\“b8@ˆ\“Oz˛•õ\‰‹°\Í0“ó\œÁåù–ºÚD6à\'P\◊\«\Ãˇ\0u3\'˚ìˇ\0°?\Ëg≤=ü¥˜Aˇ\0\Ÿ=ø¥\n≠f\Ó74˜6˙+è\’bäè\Ï%@ª^çK&Ü8\√\√RëS\'(\'˚¡(∞å—∏\…’µÑX⁄ø r«Ñ9õ	.VR•tQò\¬\r;\‹6÷°Jû\‡F\ÌL(äπOSyülq\”\rròpı\≈|]3t T\ﬂ5\n)2úù öπàKu<\Õˇ\0_‘≠U{aóóc\Ï¸\√t¸\ÿˆæV¡ë.ºbáç\"lkx1G\rB\'U*∏ñ\∆\"b\Ì+|,¨π:aÆXÄˆé\”¸\ZF\Ë|®-\Ó>\ÎƒóS|^X!S\÷\'B?ll\ﬂ#∑˜.Eò[_+k˘ç/\r\ `9ó®Ÿê˚∏	ë:hîÇeî∫YCh\Â¯1ÉG\ƒ\Í\Z\·Ç¢Ò≥\«\Z≥g\À\√åç\„≠JódnyÛ,Uòí©r\È¸\\VK∏^%iw	˙8∆úìZø¨C∏Ow\‹ERÅü\ƒ|\≈y\‹˛æi§v^uq\‘5¡$∏Åt{XftwØÖÒ\\h\œ\Ï¯\‚ZΩ!Q m\Õ\\ö2∑®=bQ∏fdˇ\0üTN≥=Ã¨P∫û\«\Ôá \ÌΩ|n°Æ\ZïN\¬/0u\Ï~{&œíJ∂\≈ivt\ƒ\’Õáó\¬X¡.8Û1_á\‘Wp7s,4\À<¿\—\Ãv\ﬁ\·\∆\‹\„ùÛ\…\‘5¿7†%≥1hd˛L\“˙ùM?\»gM¸^\·@\Ïe;p> ûeNCÛ:Tü∏\0Ò	U\Zá\◊®Wê\Íeƒ®i¯\‰Ã∫\‘.Âπ¢_î∑ªõ…£\‚3m)àü\ ®kÇ\'`óUO∏qjo∂¿π∏¿¡\·Ö\Ëè&ü\Zy>;)≥¯¶#ÏÖÇkÅ°π¢*ö>s∑©r\·	\Ó%Ky∫áw.ı5ûè∏h\Âk\…\Ì8\‚ÚN°Æ\Z§\ƒRb#ª\“O\Ã\›∆¨`9fÅÙ7/Cs3ı\…√èΩ\'MlÛ\Ë˝\ Z-°qh=ì\‘\ z\'S)ª\"àï$ˆqW/,ÛÚ8ˇ\0R\rév	)†Œ¶	§\Z\·-G#\\\\\€5\nV˙æh\À7\ÎîeT\ÎR\‰K<}\≈yˇ\0(uó©T~d\"ízüè∏¿l\Ó4.˝A<èSèöäì\“Q\ru.\ÿeC§ªâj@a&måtè|˙ó˜\Ó\\/èD\Ì?i	—öA!\Ô˙Ü∏5\√àÅwÙúW\‰òæ/2üws RnV&\Ë\"˚«ò¿\Ê\Áüzµvôî<K•\Ïâ\ﬁÚ%\rˇ\0,0ı\rÌüà\Â[¶&\Á\œø.1|LÙ8\Í?\ŒXøå£˛9ˇ\0\√\‡\Ï\Ìî\Ìó˙	qTNkÛ¡\ËY7°Äƒù\—XyÖI_$∞\‰\‹gÛ@n\„/?ìè0\◊zû¥QK~#\€Û˜PñT^\÷Â¨≥º\¬)ˆ\Á†l©ë\‰\…X?3e*\’˘f>ë˜≠±\Ï?®\ƒSÎåë`ˇ\0R\r¿q	L!-\rJØñQ\‚Q\‚$*Q\‚3\”)kp≥mîxK0\ ˜ÑÜl≥v_\‹˜F\›+\\\0v©Uñ9\Z\‰9A3ò[ï\·3\√◊Ñ\—}p\ÿyÄo#ÅsÉ˚\'ÚÑŒÅéG\—6Ø\‰O\∆¿\ 1`\‡b\ZâQt?âR0\ÍTvÉ_\‡*πzö\‚†J9ªì\«3¯!:Üø¿ÇÜ*KÒá\‰Ü\‡Ò\04|≤XV\√jé¸&f{\'©”ï7_‹´RÎ∂Ö∑!F\ƒ\«\ÊQ\'\0!Øï\≈pôüâ¡-\ƒ1\∆\…¸–ùC_\·∂ˇ\0x7\Ÿ\≈gX∞Dªøé\√U-W\€\Ót£˚<F\”\Ã%[º´sÉx∑9H&íS\ÃÃ≥\œPa~?πû7\ƒ<iy¸\–\‡\◊._7(G*\ﬂ∏¶ \‚cÚ%\»8≥ÉÛ¿]ü\ÈEm\·ñ%ô8\Ã¸J<\'®\≈˙M´§û⁄É“óÚû8}\ËT≤û\Ó∞y\Árçπ(÷Ç7õw\»˘3\È>ì\È¡π\ÕDñ\n6H^\œ\‚e˚\‡¯!äD}^\Ó\’.WÚ7Û©è°^	oYZ9ªx6*\◊5\«ˇ\⁄\0\0\0\0\0¢Ü<Ò<\„\„O8\‡8Û\œ<Û\ <∞C\¬¿CÄ$\¬!\Õ<Û\œ<É\r0\‚E<\«Û\œÛ\œÛ\œ<Û\»0RKS\œ<Û\œ<Û\œ<Û\œ<Û\œ<p\À,0\«<Û\œ<Û\œ<Û\œ<Û\œ<Û\¬MÜ≤M8!\√ÛÜ˚\·ŒÄO<\“t¥˜<Ûuı∞´\Ô˙¨ñPo˛\∆<`TLÛΩ\Ã’ø&¨µ\ÕÚjÆˇ\0îÛﬂô\‡éÇx˛<Ωÿ†Û¢G˜ˇ\0lO-+l/±¸\√]Û\…ö,\„\‡R¸Ùª\€\\ˇ\0≤T{˜LÒ™i„ØîaOòCo®µ?ˆ∂ØÙ?m\”H1í˚íx\Ô\«æù>™€Æy\Ãd\·?%E/ª\ﬂ\÷¸4<á\Èé{æ\◊¯h”Ω˚æu\Á\œ76>Û\œHco\∆c¥ü\·Kæ\ÁD\ÎO\Z˘Ñz”é\Ï\€IùÇ¿K\€I\Õ\Á\Ó_n\"êy\«\Ô\›ˇ\0\‰†9E}˜\€k[\À`\«\Œ7\À\«nûk]w Ti\œy\‘å\–O\Œg¨∫\∆˘so_QGöw\ﬂOÀäå±ª∫ö0\ﬁ?\Á}\‡j=û\ÎNJÁøøMJ¯#ñ{˚tıF?r_KNXáe_=\√¡¨Úûoj\ﬂ˛˜Q\„Ü˘2\∆\Ë<\÷≈çÚôwyL“¶|ˇ\0\€hπ\À#\"\›;î0¿8\Ê}\ﬂ˜èÛ˜ˆÅÔùï\Ã˜µò_\’{Ω/Ñsp¢˙l%_ºˇ\ƒ\0\0\0\0\0\0\0\0\0\0!1 AQpˇ\⁄\0?ˇ\0\∆\∆’´8\∆\∆\∆\À,±µeè\Œ6|ÜƒãWWV\\).\Ÿeô\ÿÛH\›˙<0\€I†\…\∆À¢V∂l$≥∏4\À\‡π9±n£Ñ\Z\Õ\∆\Ìa\Ïãvp\ÿYÆ¢X\›[\ 	›ßí{-Ëª≥u\"z\‡à\r£¡ñ\œ©o¿\„ \‚ê\∆\Ï\√wπ#\‘?\ﬁ\‘u∂l\÷H∑gú\· \ÿB9´{ï|∑\Ï+)€∂[jÀæ¶õ&|!›Ä¥-\",ì;áSà\ƒ˜Äá\'§r:…ñ\¬o1¿Ò\Ÿ\„£nì\”Cm]Çu:¡∫8ˆÀπ6Lc\…¯\«ë∂ﬁ°ﬁô\'lòXØèrüáªÚ>Mû≤c\„ÇBı\…¿uüá∏≥üe\≈7ª,a\›‘∑	\Ì\…ÏûõﬂÉÚ<∑çºr›â/°víì\»!\‹^,GÆWS”ùº|uX\œVót∫ómZ\¬9¡\Ì\Ê=<∏%\◊9=∫2^e\ÍMg¢Z{g&\'Ø\È\Âû2\ŸxÚ\€`Xªxº_êwxÜ<ã\\zºOñ/√ù∑á˝∞:≤á—∂Zœñ≥ã8V‘±ñÆ^\Ï∫6ñ¸nK`€§ΩX\€mÅ0˙\ÿ%rx˜Ù9w\›,\Ó^≤9Òö¿∂\÷\\z˙]íq	\∆I∂Y#[*\ÿq\Áb\ÌΩG∏˘c\Ê<üì\„\◊?ˇ\ƒ\0\0\0\0\0\0\0\0\0!1 AQapˇ\⁄\0?ˇ\0Åc˚b≈ã±b≈õ˝Øˆ±f\«!õ6,@m9|ÊÖµâ\œ\…K\œn¯Y+õWºz˛€∑e6Qùc\‚[lÌéíw%!pÑF˘!‹≥\ﬁ6Õõ+Únë\œ:¥„Ñç∂l.\·›ó9VHc\ÀQ\∆Bù^(\….ﬁØ[.ì\Ô=ê\Ï&;1û,∑ó\€\Ÿ\ÀÕ∂è¨M∂]m8p\Ëõr=XXX]\Ïª.ú}ñ„ìÑÙµy\rlba∞-Ã≤å˘bZÙÖ˚GI1\ÁaÉê\“\ŸñY~ëô9„π≥€ª’±&{\Í8√ì%\È&Gß/7k±\√\œ?Úy	∂\„fOe\Ó8\€~Güe\„è√Ñºö˚g|uåë¶:[=qº3\◊\Ÿx\„\ƒ˚\Œ\ﬂ\’\‚\\Ú\„≤b!ód∂6^\“gVY\√«¢Ò«û^\0\€S\»wÜ{c/YI{\·Ñ\Ã\ﬁ\»ÛÄ\Á\√Úîêãwãf\0≥É‹û¶N\‡\Ÿ.úª\«\ﬁ^ú\ËJ\€Q\ÍP?náe\÷\À\‘\À\ﬂ\∆n|ópı©ı\¬…ù˛CèS\Á+\«K[\Œ6wl¥@\‡<\„Ω>ΩL£\Ÿ\…ı¡≤d6\À/d˛G∏B{\ŒHór˛ÿ∂\ÿ˜3\€\Œp8\›\·\·`\ﬁ\‰èr\‰Ω^±{!;\‡\ÊT∂^[òv>G©1∂m\Àe/vﬁ∏8\€IyÒà˘\“f\\˜w[GhªKKN{y˚_8<?ìì\Ÿ\‰qˇ\ƒ\0+\0\0\0\0\0\0!1AQaqÅë °±Ò0¡P\—@`\·ˇ\⁄\0\0\0?úÙ£µå\»và¨?%ˇ\0í˙¨ˇ\0._CsèOÛô\Ÿ7\ÿ@+®}Å424™\ÊC\∆?\À[B\Õ\÷˜¢`íù2\‹AãB\”\—\—\·π1ßçù\·Tw_»ÇyÃØxçPQó∫(,-\‘d7C\‹P\…TD 3\"Jp≠†\nö\«#\„;B®u∏Q¬ãud5.¯ë	\"îzQF-\¬ªà∞=ª\n≤z& U°gµ\Í\”\“U!\Ë˘\"ï\◊~É—éfA\—_˘[ˇ\0O∑D•¯7\'∏¯òªöø`¿\€~\Ì\—B!ZZ\"ö\…F,+P.ë\”\"•¥\√\ŒI\ÎHπÒ¶Æ\Ïj\ÎÀê‘ÜÄQ*!°˛©1Y\‰\Ï\À\œ:v€ë(\ÿ\Â\ËÙ\–\‘&E≤\Ó)D5¬Ø¶j–Æ<\Ã\'ñˇ\0,l–Å¥1Çú®\⁄Z\“}!Ñ[è\‰_èO0Jî^î—âhL\‰ëÑIFÚë6RK3nWB†9˙\"úBU•\œy #NT@®J\ÓŸõ+ª\‰\ÿf\Œi <D˘76D\ÔIπ≤úääQ\∆l\‡\'F[Eò\Ó\≈xò¿M@5út\œoe¨es\„\"®cTUµÑ\ƒe%#° çh µp¨â\«˘x¸iÛ\√\ŸzîEi. l•@Å\‡?∏\„p\»\‘†8ˇ\0Cù˘\◊˘ª∏yöj+ì\Óz~\Â¯ç1+®u®Å\Í›èQdò*\Ó$\«¡Ñ+\“\Ô\ÃB\‹ª¨b†84Ø¯Üú\Ãt–´if\Àaòî-\‘SIúhÑ\ÍÆu(πSb§\∆WpM´â[ ™+\„0,¯zIG˜o¸Ff\…Û0<6zCqN)ùÚ0Ø9QÑê\·\◊wo{¿\nóC•sD/êº\ÂÚèãÄ59Ò5¢hßhX&DëS4¬¥\ÌPxBÄ† c]$%DÄ†T• \ŸHLZ£TAôtΩ\Ÿ\·\“°KhΩ\·a\Õ4%©V\–˘ˇ\0\Î\’+Ò¶S˛\Zï*T\Ã\œˇ\0•u©_ä[\'\…?∏%\‹>\…\‚˝ì\ƒ˚ü\ÿO\Ô\Âù\Ôs˚\¬hOaª~Hv3¡˚ÉÒ˚\'â<≤x_d˛Ω?≤%úgãˆOxøs¡û,Ò\'â?∞û4˛\…\·}\œ\\û\'\Ÿ<S\Êx?d˛»òµ˚!ˇ\0VìΩ˜¿˚ùÜ˘1<_îü\–\'ÅˆN\—~H6≤v@æfÖ,\ﬁ\œ\Ó˚¶p\œ\Ï≠ÇQG∏\≈X|©∞à≥%´º\ -Æ\È˝új\“ˆé\Ó@æÒs\\¶˛“ü‹∞Xkvûe˚ûF+\Ásáù\‹O\ÌX±2∫Uˇ\0tÛoàÒ\‘\√ Ö3d\\˝£\ÿ˘ü\Ÿ1.{N1Ü(ƒ≠*\ÂNGû\–\ŸX∂Qi_#)`_tFëÚñÜ\œjXx\≈\ÊΩu\Àø\Íé-ªr©UY\ŒSÅq\Ì√í)§5\Z˜\ÃÒ¶\–\\¡\ÔpMñªò6\’%˙b\”˜,\≈(\Ôà˜\Ï\≈êfòΩ\—\‰Q\'[Ø\≈Ñ\‰Sü∂wS\Ã	\ÿ®UJ\ƒ\Ôó•õ+äf\⁄wK&jÛ-W.\rK€¥qI&\Zãü¥¸c¿˛\ÿjjõí;ºı8±˜+\„·èôq+fπÄ≥&\Z\ŒP\”\ÿ[á\”q®˝Ah\ _íı˙B@£t0jè\ÃAzì‹ö≤¿á™\Èa\◊\ÃP™è`0≠µπ(\·=\¬˝˘ÚÃªù*•˘Eõ=MÙ‘ø¡—≤>X\Ó\Ì3˙6R\ƒœº¨\‚kØr˘º\·AßÆã®Æ\‰{_®\Ë}QﬁÖªûòˇ\0‹•\Ë†;ö\–t,\rÇï#W\∆¡R\€\"ñ+\ne\‹5îc∏©…£JU\Í\ 3\–ÑO∑$j§xÜPi≈ó\ÃÒÜ^˛)Cë@ñ\·\≈\‹~°ê\rOπ¬èqı;ü\‚[ü°-T\Ó\'Ò\—\ﬁy\È~\Ÿ+x\ÏN#1™\¬G~6\'ΩPé£OÆô˛\⁄¯\È˙âr}\œE\Ê;i˜0\≈√©aM8Äå$N\0≥h§æ“∞\‹]`¥1iº¢\–\Î‹ãîG4J^\Ë\Ô(Ñúeeá\¬%Ä^Û6Uãy=JÜg∏£Ö¯ë\‰æFgïêñ≤\ÏAØiÑ\“J®ºY\‡>•;WÃ∑KãäöeKws*\‚i¥=ôÅj\Ê\Áá\‘4˙\Ë°~Sj~\Áw\œMbûòíÆ\')G\‹\”tóú∏Û-Hr	SN\»\ÿB\‚LG†TJ2î\”@e\ÃsâEÄC¥\Œ ôıIÇ\≈8gïP\"∫\r∫âA\‡è\ƒ^\ \ÃJk¢è\Z\n¸M=âπ∏ieπ\Ï\‘:J¡ëé&:πòzß2\‚˚¢ı6%/\Œ	•&:sı4˙\Í°\Õjˆ	c≤Õ®ˆMÜΩAsØiu£\‹a\›Q\‚SuÀπcalqÄvû.°◊ß±V??¡¬ãv2©\\x¸+\\ó\nL\\v	u.˜—ÇK˚ı>©Ò+U5a©zØaõ ¯@õxc¨#ƒºq~ˇ\0Sg©S]B§g‘°még\Ô:ç>∫:%\….©ç≤@|Jè¡uãbK¿Kb\€YHJLíëà8ó\«zõ\—y\0\ÕJﬁí\’lˆ;I«ØQ^I´\Ôπ\◊ıE¬üL\Ê\rE\‰√∞>¢\ S\ƒQl˙ACS∫m\‡ö`ìâ\œLﬂ∞\ﬁ\«‹Ω<\‰Ñ]∂\“hñ\¬FWª\–#\Â]ŸãFq/\Í:Çjã\‡Ω\Z?U∫ç>∫[q!”àà\Z;\À\r`s\r\‚Y°D›ä:~£)\‰#\÷îU\ƒ\œh ªpõAa3ncéá\r¿5‹å°5\◊\≈)Dù»Ñ\¬ hÅñÇTU¥öP\Ï%\‚&|ô°6˛\„˚¨@Û_r\ﬂ\»\≈xöπzß+1\ﬂ\Á\»\Ÿ\¬<\ f’≤_]\÷\Â˜EóK\ÎHLÖ%Uã.T\Â4˙\Îçtkn!\0J\∆\0Pﬂá\È3\‹s\0\ÂìANc†\0\‘KãÄ®¢—Ä<∞ç\Ôj`c`ØL\‡bfÖ[Q*\Zt\"E\¬]\Ì\\\ﬁÃål~·¢à†]UÒ1µÅ\0\rSB˝\À\ÔA(xºT<†2Àò0HP6ï\Ó˙a\‹Ey\ŸQ)´ç≥0LÜ\‚øP˜6F\Ïm\Ëˇ\0Iß\◊M\Œ\‚jˇ\0yg∑ƒ≠27Ñâ©Éî7\‚]œí|ù≥yòGî\Ì!óΩ\ \—©∑Qô8\‘ˆ\ \—0æh7)(ròP£hX¡\Â0ç)\·	rj,ºeß\nJª!ç\‹\÷b\≈H;\ÍéLæä`ôK	w;@É$L[\›2¬•`˘&∂\Œ3COv\ÂG\‘~X´ÜÙym\“Jˆ°u›å\0	\√Só©ß\◊L\…U\√~å._,z\Ã˙P,\Ê}ê\‚˘\√ˇ\0£?Ùcxx\ÂéH≤“äFiñ¡A\ÂAl\"¿\‚\·ˆù\ÿ\Œ\√xX\◊Rˇ\0;yàj\„ñ|\¬\„\·\„É\Ëç\ZÇ\n6´\Ï+D}óñ∫E|\“P\¬Vò`ôJT—ö\÷ ∂\·ë%¯˜îÆ\r)fCz\Ì(†≥\0aô•µùx\Ì.˙|\Ãq†ØY[0—âó2\–g)ß\◊\‡\Ã\nbm¥≠∫d˛\€	\ﬂÀãéº\ ı£D\'∂\ÍÜR˝cd´–õzèRπ“†üÑc,<úÙ~\ÿ\ƒH¨tûy&\“˚•¿h\rMcDi§jdf_\∆wYù\∆k\ƒ:Us/ALòÒ\ZàOª3mÉ2øº\‹À∂¿˚ùiı”ç¶\ÓTêæc™83Q\‰\Ô«â\ﬂS\À˙\Èh\ÂgçÜ\œ\Z∞B˘Å(èQ.\ƒ\“\ “è:Ω\œ\Ê]?â{\Êî¯&¢-‘ätd¥\÷@ı\ÕA8=º¨ä±\ÕÔÖçÜx1\ÂßÉê+(\ÌA5Àîó≠\0¬¢ïπå7Åpå4åa\ŸÃ∑:Ωìç[ï∏Ø\‹\Ë\√OÆõ\‹ç\Ô\0´,Ø\n\Z\ËÖ«£yQ¿ü\‘@≠\⁄˝>äµ\◊•w£î\“jˆ2ºi¥˙ÉNb_ÛQ÷•vÖ¡©ºA¡ç∑àPKJf[VTïà—∫\'çjvÜ£T($E*¿\ƒ3\÷bZ!’ï&√£gxˆS<ìókg\Óe\—\\•\”?ù\—\ iı\—á,\Ÿf\œ~xÒE°\¬œÑØOlcN\Áb¡\Ô3Æ˛cJñºOx\"m	*∂/j˘LJU¡@ñ§xb\»\√\ÏFç0≥\Óc¿‘†\…‘°j\·\‘4ûÚ\÷—∂•§æãî(*e\'µóL£Ç7€äNÅ€°N:˘ù|M>∫\’\‹\Ÿ\Œ\ÂC)èÂ∂ñQM\"Æôf8ï(yT\‰\—\ÃZÑ≈é[L\∆z3\"\Ôa>\«F=RÚ\∆\ÿ]a\Èz\◊\ÕJ£ZÇ®˜6!nfã$c¡T“ë%c•îæ]≥/¸8áYñ™ÄZ¨	\‹\–Oµ\ƒ\÷4!Æãè3¯L\⁄\"|?\n\…7Da2qÒ4˙\Ë˚uõ\‡¿´7S\Íe}2¥å»∫ù°≠òuhöO\‚}\ﬁ#tñu\0e°˜â\Œ\—]a®H\√\r±‹èy≤\≈*LÄc\Ì©[r>¡Dl˝^\ZãúúQ\ qjh\ﬁsπHK°Ä®V\rì¡Æ\Œ\‚æebTÆßoñ•ÛÒïSéØõSön?\∆iı”æu=~rÙ7¨k+\rF$a¯e¥Os\Ó†®&6\0FäÜ!Ö\Ê\Ÿ^ É\0˘cùJ¥°W{TöÄ`<Ö5\⁄~Ä\"˚\·ÇvÇ\nq\«37÷òXß∫\Â∫˛c\Ãoº∂\"òπ[\"ZC\Êø?ì\ÊL.73:o°Æºø\∆iı\—zje\‘s¯$s¿˚\'©áP]\ÓãL¥)]8ÇÒsäÇºK\÷K1cë\∆\‘¡hπqTé£†U\‰GîHVò\rm\Ê—ÖØ–ÇûAç\⁄sÇ|J^s#^eKØ\ÏLÇ\ZÉAÉ7\Á?Ç˙wóôk©FèF\›kø^ˇ\0ß\◊Mi|5\–Jñtæô˙ò\Ô\‰\È@\Ìe`d‹ã(<&aP¡∫N{\√¿\rWò®\»DY¡àj\◊ìF\‚iÑS=\Œ[jE¥,÷Ç<Véb\»\ZRq\ƒDjÆ\ZRãKAªæ$LK\Ï ∂Gí\«\ÂÇa˛f;\◊F\Á\‘˚`ù˙æ¢c•˛3OÆò?L:Öˇ\0ı¡;~\Áã˜æx?s˚πÈÖ∑7π\ƒt\ÈÖMB\\ı&rg0L\‰*\ÌÇE~\∆¬äO.I\ËMz†πò<!\Ê,R¶™Œ´K(§¬ö3CÑ˜û¯2Ú(\ﬁXb\Z2\Á\ËBbÄò\ƒ¬Å;J\ƒY¿G4¸∂OLR¿˚Äg,s;ó~†TûBfî\”\Î•Ût\rC`0\Í\—Ëóö_3\Á§?πùƒΩd$≥òÙ1\”\«0´£6èíX˜`í¶Å7\r\‡®\€|œôSJ\'w \‰K¿r®\‚+d\Ó(ò\Ï\⁄c¥§@y`˜ŒìPí—ù\‡\ÈP\·L	lK•¡mAîzQ…ñ\nî\ Lc;ßˆ¶k8∏\' ˆ\«)£íq˙ö∫Å∫wF\Z}t9e´\ﬁ]ø}*WK¸OÒ0˘ π\ \√W∏yû&~!´∏\ƒbµ\Èıg¥•Üì\‘†GΩÆl\‹\ÁÇ˜ó0ñ\÷˝p¶rK≥:\Ê-snÇ¯H\'\¬f\"î\∆\Ï†Y)Øç\"Yôf\'5^/•\€jv&@pO,\“\Âi\ﬂF\Z}tø}%™\‘9≤q˘˛≥?e\Ëø¡[ò/\Ê¨YÚ2û\…\Ó´º∆±F)\—\Â$˘\Ã√ò\'p_5•{,∏\—c2(âeR@+®e<Æ@]πX\—g*DáU¥$~àíV~\'\Œf∑µã\–ı\”\È\È\œ\‘\”\Î¢7AÃ≥E\ÿ\Ê+9LtØ\»˝f~\√*áwW/\–brH\Á^%cQ\‰ñW≥\¬\Óa\‘-,\ ¯%mkR¶oîR∏\‚Tp \ƒ;çäéKïÍÜë$06A\Ãr4ÅQÅïÚî\Z>ıSéî/Ùâ\◊ıûúΩM>∫<bËÑ∏ôVî±b\Á´% Ñ]_®\œ\‹uøôs\Ì π]€îèé\Ã\ ˆO\œIô[ø\ŸS%n°qæ&r\≈[cUÒ’ò]¿un©Ü\ÎÑ_\nºìÇ\·•\Õ\"\«\«FûºøÛ\”_¶˛3OÆÑWöÉÑùQV≥N\Ã@!\‚y¸n Øc˘]\Ï\Ê}\0®9\≈€ÆÎì•\‘\\>\„w¶ò¥AgÖn7w\Ãn©/sø\·ó3fÉpß(ó\Í5Z`ñ/d\„˚G\◊G^îb¸\◊F\”\‚˙¨\”Î¢•\œ18\—Uq™;4ó\Ãî≠¿π®f®\Ó0¯k©πê9e]6\ﬁ&UD[ãÒ9gî{çxhe°E	`ô\Œ\ \ÏÒ)¿<!πµéxõå¸¶Um¡ç\»¸\Â€•\À\≈Kµ\Ó\ﬁ5Z(\€QnS\Ã1˝\ƒ\À\—/1\ÊU¥\ﬂC*¢\√(Ç\Èrö}t\¬Y\‡Ç8ª:¿qÅ9\·‘©seß\Œ@BÒ€°ı2\Ó%Ú\«˜ú\ÿÒ\≈4WKsä˚¢#,\Ÿ;nlO([\⁄s/G∂R[iôE©\«EIp(ùâ\œKåJ\ÂÅ¸\«V¯WW\Áæ@˙âQ’µYFÙõ`¿ï°[A9M>∫á*ëEfhI¡Ee\ÃD{dV\«¿xK\ÏØr¸˝°Úì^&ó\”z$\ r\Ì`§?ÄE]à˝\’i\Ó«∏˚ûö±¸Lµ\¬<\«xümöÚAvÉΩ¡9\À\Áe[í\‡\ﬂa”∂´!ÒÇ\’\Íùé`d´]æ&ü]≠Yç\„\ 5QûÇ\ÍC\·W•`ò\\IπYÑ`´\'.Er2óJò¶S±\‰•\·CÜ\…~\ƒ\◊`O00\Ì% `CLô/\’‰®µ\n0HÉ\√⁄∏\‡\Z£è\ﬂ\Ÿ~©qõIô\"Ù\ Y/çxÅ≤m2h2\Ì\À8zgõ…ä•\‡\€Z@Éf%#ßí;à}NÒâÚ\Èˇ\0y\–uÒ4˙È©êá~u\Ÿ\√0X Æék	ì\ÿ\Êê%\"¥,∏:p¢Y¿›±Ç\"ı~Ÿï+†sñπ!ØljAõçÇS7$tò\œFÒqrT\‚.\ÿM˘ÙßP\\‘Än˛¢wÉ\‘Si\Ê)x® <:42ü£\rªì\‚¿ê\›U\⁄?êBB∑iB\œ]\Ê/˜Fæ^\Ê\0+îï\≈f\"±•\—\‘iı\“‹èôyΩEGè¿bW\'®1ã^\ÿ\¬\Z\‰&oõñbÜ\¬$:U2Ü€º@∂Qå\Ÿ\ÌNl,Q¥k|¢ê–àvæÄ\r¶à∂eâA\÷GÜ0•L$óK!†ﬁ•[+<©go©\È);≈é\Ÿ~\"Q]KYÄ\”cåEèÙ\≈4Dw\r·ñÇ\‰\≈™Tî\\	£G,ûûòV™å¶\◊\ƒ\”\Î•=Z¯é\0º»â\À7Å,ü≤=\ËqÉÅÑ0F@M\·§v$ºb\ÏâdŒá\‚ÜSÒ;ù!\È\“yí\ÿ\‹z{J4/I∑Ø$≠%H∂$\Â∞\◊5rò\◊o\√_Äπ˚ã{w z%tw?	dI,`\„\«L∫íˇ\0Iß\◊\Êó\ﬁe@{\À≈°@\Ê\ﬁ¸	®j∏:\◊\Ã˝ÑãGîÕû&	òò˙ht\ÿF¯á=%(\ƒ\„\”‹î!êªYóÒ∂áôKå3.)6î\¬\⁄\Ê``©}pùÊìõG∏)˛\·0ü\Ì˙9M>∫\\πr˙ø\ËwH˚\'*Pd@{Mıq\Ó}\‡\Ê˛¿ÉÅ: \·9Ä!`Ä\Ï1MÄñ\Íˇ\0DoŸ≤›≠^IO\'\Ïä6¸\√`úS\‹kR\Ì\Ã]N\Ê•6@Hä\‚?=?]Kùô,ΩÛÄ_¥\Ët˙ö}~>\ÂÙjj\‚vµéº\Ã¡¶Æ\"]/a	ÛêSk¸Aß\…\Í?v]éQI;®K\»ÓíôIΩ$m\≈_â\„0¶\—\‰õˇ\0Äñ\nã5)·ñªè,F©0>ô\ÿÄÚ\ )î]aàˆgf}ìßƒ¨Åî¥hóúé\”?BT>Û\Â=\—=\‚(¶]dTı$P\‹ ´Ú^ôd˜uY)∏∏î\ËN#âSÉ°+=9úÙ%4û\'L3ùΩ•\n+≠m©\Â!¯Oˇ\Ÿ',9,0);
/*!40000 ALTER TABLE `imagen` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `status del mensaje`
--

DROP TABLE IF EXISTS `status del mensaje`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `status del mensaje` (
  `idStatus del mensaje` int(11) NOT NULL AUTO_INCREMENT,
  `Nombre` varchar(45) NOT NULL,
  PRIMARY KEY (`idStatus del mensaje`),
  UNIQUE KEY `idStatus del mensaje_UNIQUE` (`idStatus del mensaje`),
  UNIQUE KEY `Nombre_UNIQUE` (`Nombre`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `status del mensaje`
--

LOCK TABLES `status del mensaje` WRITE;
/*!40000 ALTER TABLE `status del mensaje` DISABLE KEYS */;
INSERT INTO `status del mensaje` VALUES (1,'Enviado'),(2,'Leido');
/*!40000 ALTER TABLE `status del mensaje` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tipo de pago`
--

DROP TABLE IF EXISTS `tipo de pago`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tipo de pago` (
  `idTipo de pago` int(11) NOT NULL AUTO_INCREMENT,
  `Nombre` varchar(45) NOT NULL,
  PRIMARY KEY (`idTipo de pago`),
  UNIQUE KEY `idTipo de pago_UNIQUE` (`idTipo de pago`),
  UNIQUE KEY `Nombre_UNIQUE` (`Nombre`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tipo de pago`
--

LOCK TABLES `tipo de pago` WRITE;
/*!40000 ALTER TABLE `tipo de pago` DISABLE KEYS */;
INSERT INTO `tipo de pago` VALUES (2,'Debito'),(1,'Efectivo'),(3,'Tarjeta de regalo');
/*!40000 ALTER TABLE `tipo de pago` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usuario`
--

DROP TABLE IF EXISTS `usuario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `usuario` (
  `idUsuario` int(11) NOT NULL AUTO_INCREMENT,
  `Nombre` varchar(45) NOT NULL,
  `Apellido paterno` varchar(45) NOT NULL,
  `Apellido materno` varchar(45) NOT NULL,
  `Nacimiento` datetime DEFAULT NULL,
  `Tel√©fono` char(255) DEFAULT NULL,
  `Direcci√≥n` varchar(255) DEFAULT NULL,
  `Email` varchar(255) NOT NULL,
  `Nickname` varchar(255) NOT NULL,
  `Contrase√±a` varchar(60) NOT NULL,
  PRIMARY KEY (`idUsuario`),
  UNIQUE KEY `idUsuario_UNIQUE` (`idUsuario`),
  UNIQUE KEY `Email_UNIQUE` (`Email`),
  UNIQUE KEY `Nickname_UNIQUE` (`Nickname`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usuario`
--

LOCK TABLES `usuario` WRITE;
/*!40000 ALTER TABLE `usuario` DISABLE KEYS */;
INSERT INTO `usuario` VALUES (1,'Josefat','Villarreal','Salazar','2019-10-13 00:18:33','8127488633','Altagracia Cant√∫ 5405-2','josefath98@gmail.com','Josefath98','password1'),(2,'Ademir','Amaral','Arevalo','2019-10-13 01:03:23','8181848487','Hasta la chingada #855, Hasta la verga','ademir@hotmail.com','AkatsukiRead','password2'),(3,'Paola','Cedillo','Rodriguez','2019-10-17 01:52:48','8123989865','Constituyentes de Queretaro #41','paolacedillo@liceo.com','PaolaCedillo','password3'),(4,'Ana','Patricia','Valdes','1997-10-29 00:00:00','8123555566','Crisantemos #898','anavaldes@empresa.com','AnaValdes','password4'),(5,'Bernardo','Gonzales','Isais','1997-05-05 00:00:00',NULL,NULL,'bernardo@isais.com','Berna97','Password4'),(6,'Mendoza','Garen','81818181',NULL,'Password5','juliomendoza@gmail.com','I dont know somewhere','Julio','JulioMendoza97'),(7,'Veronica','Olmos','Vargas',NULL,'81818181','I dont know somewhere','veronicaolmos98@gmail.com','VeronicaOlmos97','Mypassword1'),(8,'Linda','Romo','Rodriguez',NULL,'84878589','Somewhere over the rainbow','lindaromo96@gmail.com','LindaRomo96','Myhub789'),(9,'Omar','Castaneda','Mendoza',NULL,'','Somewhere 45','omarcastaneda99@gmail.com','OmarCastaneda99','Omar99ca');
/*!40000 ALTER TABLE `usuario` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usuario_comenta_art√≠culo`
--

DROP TABLE IF EXISTS `usuario_comenta_art√≠culo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `usuario_comenta_art√≠culo` (
  `Usuario_idUsuario` int(11) NOT NULL,
  `Art√≠culo_idArt√≠culo` int(11) NOT NULL,
  `IDComentario` int(11) NOT NULL,
  `Valoracion` tinyint(4) DEFAULT NULL,
  `Texto` mediumtext,
  `FechaDeComentario` datetime DEFAULT NULL,
  PRIMARY KEY (`Usuario_idUsuario`,`Art√≠culo_idArt√≠culo`),
  KEY `fk_Usuario_has_Art√≠culo_Art√≠culo1_idx` (`Art√≠culo_idArt√≠culo`),
  KEY `fk_Usuario_has_Art√≠culo_Usuario1_idx` (`Usuario_idUsuario`),
  CONSTRAINT `fk_Usuario_has_Art√≠culo_Art√≠culo1` FOREIGN KEY (`Art√≠culo_idArt√≠culo`) REFERENCES `art√≠culo` (`idArt√≠culo`),
  CONSTRAINT `fk_Usuario_has_Art√≠culo_Usuario1` FOREIGN KEY (`Usuario_idUsuario`) REFERENCES `usuario` (`idUsuario`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usuario_comenta_art√≠culo`
--

LOCK TABLES `usuario_comenta_art√≠culo` WRITE;
/*!40000 ALTER TABLE `usuario_comenta_art√≠culo` DISABLE KEYS */;
INSERT INTO `usuario_comenta_art√≠culo` VALUES (3,4,1,1,'Esta bien perro, super like me compraria mas','2019-12-07 04:40:36'),(4,5,3,0,'Se rompio muy rapido dislike','2019-12-07 05:26:51'),(7,5,2,1,'Muy interesnate producto','2019-12-07 05:23:42'),(7,16,7,1,'Que bonita calidad, amo esta television','2019-12-09 22:17:24'),(8,6,4,1,'Es un producto interesante hasta ahora me ha funcionado muy bien','2019-12-09 01:53:50'),(8,7,5,1,'Ese mouse es chiquito, portatil y resistente','2019-12-09 21:54:03'),(8,11,8,0,'Este anitivus no me gusto','2019-12-09 22:19:57'),(8,14,6,1,'Me encanto, el mejor celular que pude comprar, buena calidad precio','2019-12-09 21:54:55'),(8,15,9,1,'Muy comoda para el diario de un estudiante, recomendado','2019-12-09 22:21:00'),(9,14,10,1,'Esta super bueno muy barato y aguanta muy buen','2019-12-09 22:36:23');
/*!40000 ALTER TABLE `usuario_comenta_art√≠culo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `video`
--

DROP TABLE IF EXISTS `video`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `video` (
  `idVideo` int(11) NOT NULL AUTO_INCREMENT,
  `Ruta` varchar(255) NOT NULL,
  `Video` blob,
  `Art√≠culo_idArt√≠culo` int(11) NOT NULL,
  PRIMARY KEY (`idVideo`),
  UNIQUE KEY `idImagen_UNIQUE` (`idVideo`),
  KEY `fk_Video_Art√≠culo1_idx` (`Art√≠culo_idArt√≠culo`),
  CONSTRAINT `fk_Video_Art√≠culo1` FOREIGN KEY (`Art√≠culo_idArt√≠culo`) REFERENCES `art√≠culo` (`idArt√≠culo`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `video`
--

LOCK TABLES `video` WRITE;
/*!40000 ALTER TABLE `video` DISABLE KEYS */;
INSERT INTO `video` VALUES (1,'css/images/MotoOneZoom.mp4',NULL,1),(2,'css/images/DRIFTAWAY MALE VOCAL COVER.mp4',NULL,2),(3,'css/images/NuevoMotoRazr.mp4',NULL,3),(4,'css/images/DRIFTAWAY MALE VOCAL COVER.mp4',NULL,7),(5,'css/images/Steven Universe.mp4',NULL,8),(6,'css/images/MotoOneZoom.mp4',NULL,10),(7,'css/images/NuevoMotoRazr.mp4',NULL,11),(8,'css/images/DRIFTAWAY MALE VOCAL COVER.mp4',NULL,12),(9,'css/images/DRIFTAWAY MALE VOCAL COVER.mp4',NULL,13),(10,'css/images/NuevoMotoRazr.mp4',NULL,14),(11,'css/images/DRIFTAWAY MALE VOCAL COVER.mp4',NULL,15),(12,'css/images/DRIFTAWAY MALE VOCAL COVER.mp4',NULL,16);
/*!40000 ALTER TABLE `video` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'mydb'
--

--
-- Dumping routines for database 'mydb'
--
/*!50003 DROP PROCEDURE IF EXISTS `AgregarArticulo` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `AgregarArticulo`(IN Nombre VARCHAR(100), IN Descripcion VARCHAR(255), IN Precio FLOAT, IN Unidades DECIMAL(10,0), IN CategoriaString VARCHAR(45),  IN Estado VARCHAR(45),  IN rutaImagen1 VARCHAR(255), IN rutaImagen2 VARCHAR(255), IN rutaVideo1 VARCHAR(255))
BEGIN

SET @idArticulo= (SELECT idArt√≠culo FROM art√≠culo ORDER BY idArt√≠culo DESC LIMIT 1 ) + 1; 
SET @idCategoriaP= (SELECT idCategoria FROM Categoria WHERE Categoria.Nombre = CategoriaString );

IF Estado = 'Borrador'THEN
SET @Estado = 0; 
ELSE 
SET @Estado = 1;
END IF;

INSERT INTO `mydb`.`art√≠culo`
(`idArt√≠culo`,`Nombre`,`Descripci√≥n`,`Fecha`,`Precio`,`Unidades`,`Categoria`,
`BorradorOPublicado`,`Activo`)
VALUES
(@idArticulo, Nombre, Descripcion, NOW(), Precio, Unidades, @idCategoriaP, @Estado, 1);

SET @idNuevoArticulo= (SELECT idArt√≠culo FROM art√≠culo ORDER BY idArt√≠culo DESC LIMIT 1 ); 

CALL `mydb`.`AgregarImagenSoloRuta`(rutaImagen1, 1, @idNuevoArticulo);
CALL `mydb`.`AgregarImagenSoloRuta`(rutaImagen2, 1, @idNuevoArticulo);

CALL `mydb`.`AgregarVideo`(rutaVideo1, @idNuevoArticulo);

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `AgregarCategoria` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `AgregarCategoria`(IN Nombre VARCHAR(45))
BEGIN

DECLARE idCategoriaP INT(11); 
SET idCategoriaP = (SELECT idCategoria FROM categoria ORDER BY idCategoria DESC LIMIT 1 ) + 1; 

INSERT INTO `mydb`.`categoria`
(`idCategoria`,`Nombre`) VALUES (idCategoriaP, Nombre);

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `AgregarCliente` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `AgregarCliente`( IN NicknamedelUsuario VARCHAR(255))
BEGIN

DECLARE IDClienteP INT(11);
DECLARE IDdelUsuario INT(11);
SET IDClienteP = ( SELECT idCliente FROM cliente ORDER BY idCliente DESC LIMIT 1) + 1;
SET IDdelUsuario = (SELECT idUsuario FROM Usuario WHERE Nickname = NicknamedelUsuario); 

INSERT INTO `mydb`.`cliente` (`idCliente`, `Usuario_idUsuario`) VALUES (IDClienteP, IDdelUsuario);

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `AgregarDetalleVenta` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `AgregarDetalleVenta`(IN idArticulo INT)
BEGIN

SET @Cliente = (SELECT Cliente_idCliente FROM cliente_compra_articulo_folio ORDER BY IDClienteCompraArt√≠culo DESC LIMIT 1);
SET @Precio = (SELECT Precio FROM art√≠culo WHERE idArt√≠culo = idArticulo LIMIT 1);
SET @idDeLaVenta = (SELECT IDClienteCompraArt√≠culo FROM cliente_compra_articulo_folio ORDER BY IDClienteCompraArt√≠culo DESC LIMIT 1);
SET @idDetalleDeVenta = (SELECT IDDetalleDeVenta FROM cliente_compra_articulo_detalle_de_venta ORDER BY IDDetalleDeVenta DESC LIMIT 1) + 1;
/*
SET @idDetalleDeVenta= (SELECT IDVenta FROM `detalle de venta` ORDER BY IDVenta DESC LIMIT 1 ) + 1; 
SET @idDeLaVenta = (SELECT IDClienteCompraArt√≠culo FROM `cliente_compra_art√≠culo` ORDER BY IDClienteCompraArt√≠culo DESC LIMIT 1);
*/

/*
INSERT INTO `mydb`.`detalle de venta`
(`Cantidad`,`Subtotal`,`Cliente_Compra_Art√≠culo_Cliente_idCliente`,
`Cliente_Compra_Art√≠culo_Art√≠culo_idArt√≠culo`,`IDVenta`)
VALUES(1, @Precio, @Cliente, idArticulo, @idDeLaVenta, @idDetalleDeVenta );
*/

INSERT INTO `mydb`.`cliente_compra_articulo_detalle_de_venta`
(`Cantidad`, `Subtotal`, `idCliente`, `idArticulo`, `IDVenta`, `IDDetalleDeVenta`, `FechaDeCompra`)
VALUES
(1, @Precio, @Cliente, idArticulo, @idDeLaVenta, @idDetalleDeVenta, NOW());

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `AgregarHistorialDetalleVenta` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `AgregarHistorialDetalleVenta`(IN idArticuloP INT)
BEGIN

SET @Cliente = (SELECT Cliente_idCliente FROM cliente_compra_articulo_folio ORDER BY IDClienteCompraArt√≠culo DESC LIMIT 1);
SET @Precio = (SELECT subtotal FROM cliente_compra_articulo_detalle_de_venta WHERE IDDetalleDeVenta = idArticuloP LIMIT 1);
SET @Cantidad = (SELECT cantidad FROM cliente_compra_articulo_detalle_de_venta WHERE IDDetalleDeVenta = idArticuloP LIMIT 1);
SET @Articulo = (SELECT idArticulo FROM cliente_compra_articulo_detalle_de_venta WHERE IDDetalleDeVenta = idArticuloP LIMIT 1);
SET @idDeLaVenta = (SELECT IDClienteCompraArt√≠culo FROM cliente_compra_articulo_folio ORDER BY IDClienteCompraArt√≠culo DESC LIMIT 1);
SET @idFolioHistorial = (SELECT IDClienteCompraArt√≠culo FROM historial_de_compra_cliente_compra_articulo_folio ORDER BY IDClienteCompraArt√≠culo DESC LIMIT 1);
SET @idDetalleDeVenta = (SELECT IDDetalleDeVenta FROM historial_de_compra_cliente_compra_articulo_detalle_de_venta ORDER BY IDDetalleDeVenta DESC LIMIT 1) + 1;
SET @IDReferencia = (SELECT IDDetalleDeVenta FROM cliente_compra_articulo_detalle_de_venta ORDER BY IDDetalleDeVenta DESC LIMIT 1);
/*
SET @idDetalleDeVenta= (SELECT IDVenta FROM `detalle de venta` ORDER BY IDVenta DESC LIMIT 1 ) + 1; 
SET @idDeLaVenta = (SELECT IDClienteCompraArt√≠culo FROM `cliente_compra_art√≠culo` ORDER BY IDClienteCompraArt√≠culo DESC LIMIT 1);
*/

/*
INSERT INTO `mydb`.`detalle de venta`
(`Cantidad`,`Subtotal`,`Cliente_Compra_Art√≠culo_Cliente_idCliente`,
`Cliente_Compra_Art√≠culo_Art√≠culo_idArt√≠culo`,`IDVenta`)
VALUES(1, @Precio, @Cliente, idArticulo, @idDeLaVenta, @idDetalleDeVenta );

INSERT INTO `mydb`.`cliente_compra_articulo_detalle_de_venta`
(`Cantidad`, `Subtotal`, `idCliente`, `idArticulo`, `IDVenta`, `IDDetalleDeVenta`, `FechaDeCompra`)
VALUES
(1, @Precio, @Cliente, idArticulo, @idDeLaVenta, @idDetalleDeVenta, NOW());
*/

INSERT INTO `mydb`.`historial_de_compra_cliente_compra_articulo_detalle_de_venta`
(`Cantidad`,`Subtotal`, `idCliente`, `idArticulo`, `IDVenta`, `IDDetalleDeVenta`,
`FechaDeCompra`,`Activo`, `IDFolioHistorial`, `IDDelDetalleDeVentaRefencia`)
VALUES
(@Cantidad, @Precio, @Cliente, @Articulo, @idDeLaVenta,
 @idDetalleDeVenta, NOW(), 1,  @idFolioHistorial, @IDReferencia);
/* 
(@Cantidad, @Precio, @Cliente, idArticulo, @idDeLaVenta, 1, NOW(), 1);
*/

UPDATE `mydb`.`cliente_compra_articulo_detalle_de_venta`
SET
`Activo` = 0
WHERE `IDDetalleDeVenta` = idArticuloP;

SET @CantidadARestar = (SELECT Cantidad FROM historial_de_compra_cliente_compra_articulo_detalle_de_venta ORDER BY IDDetalleDeVenta DESC LIMIT 1);
SET @ArticuloAActualizar = (SELECT idArticulo FROM historial_de_compra_cliente_compra_articulo_detalle_de_venta ORDER BY IDDetalleDeVenta DESC LIMIT 1);
SET @CantidadTotal = (SELECT Unidades FROM art√≠culo WHERE idArt√≠culo = @Articulo LIMIT 1);

UPDATE `mydb`.`art√≠culo`
SET
`Unidades` = (@CantidadTotal - @CantidadARestar)
WHERE `idArt√≠culo` = @Articulo;

SET @CantidadP = (SELECT Cantidad FROM historial_de_compra_cliente_compra_articulo_detalle_de_venta ORDER BY IDDetalleDeVenta DESC LIMIT 1);
SET @SubtotalP = (SELECT Subtotal FROM historial_de_compra_cliente_compra_articulo_detalle_de_venta ORDER BY IDDetalleDeVenta DESC LIMIT 1);
SET @FolioHistorial = (SELECT IDFolioHistorial FROM historial_de_compra_cliente_compra_articulo_detalle_de_venta ORDER BY IDDetalleDeVenta DESC LIMIT 1);
SET @CantidadAnterior = (SELECT Total FROM historial_de_compra_cliente_compra_articulo_folio ORDER BY IDClienteCompraArt√≠culo DESC LIMIT 1);
SET @CantidadAnterior = (SELECT IFNULL(@CantidadAnterior, 0));

SET @NuevoTotal = (SELECT @CantidadAnterior + (@SubtotalP * @CantidadP)); 

UPDATE `mydb`.`historial_de_compra_cliente_compra_articulo_folio`
SET
`Total` = @NuevoTotal
WHERE `IDClienteCompraArt√≠culo` = @FolioHistorial;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `AgregarHistorialFolio` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `AgregarHistorialFolio`(IN nicknamep varchar(60), IN id INT, IN tipodepago INT(11))
BEGIN

SET @idCliente = (SELECT usuario.idUsuario FROM usuario 
INNER JOIN cliente
ON usuario.idUsuario = cliente.Usuario_idUsuario
WHERE usuario.Nickname = nicknamep LIMIT 1);

SET @Precio = (SELECT Precio FROM art√≠culo WHERE idArt√≠culo = id LIMIT 1);


SET @idCompra = (SELECT IDClienteCompraArt√≠culo FROM historial_de_compra_cliente_compra_articulo_folio ORDER BY IDClienteCompraArt√≠culo DESC LIMIT 1) + 1;

/*
INSERT INTO `mydb`.`cliente_compra_articulo_folio`
(`Cliente_idCliente`,
`Tipo de pago_idTipo de pago`,
`Total`,
`IDClienteCompraArt√≠culo`,
`PresupuestoOCarrito`,
`Activo`)
VALUES(
@idCliente, 1, @Precio, @idCompra, 0, 1);
*/


INSERT INTO `mydb`.`historial_de_compra_cliente_compra_articulo_folio`
(`Cliente_idCliente`, `Tipo de pago_idTipo de pago`, `Total`, `IDClienteCompraArt√≠culo`, `Activo`)
VALUES
(@idCliente, tipodepago, @Precio, @idCompra, 1);
/*(@idCliente, tipodepago, @Precio, 1, 1);*/

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `AgregarImagen` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `AgregarImagen`(IN rutaImagen VARCHAR(255), IN usuarioOProducto INT, IN idDelUsuarioOArticulo INT, IN Imagen BLOB)
BEGIN

SET @idImagen = (SELECT idImagen FROM imagen ORDER BY idImagen DESC LIMIT 1) + 1; 
INSERT INTO `mydb`.`imagen`
(`idImagen`,`Ruta`,`Imagen`,`Art√≠culo_idArt√≠culo`,`UsuarioOProducto`
)
VALUES
(@idImagen, rutaImagen, Imagen, idDelUsuarioOArticulo,usuarioOProducto);

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `AgregarImagenSoloRuta` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `AgregarImagenSoloRuta`(IN rutaImagen VARCHAR(255), IN usuarioOProducto INT, IN idDelUsuarioOArticulo INT)
BEGIN

SET @idImagen = (SELECT idImagen FROM imagen ORDER BY idImagen DESC LIMIT 1) + 1; 
INSERT INTO `mydb`.`imagen`
(`idImagen`,`Ruta`,`Imagen`,`Art√≠culo_idArt√≠culo`,`UsuarioOProducto`
)
VALUES
(@idImagen, rutaImagen, null, idDelUsuarioOArticulo,usuarioOProducto);

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `AgregarStatusdelmensaje` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `AgregarStatusdelmensaje`(IN Nombre VARCHAR(45))
BEGIN

DECLARE idStatusP INT(11); 
SET idStatusP = (SELECT `idStatus del mensaje` FROM `status del mensaje` ORDER BY `idStatus del mensaje` DESC LIMIT 1 ) + 1; 

INSERT INTO `mydb`.`status del mensaje`
(`idStatus del mensaje`,`Nombre`) VALUES (idStatusP, Nombre);

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `AgregarTipodepago` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `AgregarTipodepago`(IN Nombre VARCHAR(45))
BEGIN 

DECLARE idTipodepagoP INT(11); 
SET idTipodepagoP = (SELECT `idTipo de pago` FROM `tipo de pago` ORDER BY `idTipo de pago` DESC LIMIT 1 ) + 1;

INSERT INTO `mydb`.`tipo de pago`
(`idTipo de pago`, `Nombre`)
VALUES (idTipodepagoP, Nombre);

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `AgregarUnAdministrador` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `AgregarUnAdministrador`( IN Nomina DOUBLE, IN IDdelUsuario INT )
BEGIN

DECLARE IDAdministradorP INT(11);
SET IDAdministradorP = ( SELECT idAdministrador FROM administrador ORDER BY idAdministrador DESC LIMIT 1) + 1;

INSERT INTO `mydb`.`administrador`
(`idAdministrador`, `Nomina`, `Usuario_idUsuario`)
VALUES (IDAdministradorP, Nomina, IDdelUsuario);

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `AgregarUsuarios` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `AgregarUsuarios`(IN NombreUsuario VARCHAR(45), IN ApellidoPaterno VARCHAR(45),IN ApellidoMaterno VARCHAR(45), 
IN FechaDeNacimiento DATETIME, IN TelefonoUsuario char(255), IN DirecionUsuario VARCHAR(255), IN EmailUsuario VARCHAR(255),
IN NicknameUsuario VARCHAR(255), IN Contrase√±aUsuario VARCHAR(60))
BEGIN

SET @IDUsuario = ( SELECT idUsuario FROM usuario ORDER BY idUsuario DESC LIMIT 1) + 1;

INSERT INTO `mydb`.`usuario`
(`idUsuario`, `Nombre`, `Apellido paterno`, `Apellido materno`, `Nacimiento`, `Tel√©fono`,
 `Direcci√≥n`, `Email`, `Nickname`, `Contrase√±a`)
VALUES
( @IDUsuario, NombreUsuario, ApellidoPaterno, ApellidoMaterno, FechaDeNacimiento , TelefonoUsuario, DirecionUsuario, 
EmailUsuario, NicknameUsuario, Contrase√±aUsuario);

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `AgregarUsuariosConPuestoEImagen` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `AgregarUsuariosConPuestoEImagen`(IN NombreUsuario VARCHAR(45), IN ApellidoPaterno VARCHAR(45),IN ApellidoMaterno VARCHAR(45), 
IN FechaDeNacimiento DATETIME, IN TelefonoUsuario char(255), IN DirecionUsuario VARCHAR(255), IN EmailUsuario VARCHAR(255),
IN NicknameUsuario VARCHAR(255), IN Contrase√±aUsuario VARCHAR(60), IN Puesto VARCHAR(40), IN Imagen BLOB, IN rutaImagen VARCHAR(255))
BEGIN


SET @IDUsuario = ( SELECT idUsuario FROM usuario ORDER BY idUsuario DESC LIMIT 1) + 1;

INSERT INTO `mydb`.`usuario`
(`idUsuario`, `Nombre`, `Apellido paterno`, `Apellido materno`, `Nacimiento`, `Tel√©fono`,
 `Direcci√≥n`, `Email`, `Nickname`, `Contrase√±a`)
VALUES
( @IDUsuario, NombreUsuario, ApellidoPaterno, ApellidoMaterno, FechaDeNacimiento , TelefonoUsuario, DirecionUsuario, 
EmailUsuario, NicknameUsuario, Contrase√±aUsuario);

SET @NickName = ( SELECT Nickname FROM usuario ORDER BY idUsuario DESC LIMIT 1);
SET @IDdelUsuario = ( SELECT idUsuario FROM usuario ORDER BY idUsuario DESC LIMIT 1);
SET @Pass = ( SELECT `Contrase√±a` FROM usuario ORDER BY idUsuario DESC LIMIT 1);

CALL `mydb`.`AgregarImagen`(rutaImagen, 0, @IDdelUsuario, Imagen);

IF Puesto = "Cliente" THEN 
CALL AgregarCliente (@NickName);
ELSE
CALL AgregarUnAdministrador(98989898, @IDdelUsuario);
END IF; 

CALL `mydb`.`autenticacion`(@NickName, @Pass);

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `AgregarValoracionAProducto` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `AgregarValoracionAProducto`(IN nicknameP VARCHAR(60), IN idArticuloP INT(11), IN likedislike TINYINT, IN comentario VARCHAR(255))
BEGIN

SET @idCliente = (SELECT usuario.idUsuario FROM usuario 
INNER JOIN cliente
ON usuario.idUsuario = cliente.Usuario_idUsuario
WHERE usuario.Nickname = nicknameP LIMIT 1);

SET @IDComentario = (SELECT IDComentario FROM usuario_comenta_art√≠culo ORDER BY IDComentario DESC LIMIT 1) + 1;

INSERT INTO `mydb`.`usuario_comenta_art√≠culo`
(`Usuario_idUsuario`, `Art√≠culo_idArt√≠culo`, `IDComentario`, `Valoracion`,`Texto`, `FechaDeComentario`)
VALUES
(@idCliente, idArticuloP, @IDComentario, likedislike, comentario, NOW());

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `AgregarVideo` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `AgregarVideo`(IN rutaVideo VARCHAR(255), IN idDelUsuarioOArticulo INT)
BEGIN

SET @idVideo = (SELECT idVideo FROM video ORDER BY idVideo DESC LIMIT 1) + 1; 
INSERT INTO `mydb`.`video`
(`idVideo`,
`Ruta`,
`Video`,
`Art√≠culo_idArt√≠culo`)
VALUES
(@idVideo, rutaVideo, null, idDelUsuarioOArticulo);

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `ArticulosPorFiltros` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `ArticulosPorFiltros`(IN tituloP VARCHAR(100),IN descripcionP VARCHAR(100), IN categoriaP INT(11), IN fechainicio VARCHAR(100),IN fechafin VARCHAR(100) )
BEGIN

SET @titulo = tituloP; 
SET @descripcion = descripcionP; 
SET @fechainicio = fechainicio;
SET @fechafin = fechafin;

CREATE TEMPORARY TABLE ArticulosParaDestacados (
  idDelArticuloAlQuePertenece1 int(11)
);

CREATE TEMPORARY TABLE TabladeImagenesdeProducto (
  idDelArticuloAlQuePertenece int(11),
  Ruta VARCHAR(255)
);

SET @Nombre = tituloP; 
SET @Porcentaje = '%';

SET @BuscarEnMedio = (SELECT CONCAT(@Porcentaje, tituloP, @Porcentaje));
SET @BuscarEnFrente = (SELECT CONCAT(tituloP, @Porcentaje));
SET @BuscarAtras = (SELECT CONCAT(@Porcentaje, tituloP));

INSERT INTO ArticulosParaDestacados(
SELECT idArt√≠culo FROM art√≠culo WHERE Nombre LIKE @BuscarEnMedio
);

INSERT INTO ArticulosParaDestacados(
SELECT idArt√≠culo FROM art√≠culo WHERE Nombre LIKE @BuscarEnFrente
);

INSERT INTO ArticulosParaDestacados(
SELECT idArt√≠culo FROM art√≠culo WHERE Nombre LIKE @BuscarAtras
);

SET @Nombre = descripcionP; 
SET @Porcentaje = '%';

SET @BuscarEnMedio = (SELECT CONCAT(@Porcentaje, descripcionP, @Porcentaje));
SET @BuscarEnFrente = (SELECT CONCAT(descripcionP, @Porcentaje));
SET @BuscarAtras = (SELECT CONCAT(@Porcentaje, descripcionP));

INSERT INTO ArticulosParaDestacados(
SELECT idArt√≠culo FROM art√≠culo WHERE Descripci√≥n LIKE @BuscarEnMedio
);

INSERT INTO ArticulosParaDestacados(
SELECT idArt√≠culo FROM art√≠culo WHERE Descripci√≥n LIKE @BuscarEnFrente
);

INSERT INTO ArticulosParaDestacados(
SELECT idArt√≠culo FROM art√≠culo WHERE Descripci√≥n LIKE @BuscarAtras
);

INSERT INTO TabladeImagenesdeProducto(
SELECT Imagen.Art√≠culo_idArt√≠culo , Imagen.Ruta FROM Imagen 
WHERE Art√≠culo_idArt√≠culo IN(
SELECT idDelArticuloAlQuePertenece1 FROM ArticulosParaDestacados
)
AND UsuarioOProducto = 1
GROUP BY Imagen.Art√≠culo_idArt√≠culo
); 
 
SELECT distinct art√≠culo.idArt√≠culo, art√≠culo.Nombre, art√≠culo.Descripci√≥n, art√≠culo.Precio, art√≠culo.Fecha, art√≠culo.Unidades,categoria.Nombre As Categoria, TabladeImagenesdeProducto.Ruta AS Ruta
FROM Art√≠culo
INNER JOIN categoria 
ON categoria.idCategoria = Art√≠culo.Categoria
INNER JOIN ArticulosParaDestacados 
ON art√≠culo.idArt√≠culo = ArticulosParaDestacados.idDelArticuloAlQuePertenece1
INNER JOIN TabladeImagenesdeProducto 
ON TabladeImagenesdeProducto.idDelArticuloAlQuePertenece = Art√≠culo.idArt√≠culo
WHERE (Fecha BETWEEN @fechainicio AND @fechafin)
AND art√≠culo.Categoria = categoriaP AND art√≠culo.BorradorOPublicado = 1 AND art√≠culo.Activo = 1
ORDER BY art√≠culo.idArt√≠culo;

DROP TABLE ArticulosParaDestacados;
DROP TABLE TabladeImagenesdeProducto;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `autenticacion` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `autenticacion`( IN nicknamep varchar(45), IN contrasenap varchar(60))
BEGIN

SET @Puesto = ''; 
SET @IdUsuarioParaConsulta = (SELECT idUsuario FROM usuario WHERE usuario.Nickname = nicknamep and usuario.contrase√±a = contrasenap); 
SET @Administradores = (SELECT idAdministrador FROM administrador WHERE  administrador.Usuario_idUsuario = @IdUsuarioParaConsulta);
SET @Clientes = (SELECT idCliente FROM cliente WHERE cliente.Usuario_idUsuario = @IdUsuarioParaConsulta); 

CREATE TEMPORARY TABLE TabladeImagenesdeUsuario (
  idDelUsuarioAlQuePertenece int(11),
  Ruta VARCHAR(255)
);

INSERT INTO TabladeImagenesdeUsuario(SELECT imagen.Art√≠culo_idArt√≠culo, Ruta FROM imagen WHERE imagen.UsuarioOProducto = 0); 

IF (ISNULL(@Administradores))THEN 
SET @Puesto = 'Cliente';
ELSE 
SET @Puesto = 'Administrador';
END IF; 

SELECT idUsuario, Nombre, `Apellido paterno`, `Apellido materno`, Nickname, @Puesto AS Puesto, TabladeImagenesdeUsuario.Ruta
FROM usuario 
INNER JOIN TabladeImagenesdeUsuario
ON usuario.idUsuario = TabladeImagenesdeUsuario.idDelUsuarioAlQuePertenece
WHERE usuario.Nickname = nicknamep and usuario.contrase√±a = contrasenap; 	

DROP TABLE TabladeImagenesdeUsuario;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `autenticacionConImagen` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `autenticacionConImagen`( IN nicknamep varchar(45))
BEGIN

SET @Puesto = ''; 
SET @IdUsuarioParaConsulta = (SELECT idUsuario FROM usuario WHERE usuario.Nickname = nicknamep); 
SET @Administradores = (SELECT idAdministrador FROM administrador WHERE  administrador.Usuario_idUsuario = @IdUsuarioParaConsulta);
SET @Clientes = (SELECT idCliente FROM cliente WHERE cliente.Usuario_idUsuario = @IdUsuarioParaConsulta); 

CREATE TEMPORARY TABLE TabladeImagenesdeUsuario (
  idDelUsuarioAlQuePertenece int(11),
  Ruta VARCHAR(255)
);

INSERT INTO TabladeImagenesdeUsuario(SELECT imagen.Art√≠culo_idArt√≠culo, Ruta FROM imagen WHERE imagen.UsuarioOProducto = 0); 

IF (ISNULL(@Administradores))THEN 
SET @Puesto = 'Cliente';
ELSE 
SET @Puesto = 'Administrador';
END IF; 

SELECT idUsuario, Nombre, `Apellido paterno`, `Apellido materno`, Nickname, @Puesto AS Puesto, TabladeImagenesdeUsuario.Ruta, Imagen.Imagen
FROM usuario 
INNER JOIN TabladeImagenesdeUsuario
ON usuario.idUsuario = TabladeImagenesdeUsuario.idDelUsuarioAlQuePertenece
INNER JOIN imagen
ON imagen.Art√≠culo_idArt√≠culo = TabladeImagenesdeUsuario.idDelUsuarioAlQuePertenece
WHERE usuario.Nickname = nicknamep AND imagen.UsuarioOProducto = 0; 	

DROP TABLE TabladeImagenesdeUsuario;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `BusquedaPorFiltracion` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `BusquedaPorFiltracion`(IN NombreArticulo varchar(60), IN Descripcion varchar(255), IN UsuarioQueloSubio varchar(60), IN Categoria varchar(60), IN FechaDeInicio DATETIME, IN FechaDeFin DATETIME)
BEGIN
	
    SET @ConsultaPorFiltro = "SELECT * FROM art√≠culo";
    
    IF ( ISNULL(NombreArticulo) AND ISNULL(Descripcion) AND ISNULL(UsuarioQueloSubio) AND ISNULL(UsuarioQueloSubio) AND ISNULL(Categoria) AND ISNULL(FechaDeInicio) AND ISNULL(FechaDeFin)) THEN
    PREPARE stmt FROM @ConsultaPorFiltro;
	EXECUTE stmt;
    ELSE 
    SET @NuevaConsulta = (SELECT CONCAT(@ConsultaPorFiltro, " WHERE ")); 
    PREPARE stmt FROM @NuevaConsulta;
	EXECUTE stmt;
    END IF;
	
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `ClienteCompraArticulo` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `ClienteCompraArticulo`(IN nicknamep varchar(60), IN id INT)
BEGIN

SET @idCliente = (SELECT usuario.idUsuario FROM usuario 
INNER JOIN cliente
ON usuario.idUsuario = cliente.Usuario_idUsuario
WHERE usuario.Nickname = nicknamep LIMIT 1);

SET @Precio = (SELECT Precio FROM art√≠culo WHERE idArt√≠culo = id LIMIT 1);


SET @idCompra = (SELECT IDClienteCompraArt√≠culo FROM Cliente_Compra_Articulo_Folio ORDER BY IDClienteCompraArt√≠culo DESC LIMIT 1) +1;

INSERT INTO `mydb`.`cliente_compra_articulo_folio`
(`Cliente_idCliente`,
`Tipo de pago_idTipo de pago`,
`Total`,
`IDClienteCompraArt√≠culo`,
`PresupuestoOCarrito`,
`Activo`)
VALUES(
@idCliente, 1, @Precio, @idCompra, 0, 1);

/*
INSERT INTO `mydb`.`cliente_compra_art√≠culo_folio` (`Cliente_idCliente`, `Tipo de pago_idTipo de pago`,
`Total`, `IDClienteCompraArt√≠culo`, `PresupuestoOCarrito`)
VALUES
(@idCliente, 1, @Precio, @idCompra, 0); */

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `EliminarArticuloPorID` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `EliminarArticuloPorID`(IN idp INT(11))
BEGIN

UPDATE `mydb`.`art√≠culo`
SET
`Activo` = 0
WHERE `idArt√≠culo` = idp;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `eliminarPresupuestoOBorrador` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `eliminarPresupuestoOBorrador`(IN id INT(11))
BEGIN

UPDATE `mydb`.`cliente_compra_art√≠culo`
SET
Activo = 0
WHERE `Cliente_idCliente` = 3 AND `Art√≠culo_idArt√≠culo` = 1 AND IDClienteCompraArt√≠culo = id;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `ElimminarPresupuestoCliente` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `ElimminarPresupuestoCliente`(IN IdDetalleDeVentaP INT(11))
BEGIN

UPDATE `mydb`.`cliente_compra_articulo_detalle_de_venta`
SET
Activo = 0
WHERE `IDDetalleDeVenta` = IdDetalleDeVentaP;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `Filtros` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `Filtros`(IN titulo VARCHAR(60), IN descripcion VARCHAR(60), IN Categoria INT(11), IN fechainicio VARCHAR(60), IN fechafin VARCHAR(60))
BEGIN

SET @QueryBasico = 'SELECT art√≠culo.idArt√≠culo, art√≠culo.Nombre, art√≠culo.Descripci√≥n, art√≠culo.Precio, categoria.Nombre As Categoria, art√≠culo.BorradorOPublicado
FROM Art√≠culo
INNER JOIN categoria 
ON categoria.idCategoria = Art√≠culo.Categoria
WHERE art√≠culo.Activo = 1  ';

SET @QueryAEjecutar = ''; 
SET @QueryTemporal = ''; 

IF titulo = null AND descripcion = null AND fechainicio = null AND fechafin = null THEN 
SELECT null;
ELSE 
SET @QueryAEjecutar = (SELECT @QueryBasico); 
SET @QueryTemporal = (SELECT @QueryBasico); 
END IF;

IF titulo = '' OR titulo = null THEN 
SELECT null;
ELSE 
SET @QueryAEjecutar = (SELECT CONCAT (@QueryTemporal, ' AND ', 'art√≠culo.Nombre = ',  titulo));
END IF;

IF descripcion = '' OR descripcion = null THEN 
SELECT null;
ELSE 
SET @QueryAEjecutar = (SELECT CONCAT (@QueryTemporal, ' AND ', 'art√≠culo.Descripci√≥n = ',  descripcion));
END IF;

SELECT @QueryAEjecutar; 

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `mandarACarrito` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `mandarACarrito`(IN id INT(11))
BEGIN
UPDATE `mydb`.`cliente_compra_art√≠culo`
SET
`PresupuestoOCarrito` = 1
WHERE 
cliente_compra_art√≠culo.IDClienteCompraArt√≠culo = id;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `MandarACarritoCliente` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `MandarACarritoCliente`(IN id INT(11))
BEGIN

UPDATE `mydb`.`cliente_compra_articulo_folio`
SET
`PresupuestoOCarrito` = 1
WHERE `IDClienteCompraArt√≠culo` = id;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `modificarArticulo` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `modificarArticulo`(IN id INT(11), IN Nombre VARCHAR(100), IN Descripcion VARCHAR(255), IN Precio FLOAT, IN Unidades DECIMAL(10,0), IN CategoriaString VARCHAR(45),  IN Estado VARCHAR(45),  IN rutaImagen1 VARCHAR(255), IN rutaImagen2 VARCHAR(255), IN rutaVideo1 VARCHAR(255))
BEGIN

SET @idArticulo= (SELECT idArt√≠culo FROM art√≠culo ORDER BY idArt√≠culo DESC LIMIT 1 ) + 1; 
SET @idCategoriaP= (SELECT idCategoria FROM Categoria WHERE Categoria.Nombre = CategoriaString );

SET @idRuta1 = (SELECT idImagen FROM Imagen WHERE Art√≠culo_idArt√≠culo = id AND UsuarioOProducto = 1 ORDER BY idImagen ASC LIMIT 1);
SET @Ruta1 = (SELECT Imagen.Ruta FROM Imagen WHERE Art√≠culo_idArt√≠culo = id AND UsuarioOProducto = 1 ORDER BY idImagen ASC LIMIT 1) ;
SET @idRuta2 = (SELECT idImagen FROM Imagen WHERE Art√≠culo_idArt√≠culo = id AND UsuarioOProducto = 1 ORDER BY idImagen DESC LIMIT 1) ;
SET @Ruta2 = (SELECT Imagen.Ruta FROM Imagen WHERE Art√≠culo_idArt√≠culo = id AND UsuarioOProducto = 1 ORDER BY idImagen DESC LIMIT 1) ;
SET @idVideo = (SELECT idVideo FROM Video WHERE Art√≠culo_idArt√≠culo = id LIMIT 1); 
SET @RutaVideo = (SELECT Video.Ruta FROM Video WHERE Art√≠culo_idArt√≠culo = id LIMIT 1); 

IF Estado = 0 THEN
SET @Estado = 0; 
ELSE 
SET @Estado = 1;
END IF;

UPDATE `mydb`.`art√≠culo`
SET
`Nombre` = Nombre, `Descripci√≥n` = Descripci√≥n,
`Precio` = Precio, `Unidades` = Unidades, `Categoria` = @idCategoriaP,
`BorradorOPublicado` = @Estado, `Activo` = 1
WHERE `idArt√≠culo` = id;

CALL `mydb`.`modificarImagenSoloRuta`(@idRuta1, rutaImagen1);

CALL `mydb`.`modificarImagenSoloRuta`(@idRuta2, rutaImagen2);

CALL `mydb`.`modificarVideo`(@idVideo, rutaVideo1);

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `ModificarCantidadClienteDeCarritoDetalle` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `ModificarCantidadClienteDeCarritoDetalle`(IN IdDetalleDeVentaP INT(11), IN IdVentaP INT(11) , IN Cantidad INT(11))
BEGIN

UPDATE `mydb`.`cliente_compra_articulo_detalle_de_venta`
SET
cliente_compra_articulo_detalle_de_venta.cantidad = Cantidad,
`IDVenta` = IdVentaP,
`IDDetalleDeVenta` = IdDetalleDeVentaP

WHERE `IDDetalleDeVenta` = IdDetalleDeVentaP;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `modificarImagenSoloRuta` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `modificarImagenSoloRuta`(IN id INT(11), IN Ruta VARCHAR(255))
BEGIN

UPDATE `mydb`.`imagen`
SET
`Ruta` = Ruta
WHERE `idImagen` = id;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `ModificarPrecioDelPresupuestoAdministrador` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `ModificarPrecioDelPresupuestoAdministrador`(IN IdDetalleDeVentaP INT(11), IN Precio FLOAT)
BEGIN

UPDATE `mydb`.`cliente_compra_articulo_detalle_de_venta`
SET
`Subtotal` = Precio
WHERE `IDDetalleDeVenta` = IdDetalleDeVentaP;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `ModificarUsuarios` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `ModificarUsuarios`(IN NombreUsuario VARCHAR(45), IN ApellidoPaterno VARCHAR(45),IN ApellidoMaterno VARCHAR(45), 
IN FechaDeNacimiento DATETIME, IN TelefonoUsuario char(255), IN DirecionUsuario VARCHAR(255), IN EmailUsuario VARCHAR(255),
IN NicknameUsuario VARCHAR(255), IN Contrase√±aUsuario VARCHAR(60), IN IdUsuariop INT)
BEGIN

UPDATE `mydb`.`usuario` SET `Nombre` = NombreUsuario,
`Apellido paterno` = ApellidoPaterno,
`Apellido materno` = ApellidoMaterno,
`Nacimiento` = FechaDeNacimiento,
`Tel√©fono` = TelefonoUsuario,
`Direcci√≥n` = DirecionUsuario,
`Email` = EmailUsuario,
`Nickname` = NicknameUsuario,
`Contrase√±a` = Contrase√±aUsuario
WHERE `idUsuario` = idUsuariop;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `modificarVideo` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `modificarVideo`(IN id INT(11), IN Ruta VARCHAR(255))
BEGIN

UPDATE `mydb`.`video`
SET
`Ruta` = Ruta
WHERE `idVideo` = id;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `ObtenerArticuloFiltradoPorCategoria` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `ObtenerArticuloFiltradoPorCategoria`(IN idCategoriaP INT(11))
BEGIN

CREATE TEMPORARY TABLE ArticulosParaDestacados (
  idDelArticuloAlQuePertenece1 int(11)
);

CREATE TEMPORARY TABLE TabladeImagenesdeProducto (
  idDelArticuloAlQuePertenece int(11),
  Ruta VARCHAR(255)
);

INSERT INTO ArticulosParaDestacados(
SELECT idArt√≠culo FROM art√≠culo WHERE Categoria = idCategoriaP
);

INSERT INTO TabladeImagenesdeProducto(
SELECT Imagen.Art√≠culo_idArt√≠culo , Imagen.Ruta FROM Imagen 
WHERE Art√≠culo_idArt√≠culo IN(
SELECT idArt√≠culo FROM art√≠culo WHERE Categoria = idCategoriaP
)
AND UsuarioOProducto = 1
GROUP BY Imagen.Art√≠culo_idArt√≠culo
); 

SELECT art√≠culo.idArt√≠culo, art√≠culo.Nombre, art√≠culo.Descripci√≥n, art√≠culo.Precio, art√≠culo.Fecha, art√≠culo.Unidades,categoria.Nombre As Categoria, TabladeImagenesdeProducto.Ruta AS Ruta
FROM Art√≠culo
INNER JOIN categoria 
ON categoria.idCategoria = Art√≠culo.Categoria
INNER JOIN ArticulosParaDestacados 
ON ArticulosParaDestacados.idDelArticuloAlQuePertenece1 = Art√≠culo.idArt√≠culo
INNER JOIN TabladeImagenesdeProducto 
ON TabladeImagenesdeProducto.idDelArticuloAlQuePertenece = Art√≠culo.idArt√≠culo
WHERE art√≠culo.BorradorOPublicado = 1 AND art√≠culo.Activo = 1;

DROP TABLE ArticulosParaDestacados;
DROP TABLE TabladeImagenesdeProducto;


END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `obtenerArticuloParaLista` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `obtenerArticuloParaLista`()
BEGIN

SELECT Nombre FROM art√≠culo WHERE BorradorOPublicado = 1 AND Activo = 1;


END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `obtenerArticuloPorID` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `obtenerArticuloPorID`(IN idp INT(11))
BEGIN

SELECT art√≠culo.idArt√≠culo, art√≠culo.Nombre, art√≠culo.Descripci√≥n, art√≠culo.Precio, art√≠culo.Fecha, art√≠culo.Unidades,categoria.Nombre As Categoria FROM Art√≠culo
INNER JOIN categoria 
ON categoria.idCategoria = Art√≠culo.Categoria
WHERE art√≠culo.idArt√≠culo = idp;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `obtenerArticuloPorIDConImagenesYVideo` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `obtenerArticuloPorIDConImagenesYVideo`(IN idp INT(11))
BEGIN

SET @RutaVideo = ( SELECT Video.Ruta FROM Video WHERE Video.Art√≠culo_IdArt√≠culo = idp );

CREATE TEMPORARY TABLE TabladeImagenesdeProducto (
  idDelArticuloAlQuePertenece int(11),
  Ruta VARCHAR(255)
);

INSERT INTO TabladeImagenesdeProducto(
SELECT Imagen.Art√≠culo_idArt√≠culo , Imagen.Ruta FROM Imagen 
WHERE Art√≠culo_idArt√≠culo = idp 
AND UsuarioOProducto = 1); 

SET @Ruta1 = ( SELECT Ruta FROM TabladeImagenesdeProducto WHERE idDelArticuloAlQuePertenece =  idp  ORDER BY Ruta ASC LIMIT 1 );
SET @Ruta2 = ( SELECT Ruta FROM TabladeImagenesdeProducto WHERE idDelArticuloAlQuePertenece =  idp  ORDER BY Ruta DESC LIMIT 1 );

SELECT art√≠culo.idArt√≠culo, art√≠culo.Nombre, art√≠culo.Descripci√≥n, art√≠culo.Precio, art√≠culo.Fecha, art√≠culo.Unidades,categoria.Nombre As Categoria,  @Ruta1 As Imagen1, @Ruta2 As Imagen2, @RutaVideo As Video
FROM Art√≠culo
INNER JOIN categoria 
ON categoria.idCategoria = Art√≠culo.Categoria
WHERE art√≠culo.idArt√≠culo = idp;

DROP TABLE TabladeImagenesdeProducto;


END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `obtenerArticuloPorIDUnaImagen` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `obtenerArticuloPorIDUnaImagen`(IN idp INT(11))
BEGIN

CREATE TEMPORARY TABLE TabladeImagenesdeProducto (
  idDelArticuloAlQuePertenece int(11),
  Ruta VARCHAR(255)
);

INSERT INTO TabladeImagenesdeProducto(
SELECT Imagen.Art√≠culo_idArt√≠culo , Imagen.Ruta FROM Imagen 
WHERE Art√≠culo_idArt√≠culo = idp 
AND UsuarioOProducto = 1); 

SET @Ruta1 = ( SELECT Ruta FROM TabladeImagenesdeProducto WHERE idDelArticuloAlQuePertenece =  idp  ORDER BY Ruta ASC LIMIT 1 );

SELECT art√≠culo.idArt√≠culo, art√≠culo.Nombre, art√≠culo.Descripci√≥n, art√≠culo.Precio, art√≠culo.Fecha, art√≠culo.Unidades,categoria.Nombre As Categoria,  @Ruta1 As Imagen1
FROM Art√≠culo
INNER JOIN categoria 
ON categoria.idCategoria = Art√≠culo.Categoria
WHERE art√≠culo.idArt√≠culo = idp;

DROP TABLE TabladeImagenesdeProducto;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `obtenerArticuloPorNombre` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `obtenerArticuloPorNombre`(IN nombre varchar(60))
BEGIN

SELECT art√≠culo.Nombre, art√≠culo.Descripci√≥n, art√≠culo.Fecha, art√≠culo.Precio, art√≠culo.categoria FROM Art√≠culo;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `ObtenerArticulosFiltradoPorCategoriaParaAdministrador` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `ObtenerArticulosFiltradoPorCategoriaParaAdministrador`(IN idCategoriaP INT(11))
BEGIN


CREATE TEMPORARY TABLE ArticulosParaDestacados (
  idDelArticuloAlQuePertenece1 int(11)
);

CREATE TEMPORARY TABLE TabladeImagenesdeProducto (
  idDelArticuloAlQuePertenece int(11),
  Ruta VARCHAR(255)
);

INSERT INTO ArticulosParaDestacados(
SELECT idArt√≠culo FROM art√≠culo WHERE Categoria = idCategoriaP
);

INSERT INTO TabladeImagenesdeProducto(
SELECT Imagen.Art√≠culo_idArt√≠culo , Imagen.Ruta FROM Imagen 
WHERE Art√≠culo_idArt√≠culo IN(
SELECT idArt√≠culo FROM art√≠culo WHERE Categoria = idCategoriaP
)
AND UsuarioOProducto = 1
GROUP BY Imagen.Art√≠culo_idArt√≠culo
); 


SELECT art√≠culo.idArt√≠culo, art√≠culo.Nombre, art√≠culo.Descripci√≥n, art√≠culo.Precio, categoria.Nombre As Categoria, TabladeImagenesdeProducto.Ruta, art√≠culo.BorradorOPublicado
FROM Art√≠culo
INNER JOIN categoria 
ON categoria.idCategoria = Art√≠culo.Categoria
INNER JOIN TabladeImagenesdeProducto
ON art√≠culo.idArt√≠culo = TabladeImagenesdeProducto.idDelArticuloAlQuePertenece
WHERE art√≠culo.Activo = 1;

DROP TABLE ArticulosParaDestacados;
DROP TABLE TabladeImagenesdeProducto;


END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `obtenerArticulosParaAdministrador` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `obtenerArticulosParaAdministrador`()
BEGIN


CREATE TEMPORARY TABLE TabladeImagenesdeProducto (
  idDelArticuloAlQuePertenece int(11),
  Ruta VARCHAR(255)
);

INSERT INTO TabladeImagenesdeProducto(SELECT Art√≠culo_idArt√≠culo, Ruta FROM Imagen GROUP BY Art√≠culo_idArt√≠culo); 

SELECT art√≠culo.idArt√≠culo, art√≠culo.Nombre, art√≠culo.Descripci√≥n, art√≠culo.Precio, categoria.Nombre As Categoria, TabladeImagenesdeProducto.Ruta, art√≠culo.BorradorOPublicado
FROM Art√≠culo
INNER JOIN categoria 
ON categoria.idCategoria = Art√≠culo.Categoria
INNER JOIN TabladeImagenesdeProducto
ON art√≠culo.idArt√≠culo = TabladeImagenesdeProducto.idDelArticuloAlQuePertenece
WHERE art√≠culo.Activo = 1;

DROP TABLE TabladeImagenesdeProducto;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `obtenerArticulosPorUsuario` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `obtenerArticulosPorUsuario`(IN nicknamep VARCHAR(60))
BEGIN

SET @idCliente = (SELECT usuario.idUsuario FROM usuario 
INNER JOIN cliente
ON usuario.idUsuario = cliente.Usuario_idUsuario
WHERE usuario.Nickname = nicknamep LIMIT 1);


CREATE TEMPORARY TABLE TabladeImagenesdeProducto (
  idDelArticuloAlQuePertenece int(11),
  Ruta VARCHAR(255)
);

CREATE TEMPORARY TABLE TablaDeProductosQueYaSeCompraron (
  idDelComprado int(11), 
  comprado TINYINT default 0,
  PRIMARY KEY (idDelComprado)
);

CREATE TEMPORARY TABLE Productos (
  idDeProducto int(11),
  compradoONo TINYINT default 0,
  PRIMARY KEY (idDeProducto)
);

INSERT INTO TabladeImagenesdeProducto(SELECT Art√≠culo_idArt√≠culo, Ruta FROM Imagen GROUP BY Art√≠culo_idArt√≠culo); 
INSERT INTO Productos(SELECT idArt√≠culo, 0 FROM art√≠culo); 
INSERT INTO TablaDeProductosQueYaSeCompraron(SELECT DISTINCT idArticulo, 1 FROM historial_de_compra_cliente_compra_articulo_detalle_de_venta WHERE idCliente = @idCliente ORDER BY idArticulo);
 
UPDATE Productos
SET
compradoONo = 1
WHERE idDeProducto IN (SELECT idDelComprado FROM TablaDeProductosQueYaSeCompraron);

SELECT art√≠culo.idArt√≠culo, art√≠culo.Nombre, art√≠culo.Descripci√≥n, art√≠culo.Precio, 
categoria.Nombre As Categoria, TabladeImagenesdeProducto.Ruta, 
Productos.compradoONo AS Comprado
FROM Art√≠culo
INNER JOIN categoria 
ON categoria.idCategoria = Art√≠culo.Categoria
INNER JOIN TabladeImagenesdeProducto
ON art√≠culo.idArt√≠culo = TabladeImagenesdeProducto.idDelArticuloAlQuePertenece
INNER JOIN Productos
ON art√≠culo.idArt√≠culo = Productos.idDeProducto
WHERE art√≠culo.BorradorOPublicado = 1 AND art√≠culo.Activo = 1;

DROP TABLE TabladeImagenesdeProducto;
DROP TABLE TablaDeProductosQueYaSeCompraron;
DROP TABLE Productos;


END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `obtenerArticulosSinUsuario` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `obtenerArticulosSinUsuario`()
BEGIN


CREATE TEMPORARY TABLE TabladeImagenesdeProducto (
  idDelArticuloAlQuePertenece int(11),
  Ruta VARCHAR(255)
);

INSERT INTO TabladeImagenesdeProducto(SELECT Art√≠culo_idArt√≠culo, Ruta FROM Imagen GROUP BY Art√≠culo_idArt√≠culo); 

SELECT art√≠culo.idArt√≠culo, art√≠culo.Nombre, art√≠culo.Descripci√≥n, art√≠culo.Precio, categoria.Nombre As Categoria, TabladeImagenesdeProducto.Ruta
FROM Art√≠culo
INNER JOIN categoria 
ON categoria.idCategoria = Art√≠culo.Categoria
INNER JOIN TabladeImagenesdeProducto
ON art√≠culo.idArt√≠culo = TabladeImagenesdeProducto.idDelArticuloAlQuePertenece
WHERE art√≠culo.BorradorOPublicado = 1 AND art√≠culo.Activo = 1;

DROP TABLE TabladeImagenesdeProducto;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `obtenerCarritoParaClientes` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `obtenerCarritoParaClientes`(IN nicknamep VARCHAR(60))
BEGIN

SET @idCliente = (SELECT usuario.idUsuario FROM usuario 
INNER JOIN cliente
ON usuario.idUsuario = cliente.Usuario_idUsuario
WHERE usuario.Nickname = nicknamep LIMIT 1);


SELECT cliente_compra_articulo_detalle_de_venta.IDDetalleDeVenta AS ID, cliente_compra_articulo_folio.IDClienteCompraArt√≠culo AS Venta, usuario.Nickname AS Usuario , art√≠culo.idArt√≠culo AS 'Articulo', art√≠culo.Nombre, cliente_compra_articulo_detalle_de_venta.Cantidad,  Subtotal
FROM cliente_compra_articulo_folio
INNER JOIN usuario 
ON usuario.idUsuario = cliente_compra_articulo_folio.Cliente_idCliente
INNER JOIN cliente_compra_articulo_detalle_de_venta
ON cliente_compra_articulo_detalle_de_venta.IDVenta = cliente_compra_articulo_folio.IDClienteCompraArt√≠culo
INNER JOIN art√≠culo
ON art√≠culo.idArt√≠culo = cliente_compra_articulo_detalle_de_venta.idArticulo
WHERE  usuario.idUsuario  = @idCliente AND cliente_compra_articulo_folio.Activo = 1 AND cliente_compra_articulo_folio.PresupuestoOCarrito = 1 AND cliente_compra_articulo_detalle_de_venta.Activo = 1;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `obtenerCarritoPorID` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `obtenerCarritoPorID`(IN id INT)
BEGIN

SELECT cliente_compra_articulo_detalle_de_venta.IDDetalleDeVenta AS ID, cliente_compra_articulo_folio.IDClienteCompraArt√≠culo AS Venta, usuario.Nickname AS Usuario , art√≠culo.idArt√≠culo AS 'Articulo', art√≠culo.Nombre , cliente_compra_articulo_detalle_de_venta.Cantidad, Subtotal
FROM cliente_compra_articulo_folio
INNER JOIN usuario 
ON usuario.idUsuario = cliente_compra_articulo_folio.Cliente_idCliente
INNER JOIN cliente_compra_articulo_detalle_de_venta
ON cliente_compra_articulo_detalle_de_venta.IDVenta = cliente_compra_articulo_folio.IDClienteCompraArt√≠culo
INNER JOIN art√≠culo
ON art√≠culo.idArt√≠culo = cliente_compra_articulo_detalle_de_venta.idArticulo
WHERE PresupuestoOCarrito = 1 AND cliente_compra_articulo_folio.Activo = 1 AND cliente_compra_articulo_detalle_de_venta.IDDetalleDeVenta = id;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `obtenerCategorias` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `obtenerCategorias`()
BEGIN

SELECT categoria.idCategoria AS ID, categoria.Nombre FROM categoria;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `ObtenerComentariosPorArticulo` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `ObtenerComentariosPorArticulo`(IN Producto INT(11))
BEGIN

SELECT usuario.Nickname AS Usuario, FechaDeComentario AS Fecha, Texto AS Comentario FROM usuario_comenta_art√≠culo 
INNER JOIN art√≠culo
ON art√≠culo.idArt√≠culo = usuario_comenta_art√≠culo.Art√≠culo_idArt√≠culo
INNER JOIN usuario
ON usuario.idUsuario = usuario_comenta_art√≠culo.Usuario_idUsuario
WHERE Art√≠culo_idArt√≠culo = Producto ORDER BY FechaDeComentario;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `ObtenerDestacados` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `ObtenerDestacados`()
BEGIN


CREATE TEMPORARY TABLE ArticulosParaDestacados (
  idDelArticuloAlQuePertenece1 int(11), 
  otrodato int(11), 
  Razon VARCHAR(60)
);

CREATE TEMPORARY TABLE TabladeImagenesdeProducto (
  idDelArticuloAlQuePertenece int(11),
  Ruta VARCHAR(255)
);

INSERT INTO ArticulosParaDestacados(
SELECT Art√≠culo_idArt√≠culo AS Rankeado, COUNT(Art√≠culo_idArt√≠culo) As Numero, 'El mas comentado' 
FROM usuario_comenta_art√≠culo
GROUP BY Art√≠culo_idArt√≠culo
ORDER BY 2 DESC
LIMIT 1
); 

INSERT INTO ArticulosParaDestacados(
SELECT idArticulo AS Comprado, COUNT(idArticulo) AS Numero, 'El mas comprado' FROM historial_de_compra_cliente_compra_articulo_detalle_de_venta
GROUP BY historial_de_compra_cliente_compra_articulo_detalle_de_venta.idArticulo
ORDER BY 2 DESC
LIMIT 1
);

INSERT INTO ArticulosParaDestacados(SELECT idArt√≠culo AS Nuevo, Precio, 'El mas nuevo' FROM art√≠culo ORDER BY Fecha DESC LIMIT 1);  
INSERT INTO ArticulosParaDestacados(SELECT idArt√≠culo AS Barato, Precio, 'El mas barato' FROM art√≠culo ORDER BY Precio ASC LIMIT 1); 
INSERT INTO ArticulosParaDestacados(SELECT idArticulo AS Querido , COUNT(idArticulo) AS Numero, 'El mas querido' FROM cliente_compra_articulo_detalle_de_venta
GROUP BY idArticulo
ORDER BY 2 DESC LIMIT 1
); 

INSERT INTO ArticulosParaDestacados(SELECT idArt√≠culo AS Caro, Precio, 'El mas caro' FROM art√≠culo ORDER BY Precio DESC LIMIT 1); 

INSERT INTO TabladeImagenesdeProducto(
SELECT Imagen.Art√≠culo_idArt√≠culo , Imagen.Ruta FROM Imagen 
WHERE Art√≠culo_idArt√≠culo IN(
SELECT idDelArticuloAlQuePertenece1 FROM ArticulosParaDestacados 
)
AND UsuarioOProducto = 1
GROUP BY Imagen.Art√≠culo_idArt√≠culo
); 

SELECT art√≠culo.idArt√≠culo, art√≠culo.Nombre, art√≠culo.Descripci√≥n, art√≠culo.Precio, art√≠culo.Fecha, art√≠culo.Unidades,categoria.Nombre As Categoria, TabladeImagenesdeProducto.Ruta AS Ruta, ArticulosParaDestacados.Razon
FROM Art√≠culo
INNER JOIN categoria 
ON categoria.idCategoria = Art√≠culo.Categoria
INNER JOIN ArticulosParaDestacados 
ON ArticulosParaDestacados.idDelArticuloAlQuePertenece1 = Art√≠culo.idArt√≠culo
INNER JOIN TabladeImagenesdeProducto 
ON TabladeImagenesdeProducto.idDelArticuloAlQuePertenece = Art√≠culo.idArt√≠culo;

DROP TABLE ArticulosParaDestacados;
DROP TABLE TabladeImagenesdeProducto;


END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `ObtenerFolioDePresupuestoDeUnCliente` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `ObtenerFolioDePresupuestoDeUnCliente`(IN nicknamep varchar(60))
BEGIN

SET @idClienteQuePresupuesta = (
SELECT usuario.idUsuario FROM usuario 
INNER JOIN cliente
ON usuario.idUsuario = cliente.Usuario_idUsuario
WHERE usuario.Nickname = nicknamep
);

SET @Folio = (SELECT IDClienteCompraArt√≠culo FROM cliente_compra_art√≠culo WHERE Cliente_idCliente = @idClienteQuePresupuesta);
/*
SELECT * FROM `detalle de venta` WHERE IDVenta = @Folio;
SELECT * FROM cliente_compra_art√≠culo WHERE IDClienteCompraArt√≠culo = @Folio;*/

/*SET @Numero = (SELECT COUNT(IDClienteCompraArt√≠culo) FROM cliente_compra_art√≠culo WHERE Cliente_idCliente = @idClienteQuePresupuesta);
*/

SELECT COUNT(IDVenta) AS Numero FROM `detalle de venta` WHERE IDVenta = @Folio;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `ObtenerHistorialDeCompraPorUsuario` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `ObtenerHistorialDeCompraPorUsuario`(IN nicknamep VARCHAR(60))
BEGIN

SET @idCliente = (SELECT usuario.idUsuario FROM usuario 
INNER JOIN cliente
ON usuario.idUsuario = cliente.Usuario_idUsuario
WHERE usuario.Nickname = nicknamep LIMIT 1);

SELECT art√≠culo.nombre AS Articulo, Cantidad, FechaDeCompra AS Fecha, Subtotal, Total, IDVenta AS Venta,`tipo de pago`.Nombre AS Pago FROM historial_de_compra_cliente_compra_articulo_detalle_de_venta
INNER JOIN historial_de_compra_cliente_compra_articulo_folio
ON historial_de_compra_cliente_compra_articulo_detalle_de_venta.IDFolioHistorial = historial_de_compra_cliente_compra_articulo_folio.IDClienteCompraArt√≠culo
INNER JOIN art√≠culo
ON art√≠culo.idArt√≠culo = historial_de_compra_cliente_compra_articulo_detalle_de_venta.idArticulo
INNER JOIN `tipo de pago`
ON `tipo de pago`.`idTipo de pago` = historial_de_compra_cliente_compra_articulo_folio.`Tipo de pago_idTipo de pago`
WHERE historial_de_compra_cliente_compra_articulo_folio.Cliente_idCliente = @idCliente;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `ObtenerHistorialDeCompraPorUsuarioConFiltros` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `ObtenerHistorialDeCompraPorUsuarioConFiltros`(IN nicknamep VARCHAR(60), IN idPagoP INT(11), IN idArticuloP INT(11), IN orden INT(11))
BEGIN

SET @idCliente = (SELECT usuario.idUsuario FROM usuario 
INNER JOIN cliente
ON usuario.idUsuario = cliente.Usuario_idUsuario
WHERE usuario.Nickname = nicknamep LIMIT 1);

/*
SELECT art√≠culo.nombre AS Articulo, Cantidad, FechaDeCompra AS Fecha, Subtotal, Total, IDVenta AS Venta,`tipo de pago`.Nombre AS Pago FROM historial_de_compra_cliente_compra_articulo_detalle_de_venta
INNER JOIN historial_de_compra_cliente_compra_articulo_folio
ON historial_de_compra_cliente_compra_articulo_detalle_de_venta.IDFolioHistorial = historial_de_compra_cliente_compra_articulo_folio.IDClienteCompraArt√≠culo
INNER JOIN art√≠culo
ON art√≠culo.idArt√≠culo = historial_de_compra_cliente_compra_articulo_detalle_de_venta.idArticulo
INNER JOIN `tipo de pago`
ON `tipo de pago`.`idTipo de pago` = historial_de_compra_cliente_compra_articulo_folio.`Tipo de pago_idTipo de pago`
WHERE historial_de_compra_cliente_compra_articulo_folio.Cliente_idCliente = @idCliente
AND `tipo de pago`.`idTipo de pago` = idPagoP
AND historial_de_compra_cliente_compra_articulo_detalle_de_venta.idArticulo = idArticuloP ;
*/

IF orden = 1 THEN
   
SELECT art√≠culo.nombre AS Articulo, Cantidad, FechaDeCompra AS Fecha, Subtotal, Total, IDVenta AS Venta,`tipo de pago`.Nombre AS Pago FROM historial_de_compra_cliente_compra_articulo_detalle_de_venta
INNER JOIN historial_de_compra_cliente_compra_articulo_folio
ON historial_de_compra_cliente_compra_articulo_detalle_de_venta.IDFolioHistorial = historial_de_compra_cliente_compra_articulo_folio.IDClienteCompraArt√≠culo
INNER JOIN art√≠culo
ON art√≠culo.idArt√≠culo = historial_de_compra_cliente_compra_articulo_detalle_de_venta.idArticulo
INNER JOIN `tipo de pago`
ON `tipo de pago`.`idTipo de pago` = historial_de_compra_cliente_compra_articulo_folio.`Tipo de pago_idTipo de pago`
WHERE historial_de_compra_cliente_compra_articulo_folio.Cliente_idCliente = @idCliente
AND `tipo de pago`.`idTipo de pago` = idPagoP
AND historial_de_compra_cliente_compra_articulo_detalle_de_venta.idArticulo = idArticuloP
ORDER BY FechaDeCompra ASC;

ELSE
  
SELECT art√≠culo.nombre AS Articulo, Cantidad, FechaDeCompra AS Fecha, Subtotal, Total, IDVenta AS Venta,`tipo de pago`.Nombre AS Pago FROM historial_de_compra_cliente_compra_articulo_detalle_de_venta
INNER JOIN historial_de_compra_cliente_compra_articulo_folio
ON historial_de_compra_cliente_compra_articulo_detalle_de_venta.IDFolioHistorial = historial_de_compra_cliente_compra_articulo_folio.IDClienteCompraArt√≠culo
INNER JOIN art√≠culo
ON art√≠culo.idArt√≠culo = historial_de_compra_cliente_compra_articulo_detalle_de_venta.idArticulo
INNER JOIN `tipo de pago`
ON `tipo de pago`.`idTipo de pago` = historial_de_compra_cliente_compra_articulo_folio.`Tipo de pago_idTipo de pago`
WHERE historial_de_compra_cliente_compra_articulo_folio.Cliente_idCliente = @idCliente
AND `tipo de pago`.`idTipo de pago` = idPagoP
AND historial_de_compra_cliente_compra_articulo_detalle_de_venta.idArticulo = idArticuloP
ORDER BY FechaDeCompra DESC;

END IF;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `obtenerPresupuestoParaClientes` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `obtenerPresupuestoParaClientes`(IN nicknamep VARCHAR(60))
BEGIN

SET @idCliente = (SELECT usuario.idUsuario FROM usuario 
INNER JOIN cliente
ON usuario.idUsuario = cliente.Usuario_idUsuario
WHERE usuario.Nickname = nicknamep LIMIT 1);


SELECT cliente_compra_articulo_detalle_de_venta.IDDetalleDeVenta AS ID, cliente_compra_articulo_folio.IDClienteCompraArt√≠culo AS Venta, usuario.Nickname AS Usuario , art√≠culo.idArt√≠culo AS 'Articulo', art√≠culo.Nombre , Subtotal
FROM cliente_compra_articulo_folio
INNER JOIN usuario 
ON usuario.idUsuario = cliente_compra_articulo_folio.Cliente_idCliente
INNER JOIN cliente_compra_articulo_detalle_de_venta
ON cliente_compra_articulo_detalle_de_venta.IDVenta = cliente_compra_articulo_folio.IDClienteCompraArt√≠culo
INNER JOIN art√≠culo
ON art√≠culo.idArt√≠culo = cliente_compra_articulo_detalle_de_venta.idArticulo
WHERE  usuario.idUsuario  = @idCliente AND cliente_compra_articulo_folio.Activo = 1 AND cliente_compra_articulo_folio.PresupuestoOCarrito = 0 AND cliente_compra_articulo_detalle_de_venta.Activo = 1;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `obtenerPresupuestoPorID` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `obtenerPresupuestoPorID`(IN id INT)
BEGIN

SELECT cliente_compra_articulo_detalle_de_venta.IDDetalleDeVenta AS ID, cliente_compra_articulo_folio.IDClienteCompraArt√≠culo AS Venta, usuario.Nickname AS Usuario , art√≠culo.idArt√≠culo AS 'Articulo', art√≠culo.Nombre , Subtotal
FROM cliente_compra_articulo_folio
INNER JOIN usuario 
ON usuario.idUsuario = cliente_compra_articulo_folio.Cliente_idCliente
INNER JOIN cliente_compra_articulo_detalle_de_venta
ON cliente_compra_articulo_detalle_de_venta.IDVenta = cliente_compra_articulo_folio.IDClienteCompraArt√≠culo
INNER JOIN art√≠culo
ON art√≠culo.idArt√≠culo = cliente_compra_articulo_detalle_de_venta.idArticulo
WHERE PresupuestoOCarrito = 0 AND cliente_compra_articulo_folio.Activo = 1 AND cliente_compra_articulo_detalle_de_venta.IDDetalleDeVenta = id;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `obtenerPresupuestosParaAdministrador` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `obtenerPresupuestosParaAdministrador`()
BEGIN

SELECT cliente_compra_articulo_detalle_de_venta.IDDetalleDeVenta AS ID, cliente_compra_articulo_folio.IDClienteCompraArt√≠culo AS Venta, usuario.Nickname AS Usuario , art√≠culo.idArt√≠culo AS 'Articulo', art√≠culo.Nombre ,  art√≠culo.Precio AS Subtotal
FROM cliente_compra_articulo_folio
INNER JOIN usuario 
ON usuario.idUsuario = cliente_compra_articulo_folio.Cliente_idCliente
INNER JOIN cliente_compra_articulo_detalle_de_venta
ON cliente_compra_articulo_detalle_de_venta.IDVenta = cliente_compra_articulo_folio.IDClienteCompraArt√≠culo
INNER JOIN art√≠culo
ON art√≠culo.idArt√≠culo = cliente_compra_articulo_detalle_de_venta.idArticulo
WHERE cliente_compra_articulo_folio.Activo = 1 AND cliente_compra_articulo_folio.PresupuestoOCarrito = 0 AND cliente_compra_articulo_detalle_de_venta.Activo = 1;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `ObtenerProductosPorCategoria` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `ObtenerProductosPorCategoria`(IN id INT(11))
BEGIN

SELECT * FROM art√≠culo WHERE Categoria = id;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `obtenerTiposDePago` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `obtenerTiposDePago`()
BEGIN

SELECT `idTipo de pago` AS id, Nombre FROM `tipo de pago` ORDER BY 1;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `obtenerUsuarios` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `obtenerUsuarios`()
BEGIN

SELECT * FROM usuario;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-12-10  3:37:42
