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
-- Table structure for table `artículo`
--

DROP TABLE IF EXISTS `artículo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `artículo` (
  `idArtículo` int(11) NOT NULL AUTO_INCREMENT,
  `Nombre` varchar(100) NOT NULL,
  `Descripción` varchar(255) NOT NULL,
  `Fecha` datetime DEFAULT NULL,
  `Precio` float NOT NULL,
  `Unidades` decimal(10,0) NOT NULL,
  `Categoria` int(11) NOT NULL,
  `BorradorOPublicado` tinyint(4) DEFAULT '0',
  `Activo` tinyint(4) DEFAULT '1',
  PRIMARY KEY (`idArtículo`),
  UNIQUE KEY `idArtículo_UNIQUE` (`idArtículo`),
  UNIQUE KEY `Nombre_UNIQUE` (`Nombre`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `artículo`
--

LOCK TABLES `artículo` WRITE;
/*!40000 ALTER TABLE `artículo` DISABLE KEYS */;
INSERT INTO `artículo` VALUES (1,'Unidad de Estado Sólido Kingston A400 de 480 GB, 2.5\" SATA III (6Gb/s)','Disco Duro tipo unidad de estado sólido capacidad 480GB interfaz SATA III (6.0 Gb/s) factor de forma 2.5\"','2019-10-17 04:08:41',1099,29,2,1,1),(2,'Procesador Intel Core i7-8700','Octava Generación, 3.2 GHz (hasta 4.6 GHz) con Intel UHD Graphics 630, Socket 1151, Caché 12 MB, Six-Core, 14nm','2019-10-18 00:45:43',7399,29,2,1,1),(3,'Tarjeta de Video NVIDIA Gigabyte GeForce GTX 1060 Windforce OC','6GB GDDR5, 1xHDMI, 2xDVI, 1xDisplayPort, PCI Express x16 3.0','2019-10-18 00:50:41',4899,29,2,1,0),(4,'Bocinas Logitech Z906 Digital','Autentico Sonido 5.1 Dolby Digital y DTS, Certificacion THX, 500 Watts RMS de Poder total','2019-10-18 00:51:43',4299,22,3,1,1),(5,'Regulador Koblenz 1400VA/600W','con 8 contactos','2019-10-18 00:54:56',299,19,5,1,1),(6,'Kaspersky Anti-Virus 2019, 10 PCs, 1 Año','Tu protección comienza con la de tu PC. Es por eso que nuestra protección esencial para PC la protege de virus, ransomware, phishing, spyware, sitios web peligrosos y mucho más.','2019-10-18 04:35:47',49,14,6,1,1),(7,'Mini Mouse Rosa','Optico Inalambrico Logitech M187 USB Color rosa','2019-11-22 04:53:31',249,25,3,1,1),(8,'Mouse Pad Primus','PMP-10L Gaming Arena color morado','2019-11-22 04:59:37',369,29,3,1,0),(9,'Laptop Lenovo Legion Y730','Procesador Intel Core i5 8300H hasta 4 GHz Memoria de 8GB DDR4 Disco Duro de 1TB SSD de 128GB Pantalla de 15.6 LED Video GeForce GTX 1050 Ti Unidad Optica No Incluida SO Windows 10 Home 64 Bits','2019-11-24 04:24:47',21699,29,1,0,0),(10,'Memoria ADATA Premier','microSDHC UHS-1 de 32 GB, clase 10, incluye adaptador SD','2019-11-24 04:39:52',79,23,4,1,1),(11,'Eset Internet Security 2019','Para 1 Usuario te brinda la ultima tecnologiÂ­a de proteccion para tus actividades online en computadoras o smartphones.','2019-11-26 01:14:16',269,8,6,1,1),(12,'Audifonos Logitech','Audifonos con microfono bluetooth','2019-11-26 20:01:36',2600,29,2,0,1),(13,'Workstation HP ZBook 15v G5','Procesador Intel Core i7 8750H hasta 4.20 GHz, Memoria RAM 8 GB DDR4, Disco Duro de 1 TB, Pantalla de 15.6 pulgadas LED, Video NVIDIA Quadro P600 con 4GB GDDR5, Windows 10 Pro 64 Bits.','2019-12-02 22:45:23',25999,16,1,1,1),(14,'Smartphone Xiaomi Redmi Note 8','Procesador Snapdragon 665 Octa Core hasta 2.0GHz, Memoria RAM de 4GB, Almacenamiento de 64GB, Pantalla LED Multi Touch de 6.3','2019-12-02 22:47:14',3999,19,5,1,1),(15,'Kit HP de Mochila y Mouse Classic','15 pulgadas, compatible con Windows 7, 8, 10, Mac OS 10X y superior','2019-12-09 01:22:17',449,145,3,1,1),(16,'Television Samsung LED Smart TV de 55 pulgadas ','Ultra 4K, disfruta tus contenidos HDR con mejor claridad y una expresion de color precisa. Samsung UHD TV ofrece detalles mas nitidos, incluso en escenas oscuras o brillantes.','2019-12-09 22:10:52',9999,161,2,1,1);
/*!40000 ALTER TABLE `artículo` ENABLE KEYS */;
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
  `Cliente_Compra_Artículo_Cliente_idCliente` int(11) NOT NULL,
  `Cliente_Compra_Artículo_Artículo_idArtículo` int(11) NOT NULL,
  `IdVenta` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idChat`,`Cliente_Compra_Artículo_Cliente_idCliente`,`Cliente_Compra_Artículo_Artículo_idArtículo`),
  UNIQUE KEY `idChat_UNIQUE` (`idChat`),
  KEY `fk_Chat_Cliente_Compra_Artículo1_idx` (`Cliente_Compra_Artículo_Cliente_idCliente`,`Cliente_Compra_Artículo_Artículo_idArtículo`),
  CONSTRAINT `fk_Chat_Cliente_Compra_Artículo1` FOREIGN KEY (`Cliente_Compra_Artículo_Cliente_idCliente`, `Cliente_Compra_Artículo_Artículo_idArtículo`) REFERENCES `cliente_compra_artículo` (`Cliente_idCliente`, `Artículo_idArtículo`)
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
  `IDClienteCompraArtículo` int(11) NOT NULL,
  `PresupuestoOCarrito` tinyint(4) NOT NULL,
  `Activo` tinyint(4) DEFAULT '1',
  PRIMARY KEY (`IDClienteCompraArtículo`)
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
-- Table structure for table `cliente_compra_artículo`
--

DROP TABLE IF EXISTS `cliente_compra_artículo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cliente_compra_artículo` (
  `Cliente_idCliente` int(11) NOT NULL,
  `Artículo_idArtículo` int(11) NOT NULL,
  `Tipo de pago_idTipo de pago` int(11) NOT NULL,
  `Total` float DEFAULT NULL,
  `IDClienteCompraArtículo` varchar(45) DEFAULT NULL,
  `PresupuestoOCarrito` tinyint(4) NOT NULL,
  `Activo` tinyint(4) DEFAULT '1',
  PRIMARY KEY (`Cliente_idCliente`,`Artículo_idArtículo`),
  KEY `fk_Cliente_has_Artículo_Artículo1_idx` (`Artículo_idArtículo`),
  KEY `fk_Cliente_has_Artículo_Cliente1_idx` (`Cliente_idCliente`),
  KEY `fk_Cliente_Compra_Artículo_Tipo de pago1_idx` (`Tipo de pago_idTipo de pago`),
  CONSTRAINT `fk_Cliente_Compra_Artículo_Tipo de pago1` FOREIGN KEY (`Tipo de pago_idTipo de pago`) REFERENCES `tipo de pago` (`idTipo de pago`),
  CONSTRAINT `fk_Cliente_has_Artículo_Cliente1` FOREIGN KEY (`Cliente_idCliente`) REFERENCES `cliente` (`idCliente`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cliente_compra_artículo`
--

LOCK TABLES `cliente_compra_artículo` WRITE;
/*!40000 ALTER TABLE `cliente_compra_artículo` DISABLE KEYS */;
INSERT INTO `cliente_compra_artículo` VALUES (3,1,1,1099,'1',0,0),(3,2,2,7399,'1',0,0),(3,3,1,1099,'4',0,0),(3,4,1,1099,'3',0,0),(3,10,1,1099,'2',0,0),(4,2,1,1099,'6',0,0),(4,7,1,1099,'5',0,0),(4,10,1,1099,'7',0,1);
/*!40000 ALTER TABLE `cliente_compra_artículo` ENABLE KEYS */;
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
  `Cliente_Compra_Artículo_Cliente_idCliente` int(11) NOT NULL,
  `Cliente_Compra_Artículo_Artículo_idArtículo` int(11) NOT NULL,
  `IDVenta` int(11) NOT NULL,
  `IDDetalleDeVenta` int(11) NOT NULL,
  KEY `fk_Detalle de venta_Cliente_Compra_Artículo1_idx` (`Cliente_Compra_Artículo_Cliente_idCliente`,`Cliente_Compra_Artículo_Artículo_idArtículo`),
  CONSTRAINT `fk_Detalle de venta_Cliente_Compra_Artículo1` FOREIGN KEY (`Cliente_Compra_Artículo_Cliente_idCliente`, `Cliente_Compra_Artículo_Artículo_idArtículo`) REFERENCES `cliente_compra_artículo` (`Cliente_idCliente`, `Artículo_idArtículo`)
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
  `Cliente_Compra_Artículo_Cliente_idCliente` int(11) NOT NULL,
  `Cliente_Compra_Artículo_Artículo_idArtículo` int(11) NOT NULL,
  `IDVenta` int(11) NOT NULL,
  KEY `fk_Detalle de venta_Cliente_Compra_Artículo1_idx` (`Cliente_Compra_Artículo_Cliente_idCliente`,`Cliente_Compra_Artículo_Artículo_idArtículo`)
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
  `IDClienteCompraArtículo` int(11) NOT NULL,
  `Activo` tinyint(4) DEFAULT '1',
  PRIMARY KEY (`IDClienteCompraArtículo`)
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
  `Artículo_idArtículo` int(11) NOT NULL,
  `Tipo de pago_idTipo de pago` int(11) NOT NULL,
  `Total` float DEFAULT NULL,
  `IDClienteCompraArtículo` varchar(45) DEFAULT NULL,
  `Cliente_Compra_Artículocol` varchar(45) NOT NULL,
  `PresupuestoOCarrito` tinyint(4) NOT NULL,
  PRIMARY KEY (`Cliente_idCliente`,`Artículo_idArtículo`),
  KEY `fk_Cliente_has_Artículo_Artículo1_idx` (`Artículo_idArtículo`),
  KEY `fk_Cliente_has_Artículo_Cliente1_idx` (`Cliente_idCliente`),
  KEY `fk_Cliente_Compra_Artículo_Tipo de pago1_idx` (`Tipo de pago_idTipo de pago`)
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
  `Artículo_idArtículo` int(11) NOT NULL,
  `UsuarioOProducto` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`idImagen`),
  UNIQUE KEY `idImagen_UNIQUE` (`idImagen`),
  KEY `fk_Imagen_Artículo1_idx` (`Artículo_idArtículo`),
  CONSTRAINT `fk_Imagen_Artículo1` FOREIGN KEY (`Artículo_idArtículo`) REFERENCES `artículo` (`idArtículo`)
) ENGINE=InnoDB AUTO_INCREMENT=38 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `imagen`
--

LOCK TABLES `imagen` WRITE;
/*!40000 ALTER TABLE `imagen` DISABLE KEYS */;
INSERT INTO `imagen` VALUES (1,'css/images/ProcesadorInterCorei78700k8va.jpg',NULL,2,1),(2,'css/images/TarjetasdeVideoGigabyt.jpg',NULL,3,1),(3,'css/images/BocinasLogitech980.jpg',NULL,1,1),(4,'css/images/BocinasLogitech980.jpg',NULL,4,1),(5,'css/images/Accesorios-Herramientas-MOD-HUELLA.jpg',NULL,5,1),(6,'css/images/Accesorios-Audifonos-y-Microfonos-Yeyian-YAO.jpg',NULL,6,1),(7,'css/images/Electronica-Proyectores-BenQ.jpg',NULL,1,1),(8,'',NULL,2,1),(9,'css/images/ProcesadorInterCorei78700k8va.jpg',NULL,3,1),(10,'css/images/user.jpg',NULL,5,1),(11,'css/images/user.jpg',NULL,5,0),(12,'css/images/user.jpg',NULL,1,0),(13,'css/images/user1.jpg',NULL,2,0),(14,'css/images/user2.jpg',NULL,3,0),(15,'css/images/user3.jpg',NULL,4,0),(16,'css/images/user5.jpg',_binary '�\��\�\0JFIF\0\0\0\0\0\0�\�\0�Photoshop 3.0\08BIM\0\0\0\0\0�g\04yvNO7M2v0b04LLy5Fda(\0bFBMD01000ac203000047100000081e00004f21000008250000a42900001137000094390000ae3c0000c53f0000e9570000�\�ICC_PROFILE\0\0\0lcms\0\0mntrRGB XYZ \�\0\0\0\0)\09acspAPPL\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0�\�\0\0\0\0\0\�-lcms\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\ndesc\0\0\0�\0\0\0^cprt\0\0\\\0\0\0wtpt\0\0h\0\0\0bkpt\0\0|\0\0\0rXYZ\0\0�\0\0\0gXYZ\0\0�\0\0\0bXYZ\0\0�\0\0\0rTRC\0\0\�\0\0\0@gTRC\0\0\�\0\0\0@bTRC\0\0\�\0\0\0@desc\0\0\0\0\0\0\0c2\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0text\0\0\0\0FB\0\0XYZ \0\0\0\0\0\0�\�\0\0\0\0\0\�-XYZ \0\0\0\0\0\0\0\03\0\0�XYZ \0\0\0\0\0\0o�\0\08�\0\0�XYZ \0\0\0\0\0\0b�\0\0��\0\0\�XYZ \0\0\0\0\0\0$�\0\0�\0\0�\�curv\0\0\0\0\0\0\0\Z\0\0\0\�\�c�k�?Q4!�)�2;�FQw]\�kpz���|�i�}\�\�\�0���\�\0C\0		\n\n	\r\r\"##!  %*5-%\'2(  .?/279<<<$-BFA:F5;<9�\�\0C\n\n\n9& &99999999999999999999999999999999999999999999999999�\�\0��\0\"\0�\�\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0�\�\0\Z\0\0\0\0\0\0\0\0\0\0\0\0\0�\�\0\Z\0\0\0\0\0\0\0\0\0\0\0\0\0�\�\0\0\0\0\0�JiV\�e!\�\�L�0.�\\)�ui\nWV��p���0/��Ť\'t��Sl�ӳ�5z5�\�\�X%e	��+�\�\�]�ue�J�Q\�hf^\�˱�s*p�.\�[�^0�\Z>\"s�@\�m=N�y\�\�\r��\�]S\�4Q�y\Z�[F�2U�EZ�z5l���ůM��K]\��@l+\�%9\�:�Zr�����Ϲbz|ej\�2{�Z-5�\�H�P\�\�-�\0\�j\�� �\�P\0@UA\n\"�\�E6N8ӋA����+3:Hܥ4�,.�\���І��Uf(\�z�\�\\U W{D�O?a�\�\�\�+S(L�B�%l�+�0��^7�\0�¢�(4P\0A@\0\0F�\�\n\r\0PѣnF+d�#I%V\�<�\�dr�w6�\'����\�h��S\�\�ɶ��w \�\�\�^�i���\���7�\0���\n \n��&*+A����4E[PʺR2K�I$RW�[\�\�\0�c�6m\�na:\�u},\�-�})a~\�S�5�A�\�]d��$J�<0lյ\��\0�\0`(*�0TI�\�\0@@\0\0(\0\0�\0�K�JFIw=\�d�\�$�\�ǁ N-^s�\�gLb����>\�\�5ѭ\�̳���\�ѺǏj=�\�[�o�\�h\0�\�\0\0�\0�\0�\0(\0\0\0\0 ��\��W5o��\"�I<\�k���K7d�c�\��\�r\�5R;\�\���;�v�)5\�R\�xCr��*>DC$m\�׹^�@)\�\0H��Z\�!\n�\"\�{F��mUX��U\�X��\�H_$\�关��F\�\�\�\�ɻ1\�J�\�/C��t٫\rhRc/R�\�DH�FWiZ\�w-��\01�k��k��\0<L�UD$R0�D%&�\��\�H�sH����y�F���\��\�Yb�\�%/E\�t/5�]��3�\�W7\�鹾�w\�R\�Յٷ\�1/Q\�\n��+�9�\��K\�\�\�st�	\rRU9\�1�\�+\���H\�%a��\�\�Z6#^���F\"�!�c�|�\�>W��\�t\�\�	΁	M\��\��\�n�l��U�\�z�g�\��x\ZrW�<���ժ�XU\�s{w\�\�g芊�\�l\�)\�\�tR\�G\r,r*2����QA�ۀ��\0��վ��у\�.\���\�N>�\�6\�$rGs��h\�`+��9\�<�1���WB���ҽ\�K\�Hu(ޤ\�\�(Px\�}���Eo7�u�\�N\�+_h\�|�rSWh�*\�\�e\�-�V�Z��T\"dU\�@�\�9i\Zlb�\��+#k���\�s\��\�t\�\�&���ۦ~o{�ckX�9ϱ��\���\�F\�YX/Rh\�a�(`\�,|\�\���ޯK62��l�G<2l\�\�diT\n\0*(\0R\�A\�C%��F��]\\P��\�s��\�H�4R\�ɕ�x�N�\�h\�9���Ӎ�\\\�.����YTt�Rc�Q\�&\���Fr��ܥ`��l��\�z�e\�\�YgΊ%A@r 8k�E`gQ�1\�fݩ9~\�)Ǌ\�n\�x>ۄ�\�{^�\����\�\�\�\�udԚjV�V\�oܡ�\�\�ױꊝ���yZL�`���d�\�z��:tmU����.$�F��\\#�@(\n\�TP#��\�\�\�\�b�1\�pQK	��\�\���:X捓\�\'m\�\�:y\�g�\�ږ\�۟F\�+\�N\�f�U�V\�PK�m3AZ\�69+�<\�#\�z\�%M�\�\�N΁��|�u�\�co1\�\0\0k��@ ��G���P/@��T<�\'�wX{$�s��XY2�	Y\�\�\�yy��Y�K(ޥvm+Դ:|+P\�ZU���`\�\���71\�J�\�G#9^�4T�W�\�t\�%{�\�>\�6Ȝ�\0\0(\0�\�re\����j:�\r�rǯ��;h\�G9\Z�ˤ��U�\�\�$,�B\�\�\�\�x�st��\�د~-}*��\\R���+\�\�G#\ZNG!QP9v���Dƾ9\�>\��O����w���<A�\0s\�\\\�/\�p��\�u\�Y[�=\�gD�*�l֭��*=h\�K���\�\�c��`+�[O]\��ηU\�\�v�n��׷�!�\�\Z�˕��\�\�j��E@\�\�\�p�\�1ɵlp\�n;;\�Ӓ;(oA\�tV\�\�\�\�kF\ZЏv\�>�\�\�H\�\�$ȶ&���8&\�U\�y\�*�g\�ڍ\�p�\�]�w-lt�\�^��!m��MG�\'#\�J\�k\�y\�\�\�n\�\�k�N\�xWs\\\�g5\�\0M���Ế}\�<���d<#\�z�;�˯\�\�\�\�-\�K\�؏Be�\�T�s;[11WA!:��+��-\�E\���	\�\�|�gKb\��.�r���\rc\�	\�[\�	Y\�̲ᘺVk9��kn\�6�],Q�\�a�n�\�:z�Z\�f L�,\�׽\�6�\��]\�֫���G\��\\B\�=\�^��c�܇E]\n\�-Hhv\��V��\�\�d\��&�\�,�2�k�\�\�7o�Sa\�@��\��ƯU��L��\�\�f�Q\���8NȻ>�l��z�\�khTqQ�\\?�\�\�Ws�<\�5v\0\�\��n{�_K�/\Z\�7�\�\�u/\�\�s�R��\��\�>�\�/��\�Ώ,\���\�\nڱKC�\�uYݘ:p����̛�6�2J�I\���\�\�Ĩ]�]�=\��LE\���\�\�n�Q\���p�\0	{\�\�yއ2g\�4fW\�c�x�\��-K�\�s�U���Z�\�\�t�\�@\�\�\�ӹG\�\��\��.u\�Y\�\�`v_i��\�}ϯ��\0M\�t�`clsӌ\�ZޥVh\�z\�\�\ZZ�\�\�͇�\�d�\�s=\�p�0\�onA\��\\\��~\��<�\�\����N?�\�}�7\�f�s��\�-\�?SA_o�\�.��~���y�\�vq6�\�\��\�\�P�C\�k�\�r]\\�\�{�\�P\�x�\�\�G\���\��ٽ\���\r\��\�g{9U̝\�\�(U\�B\�\�-\��\�/=\�s�eI\�u�%�\�\�\�-oq݌��밙S�\�ـp�\�$웧\�݂N�\�tKo�\��\ny\��\Z�6\�h\��~�\�zR�M�Tjp=�м\�\�\�\�wl\"�1p�6�}�ls\�G\�+Q\�iv�s}���\�Μ\�\�r�z;x�82��ryr�L۶:�gǢٙ];7\�sU\�S$\�|\�Zs\�9ܖ\�;]e�\�o\�qd�q_����Z^qn\��|оrv|:\�?NN\�:�\�C.e\�U:�z&��\�\�Ǭ\�o\�i�\�\�ѯ�\���\�]�9T��\'5{���PT0EQS)܊t+��s%#�OI-BY-\�$�uH!�\�v�\��W\�ҷ&[�\�\�\nrh\"ts�\�c�_B\���\�\�\�6κ8K�M̡��D\�J\�ձ\�j\��@��1Pw\"·U\�T@j\0\n�k��-�^\���fʑ\Z	��\�kE�f<v!z�Y!R2�+TMV��N���_p�=\��D��$��/9�\�\�o4�E}���r�������\�F�QF\0�5PnE@m+�,\�j\�[FfC4H�A0\0\0\0\0\0\0\0\0BiF(\�煩kْ\�J�\�di\�\�\�\�eȥh`�ށ\�رdj\�\�Hw�\r�\�\0.\0\0\0\0\01!23 \"#04@A$BCD�\�\0\0\0�U\�T/WP�]J�u+\�ԯWR�]J�u+\�T�WR�]J�U\�T/UP�UB�U\�T/UP�UB�U\�T/UP�UB�U\�T/UP�UB�U\�\�&\�T&\�L��.|˟2\�̹�.|˟2�&\�\�j�Y-L�5s�UR�]J�y\�Dң,�t�e�\�H�Df��\\���� }\���\�\�\�8t�\�\r�v~�5`����\�?���a`�vV}ٰ�C\�vN(�(7(\�\�kQ\�\�\�?|�0�k��ahHZ\�,-!aiZV�\�\\�\�\\�cZ\n\�V����l!p���j\�҃1s�=^:����M)�Ƶ\0���XE��c\�=�F@�V��B�-jVhu��7rm�\�Ql\�\�h[&?��9��ejZ֬��KF� �\�w\�ʛt\�v~\�Ⳕ\�1\��ݱ\�\��B5\�	�\�\�t�we�z�b;;�B��\�f\�\���\�\�fx��TݸA�ܢO	�Nݟ\�\'�!\�+��w����\�\�ۨS�j=\��\0V.�`߯ \�EK�j;;u��\��\0�\��!\�`\�x�\0�\�i7i٨\��\�\ZxMj ����{ {\�ِaȧ�n\�H;��uQ\' V���\0k��p����ʦ\�;g*r9y@�aHsh�����\��!\�\Z��z�m�\�p\�z���\'�� �\�\Z�D\�?�{\�q`��R��W��\�\�%��ڍ\�\�Ǯ����\n�\�\\]�\�\�wiO\�S�\��0m\�\�3�\��.\�\�\�\�\�U�)6T��\�?��b~N7�\�?.�;�.\�\�\�*ѐ�XʦbwTz4\�>\�|�2\Z\�T�X��\�\�w\�^ _\�OiRm̍iAKa�v;��E3\�P��r$�{V�c���cj\�Z�\�P�W\'A#VlQ@,{]�\�{x��Gj��R�;���\�0u�\0��E3ۺ��0a�KV�g09:��2��A�,\'�\�2�ɐ�\�Q\�5��\�p���zY(T��D\�Y$�>\�^>�\�v�8\nE\�\�\�Z�\��8t�uM\���CS\��1;S?�G�7����CH�.\�\��v\�\�\�*�3�\� 2�nN\�\�ło���R�-�}\�D\��\'\�\�/V\�ꛓ3\05LB����\�,�����\�\�x{fv㒤Q(��\��$\\\�\\��.kn͐L\Z�c\r;R��lXs��tƋ�{�\�\�(F��+2@�jy��\�\�\�\�[E�zj�`N�r�\�\�\�\�	\�SwX\�Q/-��\�݁X�\�\���E#f\��SmV~6z�hQNO\�CpҰW\�݈&w\��\���N?\�A\��sE\�^\��	\�\rO�-�~���UO�\��ʗ\�\��S�\�;.6~񎐢�j�oaA0\�>�kp�=X>\�Ȗ��UɆ����\�:L�i\�b|Zʒ<2s�\�9}ǲ���\�\�gl6)\�₏otv�6�x:��\�\0d0F\Z3gF\�!atU\�\�rn=�\���\�ݛCb��;X��)�\�\�\�q�F��\�\�2#Ɔ!\�Ǣ 9j �*�#���ov>\��E\�\�\r�GkBnnS7\n�7�\�-L9��+yO�v���ښ\�YY\�\�$!v\�/#�d\�E\�\�\r��m\rݵ۸P��!\�h��\�-N\���\�!��)��z�\�l\�:�)\n�F�\�,oy\�^\�W��\�\�\�Yۨ�(\�n6��7eT�c\���Z\�~G��2ɱ��Whc%�j\0\�O\�.�(ꪻ�\��\0chE�N\�G�}\�\�e5�U\n��?r��g<5�s~M�\�<|\�����ʨ\�)N\\.oH-U�z\�LE95;t\��\0�sv(�m�S������ඥ\�1��eӳR�9\Z�\�\�RD�*	c�g����V\�E|c+(�\nv黍�n\�O6oI}\�:P��5�\�|���eSK^\�&+\�s\�絓��\�g�\�c��9�G��\'Q\�\�\��SoIj��)Tc�MZ�X�I\�w\\݈t-��S<\��L\�\�,��\�8s*\��\�I\�ut r��27��hQT!\��H\�6���\�c�R(��\�()l\�۷��\�2�\�S��\��U4/Zܲv��J���\�BTc�\nFjQ�\Z��\���=I���A���SP#iv��ӟ��R�P��L9��\�7v\�o��UF`\n���ߥ/�9}=\�Q\�Ft\�J�C@k\�_i�\�<�)��\�o5д)pdlz��\�\�\�\���6���3\�\�ȲM�\��T�\�;v�-���ɻ�k�1�\�!�m\'lg\�N\�\�\�E\�\����\�J\��\�\�TB\�6�\�\�;\�\r6�,o�G	{dd��\�E�p�Ҁ1�H͎ծ̣\�/���m�\0�h�Kɺn\�\���0�)�!���8�\�[ԖQHGӜ�E*�^Pk��FtPX�y�bw�\�\�4�Sף�\'�\�3OܙrdZ\���\0e���O�ʾ�2�7F\� |\�\�L�ȇ5\�wϗ�\�$r�s��s�sp\�\�;�&�>)\�љ�ߘ�\���S�\�sY\�-\'c�\�ΥON\�\�.ύ�X0J����\�\�\�UP�T-cZ�AN�H�`{@\�\�\�-��\�\"\�j�<C\\�@\�^\�wRD׊�y/oe\'�U�\�EL\�%\�gUKJ\Zp\n)�H\�1\�\�\�\�RvI\�n�N\�R8���\�>f�iF\\�\�gj�wX�\���ˤ�1\�f���\�j�\07�ڧ\�\����\\�\�\�;T+��T9�\n׿�p\�˥\�2<\��\�QŊ��9�RvK\�\�;k\�\�+O\�\�$m\��\�\�U^g~�\�K����\�\�g���X\�V~�\n\�?�v�wD�z\��ʢ�{K;#U�L��/�\�W\�k�^������\0֤\��\�wS�Ō��*f�\�~�v��+�\�e/\����^�m��\�\"\�O	����E\�3\�4)�GO*�Ĥ:YQ!|��wڳ\�!\�dG,U=\"���\'eG��mgU;_�z�nO�.m.֟�>\�W\��l�����w��b{W��E�ϗD\�8�QRW\�ԗԔ�CS�_��</\�\\+�՞z�=1\�*�\�\�RvN>\�	\��\�3+���5���\�\�\\@\�������?�\��\�/�\��nc�W��\�\�Q�T�u�\�)8sZ\�>&��\�W�\�W}�<��Zf\���g�I\�7��ا\�˩\�\�\�T�*kς��x\��\�Q��pl\�pt��s�?\�̵��X\�W\�\�V;Ty�>ʣ�S��C�\��w\\3�\�[\����\\Yˆ�T��yxl�dEVӿ�\�!tmU�\�4\�\�\�@��\���*�h|ss*��uID�\�苤���\��l&0�\�~~ l���w�t&&*\�!qɡ�uU\�;�i�[�@�eg���\�P\��7ʤ\�\��RU�\�\�Qh+e$�` Ըе6��\�:\��\��q2���eT\�s\��ɬ��$c���sZ\�Z�)\�$b���<��um��\�H\�6���\�C�\����\�4u!\�D�\\���޺d��C\��\�#Y+�\�u:�X��\"<BDꇾX$g/�\�\�b3ƪ$�\�U�\rs����}T\��\�Ε\�3K�\�́W*�9��T� 8���a�B�t�z\�Qqq@����5�\'�q)���UK��\'VJ�\�+%j����@�Ξ`\\\�.cS\�)~+�W<�a\�g!\�Ԟ\��\'C\�a\�\'\�ܛL\�\�!��$\�\�ef\�\�?�Ɏ\\�\�)��\�i$9-\\��C,-x)\�6\�\�4/��\�\�M\�_MG�/��\�9�I[!�\�\�1�	bc�{2�-C:��j)��sZ��s�9s�\�\�r\�\�\��\�\\6W\���\�c����\�8IL�ݲ\��<�mըLQ�\�S\�̭\\��h7�����a�>\�h*��=��\��\�gm\�$��D9k \�\"��\�\�Z\�NT�\��;��0_Ut�\�X\�2=��\�\0&\0\0\0\0\0\0\0\0!1 2\"0QA�\�\0?\�4�\�0�#\�0�(ҌDҍ(�\nQ��?���\Z#�(G�(�\�\�*\�I\'��d\�2̉I��3�#�#��.��\�\�Ďԇ	#\�e�Ȅrȼ\n�\�%�����\�#�K;�)�0iC�K��\Z\�DSH�d�\�\�Tȿ����|�/�\�\�G�E��#�k\�~T}~\�1#\���6\���=�\��/b7o�,�\�|�p/�|�7��%	|��\�yt���E\�S\�\\���Q�&�:�*<�\��7d�jp.H�\�\�>\�_S�\�\�H��MD]TN�E^,\�D\�E��jC�)�\�(rM؈�X�\�U�:�\����U?\�I��#S\�\�#VH��\"7�PYe_R����?�9a%���\�\�oW��EoR����(\�$\�\��Z�\n\�\�U\�\�E)a�J�\�ȑO��B�د�S�&q\"��}�\�\�Ej�8:��S�&�_O����\�\\S*s\�\�R_�r\"�Ob��\�H�>L{:�5�\�\ZyY1�\�\��\�h�=J\�=�~�R��q2r)\�Ҋ�oo*~��i\�4[)\�M�-\���[\�\�;b\�1u6kf�I��UGz$j\�L��\�\�X:�\�\�n̎ԉAč9H\�?\nk,\�\�vj\��\"B)�>J>\�YfW����`�51,/Rxc\�hD��$!��#\�\�3�<Z/�u<��Z1\�\�r\�\�\�h��!D9%\���\�Ƣ�\�c�\�\�\��%\�G�k1iZ#Ȍ��>J~Ĺ �\�䍨{B\�њ�\�\�HR�IіJT\�V��\�\�Hqq�f�&\�a�Ȣ\�E\�\'�Y��\ZF\r2Q\�%A�ܿ<\�G1w4�\r%\�ܝ5.\ZM(���$w\�w�\�5�b�B��9�o��\�-5⪴S\�2+f\��\�\���R\��^c�\�\0+\0\0\0\0\0\0\0\01 !2A03\"#@BQ�\�\0?�3ѓ\"$ٖs3���,�Q�+��r���L�\�\�G:>D|�\�s��Gm0=\Z\�!aY(\�\�)\r�Y9�3q�1��[}�z\�G67�km���[�\��E���S\�\�\�G�\�\�h�\'�-^�kJS_tF1\�l\"��R\�Tuz!\�D��S\�T�S�\�fS�Li�m�dJ+\�]x\�c\��Kn���}�z- R�\�D��\�&4d�!�Kn�Id_RBx1�\�i�ڽQ\�_o��\�iL�\�KE�՝}��Jd6�\0�\�G\�L�\�h{��]��\�\�9<&J��y����\�\�~=y\�ƒz-(.�v\�\�%�RӇ{3�\�SOr5�-���\�RbU\�\�	\�[\��#%-�U�{6*��̔\�b�e����ڽ7\�GyIn\�\�\�}�S�\Z�%K�t�g�*?�r�rY/\�yIÔ\��\�\�\�>T[\��Y,Җi[�\ZqE�3�b꓄�W\'.Tˊn��p��\�\�Xy���a콪\�\�E���\�)\�W|������TYV�\�6U�*�\�)��x\�%\�\�L�O���a���.�\0Bֺ����\�,�?ޜ@��!\�п�8�}�e\�\�p\�\�y��\�-\�\�\�N�\0�+y�\�\�\�ܫ\n-!nR�E\���\�+3E��Þ\�\�\�\�:Q��EH\��\�\��4\�;\"\��8��,B�\0\�\��e�\�Xy���\����eJ53�q��\�-�<��,<Yq��nR�E\�sE��Q\�p�\0e\�qS\'�O�w$\�v8|Z�t\�>�/\�\�>H���\03���ߡbҟr�I\�\�p�\0e\�Z�p�$\�K����\�+������\�6l\�3�\"\'K��!oh\�˙�6ά��j\�Z*�\�;)�ٔ\�ȅ5�ݻ��oe(O,��uoh\�\�%ͣ�,�֮��]Z��\�$�r��_f[Z�Ej\n��\�\�C�ɿ\�B\n\�*\�\�R\�mA\�O:U�\�yG�u:\��v2��s\"xde��\�9\�\�\�\�!�0`\\Pƌ�\�m;�\�&g���Pܖ篪&:b\�O�\�\0/\0\0\0\0\0\0\0!1 03Aq�4@Pa\"Q2�`#���\�\0\0\0?\�\�����\�\�Q�\�\�Q�\�\�Q�\�\�Q�\�\�Q�\�\�Q�\�\�Q�\�\�Q�\�\�Q�\�\�Q�\�\�Q�\�\�Q�\�\�Q�\�\�~/�9��l\�\�����\�\�~/�9��l\�\�����\�\�~/�9��L\�\��3��\�\�~/�9��L��l\�\�y3��\�sg\�sg\�sg\�sg\�sg\�sg\�sg\�sg\�sg\�9g;\�\�by3��\�\�Q�\�\��<�d�\0��/\�\�by\�O#�/\�\�K�9��9؞_$�M�[q��\��\0\��k�\��\0@��\�/�_.��	�ndhd���F���T^\�\"���ҺV�uʙ�\Z\Zp�B\�\��\�S-�[{K\�\�}b\�S�2\�/p���x�b\���>��[�/W\�ږ�\�K�w�3��\��.��tg��b\�K\�q�f�?]�|퐸ͳ\�ʹ��\\��޻,�6�|m�ט\��G\�ۧ\��ɟ�E��B\�Q���ft�,?�ζ,̇��2�[�\�\�fkK�U�M��/y{\r�ı�&&�S13e�pзZf����\�{�\�\�\\=����uD-\�\�zq,�\�y\ro?km\�w�-\�mKsꚣS#ku�\���(��\�R�y2�ַ��ܰ�553\�^\�\�;�6�.l�63B\�٣�2.^�eў\�\�-\�Ƒb=�\�w��k��%������-c�4\\��.~:S�к��B\�\�\�\�8ˠ�DΗE��˫\'b\�R\�Z�*\�o�*�]\�\�u/֚\�2\�\�EDYV�ȴh\�8~��ܝg\�QG\�5��>�\���H\�z\�$)=i�i�\0��.\��\0U�oBϥ>\�\'H��?�*\�:\��f�\�O�\�\�>\�u�z24o�4C�\�l���\��>�d�����͕ұ a\�\"�\�O�\�\�1\�u�\�v�e�\�!w�\�.�d��\�ʌn� aV$k\"}\�\�\�]\�*�\�*2Dh\�*J�\�_\�T��ѓZ]*\�\�EHu�\Z�\��Փ�%�\0d�\���T�jHt�d6F��%\�u�/�6:\�T��X��\�K�\�\�!\�}\�z64C�%YVC-VH�eܛ�b�H�U�\�ڿ�쓕Y:˸\�ܝ$H�jHtu�*\�U�-��v\�w\�G\\�\�T�0\�q\�\�m����?�\�-G~�cd;RCݸ��TUd��\'�\�\�\\\�^n�DB�H�Y�\�J\�+.\�,����e���\�I�BM\�[��\�^5m\�-ŴŚ5F��\�\"�:6��\�\Z���\�3fN��U��U\�\�\�\�\�Y\�]{Y�5f�\�\�\�v\�\�୻��\\-���3�\�f��e�\�ѡ�k���\�fZW4^+䭽x\��\0�\�\0)\0\0\0\0\0\0\0!1 AQaq���0���\�\��@�\�\0\0\0?!\�)��D��\�?g�O\���D��\�?g�O\���/\�\�\�\�O<�\�<ࢗ�)���R3\��\��\0�?\��c�\��\0�_�?�aE��P\�2z�^\�\�\�#�\�\�Zlz��\�\'�\0�&\�\�/�\��\�\��\��\0x�\�N$�3αU�B|tʟc[61�$�~8JA/{�\�$~ C!�1\ng���I9d�Iá\"�Lq�Z\�=��P%��|	\�L��\�QV<ДE 5cB\r�	\"K\r�P�1�\��#)��	F*�JI�\�DɑF+\�ĂR��&A`\�C\Z�2E�bbd\\gN\'l@�\�O�%BD�\�I`\�%]d�ef��\��\"\�bB$\�ͱJQ�)�r���\�7at4\"�(�rO\'�H\��\�I��C&\�\�4�\�C\�ぞ��=\�\�]��\�mk\Z\�d\r\��hH\\zgA�7zs������\rpK�*��)$�̲�!�!fZ\�b�\�n\�Q���ߓc\�V#��,A\�,B\���\�[\ZM\��h�Q�\Z��\0�\Z�\�\Z\�#Sz85b�\r\�\�%�wQ�\�+e�!r\�}E�x$\�M\"�k\\�w!c�!~H\�Ά�$.\\�s\�ɱ\�46U\�^d���\�/Ȍ\�\�Xu�\�c=\�Q\n5�\�D (8-\�eD�-7\�4\�\"|��2��\�&\'�䜔B�c\����Ё\ru\�X�\"x��\r+�QqQ�� |\Ze�s�6,�\�RTX@\�\�\�a*F4!\�\�-4&,���\�5\�!e� w�\�h\�\�#e��j�vm2u4�a�0wcit\�\'D\r˯\�XHF����\�l/�����%���ȓ�6�\�< pcX*˨�9�YE�Fo��\���\�:+.�b�y�����bA\�#\r\�i�\�\r����M��e`�*\���tA���C\�H��h�2K�##e\\O�k���i�H\�\Z�L���m�CX�5$��P\�\�$�|�!3M�;�5HC�\��#�\02\���i~�T���\�a�b6���}yj\�ɤ\�\�!ШZp�\�]�G�8.�;\']���Q�N�٪<+\';2J�\�N4D��\"*\Z�2�j$Lz 8�>̡R!Y�st2�/\�rW\�(����\�bJ�\�k\�I?��\�\�-P�ap\�T^�\�:�0Lo\ZHQ6N�\�U��!DR�H��\Z�6t64�v{��\�W��g�\"�K\�_S$ɐ\�\�ɉ\�\"\�yA��\�)�\�\�\�SD\�\�X�4\�3F\�Û\�N�R%\"9\�>���;�-z\�\�\�.Pز�#�^*��\�I\�8DjbY\�.���cJ(��@\�&VwKՉС�k�\�#\��cI5x?ń�d1�\�(c+.J��]��	9urheY$!���\��[\�~l�\��\�i���Z-��P�\�\����?a�Z�\�<l�q��\�\��1�\�ƞ4:x=U\�C!$�ep\���/CG\�\�P�%m\�\���O@�jZ,�p�+�\�y���\�1ׁ�p�.\�h�~�	rb\�}�LN,IX�e���\�+�e\�\�%cCA�\�\�\"\�\�\�c���A%\�4�܍I2�\"p�o�\�\�M��R$\�h%\�H\�6�!.�K$)=��CI�n�\�<5\�`\�5�Di5$�b\�\'ت�M�?���GȦ~A$\�կ�\�	�\�\�fC\"\�L��\�e���Q\�jc�\�N-�yi\Z!\��$<��U\�apjv8�^\�?\�w\�QH[�B�[B�\�\�c\�\����cw3Ĵ@1HU�\�DXż7�A)��\�B^�Obr�bKYC\"��O�y1ب/�{8c�BȰ�|6�]�HHJ\r6UA�\ZN�#\�M�FaY�D\��m\�DQ�B�(�Ж!i\ngc���\�kC\�eyڟA\�NK\ZpN5	�@u\�zTL\�k5q<47C�=}ع�,\�%l�BY�ῑtI\�2\�uB�L�\��H8u�.\�\'���C;	84BX���CR=ر,ȴ�ƳW#sH\��Z����\�a=� �I�B\�L\nHp*�L��\nT�!A���f\�A�Ӝ��A\�W��n�&\���YQ�\�&����ɔ]!\Zi\�\"`E-=MK�\��%K�B�\�呑�-	�}��a�QF����@\�1|���6IH\�VuX������F\�R\Z�8\�\�I�?\�E@\��\�k�?\����X\�$F�S�(�\r\�6\�����aS\�\�Ƃ\�LP�+5R�*��[\�e}\�#���\\�dp�z\�<���\"^�\r&���Emgh���;�\rkn\�\'^�]%\�\�0��\Z]^�(\�$����\�\r	@\��/Z$	h�\�&o�\�;�:�\�\�؏��9\Z&>G�\�a�4	$l�:M��o����G�\�*�H\�Y\n���+\�\���d�%q��\0X����\'�T���P�\�}FBW\n\�d�h�\�9L�G�\�^��\��\r�\����,�a���Ƽ\�Bv�u�\�\0E3b��T\�K���gy��x9� $�����\�K��O�CR��[$�\�\�M�̨\Z��-�\�!I\�\�\�D�c\�%BD9߂\Z�Yn�\�Τbۉ\�!v!\r\'\�P�3%c+\�C*^a\�М����\�\\�	-\Z1{�e@hW�r(Zh5\�~\�i\�}\�3�.|0\�p�Qa���m7\�>��=sl*=Zxh�F�=\�\�1+A84uX5&���KDĄ�(JD-��u�D>O\0dQ���V]7L_\�4P�\�t_�я�.f<l�\�	^�v\�%�4�b{a`x\"PX\�[b�H��xz*�$+Rtc\�Ft\�\�-\r͋\�3.ge��\�?�=/se�\�͡\�X�\�\�¶tя�l�`�\���\':��S?iC�̢�rw\�Rw,=\�+��\�\�Q48�|b�ãp�l������Pd��\r�������O�׽\�>�G\�\�>\�O(�\�=�u|���9�B\�b�\r\Z�\�m+\�\ZN\�7\�\�H�9�\�\�9\�=rn>\�s	Ώ[\�T&�L\�>��k��G�+\�c\�\�i�\�}�a�\�\�y�\�3\0HF!\�s+��M\���\�\�qӆ\�]���3\�s\�\�:\�\�\�\�>�\���ٟlDޡ9�%)�kbL��m\\\r�#�J\�\��n\�f���e\�r�ȤAF�^]��Ġ3��ŐÕ~bZ����KL�cJ�1\n\�\�F\�\�J\�F\�{�]\�[�=[�\�\�$ь�!%�\�\�br]�\�F\�>�!\�Mm�J\�)2\�=\�P%wC\�*D\"\�J\�J\�l\�SZ��\�5xn��D C�$-\� !;��hor\�P�=!CT\��!+�\�\�@�{�N%>�\�$ǝ\�r\�W\�,]\�.�\�\�jd\n\�4V\��|\r�;`\��b��%0-�z�`B9\�\���t�	�K�q.�Pn\�\r2M7�g�bR:�\�Jw2G�\�G�C\�v\�\�1)^�\rrb�N\�$s#�\�v\�\��X7��5\�\�ϼs~ѕ0\�ػC��\�ޮ\�{ᓍ	\�3\�/Yg�y_\�\�_��\��>i\']LP�pS\��yhbr��,,.���-�\r�p\\\"3\�xqǤ3j6`�FU=,�\�s�i\�%~OO\�M�\�ۏ��Q>����\�\�>�\�i\�=!\Z$�2x.=y6n$1\�1�q\"\�E��~\�\�Y���#\�\�\��<g��Cj\�z\'h:�L�4Z�]���Aѫ��B.��<Fg+��gI\r-��吒�5��wS��\�\�\��\"%D.\�.\�.\�.\�.\�gC\�\n�\�p-$( Z\�w�\'�r;\�\'���x��Cx\�,\��L�;BC�b\�%�ށ?����yWH��\�\Z\�\�F0\�>�\�\0\0\0\0\0�\�<\�9�G���\0�b�\�\�:�\�G\�:��\�\�Lg5�9)��\�U�c&�dO��e?\��pc��ГB$x��\�\�4\�8�un\\\����b6��\�\�w\�+\�\�\\�\����\0\�\�=�<�9\�.�ۯo���\����\�{��o3�\�>���o�r�~�T�bK�\�`7g\��\07\�\�a�w�)��.u��?\�\�-E�\���\0�\�ְD&T\�\'}X7t?N�\��\�B��X\�\�(:\nC�u�_	\0S\�?����W�\0<\�$ɇ�O�\�͆R\�\�#�\�-��UaS\�\�\�\�I\�PQ	�ͬ�Rs7hŜ\�>%m\�u�h��\0_�v\�E\�N�W\�\�e���n׼sJ�o6^y7�I\�c.3ǜx˺�\�\�\'���\��\0��\�(\�i-�β�6\�\�EW\�y�q\�K��8\�_��{\�\�gӏ\�D�?��>�`��~_<l  bģ@�\�\�2jg�c�3Gͯ�M\����L\�N�\�εm���!Z��q0*M2��\0\�=�\�}��t	Z>c�\0�\�\��\�4\�7�D�i���==�;�F!T���<�\"[�V\�W޷�\�Pg�\�9��\��_hp7�\�zl�k\��+u_\�N&%�+\�&TG�o`O��b\0\0\0ܺ/\�\�A���\�\0\0\0\0\0\0\0\0\0\0\0!1 A0Qa��\�\0?_\�E�\���S�\�\��w�\�\r�;�ڸ�\���\��?\��?\��\�\�\�\�Ӧ�6񿥯\��/\�$�пJgo�f���\�7\�@>��#\�\�0t%�p\�w^GفK]��Q��%��\�{c(��\�[D<�.�����:Mu?�\�@\�	\�Z��Z?.�3�\�u�\��\�Gh\�\�rV\���\�x��\�XG16�~_G,$��M[1��\�ۅ\�\�,h\�~K3�p\�з�v{\�j�����D�:O\�r�\�\rm9�+�9{>\�����\�7Rok\��3\�\�ϐae�,Kl9nݼ�\�͗}�\���\�f\�QǙ\�g�tv\�C�\�\�\�ڜ\"#z���o��F\�Oǹh\�W�H\\��\�gjm��\�\�0\�^N\"\�>�\0#n6ړ�!���I�Ņ\��d\�3�\�\�s\��\�ދ��\�\�o<O\�\�/��;%�\�\���꺇\�X\Z�6Y\�0i��.*z��yG�=C\�gf\�=@\�9o2\�^\�\���]~hs�D��)\\lC?a�\�a2$k�N6$�fB$w!\r/�/v���Xvꤊ\���\�\��L����\\>��o6o�oL�̘ݛ�\�̳8l\�%�0\�\��\�\�\��y\����\�d][���\�f�}\�	1�z�9\�&)<�[�\�^xx�\�o7�\�AJf\�.3\�\�z�\�,5�\�H��\0y\�8y�y\�\��d�%\�wm:l{^fK�$ m$l-\�_\��|�ԗ^3��\�.\��\�\�\�ai�\�!\�F�J.�Zt�&ixc#\�N�=��P�\�.\�C�n\�\�aԳ��Q�Kodh�&\�F9->cz\�\�IV��:\��d\'�x2�-x��4�}���Õ\�/m\'\r\��\�\0!\0\0\0\0\0\0\0\0!1 A0Qa�q��\�\0?\�[[Y[[V����Z���O�����V�p\r[d8\�?\\���7�A\�5���B\�0|�̓~\�ghys�������l \��V25\�*�8��\�\�_S��\�J��G��Y?\��S{\�qӁ<�\��=\�\�fq\�\�\�~os\���d\�]�9,��	�l1<e\�p<{��\�[�ܟx>\r�܎�x�>O��\�����\�ӫS�(�!H<\�}^\�\�\��y{$\�|,Ye�B�\�\���{#�	��\�d4\�?3\���\�19uu(\�?�K.\�8,\�AĞU�|g\�\�\�\�\���\��\�\�3�\�\����\�\�D\��Ȇ�\��\'\r\��&-\�e��\�\��\���,\����s\�\�\�y�ϕ��a�g%��\�2n�4\�\�佀�өN��\�\�W�\�\�3f\'\�\�fpO:�\�\��\�\�1ĝie\�2w5�B\�ٝ!7�\�o)���\�1�\�7�s։�	���\�\�d�Rb\�|\�\�Õ��S\�;�\�hb\"\�\�ۣ���mɹ��y\�\0$�/��y6\�P��Z�\�3K#\��R���_\�\�\�\�$�\�\�\��^|~��\��\0/x��\�(�֙.�\��\0h�9p��\�G	��\�L_,�\�G��s\����{�9|�?pK0\��F�E3|M�\�^)��P�\�O��h\�s��W��~\� \Z\�\�!:\�\�v;�嬥޽���U�Q�\\\n���͓iv��v�R.�gޛ�m��R�Om��\�g\�[.\�s\�v-x\����Z\�k�\�\�wgD�g���KFx\��\"\�ٓ��Zp\�E\�\'H�l@^\�\r\'���\��>Ȳ@yG�޸�\�\0(\0\0\0\0\0!1AQaq� ����\�0�\��\�\0\0\0?h\��w�\�~\�\�?��\0�(\0\0@\0\0^\�?��\�\�?s��\��#�?��\�\�?s��\��\��?��?��\�\�s�\��,�\��\�\'�}\��~c���\n\�}\�0��[�(_\��(\���\�\��\0s�\��_�?��\�\��\0pk���8��\0s�>X� a?\�)8�\0�\�z\�\�~/�E���_\�4/7��d\r���\�\��´���\�~�\0�G?��ڇ��\�\���Q\��_M˗�!)(\��B�C�^%��		p\�\�\��8M\�\�!j\0h\�0\ry\�\�}p\�!@�,�\�`�HU�\0�\�\�\�I�=\�\�t��fX\�8\�C�ь\�\"\\D4nW8\"Z*,��/	0a�[\�!�tf��Ǡ\�,��n�9��ʴnI�\�3�\�\n��\�ȫ\�?3)}\������E\�\�\�槭gr\�`�k2�Q�\'�xET0�X]�Nǉb\�F�b-\Z\�a%��FՑS��8\"�\�ts�TZޥy}T��\�\'Q�\�\�Pf&,�\0b��#\�!���ܔ�,#QjU�و\"�.\�+�����.Y7	pb�\�/h�kؔ8#�N\Zg\�MKq[�Wh����I�#�/�7A�Ĺx\�\�q*��<H��� ļ�!�2�y�**��h\�Av�\rx��\0:[\�]J�*�s7��\�.�\�q1o\�\�%+	v%pu\�CO���Ѵ��W�\�E��jeNTn\�<BXU\�\��J\���Rh��Դ�[\�\�Y�\�5�K4A\�3Q�@��J��X:\��\�w\�\'���e\"æ��MZ�Dz\�ㅭ#S\��\�\�\�\0E�E7�?Vn\�>\"@��� �-���eʼ�\�\�\����4�b����\�meՈ�� V\Z���\�[���\�f�ޫ2=_\�\�\n8�\Z|�\�\�xA,V���雛tw\�\�t\��+\�_\�x�Ea6#2�6\�gi�=�{�٫�8L�7~ǆ(2\�D�ގ�:�׉\�J��UƧ�\��^!R\�Ae�.0���D�B�(\�9\�\n֥Y.~�\Z�1\�0z2\�\�Yp;��JϦf�2\�;E�\����1�j#lk�Ig\�U&���kQ���@�X�l�����\\\�	Kι�\�\\N��\�P\�Z+�=X\�7x�&D\�>4D\����S\�\r\�d\\\�K����8��r��f9\�[�.q�\0�uu0T6���\�I�9Mz�o_��1��㢡a�����\no\��#\�c\�Wy�\�<���HR���+\�,_ף\�\�I�9Mz�۱�%ƶA\�m�\�F\�\ra9�;D4��C��\�m�\�,TH{�\������\�T\�E�6_WQpJ�`e^�J^&�t�]��h6Bʛ�r\�\�xK�\�ؕ:Q2�g�g]\�u���R#�m1y\�\�\n�\�u��\�A�}Y\�+�b*���/��j�K��\��	�U*\�\�;&&\�`�\�k�s����@+w�U*$V%/�\0�m�3��L�5\�U\�CmD�;:k\nt,\��\�Z�\�ܜ��So�)YuV� v�C\�n�+�&\Z;D\Z\�,��P):}�(ۛ�B���N\�\�ffQb�\�3\�\� \�\�梵CF,\�\�Z� -�(i��h��}o)0\�1�����{Ǉ�ux��\�C\�[/\�u�e��\�\�5\n��\��u}.�,,z\��\�eA\�W�t\"�P�[\� $7�cߡ\�\0��*��u9NL�׹\�p�aY�=-�߲0i1��_K\�K\�[�\r1�\�j{L�!�\�R�BZ�p\\X�A*8�\�\�U\�\"@���6\�M�\� �K�\�\�P2BS�\�^�lX�J\n���J	\�-\�`��u�!3ٛ#�j\��*P�*C�K\��\�o@Fg\�	\0�\�2\�\�TP>��U�\\\rO|E��\�!�HJ��C\�\�\'9��EY#\�\���\�\'i�\�3b��j�D��T���\�\Z�$v\�t Ky�\�:�Eq\�C�:/�`Q|H单n��R\�ʽb�\�s\r�\�e3)�U*���\�Q\�/��\0�3Px����5	>��(�\"�g\�v�{���U1�\��P\�3�\�S�KMU\��	�\�wL޹bG!\�E����\�k3\�\�\�P~8\�xE�<�S�-�t\nn:&Uka,��{ �\�;EK�r�D�Շ0�\�\0X멋\�C2��\\_e�O�\00ۨ<\��UA�\��\�/|\��\�x\�v�۪�d\r�AsA,\�*\')\�K�\�u8�ġu6\�\�v�p@\r�\ZT���idy\�jÙvZ\"?Σ�c6f\"\�Xf\�BЁmQ\�x\\�?+\Z�\�҅tK�=���\�	�	|�\�\�\n�K�\�$\��\�X�\�\�e�\0�w5f\�\�1d�\�4�+\�\�v�\��7!y�^7\�	\�N\�9�\�Ԍ#�V�1\�	|&=� \�XM�\�,2��u}oP)ޠ�_y�Vz\\*J�Ђ��*�}\��\�E�>\rL\�\'%�\0��%m\\\nx�Bp\��㋀�0\�I�\�(3Q�G��\�jA�\��\�3��\�~e��7MdA.\�\�Q\�\\\�:WY��\\\���RV�UJ\Z �\nT�`�~�q��.{+��\�¥��@�Yj/1����\�P ~�#3�\�8\�\�ba~gy�\�\���`34z�W*K���Ġl�,2\�,D��`B�\�庸&\�/��,8�\\�Cg����./R�Ɓފ\�E�P\�T\�%\�\�A��Պ��k�\�!���\�E\���q\r\r\�b���Q訾\'\���]-��E0�;��\���<ݣQՈ�x#�d\�E\�f\�ʊ\�H@Gdhk+P�ޥ1.B_V�\r\�bb�s\Zx\�Ah\�����.�ť��\04��+����#����sD\�\�!nޔA/�Ubl��X�pj�����\�3\�9%��^���;D�\���iM_W\�\�l[}m\�\��\r�-B�S�2p�\�AO�(w\�Z�� p\�Q��\��8�7&�\r�XpEt�:���q���-Oh\���.\�\ZE7\�l\�iPN��\�f\"\�`%\�씲���B\�qS\Z�sĪzq.�\�W-𖨪�@V\�\�C���a�ġ�\�) Z\�\�SF<��\�\�؆��\�ō���\�.K\�6G�̷T�Q�ޡ�{\�\�\�.����5a�\r��&ɘ�C`�C�igk��\�Ln8TUʧ\�%�s>҃\Zn�A@f�\Z�7ٔYB�\"Y-\�\Z�\n�fYc]\�\\�!��\�#\�vB�S\�`�\\#�q\����\�RX��Oz��\�4�\�3I��=�E^\�\�3 b�1B9��8]\��KK��\�\�\�kE�\�L��Sc\�)\�C�\�\��nN`��\�\�[�\�ܩU_��;M	�6\�#\������rĶ<\�>���\�y���0*ӈm#S���An11\�5\03\0\�\"i�Rj8\��6\�\�)\�Q�K\�\��\0�OR�}�\�\�ñY�\�)e\�1�9�a45O\Zb0U\�V��\�\�q�%��\0jn`\�\�X��P\�(�x�Fi5	\��}(^a�\�M�uŇ��ɚ��jQH\�Z�}*]e\�2��u,�|�P\�0.%t/m=�E�TЖ�p�5���\�9�C\�[\�58\�\���LLeK�e�헧\�P��\�� ^e\\D�rc}>to\�8z6��V��nYg��2��m�C�\�\r7\n_����SY�\�E\�٬�\0\�x*���\�#�P.\�5�1;y��>7:8\�F[M\���SQz\�[\�M\�c�M��hX�\��Ԡ=O\�\�\�Tڧ\�0KFe�z|\�xczNcY7��j\�\".��ҭ�c-A}C��1���lbZ\�]&���,�\�Kh��6MN.\�f\�l�\"�*{\��\�\�V�ť�\� +��\n�\0&\�o�T�\�1\�f��uy�]��_\��\0\�M0@]{�U�\�E^ɿщw6\"Y1`s\�T�Q�E�\�k����^!9�\�\�[g-\�\�\�J�\'C1+�A�Ѱ\07d[0OhF�aP�E�\�`V�\�-�\�}&Bz�-*¡:��!�ja|\�^U/^s/K1r�\�cl�\�\�.B S��\"|>��\�H\�eF8\�l�R\�q\r�*TB�\�aoE��	�� ��\�,2�Qʊ���s�0��\� ��-L(�#\��\�\r!�(���4���\�vԾ(��\0\�-\\RN\�ߠ\�0���!T\�\�\�\���\�,:n���3\�O�\�\�B2�^\�|�\�\�\�l`$\0�08%��,\�\�+qF\r\�%syT�|UܸI{A��Û���>\�c�e\�@\0��GQK��`B\Z\�K;�	rf\�6��t���B2\�g$(#�\n��\�6��afa*F\�\�x-�7s\�\��\�렸\�\�;gȟ\��,/\�ql��Q����\�PHMj�W�zN�&@�\�V���DaN\�CP�\��0�\�^\�k&U\�\�J�W�����\�\rp#ޣ�m\�e�!�\�\�����\�4���a��BV��\�`�\�\�d[j�l�\�(gK<�R\�\�1\����qCs\�~z8\�v.��~:�5B�\��J���\r~\�1U\�\�Ĥ~�\�\�6�u�VJ�B\�3JK�\�kQz7Q\�9�ܔ*^ڤ<\�[�B\�	\� !��J6�D;\\8J�Y�Ɗ-\�\�\�\�F�\�{�\���\��+b\�\�}\�.�@�S�:*\�\�\�^� \�B�\�#�\�ێ:}��׉G\�8�իf��`����\�%�ys\���d�6�\�O��t\�EP��\�\�\��Dh,!P�R�0\�ȱ�\�ʃM\�R��Ds\�\�\rv��\0y\�Dy\n�Q����\\F�\�$��	��]E\�\�\rK)�J;\�\��ģ�7kS\�%�\�_2`��\\�#*`ј\�\n��7�B8G	\�~&�\0�_�\�<1�\��\'�\ZSy\�(\0}�q\�\�EI*�^�FdYj����ԭ*pv�+~R�\0\0\�`���E�4J\0\\�� Õ�p@\�\��c�b�R�\�\�X�\�\Z14\�h*l��\\\Z��J��\�ϟ�{�>$VC�\�t�\�\�b(` o=*FP����Ip%�\0\�\nD���A3Du !�#N\�\�}��f\�c\�v��;_�\rO�@6�\r�!Z?�:!��\'�`�n��\�@\�T�O�(N�QAT�\�\�AK�.\������\�t\�o�\01\0Vk�l���X\�|��S�(ӥ\�E�\�e�T�7\�6��\�\'.:6�`r��#��j|IeT�ЖC�\�\�İ���b.�B����}MQ\�\�!��\�/?�\��g\�ͽ��\��\0�}B\"�\�!@����*+���\�mh\\nz��+\�\�&�W�^ț\�Q\ZB�\�\rO����\\�.;!���D2\�\�.�\0q,+QJ���kD@�p�\�!��\�>$z\�5Ж\�\�G�C�\�O�:n�\�>\�\��fs\�s\��S�q�\�C*\�w�\�\�z���l\�ZO���2W�LY��Np\��\�\�Fɿ���\�\�Q��`\n\�\�\�U��2\'j��۹�=j\Z\�O��O��\�uJ���\�t\�*\�6\\S<�X�/py�n+���n\�\���\'\�\�\�*W!���7�ğ?o~�\�w�\0�J8�\�\�\�(�v�	���(-O#J$\�сT\n\�\rt�*�L\�x��;\�\�\���)U�\���t(�:\�U?�\�S_��OD\�\n�\��u�.q\�fc1&�?--@\0bG����h\�|�\�Q/c\�i�̸ 1�E\�m\�I\�.��\�c�ʸ�N\���F6\�:3\�(\���\�+k]7Lú�h \�cp�c0�\�@\0*&zg��\�\��\��WK\�D\�ƝGR\�Q���8\\�Ch{\�\�Ba�Ԕi��]\�\�[ǝ2J\��7\�`�^��!T\0=\�@����պ\�+}D%t\�*(����۰�D\n!}\���\�)x\�k\�+&\�E?\���\�=\�\�0�O\��\0\�Fbc�\"�[\� �.�Yܖ�nV�\�\�?���\n\"��\�5T�\0ڦEG�e\�^�P����W��LfQ���͌�\�_t�\�)d��\�\'\�^�e\�6[n8��\�U��O�҅��m����\�2��̳�\0\�R\�H���\\�M\�\�\�F\���-�,�o���C(��1�\�\�l\"\�\r�i*+K\�3or��V\��\�\�C�;\�\��r�\�\�F�\Z\"\�\�\�lb\�Q��Znn\� \�\����/��Ξ\nGo/�\\�2�\n�\'��\�h�.ǡ\�5���|�^~%Ƭ[\�\�_i\�Ѕq\�c\�>�&ذyK �����7\�\�H3�\��\�\�b\�Rǵf\��\n䘙ko3�e�_vv\�ef/p�\"\�u\���o���ܲ\r54\�gh�.x�¾\'�\�qO\�Zp\�+,J��h\��0\�Y\�na�q2|ʋP\�5\n\�M.�,җ�r�\0\�(3��\�\��ҡY8�+&4\�Q\�>�C�!�\�`�ؔ\�Qؔv �\�\�H0\�\�c�,��ޠ^��\\�C?B\0Ah\�Cڢ�\�8Q/�\n@n�\0\�\�h\����۩�M+n���9\����)+���e�fJJ5\�4�1\�*Ir�wQR\n5�yb*�_\�m\����XW\�؟؀Z\�ݽG�-�\�\�@�Sw�#SqFn\�VLnR���.(�v�_\�N���h\�@O�q/0q\�E�Z\"jiԿ��o�e��k�\�\�_�-��9��F\\6�\�\�\�J��/-��\�\�B���K�qk	\�~\'���\�x�\�~%v\�Y�t\�	.A,ߢ+%�\0�p?P#@ޡ��PxJ3@\�>i�q|0\�\�\r�:\�C�\�Ժ�bw�S\�W��\�uCc�vģ�(8�\0\�h�\Z.Q�0G\�<\�\�\"	k�T\�@W��\�zx��Q��ʀ T\Z�k7��6Ծq\��\�',6,0),(17,'css/images/Accesorios-Mouse-Ratones-Logitech.jpg',NULL,7,1),(18,'css/images/Accesorios-Mouse-Ratones-Logitech-910.jpg',NULL,7,1),(19,'css/images/Accesorios-Mouse-Pads-Primus-PMP-10L-327308-FJtK0dt7lO0e7mvD.jpg',NULL,8,1),(20,'css/images/Accesorios-Mouse-Pads-Primus-PMP-10L-327308-FJtK0dt7lO0e7mvD.jpg',NULL,8,1),(21,'css/images/Almacenamiento-Memoria-Flash-A-DATA.jpg',NULL,10,1),(22,'css/images/Almacenamiento-Memoria-Flash-A.jpg',NULL,10,1),(23,'css/images/Software-Antivirus-y-Seguridad-eset-INT119-Internet-Security-2019.jpg',NULL,11,1),(24,'css/images/Software-Antivirus-y-Seguridad-eset-INT119-Internet-Security-2019.jpg',NULL,11,1),(25,'css/images/Almacenamiento-Unidades-Flash-USB.jpg',NULL,12,1),(26,'',NULL,12,1),(27,'css/images/user4.jpg',_binary '�\��\�\0JFIF\0\0\0\0\0\0�\�\0�Photoshop 3.0\08BIM\0\0\0\0\0�g\05JhB8HcSgEUwA0_iheM9(\0bFBMD01000abe030000f40c0000811a00009e1b00000c1d0000842700007d380000aa3a0000b93c0000ec3e00008a550000�\�ICC_PROFILE\0\0\0lcms\0\0mntrRGB XYZ \�\0\0\0\0)\09acspAPPL\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0�\�\0\0\0\0\0\�-lcms\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\ndesc\0\0\0�\0\0\0^cprt\0\0\\\0\0\0wtpt\0\0h\0\0\0bkpt\0\0|\0\0\0rXYZ\0\0�\0\0\0gXYZ\0\0�\0\0\0bXYZ\0\0�\0\0\0rTRC\0\0\�\0\0\0@gTRC\0\0\�\0\0\0@bTRC\0\0\�\0\0\0@desc\0\0\0\0\0\0\0c2\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0text\0\0\0\0FB\0\0XYZ \0\0\0\0\0\0�\�\0\0\0\0\0\�-XYZ \0\0\0\0\0\0\0\03\0\0�XYZ \0\0\0\0\0\0o�\0\08�\0\0�XYZ \0\0\0\0\0\0b�\0\0��\0\0\�XYZ \0\0\0\0\0\0$�\0\0�\0\0�\�curv\0\0\0\0\0\0\0\Z\0\0\0\�\�c�k�?Q4!�)�2;�FQw]\�kpz���|�i�}\�\�\�0���\�\0C\0		\n\n	\r\r\"##!  %*5-%\'2(  .?/279<<<$-BFA:F5;<9�\�\0C\n\n\n9& &99999999999999999999999999999999999999999999999999�\�\0��\0\"\0�\�\0\0\0\0\0\0\0\0\0\0\0\0\0\0�\�\0\0\0\0\0\0\0\0\0\0\0\0\0�\�\0\0\0\0\0\0\0\0\0\0\0\0\0�\�\0\0\0\0\0�2G�YL#\�]��\�E\�5�1\�\�\�\�\�Vi�e�\\���ffi\�L6�(\�\�=La\�\���\�<\�\�d�ӍI�b�z4�\�=$\�tm�\0\0\0\0\0\0KR\\<\�ݹ�o�_0\�\�:bO ��#i\�\Z\�CWH_/\�\�\�Nk\�\\,\��&�h����\�\�4\�\�\�\r/9\��\�t�7�\0\0\0\0\0\0\0��`��I\�gl� ��w\n\�\0\0�\�0��\0\0\0\0\0!f�\0\"@\0\0\0\0\0\0\0\0\0\�/��^\�;�\�̰��J�)4\�]\�=O�� \0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0�!\\�Y\�U\�\�_�|^\�\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\\\�eaa�vVE�\�\�Aa\\��\�vV�a�vp�eaaXXq�XV��aaXXpWg\�\�T\0x\�i�\�\�H4�9��k\�ŹF�\�5c�r\�W��ȉ�:\�\�\n\�\�Fr\�PM��j\�K\�H��(\�z*-�\�-�E\���\�\�)��\�ۖ�2��s\�&;^��mV�{�n�ЋwlY\�s\'K��M\���eZ�ktU�fgyկ�\�e�ާJ5m%��Y���\'\���O\�k���!ml�I\r*\�͊����/^��N�c\�\�\�@�\�bk\�]U��s\�\�գ��X�\"+��a��#ʵ\�\�,\�\�^�1\�\�Ju�{\�b�p�rL�mYV��۫*\�\��\�O�����4SuQ\���e��n>�D\�ׄ!�\05γRΜ�on�)\�\�\�}U�lu��\�\\�\�\�nP\�\�v֙��΀4Qyg=�0!]Ι�eh��h��\��6�\�\��\�\�\�(iV��ڋ+��Kc�\\W\"bk\�[U�\�Ls�u\\�_����\�gP�\�_\�R\�\�\�\�u�2��њ�l\�m�=Lo}\Z�\�-��\�Ᏽ���\�K�\�o��Ӳ�i\���\�/U�\�=f���M\�#g3h�o\\� =x&&�s���β����\��|}�\�wqI%�_�V\�\\w\�z\Z�\�\�T_\�Y��U�m�\�&\�<�G.S�ս��\�U�v1�q3��f^Z\����^�\�\'0u��ᵙ��ݥ�\��\�DY\�\�\�\�\'ْbk\�\�LpV)���\�Q��\�y@����͚\�\�\�\�֮�j\�\�\�ƫU�zs\�\���mjz�:\�;\�;rU\�\�\�cK+:�/s#��P\�s\�/�W\�y\�\��=^s\�fE7\�-\�����Ӟ\�\��9�o��\�8\��\nig�3i7T\�)Ya9۞[n	��랳ϝ�ml\�5�u�\��C�\��oha\�\�JO\�}g\�ۇ4j+��R\�<�����\����\�ˤH7�\�0\\gZ�+ƭ&A�rڐ�d���q\���GS�,H\0a~k�\\\�\Z\�\�e\�W\�y��W^\�\\�Y{��F�n\�\"\�\�][��\�=y�i�����ѻ\�\�7�z��\�A��Uf,gg�ĺ\\�Ss�-�\'ْbk½��绒�I�y�JoCO3\Zb	�R6.�\\�Z\�\�w\�\�\�\\\�{\�Z��\�\�ߺk\�\�oz.��.�\�G�\�=,�\�/A\�@�+4�����^5�\�\�v\�1>\�^S/S\�v\�I�C���\"\�,\�i�+YUZ\�\�eԋi\�^]\�����Ęb�;ֻ�\\k\�7W\�=\�b�\�l�y\��\�\�Y\�f1*�2��Q��~q�cY��v\�1>\�^	�\�\�\�/\'Z&\�(/���\�\�\�Ƙ����\�\�\�}|M��8h^WdNWh�\�$G%\�:��K\�i�g���\�|\r\�*\�\\\�\�Wyǡ^��P\�kV3����16��\�3\�ʭN�D\��LDfi\�gLLL�Y0dX�\�\�du�jז��JSsU\ZQy\���ޮBڴ^yT\�-s\�,�	hcK,�\�\�<�\�Xz���в�5\"}܉��,��O��O\'\�[���\"@\0�\�<\�u��&¾\�2�E��{\�oA7\�=��\�8\�\�ĸ��5�`��\"c�x�\�N�\�=\�\�\�Ϫm�\�\�M\��\�k5�܇��15�}�g\�\�z\�*��VJ�	��E��8\�#?����0���\�n�\'}�G\�?A0s\�\�&�n\����\�\�\0r/\\�M�\�1U\�bz{\�g2B����z�LM�8���\�=��ϊ\�\�;ѯ)\�{{�sDb�n\�F��\�\�\�\�W7�Ⴃ�nVʲ\�\�H\�|\�Nq�WQ\�\�J]\�4\�|�[<M�\�m.[�7\�Y��\�\�t3\�x-.ߣ��\�	�2\�c�V\�ޓ�M5Me3�1\�]�Ρ�\�VO1m�3E9�-�;X\�\��Ƴr�R׫��_>�\�ˌ�\�Ĉ����}\Z�ZZ�Mf�\�S���9�(\�S\Z��vs�\�s�9z�=bk�L�\�<2_E\��]�k7�y\�\�\�#}�i�XC;[�2ޖi􁛣fie�u�\'3vLM	\�5\�L\�\�\0\0�\�\�\���l�\�^[\�lLMrra\�\�tخ��g���\��\�r\�W\�7\�D�t4	R\�\nΉfa��nŘ\�+�=Ϊ�w6U=�\�\�\�6)\�O\�\�\r�\�\�8XL\�\�n[\�\Z�\�\�Qd�\�`/U�k M�ek��!���\�o�܀G=FJ:�\'Dt%s0PD�\0�@Q\�\'$�\�S��\�\r_�\�\02\0\0\0\0\0 123!\"#045ACP$@%DEp�\�\0\0\0\�yF�1�?�RQ���\Z�O�\��� ���*Hg\n~\�\�b�e���\�D|Fp_4���\'���H�*�*\�KN\\B�+���d��|\�*j��\�J�k�@QO\�i\�\�Qq)�kJj~,�����+7���o\�֔������*\������kwd���\�BDQI�\���3SV���N\'\�\�߷T�⟠��\�\�pK�9�n#�\r�7\��q\�=7�:v㟷��<_�{�\0�\��\�)R\���\�ݼ�\�\��\n��NƖ��zv1\�<;�\��\�ཟ�\�\�W��\'\�\�O\�Y\��8\�䚍�\n�Zx$��ZW\�c\�A\�Ɠ�`1�m3UG<[\�Sų- \�\��4�RӍ4|s��\�\�q\�J%Ia�\���:h��8,lѷ\rpzZ�\Z:v�����8�vj$\������S43zV���S<\�IF4\�j���\n:V��=3=d�?9�\�\�G���	��\�\�t4\�B\�-���8\��4�)\��pʃ��^Q$\����b\Zh\�i�jd��PSHJ��S�DpRT�|\nN.���\�\��e5$�\��/��Z_�u1p\�6��P��z�u\�\\�\Zh�nOĩڞ�s�e,�Mã\�\�T|B\�+\��K\�>-fk\"�	Y�3mL\�\�l2a[@\�\�\��\0\�evWevWevWY2�,�d\�&Y2���,�]]]�L�\�&We�+�ɖL�eu���+���,�]�\�]�L�e�,�d\�&We~Y;׿%\�\�j\��C\�}7ᾗ\���,�n-\�Y�̐�mgg�O�]��䍜P��D���y9\�\�b\�X��(\�,�1�\�U��@d������[\Z��]d\�q�D�N�X��+hn��\��\�+ؘK\� \�\�����I߫��Y�ɕ\�X���3[n1c�D+>q�{�1u̷\�:��\n)n.�M0�n���w�\�N.\�G�d҆�^^I;�l�e�\�\�\�<�HY*���\�\�\�\�W+�f���`]\�e�[b��i%5\�(+�$2�,�N�t\�\�6ռ�J>�/�\����N�{�ɓ�X\r�R��w\�U�\�\�\�\�\�\�;ܾ,�Y����lH�9��O\'����I5����q��\�2ڃ\�\�\'z�͖\�\�\�D��\�ɠ��(ʲo�!N�ȴ!�=;[\�0�\"�� *\�\�x\�\�\�#�\�\�\�J\'�\�Ǒ��ro��Q��%�盯t�N�M�`O}!�\���ŝqv�9�߻��ș��\�X�M=�\���\��\�r6���\��NB��X�X��J\\\�F\�2~��\'�*N6�m\��g7\�f)@SԲ\�42\�k�B�\�x\�5H�1t�v��\�h\n�>b��v�ݠ�d��rIߩ�C\�An\�f��wHX\��\'\�\0`\Z�\'u�\�LS����d ̟�1\�>L�\�1�*ANƆv%@xʟ\�I\�0�4\����Q�˒N�f;��2am]C־T�a��f\�\��\�|�4\Z��`_�\�;��\0��U��M*bmd�dD\�SO�#i�\�LP�/}h=�\�)>\�&\�b�7�\�\�\�m�\�2\�?�!�#��\�\�:k�`Q\�!��W$\�\�@�(\�tܡb��ӧ���.�f�4��O\�O��l\�v�\0�8�S���\0#�Q�\�K\�(�OK\�b�X,V*���\�e{_l�B-$\�H\��\�4�\r��\�hlĜYr/N*��J*C1��1*YwcOF@�H�NبO66�\�I�k�Ryy$�)D�{7+������\�\�\�D�\"8�Y��^�Md��`\�m\�4~��\�*Sxgԙ��(\�7rg\�;\�M��y\�<��yAf\�U6\";��n�\��+pT�\�3|T\�RI\"�7N\�f�6\n�NH&S�d�S#�j#͋\�WR��\�\����7h$�\�]&�Ryy\�I\"4dm[hح�X\n�V��3S\�\�\�轂\"��!\�O>MK\�T�\��UiMֵ�S�\��\�x���\'�i\'��B���>jO/!y]Q�\�\���:�N�\�q\�q|�@cihJ��\�\�Ym\���zt\�Ճx�=\�}�7�J��`I<�\�bG\�J�%\'��_\"�q���I\�\�C椣!�2�u\"��r`���I�)ΕC8�0\�-�QN./4l�2�(lߧ\r�:���5\��\�_�]*�\�<���\�ۧ5EA�\�Ků�<{2�CS��bqCgYL�\�L��fޅ�\��s�m�b�h\�f��\"��lI$B\�\�>��p>�U�Ry9\'�A\�\�)\"�i䔣\��\�I���K\��o\�(r\�3���d[	\�\�;%��m�*X�\�\�?\"�{�ү���o\�R�?��A�\�\�\�Q�Zoh\�l@�\�6\��	�g�ӂ�GqH��O\�U?K\�\"��v.S�!�\�Z\�*>�I���_�\�;��\�_&y7\r�\�9J\�\�#���Om\�\�N�*�p\nH�\�G\�B\�/�͖M��\�D\�\�gm$�z_/%�?�\�Ҧ\�\n�/Q\r��CQ�Q\�(�O�ŌQ�!9cx��jYZ1��M)|\�.\���\�\r#�6�܏�/�ҳ���\�J�=4c��+hVЭ�[B��m\n\�d�5�\�Ӣ Ml���-5�g\�M0��ĦB\"*h�a�r\�6��\�\n���z�آ\�m\�t\��<���U=\�X?$�h|��>\�i~��r!�)0�MI\Zف�\�)\�S\�\�+5�Q|�R>�ܘ�e�\�\�׏��o �v󺏻��\�Q�#��y\�<�:6w��:�\�\�\�\�zAd􀦦�zᔪ�\�(m\�\�\r�>�f��rH\�c�w�|\�\�\�/�I��Ik���1\��*�r:�.����Bޑ�p�!e\�\�Y]�zhܒDm)?ʐ��\�\�7\�i\��\��\�c[Q�fd~��к�3]30\�Mt}t>��hܟ\�\� c��!&6\�~�\�\�W\�Asn����G\�od\�}H\�뤊ck\�\�\�d\�&a \�?F��\�+�\�N�Y2\�\�\�Zù7]��2\�#\��\��^���񪟌�R�I\�b\�!P����&��X\�C&\��0(�04��4k#��&���*ꏦ�7�\�Y96\�L���8w���Ӫ\�H�\�\�*�wqk�&vv杲��\�\���eR��qn-\�F��\�\�\'Ur{	5�ړ[��4�\�ŕP�\�f\�\�.�\�\�\�F:�x\�x�\�O�\�TT7�5\�\�EoT£���;�\��T	\�\�\�\�z���Y�PI�6\�t�\Z��{�+,\�d܌H`G��E�N\�R��Pw�L,o�$hkr��WHI��6�g��TT\�Ա�P����e�\�Jh�<\�(\�L�h��}ZH�V\�\�ko1K�\�u�\�-\�[��$@*\�ě;\�ɍ�L�\�]�\�E��\�\�\������8������3QH\���\�jx�vZ\'\�B���Ԑ���\�\�\�Z⦪�\���\�\�Q��*��G\�#���1[Lm\n\��+dUL,���\�eS\�\�c\�_\�-$R*�</U\\8��z�\�$%K���RA���Pָ���ET\�v�]<�ԬMl�\�:_�Q�\�\�J\��\��ES\��~/⦞\����]�ؐ+��\�\�$�<S\�/Dj\nm�\�\�cAN\0�y[�<�A�<�\�\�S\�\��f\�hn��❋���\\��,gV�םe:ݕo��\�6Y�ɕ�G\�^w\�M\�zT�(;�\0=�8�\�\�@��\�	�7)F�\�\�fX\n\�\��zaOL�2�\�$[3\�2\�e�,�Y�\�%��\\��q\r*����WW\�>K]M\n��\�ۗ�&\�v\��\0K\�{,[���Tg\��\�\0 \0\0\0\0\0\0\0\0\0\0\0 !01Ap�\�\0?�\0\�\�˟��~\�䰴��\�+Xj\�t�hU\�\�y<�O8t�+���ȡRT�W�\�\�§�fDb:*�v�\'�~H��\�>���3�yB\�\�Eh���\�w\�s*V�\�8�$N$jQ\"%qYxY\�\��x<��*b�Z\�G+��о\�\Z\��YT�\�!Wk����D\�\�󎞎��Gi\�\"�&\"L\�D��\�\�b,D�\����-\�D\��v����!\��ﴩ���\�\��e	\�Ҩۨ�a\�KJ\�U�{B�\�\�\�Ӷ�\0!e~n�\0�\�\0 \0\0\0\0\0\0\0\0\0\0 !10p�\�\0?�\0�\�,�\�e�Ye�ѱe��E�Ye�l�-�ج�Yl�{=��\�e�[7e���\\�\�5�C�h6W)\��\"��e�6X�=3,\n\�����(n\��(����\n2\�n����َB\�&.|E	�\r�E`,�#qdgϏ\��T8\�H���1\�˜>�\�8Fz&8ˇ8\n1\�\�6nlll/�}Y��rjT(j��,QB\�N��Ǐ�\\��̈́��q\��(_9˄�MJ�/�>?��G\�R��v\�?����R�\'1\�(g�Q�5�#\"��.|s���]ѩEjja�\�~.1\�#Q\��Ye�s��P�\0�c?�\�\08\0\0\0\0\0\0 !1\"02AQaq�B#3@Rrs�P���Sbp�\�\0\0\0?�\�\�\�׷�\�G�\�=nϦ뷃�\�T\�h��Ъx��yUm���\ZʥQ�\\z���^of����*]��-\�2)y�\���f/�>�+}�\�\�\�l���ΨTf^�ջ{5��>g4v�\�4@�\0n[F&�D\�\�6���%\Z�7rp=�}����U�r4ڷbU~\�SCd.�IϧFj4�d��\�y�OJ4vj;\�7�\�\0�J�=\�V�*�\Z{9}F(ЭKwP	�\�;1{�s\�$�of\�5j4�z;\�7�\�4�S4\�\�>�:\�\�K\�qјTmn(R\�\�\Z�#B�-\�X�n\��­쿦\�NJ����=7��\�\�\�r���W�\n�\�j�\�U3Kh�p���5\�Μ��PR\"�\��î\���\r��g�ն<=\����P�ES�?��\0\�S=\�\�?qW�Ҫ��̢\�&\�Q�v\�X[w\�M��+�\��\0�5�~mᕲ]\�3�[_���\�R�\�YOw\�\�J�*Ծ\�\�sh�����t\�D\�\�\�\��Wj\�U\��\r��M\�\�]SK�ƈh\�DN�1xBe9\��NKÌ\�\�i�I�\�W\'��\�\�[�\�AJ:Qٚn�!6��D#�\�I�V�\�%ӛ�\�ΧC�Ug�nw�Gu�ԧL\�t*��<ktª�\�\���u�L�\'U�]�K��o�Q\�\�s\�U�x�\�6�\�n݋+=��I\�\�\�9׋\�?WkQ�\�/:\�tj��Gj\�*�\�k�\�\�6!\Zԫ>�ΰ�[z�;�\��\0��Q���\r\�Pa*\0�\�;��\�g�Fjk2\��X�T��+\��t�\�6ǒA<#\�oj\�Np�Ur_���m5+�\�:{*��\��u�`tB�\�νw�ދ~\�y\�u�B������J�\�\�|�\0*v������	\�\�f\�Jmz�MP�\�#�\�C�\��;;?.H7h�\�UoPp[C�\�ݴ�\0�G��G�\�l�Xdem\\h绽\�\Zc�8�So�*�\�Ѻ\�a6�C�w�IU�\rd����TfE�U��&���u6�\�����\�\�vP\0\n�\�\�� �\\m\�0��\\m\�e��\0\�:�qj��_\�\�\�\�k�[uZ�V�j��[u�_�j����ʑ)\�\�uMZ�V��\�ru\�\�\�]\�uԵ��א坍i��r\�\�\\Jap�p\�|.!g\\\r�7)6h�\�E⺹�̊i�l�\�9E{͗�\�}��\\m�3Z-,\�\�\'�!+\�\�\�h�\�mn�#�l�\n|\"l�\�qYy�p\�E\�fJ��\�6�l#���S�\�VVB\�q9p7\�K�\�i�E\�d�y��\��L\"\�-\�\�r\�Z;(^���3Y+��!���Z[6z#�C��\0�\�TG\"V� WJ\�-J͋<���q��\�\�H\�\'E\nq�Nu�G|Y�\r\�]+�țҺT]Nd`\�\\&\�\n\�,�\�\�\�\�>1�@\�)59O�]���cW�\�\��\�wҧ�Z�x`p\�-�C�\��P`�/:�\��d��\��&�\��ԺW�cH\�\"T�ߌ!u.���_%jWQZ�V�j�qW�-T0&=\�P��\���]nY=C�:\��Y\�N�HP\�\�޵z�dp�ť����06۫\��(�l�(�����B\���AE�\�\n\�a���\�=ө�\���)��Œ�mn�!j�S\��\�r\\X>lݻ�ɱ��q�l\�\�t\��(TM8	D\�kp|aD-�E�\�h�V�N��}7ye���\�F�\��P���T\�\�8x�q�@\�\�B(�C��ͱ\�$[\�0�ʅ-\�?�Ƴ\�^�J�Z\�\�\"3\�<[I\�[c}�|aɚj.�\n�\�x����ݪ�͇�)\�\�\�\"�u.\�𲐡ǈ.�Z\�\�9��\'�!��v�Jm�|ar7t� oJ�\�\�L��\�\�U\�\ni�=SVo���\�M\�\�3�l�B�N7�\'��Şɶ��rn^K\�֌\�\�T\�r\�r�W�(��`���\�Ե�Y��Z\�\�\�m�&\�\��ͮ>-�\�w94\"� g�\�8I�\�5��\�H^\��/�\'\\B��h_G(\�{O|\�}\�\0x3��Q\�f�\�\�\�\�s�n̯�zuO6dw*N�ʃ\�=�L-�S-\�\�^oPWj�I]JCKZ>U�|x\\%SM�?�\�\�6IWݥ��y�_v� ۪�\�\�zafV�jWu\�w]\�u\�jp\�кB-N�{Y \�(8�гi	��\n\�<+ ��\0\�4\\n\�(oeҾ\�\�vH����\�\�-�[C;�~;�\�fT3/U\���]�ҵ.�(�2\\U\ny큶�\�\�ш)C�y\rb\��j��,���f\�\���:�IyZ�-�T\�5}*/\�w�뭓`����`���W\�ֺ� �]S[\�f�\�-o�\'IQ���y\'>�\�Ⴚ\�!\��\�@W\�!{O*G9\�\�`<\�k}в1IP3E�\ZaC�ȳKz��\0\�\r��y�\���d�\�=\�-W\�Ƹ\�ҤA�Ø\�苼+\�v�X\�\�\�D06\��\�vj�� \�_f\�o�v��\�?\�g��\�x�Pj��C\�t�,i�p���E��/*Y\�\�\n��\�\���\�_~\�\�VW\�2�τ�\�\�/\�q�E\�}\�\�if�\�1\�h[���\�}�iQU��\��T�S]\�\\�\�\Z\�\"�\��f\�4�-�n��������C\"�(\�V�hV�t�\�Vt\�\�r\�\�B�*\\�;N��\�)�n�[x+\�\��ͤ\'\�x�R¿3Tt�\�ߕ4�!EJi��\�*	��ȢyR�Z`\�e\�\�+R��ܬ\�z�\�!f\�S�+��Z�Vp�{n�\�_f�\�QV�_J.d^��8�k�ʻ\�*y\0ZQ\�^m�F)o𠅤.���R\'Y]!t�G$0�!Kl��<ekf�EҺTƿ�\'�\�\�\�T<|\�\�t��z�R\�]Jf\�J\�]+�@n�O�>\n\�u,�\�	�\�i��?�\�\0+\0\0\0\0\0!1AQa q���0��\��@P�\�p�\�\0\0\0?!\��\�\���\0\�_�l�\��?\�%�\0�C�\�G�&��fCSi��ھ\�+��\�\�\�Q�����\�\\�i�(\�\�d\�\�@\�\�|%`\�z?BҶ3�@T�Z}J\Z��m��S����\�\�ITu\���;f-\�\'~��|���\�V}\����d�~���C�+8��`\0�\�k6�!���i�1\�\����(�r\�\�\�:\�r\�\�џ܉RKΈ`��\�O��׸��\��J�Fժe�\�C�c\��\�m�/\�\�L\�PP�O�O1T�l����\��\"���]�J\�e�zL���܀L���q�\�.��\�\�����i�ZV<k��d\"d�ʰB���1VK�\�=\�fު�\�\r�ơ/�\�A�)�� �\�UB&؋3� �\�(Kccd\��A����jc0��\��\'�jlX�\�\n�#�\�I����\�IKlf�#x��ciCw��\�{�\�2�Q\\�Ŏ�g\�\�`n\���H��K\�\Z��ks�#���L���?\"\�i�C�\�fmC \r_\�\0��v�\0\�ܸ$���\�_�%)CX\�5,�\����:�\0\�=\�.�3\�C�h��%\�`�\�\�yس\\�ƅF\��\�0��i_�T�J/\�>�C��b��\0�go�.\�a�:;��e�)�Q@�\�j\0��҄j\r��ݘ��aYcQ\Z�.�\0P�<H���&!\n\05Q�G\�0\"�\�U�\�*\�[\�y��R�\�\�-�t�C\�=N\'�{����Oa=I\�Od�\'�W̯�\�\�_2�O\��\�=\�\�=\�\�=\�\�=�\�J���+\�{�|��\'�{\'��\�\�\'��\�\�\'�z��S���R\��3\�\��\�R\�)o�÷\�R���\��/ܵ�|�r\�Ynr�\�i\��\�.\�\�+\��a~_ܷ\�\�]�\�|\�\�-������\��\�,��g\����\�|�\�/\�[\��\�\�~\�]�r���\"=L�\�:�\�~c,_ܷ%�\0gbM�<���k�\���|�s\"���\0\�F�\�ӂQ\�S�cJX:a\�\�\�4Ļ�;�b\��c\�_s\�\�z�4?1�\�\�7���\�)`IWd�.\�R�@��^Xx�<Lx�1\0x�\�:Tm�bU�3)H\�o\�\�$��a��N+��F\�\n��\�\�T�Z��\�\\�0\�!\�O�\�Yd�\�	�c��\�0�\�&V��[�\�hK�����\����\���\�\�G��\�\�0�ά\Zc�\�\�\�\�h�*�K�\�\�KQ�]\��]!��S\�p\�\�\�j3�Q&^q�w\�A�Uݲ�X��XgɀO�5OU��6M&�\\\�\�\�!\�b��۾q\�5\r\�z\�C��Wx�\�\��!��\'��\���7	}\��\�gS��D��uK:	�\�\�N\�3C-\��<hv\�zepm\�\n�Q��+=\�4\�\�bQ\�T�v�Gd��#�\Z\��\"\�=\�ċK;b\�|�9V\�-R\�Op\�\�H���\�[Ԡ:p�/��)�\r�q��=�\�Lx�/��_ه\r�����0A�\��8�\�w\�wǨk�\�K;�j!�v\�y��u-ꧨ�7P@�n��L�Q�/	n�\�|L\� `\�\�y��F%ӎ��\�YP�\�\��;bQ\�Sw\��k�D~P\r	U\�\0�+U�\nQ�\�AX&ɾ`�?�� Sy�\��/��\�!*m\'�#ӌM�P<��N��������;�ϒ�F�\�H�\�s�f�<]3g\��k�?\�\�^��4\n%EB��L/�\����\��\�Y���\��\��G4�\�m\�I��\���\�Z�2\�\�\��6\"#�51\�6	Rw�r\�0Ĵ\�m�=D:�E���\\\�C_{�Ѩű\�&\r�bF]\�؛�	phq?\��0fdో8��Y��\�Sܡ�J4}\�`\�Y\�#��=J\\�����3\�b��%jk\\\��~�-V\�CpGP�bE���C\\lH��\Z�X�\�w�\����/�\�\�D,.(	�\�\�4\�%@(Z\�ÿ\n��\�0��|_��:D9�\�;?D\���)t֣t}.\�~�ׯ$\�k\�\Z�M�w\�H]��\0��R;��d\�O�(O\\z��$�*ӖY�jbm˲�>\���h\�\�s	\� ��%�j- \�b$Q~\�a�Ӯx\�]�@oL�\�35qP\�_\�\�.\"˚\����C\r�W\��0A%��3y>d\"���\�\�\�\�\0�\�,]>b[noxu\r|\�H\�5\� �p>�\�OU8�0HЋ�C�R�\��\�\�A�/\�)\�\�~\�D�\�\�a\��r\0\�\�>#\0b)rsOC\�\�Uh�\\ǉt���\\�=����sw�k�	����\�9\�Od�Ow%�vJe\�(�<C��4T\�k��\�v�\�f�k��\n\�$:\�ɭy&�˨w�͛�\'��0���\0\����U\�B�\��_?\�\�-�8t\�\\\rFB��\rN�О�ы��\Z2�!�\�\�5�\�\���l�\�\�\�q��[=c�\�\Zr�[��\�\�D�=��\�\�V\�\�a����g�?��\0�C\\nGlV/\�\�|b\Z^\�\�\�T�p�\�\�k�\� =\�fu\�1�ﴨ\�&2@;wifG�\�4\">�\�V�n��ȳ\0��$\�q��k{���b3�:�淌pk�P�a����2�YM\���3��\�6� a�\0�\�\�\�w$�po��ԏn����\�;Zt\�GC6@2?��)R�\�܂$��\rf���% XF<O\�\�g�|!�5a�]\�c\�嫳,Z�\��L;�D��\�d��\r\��	�\�N\��\�k}\�:R\'Tz�\�o�,��:\�Pi\�AfWeŵ��2�6/1�\�ՖV�\��Ϳ2\�\��}\�5ò��%q\�	��\nn\0��rZ\�j!\�_c\�\�OjF\0l�\�_���\�+\�5t}\�	��\�\�!b�\�*\�\��3q��ۛ\�\����\�\�We�q(�F���wy�C\\\�w���Z��Q��\���i&e\�\�\�;\�A�\��D{3�o_�O���k\�a횏\�&\"�\�\�\�v\�-FW\�\�\�o\�|\�x\�˪�\�纆�\�O���#0�Ij���\�\�/6O\�Q:\�ҥ\��a��M14�Ų��\Z���ԫ\���(�\�\�4�j]C\n�\�\�=�A\�6�C}Gg��wP\�Qa�\�ǒ~e�e�d��g����$jٛ�}��b���B\�\�3C\�ax�\�\���\��o\�j%\r\�wlL�\�9����?\�b8@�\�Oz���\�ܡ\�0җ\�猝м�D6�\'P\�\�\��\0u3\'���\0�?\�g�=���A�\0\�=��\n�f\�74�6�+�\�b��\�%@�^�K&�8\�\�R�S\'(\'��(��Ѹ\�յ�Xڿ rǄ�9�	.VR�tQ�\�\r;\�6֡J�\�F\�L(��OSy�lq\�\rr�p�\�|]3t T\�5\n)2��ʚ��Ku<\��\0_ԭU{a��c\��\�t�\���V��.�b��\"lkx1G\rB\'U*��\�\"b\�+|,��:a�X���\��\ZF\�|�-\�>\�ėS|^X!�S\�\'B?ll\�#��.E�[_+k��/\r\�`9��ِ��	�:h��e��YCh\��1�G\�\�\Z\�����\�\Z�g\�\���\�J�dny�,U���r\��\\VK�^%iw	�8Ɯ�Z��C�Ow\�ER��\�|\�y\���i�v^uq\�5�$��t{Xftw���\\h\�\��\�Z�!Q m\�\\�2��=bQ�fd�\0�TN�=̬P��\�\� \�|n��\Z�N\�/0u\�~{&ϒJ�\�ivt\�\�͇�\�X�.8�1_�\�Wp7s,4\�<�\�\�v\�\�\�\�\��\�\�5�7�%�1hd�L\���M?\�gM�^\�@\�e;p> �eNC�:T��\0�	U\Z�\��W�\�eĨi�\�̺\�.幢_����ɣ\�3m)��\��k�\'`�UO�qjo������\��\�&�\Zy>;)���#셂k����*�>s��r\�	\�%Ky��w.�5���h\�k\�\�8\��N��\Z�\�Rb#�\�O\�\�Ƭ`9�f��7/Cs3�\�Ï�\'Ml�\��\�Z-�qh=�\�\�z\'S)�\"��$�qW/,��8�\0R\r�v	)��Φ	�\Z\�-G#\\\\\�5\nV��h\�7\��eT\�R\�K<}\�y�\0(u��T~d\"�z����l\�4.�A<�S�����\�Q\ru.\�eC���j@a&m�t�|���\�\\/�D\�?i	њA!\����5\���w��W\��/2�ws RnV&\�\"�ǘ�\�\�z�v��<K�\�\��%\r�\0,0�\r퟈\�[�&\�\��.1|L�8\�?\�X����9�\0\�\�\�\�\���	qTNk��\�Y7��ĝ\�Xy�I_$�\�\�g�@n\�/?��0\�z��QK~#\���P�T^\�嬳�\�)�\�l��\�\�X?3e*\��f>����\�?�\�S댑`�\0R\r�q	L!-\rJ��Q\�Q\�$*Q\�3\�)kp�m�xK0\����l�v_\��F\�+\\\0v�U�9\Z\�9A3�[�\�3\�ׄ\�}p\�y�o#�s��\'�΁�G\�6�\�O\��\�1`\�b\Z�Qt?�R0\�Tv�_\�*�z�\�J9��\�3�!:�����*K�\�\��\04|�XV\�j��&f{\'�ӕ7_ܫR붅�!F\�\�\�Q\'\0!��\�p����-\�1\�\��НC_\��\0x7\�\�gX�D���\�U-W\�\�t��<F\�\�%[��s�x�9H&�S\�̳\�Pa~?��7\�<iy�\�\�\�._7(G*\��� \�c�%\�8����]�\�Em\�%�8\��J<\'�\��M𫤞ڃҗ�8}\�T��\��y\�r��(ւ7�w\��3\�>�\���\�D�\n6H^\�\�e�\��!�D}^\�\�.W�7��^	oYZ9�x6*\�5\��\�\0\0\0\0\0��<�<\�\�O8\�8�\�<�\�<�C\��C�$\�!\�<�\�<�\r0\�E<�\��\��\��\�<�\�0RKS\�<�\�<�\�<�\�<�\�<p\�,0\�<�\�<�\�<�\�<�\�<�\�M���M8!\���\�΀O<\�t��<�u���\����Po�\�<`TL�\�տ&��\��j��\0��ߙ\���x�<�ؠ�G��\0lO-+l/��\�]�\��,\�\�R���\�\\�\0�T{�L�i㯔aO�Co��?�����?m\�H1���x\�\���>�ۮy\�d\�?%E/�\�\��4<�\�{�\��hӽ��u\�\�76>�\�Hco\�c��\�K�\�D\�O\Z��zӎ\�\�I���K\�I\�\�\�_n\"�y\�\�\��\0\�9E}�\�k[\�`\�\�7\�\�n�k]w Ti\�y\��\�O\�g��\��so_QG�w\�Oˊ�����0\�?\�}\�j�=�\�NJ翿MJ�#�{�t�F?r_KNX�e_=\����oj\���Q\��2\�\�<\�ō�wyLҦ|�\0\�h�\�#\"\�;�0�8\�}\�������\����_\�{�/�sp��l%_��\�\0\0\0\0\0\0\0\0\0\0!1 AQp�\�\0?�\0\�\�ի8\�\�\�\�,��e�\�6|�ċWWV\\).\�e�\��H\��<0\�I��\�\�ˢV�l$��4\�\�9�n�\Z\�\�\�a\�vp\�Y��X\�[\�	ݧ�{-軳u\"z\��\r���\��o�\� \�\�\�\�w�#\�?\�\�u�l\�H�g�\� \�B9�{�|�\�+)۶[j˾��&|!݀�-\",�;�S�\����\'�r:ɖ\�o1��\�\�n�\�Cm]�u:��8�˹6Lc\��\���ޡޙ\'l�X��r����>M��c\��B�\��u�����e\�7�,a\�Է	\��\�잛߃�<���r݉/�v��\�!\�^,G�WSӝ�|uX\�V�t��mZ\�9�\�\�=<�%\�9=�2^e\�Mg�Z�{g&\'�\�\�2\�x�\�`X�x�_�wx�<�\\z�O�/Ý����:��ѶZϖ��8VԱ��^\�6��nK`ۤ�X\�m�0�\�%rx��9w�\�,\�^�9���\�\\z�]�q	\�I�Y#[*\�q\�b\�G��c\�<��\�\�?�\�\0\0\0\0\0\0\0\0\0!1 AQap�\�\0?�\0�c�bŋ�bś����f\�!�6,@m9|慵�\�\�K\�n�Y+�W�z�۷e6Q�c\�[l펒w%!p�F�!ܳ\�6͛+�n�\�:�ㄍ�l.\��ݗ9VHc\�Q\�B�^(\�.ޯ[.�\�=�\�&;1�,��\�\�\�Ͷ��M�]m8p\�r=XXX]\�.�}�㓄��y\rlba�-̲��bZ��GI1\�a��\�\��Y~��9㹳ۻձ&{\�8Ó%\�&G�/7k�\�\�?�y	�\�fOe\�8\�~G�e\��Ä���g|u���:�[=q�3\�\�x\�\��\�\�\�\�\\�\�b!�d�6^\�gVY\�Ǣ�Ǟ^\0\�S\�w�{c/YI{\�\�\�\��\�\�����w�f\0��ܞ�N\�\�.��\�\�^�\�J\�Q\�P?n�e\�\�\�\�\�\�n|�p���\�ɝ�C�S\�+\�K[\�6wl�@\�<\��>�L�\�\����d6\�/d�G�B{\�H�r�ض\��3\�\�p8\�\�\�`\�\�r\�^�{!;\�\�T�^[�v>G�1�m\�e/v޸8\�Iy���\�f\\�w[Gh�KKN{y�_8<?��\�\�q�\�\0+\0\0\0\0\0\0!1AQaq�� ���0�P\��@`\��\�\0\0\0?�����\�v��?%�\0����\0._Cs�O�\�7\�@+�}�424�\�C�\�?\�[B\�\���`��2\�A�B\�\�\�\�1���\�Tw_Ȃy̯x�PQ��(,-\�d7C\�P\�TD 3�\"Jp��\n�\�#\�;B�u�Qud5.��	\"�zQF-\����=�\n�z& U�g�\�\�\�U!\��\"�\�~�юfA\�_�[�\0O�D��7\'������`�\�~\�\�B!ZZ\"�\�F,+P.�\�\"��\�\�I\�H��\�j\�ːԆ�Q*!���1Y\�\�\�\�:vۑ(\�\�\��\�\�&E�\�)D5¯�jЮ<\�\'��\0,lЁ�1���\�Z\�}!�[�\�_�O0J�^�щhL\���IF�6RK3nWB�9�\"�BU�\�y #NT@�J\�ٛ+�\�\�f\�i <D�76D\�I�����Q\�l\�\'F[E�\�\�x��M@5�t\�oe�es\�\"�cTU��\�e%#� �hʵp��\��x�i�\�\�z�Ei. l�@�\�?�\�p\�\��8�\0C��\����y�j+�\�z~\���1+�u��\�ݏQd�*\�$\���+\�\�\�B\���b�84����\�tЫif\�a��-\�SI�h�\�u(�Sb�\�WpM��[ �+\�0,�zIG�o�Ff\��0<6zCqN)��0�9Q��\�\�wo{�\n�C�sD/��\�򏋀59�5�h�hX&D�S4´\�PxB�� c]$%D��T� \�HLZ�TA�t�\�\�\��Kh�\�a\�4%�V\���\0\�\�+�S�\Z�*T\�\��\0�u�_�[\'\�?�%\�>\�\���\���\�O\�\�\�s�\�hOa�~Hv3�����\'�<�x_d��?�%�g��Ox�s��,�\'�?��4��\�\�}\�\\�\'\�<S\�x?d�Ș��!�\0V��������1<_��\�\'��N\�~H6�v@�f�,\�\�\���p\�\���QG�\�X|����%��\�-�\���j\���\�@��s\\��ҟܰXkv�e��F+\�s��\�O\�X�2�U�\0t�o��\�\� �3d\\��\���\�1.{N1�(ĭ*\�NG�\�\�X�Qi_#)`_tF��\�jXx\�\�u\��\��-�r�UY\�S�q\�Ò)�5\Z�\��\�\\�\�pM���6\�%�b\��,\�(\���\�\��f��\�\�Q\'[�\��\�S��wS\�	\��UJ\�\����+�f\�wK&j�-W.\rK۴qI&\Z����c��\�jj��;��8��+\�Ꮩq+f���&\Z\�P\�\�[�\�q��Ah\�_���B@�t0j�\�Az�ܚ����\�a\�\�P���`0���(\�=\����̻�*��E�=M�Կ�Ѳ>X\�\�3�6R\�ϼ�\�k�r��\�A����\�{_�\�}Qޅ����\0ܥ\�;�\�t,\r��#W\��R\�\"�+\ne\�5�c��ɣJU\�\�3\��O�$j�x�Piŗ\���^�)C�@�\�\�\�~��\rO�q�;�\�[��-T\�\'�\�\�y\�~\�+x\�N#1�\�G~6\'�P��O���\��\���r}\�E\�;i�0\�éaM8��$N\0�h��Ұ\�]`�1i��\�\�܋�G4J^\�\�(��ee�\�%�^�6U�y=J�g�����\�Fg����\�A�i�\�J��Y\��>�;W̷K���eKws*\�i�=��j\�\�\�4�\�~Sj~\�w\�Mb����\')G\�\�t����-Hr	SN\�\�B\�LG�TJ2�\�@e\�s�E�C�\�ʙ�I�\�8g�P\"�\r��A\��\�^\�\�Jk��\Z\n�M�=���ie�\�\�:J���&:��z�2\����6%/\�	�&:s�4�\�\�j�	c�ͨ�M��As�iu�\�a\�Q\�Su˹calq�v�.�ק�V??�v2�\\x�+\\�\nL\\v	u.�тK��>��+U5a�z�a� �@�xc�#ļq~�\0Sg�S]B�gԡm�g\�:�>�:%\�.���@|J��u�bK�Kb\�YHJL���8�\�z�\�y\0\�Jޒ\�l�;IǯQ^I�\�\��EL\�\rE\�ð>�\�S\�Ql�ACS�m\��`��\�L߰\�\�ܽ<\�]�\�h�\�FW�\�#\�]ًFq/\�:�j�\�\Z?U��>�[q!ӈ�\Z;\�\r`s\r\�Y�D݊:~�)\�#\��U\�\�h �p�Aa3nc��\r�5܌�5\�\�)D�Ȅ\� h���TU��P\�%\�&|��6�\���@�_r\�\�\�x��z�+1\�\�\�\�\�<\�fղ_]\�\��E�K\�HL�%U�.T\�4�\�tkn!\0J\�\0P߇\�3\�s\0\�ANc�\0\�K����р<��\�j`c`�L\�bf�[Q*\Zt\"E\�]\�\\\�̌l~ᢈ�]U�1��\0\rSB�\�\�A(x�T<�2˘0HP6�\��a\�Ey\�Q)���0L�\�P�6F\�m\��\0I�\�M\�\�j�\0yg�ĭ27�����7\�]ϒ|��y�G�\�!��\�\���Q�8\��\�\�0�h7)(r�P�hX�\�0�)\�	rj,�e�\nJ�!�\�\�b\�H;\�L��`�K	w;@�$L[\�2¥`�&�\�3COv\�G\�~X���ym\�J��u݌\0	\�S���\�L\�U\�~�._,z\��P,\�}�\��\��\0�?�cxx\�H�ҊFi��A\�Al\"�\�\���\�\�\�xX\�R�\0;y�j\�|\�\�\�\�\�\Z�\n6�\�+D}���E|\�P\�V�`�JTњ\� �\�%����\r)fCz\�(��\0a����x\�.�|\�q��Y[0щ�2\�g)�\�\�\�\nbm���d�\�	\�ˋ��\���D\'�\�R�cd�Лz�R�Ҡ��c,<��~\�\�H�t�y&\����h\rMcDi�jdf_\�wY�\�k\�:Us/AL��\Z�O�3m�2��\�˶���i�Ӎ�\�T��c�83Q\�\�ǉ\�S\��\�h\�g��\�\Z�B��(�Q.\�\�\�ҏ:�\�\�]?�{\��&�-Ԋtd�\�@�\�A8=����\��x1\���+(\�A5˔��\0¢���7�p�4�a\�̷:���[���\�\�\�O��\��\�\0�,�\n\Z\�ǣyQ��\�@�\��>��\��w��\�j�2�i���Nb_�Q֥v����A����PKJf[VT��Ѻ\'�jv��T($E*�\�3\�bZ!Օ&ãgx�S<��kg\�e\�\\�\�?�\�\�i�\��,\�f\�~x�E�\�τ�OlcN\�b�\�3��cJ��Ox\"m	*�/j�LJU�@��xb\�\�\�F�0�\�c�Ԡ\�ԡj\�\�4��\�Ѷ�����(*e\'��L��7ۊN�ۡN:��|M>�\�\�\�\�\�C)�嶖QM\"��f8�(yT\�\�\�Z�Ŏ[L\�z3\"\�a>\�F=R�\�\�]a\�z\�\�J�Z���6!nf�$c�Tґ%c���]�/�8�Y���Z�	\�\�O�\�\�4!���3�L\�\"|?\n\�7Da2q�4�\��u�\���7S\�e}2��Ⱥ����uh�O\�}\�#t�u\0e���\�\�]a�H\�\r�܏y�\�*L�c\��[r>�Dl�^\Z���Q\�qjh\�s�HK���V\r���\�\�ebT��o�����S���S�n?\�i�Ӿu=~r�7�k+\rF$a�e�Os\���&6\0F��!�\�\�^ �\0�c�J��W{T��`<�5\�~�\"�\�v�\nq\�37֘X��\���c\�o��\"��[\"ZC\��?�\�L.73:o����\�i�\�zje\�s�$s��\'��P]\�L�)]8��s���K\�K1c�\�\��h�qT���U\�G�HV�\rm\�х�Ђ�A�\�s�|J^s#^eK�\�L�\Z�A�7\�?��w��k�F�F\�k�^�\0�\�Mi|5\�J�t����\�\�\�@\�e`d܋(<&aP��N{\��\rW��\�DY��j\��F\�i�S=\�[jE�,ւ<V�b\�\ZRq\�Dj�\ZR�KA��$LK\�ʶG�\�\�a�f;\�F\�\��`����c��3O��?L:��\0��;~\���x?s��酷7�\�t\��MB\\�&rg0L\�*\�E~\�O.I\��Mz���<!\�,R��ΫK(�3C������2�(\�Xb\Z2\�\�Bb��\�;J\�Y�G4��OLR���g,s;��~�T�Bf�\�\��t\rC`0\�\�藚_3\�?��Ľd$���1\�\�0��6��X�`���7\r\�\�|ϙSJ\'w \�K�r�\�+d\�(�\�\�c��@y`�ΓP�ѝ\�\�P\�L	lK��mA�zQɖ\n�\�Lc;���k8�\' �\�)��q�����wF\Z}t9e�\�]�}*WK�O�0� �\�\�W�y�&~!��\�b�\��g����\���G��l\�\���0�\��p�rK�:\�-sn��H\'\�f\"�\�\�Y)��\"Y�f\'5^/�\�jv&@pO,\�\�i\�F\Z}t�}%�\�9�q���?e\��[�/\��Y�2�\�\���ƱF)\�\�$�\�Ø\'p_5�{,�\�c2(�eR@+�e<�@]�X\�g*D�U�$~��V~\'\�f���\��\�\�\�\�\�\�\�7A̳E\�\�+9Lt�\��f~\�*�wW/\�brH\�^%cQ\�W�\�\�a\�-,\��%mkR�o�R�\�Tp \�;���K�ꆑ$06A\�r4�Q���\Z>�S��/�\�����M>�<b脸�V��b\�%ʄ]_�\�\�u��s\� �]۔��\�\��O\�I�[�\�S%n�q�&r\�[cU�՘]�un��\�_\n���\�\�\"\�\�F����\�_��3O��W����QV�N\�@!\�y�n �c�]\�\�}\0�9\�ۮ듥\�\\>\�w���Ag�n7w\�n�/s�\�3f�p�(�\�5Z`�/d\��G\�G^�b�\�F\�\���\�뢥\�18\�Uq�;4�\������f�\�0�k���9e]6\�&UD[��9g�{�xhe�E	`�\�\�\��)�<!���x����Um��\��\�ۥ\�\�K�\�\�5Z(\�QnS\�1�\�\�\�/1\�U�\�C*��\�(�\�r�}t\�Y\��8�:�q�9\�ԩse�\�@B�ۡ�2\�%�\���\��\�4WKs���#,\�;nlO([\�s/G�R[i�E�\�EIp(��\�K�J\��\�V�WW\�@��QյYF��`���[A9M>��*�EfhI�Ee\�D{dV\��x�K\�r����^&�\�z$\�r\�`�?�E]��\�i\�Ǹ�����L�\�<\�x�m��Av���9\�\�e[�\�\�aӶ��!��\�\���`d�]�&�]�Y�\�\�5Q��\�C\�W�`�\\I�Y�`�\'.Er2�J��S�\�\�C�\�~\�\�`O00\�% `CL�/\�䨵\n0H�\�ڸ\�\Z��\�\�~�q�I�\"�\�Y/�x��m2h2\��\�8zg�Ɋ�\�\�Z@�f%#��;�}N��\��\0y\�u�4�驐�~u\�\�0X ��k	�\�\�%\"�,�:p�Y�ݱ�\"�~ٕ+�s��!�ljA���S7$t�\�F�qrT\�.\�M���P\\Ԁn��w�\�Si\�)x� <:42��\r��\���\�U\�?�BB�iB\�]\�/�F�^\�\0+���\�f\"��\�\�i�\�܏�y�EG��bW\'�1�^\�\�\Z\�&o��b�\�$:U2�ۼ@�Q�\�\�Nl,Q�k|��Јv��\r���e�A\�G�0�L$�K!�ޥ[+<�go�\�);Ŏ\�~\"Q]KY�\�c�E��\�4Dw\rᖂ\�\��T�\\	�G,𞞘V���\�\�\�\�=Z��\0�ȉ\�7�,��=\�q���0F@M\�v$�b\�d·\�S�;�!\�\�y�\�\�z{J4/I��$�%H�$\�\�5r�\�o\�_����{w z%tw?	dI,`\�\�L���\0I�\�\�\�e@{\�š@\�\��	�j�:\�\����G�͞&	���ht\�F��=%(\�\�\�ܔ!���Y������K�3.)6�\�\�\�``�}p�擛G�)�\�0�\��9M>�\\�r��\�wH�\'*Pd@{M�q\�}\�\�����: \�9�!`�\�1M��\��\0Doٲݭ^IO\'\�6�\�`�S\�kR\��\�]N\�6@H�\�?=?]K��,���_�\�t��}~>\��jj\�v���\����\"]/a	�Sk�A�\�\�?v]�QI;�K\�I�$m\�_�\�0�\�\��\0��\n�5)ᖻ�,F�0>�\���\�)�]a��gf}��Ĭ���h���\�?BT>�\�=\�=\�(�]dT�$P\�ʫ�^�d�uY)���\�N#�S��+=9��%4�\'L3���\n+�m�\�!�O�\�',7,0),(28,'css/images/Servidores-Workstations-Hewlett-Packard-4.jpg',NULL,13,1),(29,'css/images/Servidores-Workstations-Hewlett-Packard.jpg',NULL,13,1),(30,'css/images/Electronica-Smartphones-Xiaomi.jpg',NULL,14,1),(31,'css/images/Electronica-Smartphones-Xiaomi-6.jpg',NULL,14,1),(32,'css/images/user6.jpg',_binary '�\��\�\0JFIF\0\0\0\0\0\0�\�\0�Photoshop 3.0\08BIM\0\0\0\0\0�g\0vjvlxHuF8DZx4BL-3kh6(\0bFBMD01000ac0030000ac0b00007712000045130000b814000047160000c71e0000ed200000562200003124000055350000�\�ICC_PROFILE\0\0\0lcms\0\0mntrRGB XYZ \�\0\0\0\0)\09acspAPPL\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0�\�\0\0\0\0\0\�-lcms\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\ndesc\0\0\0�\0\0\0^cprt\0\0\\\0\0\0wtpt\0\0h\0\0\0bkpt\0\0|\0\0\0rXYZ\0\0�\0\0\0gXYZ\0\0�\0\0\0bXYZ\0\0�\0\0\0rTRC\0\0\�\0\0\0@gTRC\0\0\�\0\0\0@bTRC\0\0\�\0\0\0@desc\0\0\0\0\0\0\0c2\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0text\0\0\0\0FB\0\0XYZ \0\0\0\0\0\0�\�\0\0\0\0\0\�-XYZ \0\0\0\0\0\0\0\03\0\0�XYZ \0\0\0\0\0\0o�\0\08�\0\0�XYZ \0\0\0\0\0\0b�\0\0��\0\0\�XYZ \0\0\0\0\0\0$�\0\0�\0\0�\�curv\0\0\0\0\0\0\0\Z\0\0\0\�\�c�k�?Q4!�)�2;�FQw]\�kpz���|�i�}\�\�\�0���\�\0C\0		\n\n	\r\r\"##!  %*5-%\'2(  .?/279<<<$-BFA:F5;<9�\�\0C\n\n\n9& &99999999999999999999999999999999999999999999999999�\�\0��\0\"\0�\�\0\0\0\0\0\0\0\0\0\0\0\0\0\0�\�\0\0\0\0\0\0\0\0\0\0\0\0�\�\0\0\0\0\0\0\0\0\0\0\0\0�\�\0\0\0\0\0�\�;\�	�SX�g-s0>��\�;vǟ=-�嗭�7Ǟў.^\�<l���\'\�/�/\\\�W/z^r1\�O1��5���A\��߫�z��\�,5U��;:�+\�YV������,*\�.Z��\�\�.::g1/Ba+�[����l\\\�R]8\��X��Ҝr\�T��.��\�O����r\�Fwy\�\�V���sjr�w\�Y:Ʉ\�bs�\�\\���\�\�\\Ot�{\�\�9\�mq�;	q\�S3])e(��iF�\�h&�(�	� L�iU\Z)\�x\�/�\Z/�Er\�E�{&_Bn1!1��\n\0\�N\0))%I��+i��D�@@\�\0�H���N$\�\�\�^.���S� �\�\�uθ�\�\"D�\�\�n˳0��3�J1�s\�D9p\�\�\�u�$\�\�\�k\�rGE\ZD%j\ZYB�Ĝm#(Y\�R��\�NCr4�\\f�ȗ�\�\�%�\�C63�A�$\�CD���\"�H�\�m=fiE[\n\�Sخ\�nǺ�n�\� P&�!5g\"���\���jQ�t�>z@\�$y{\�M]>RL|�ј\� \0\r�\Z�\0M�Վ��\�\'D&�N\�}/)i\�\�iJ:�!Ŗs1\��\�\�Z�j[���Ǘa*\��wۯ>�9m<�2bh&�\0\0P\�!���\0�Z\�H\�u\"%�\�T�j6\�ï���\�I2\�w;�\�\�\�uJ�\�<�\�(����\�\�|\��\'	�Ɂ�Ѝ�2\0�\0B1\"DBDX\�\�SRpMJq�׌���;�\��r���(�=�H�\�u�}O�\�P�9&�@�D�#\'��(\0�+VX�� X�a랳�u�z����\�\�,V�0hܧ�\�\�v��g[�\�\�*m��\�i�\�^��\�\�|��N�s��9$\�\�d^L@\�f�@\0	\r$�uƮ)�gLK�v?�\�\�m׵qY\�_?ӎ��v,@`\�uz\'\�ۙmv=\�3\��~sً%\Z�I\�\�\�N��N�_�\���/�%\�X\�(���`�#\"TР̐\�\nq!\r%\'Qr.L\Z�\��\02rC\���\�{JZ�\�U�Ӎk9�¬\�p:�y:��\�>Z�\���\�\��fv\�E�Ei\�qz~>\�\�U�e���	\��n2Ɉ�\0С�D\� ��)\���{x`Z-��\�\��\�:���\'m{�?<�s޿%\�\�\�^\�\�g\�۞㽯��ӳ�S\�b��+\�\��\�]�#@�\�\�g��f캸�(�$\�\�89�88�,*E\�p��ťmf�BoJ�K#$E~;\�Ƕ~u/G\��|\�\Z\�.\��dϩ�����J˼=\�}S\�l\���l��tS\�\�\r�hʾ{Z�\�x4J�\�\'B�1�¢.(�\\��\r\"s�QiQ-�%X\�·S\"�oY\�����g\�\�\�\Z�wБŴ�\�V2h�Y��\'\��L\��q\�\�G_\�vy�\�=��\�l\�I\\�+�Dc4E�F&ȓ��[`&\r�D�� Ʉ\�(n�+Ul�{�u�f.*5<�nX\�M\�w-|WK=�Մl�\0��E�P\�J\�(2Հ�2��L�4��e�eX�\"ҹ�6�En22\�4Qo|X@�6�,\�45\�3t�݋s�y\�g�\�xm5��\rF\�In(#I�4�\�B����W*U��\�M2\�\�YAW�\Z�u��\�]�\'\�Z\�Z<�S�&����\\r\�%�iw<�\�Q�:�^Tz\�\�(\�\�|c,\�v\�hi�\�MQL\�Ur#��Jˌ괙^��I$P\0\�\�\\QA��޼�\�� �5\�c\�J����\�\�\�hٮ9\"�8۲�_\n�qB$*�\n˖j\�s\�\�\�ǖ��9\�m�9\ZRYy6�L*솳˒}3��\�\�$I\�Ye�j�\�+gT+\�9Qe�j\r\�Tu\�ł��\�V�wU�-�l`D6�6�\�R�e,�%r���\�B\���cGL\�\��=D��W\�Tנ��έX}u��`�a�4\0\r0q`Ӂ�\r�\0E�qn.&\�(n2\�k<�U\�:�\'���	\�PM1�\n\0 b b\�4\0\�\r����$�Ŭ�q7\0h.y�\�F�\�yOTZ\�ηU�\�<��\"D��F�F��$E�@\�\�b!�S\�n�XV\�n���:]R\�5\��ܚJh\�-L�\�k�\�\�#�\�J,\0D\'(��-�s\�@dT0C4)D�ZJ\"Ԑ�\�v6\�MLZ��*�\"���\�N�\Z-�\��i�LI\�%	5+-�\'�5�&�벽 �iК�\�Q�M5@\�eeҌ�r�ֈ\�%�\�m�N,��\0[�\�\0,\0\0\0\0\0\0 !102@\"PA#3BC�\�\0\0\0���	S8*\�\�T\�\�trD\�\���SM[Lz��������5��NG\'y6��;�٘LT\�pT=5QhꞆ��>�����1�\���\�\�AE��84\�\�L��\�\�ӣ\�Q=]4z؞����g��z��=S�c��fX�dYı��$I�-;�m��\�訞��8(t��gD椏UL��=j���c\�\���9\��Yz�\�b\�LLQd~\'b\�\�f28\�q3��G	\�q#�h�#X��O\��Qy\���r㜌�r�6[�X\�G*9�Q��1�\�P\�\�	�L\�Lzx�08\�`�WЭ�ڂ��\�\�\��H\�E˗\�Ř3���8�A3\�@��8`F�Qe�\�|fG�\�\�\Z�sG=S`��,�D���eyj~\�ŋ~��\�e27��L��\���O\�#i�\0\�P\�Z�mE���l\�g8N��Ltً,\�?�/)��|\��QR5�S9\�֕\�I��onő�8�Dt\��2\'\�\\�3��\Z�\�O����qC��Ht\�\Z~\�\'\�>\\W5�(\�jc(\�	tӧq/�\�*CM{u|\�\�H�h\�\�\�\�:�tS��\�*CV�k|��ڨ����\'\rT�Q\��W\�%\�ӷ���\�qN�Ȕl[e\��V%I1\�ǫQ\������U�5\�~�QȩN\�:�?\�k�\���ޚ�˗\�T�%M���Q\����������%X\�6W��\�S�hl\�d>K\�\\�u\�ֆQ+�~d��5�$M=�|�ڸ\�N��j��^��H�R�\�hb\�x~_�\�eR��*�ĥ�_m\�\�S�Cѻ\�Щ7�{E8N;\'\�V9F�\��\�\�J��jN�nc�\�n��˗.d\\�~\�*\��\�,X��Ԫ�G�D*\�\�Bɐ\�5��T\����K\�رbŊ\�:(�!NG*H���\�/:����i\�rEm��tdC\�$?1.A�Q}W._ڱn��\�-�4�\�1�8�\�I���qM�aZ/(�\�Ui��?\��./4�}�\��ߎS�EV��\�\�\�)�\0&C[NG,e��$J��\�\�u1M��?\�\"\�}$*��WA\�\�/\�R�\�jO�ؕё\Z${\�F�+Н	��Z����\nZ�R#R2*R��U$\�Q씈��\�8qaY�\�=��ȱ{W._\�\�w޵(֎�K*\�\�jN%|�*��R�\0�%�-��[Ȧ[j.\�B�n\\��/\�\�)-^�2p�>�\�i1JLŋ��}\�Z-N�q\���\�=w.\\�֝(TU�R%��\�*�GU�?�hPQ^춸�\��\���y$/n\��\�\\�~��.\\�r\�C�\�\�~U\��Е�.��\�o�rK�M-�e�K��\�˙�c�3\�W�˦�\0b\�7._{om��b\�)\�~���w.\\�M�Hs2�\�d\\ȱbŅ\�\�\�\�22/\�r\�˙.\\�r\�˗.\\�r�Y�\�L�.�\�r\�\�C�sȱb\�&$v������\\{\\�}\�\\�~���4ff\�\�\�X\�^\'\"G0꜒3�w\�bŋ,X\�t\�6q\�\�g\�\�rHU\�f����.w?#�-#	r8\�Q����9ٓ.���!M33\"ŋ11,X�c�\�G\Z8\�\�`�Q�?�2�ȎC�͙?j\�sFh\�33eI;JR#v���}�$f�C�͙3\'ַ\��\�9�c��H�\\�H��}�\�d�ј\�f\�ٓ�:�\�9\�\�I?~~$S�&\��grŌK,[f]�ԉ̎t:\�4�\�\�˿�/)��\�\�Kmb\�&&\'c(�Հ�C\�D�cԶ=D�ZL͗��Ċ*�\�\��(�(z�\�\��2i�9�d�|�?�mw�\���\�\rs~\�~W������#�Ce�\0As$].)._j�l\�e�)Ԏ<�.\\o\�ܹr�\�t����뿱r\����\�\��y<	��obŌ2-����(\�[����_��C\�y�C��]�\�\0\0\0\0\0\0\0\0\0\0\0 0@P�\�\0?�XB�B�-���\"�J�(T�QB\�\'TTEJ�]��OK\�1��\�\�$��a\�;Ob�2O�\'3܄,�!3\��ބL��3�\"6�\��\�I�\"F<<NWl�σ?#�,1�.H�|HD��D\�cʄ,\�>��O[\�\�1�,X�b\�\�c\�X�bŇ��XǺ\�f}S��}S\�c�?�\�\0 \0\0\0\0\0\0\0\0\0\0 0@1!�\�\0?�K!b\�˗;ð��<I<\�$�\�ŋ$�bŋ,X�bŋ,XE\�ŋ,X�\���\�o���r\�˗.X�bwA5U®\�I$�,XGj�j\�\'\�I$�F�Gr�h�*�(\� �h�\Z(�M٬��VƍQ�7Gz��b\�eH��1[Fh\�D00D2$��\\\"\�U��\�\�\�$�\�\�\�O\n\�q����5\�ct�.\�Ar�YI�\�\'�� wp��<��Q\�&U;Ts\�\�9r\n�ѻo\�<*\n��0@�\Z\�4r\nҥJ�T�R�J�*P\�\�&#�\���*P�B�\ne\n�G�*T�����\"i|��\'\�	�A\�T�R�H+�F\�A�y��\��\�\0(\0\0\0\0\0\0\0\01! 2P0@\"A`ap��\�\0\0\0?�>\�dN#Z��Q\��(�iH?K�C \�q �\��B!�G�+$�r9��Abo|A�ă�)\'#�\�\�\�\'tzHb1�I\'\�m�}wO�(�}y��G�\�\�\Z�_�;Uv\r\�z�\��\0�!2=x�-\�\�d>�\�S�w8�x�i�K\�\�U��\�X\�\�\\Z�,�Q\�X]�I�g\�\�V=\�2i�\�[Z��\�ꠜ\�n�i2ND��[.��N\�ԙg\��l\�5*\�Tc\�\�S�0\���5��\Z�]�\�>D�t\�/��x{�_\�v��\�KjX�Gȓ�\�g��\�\�R\���\�ۍE��\�;�\0�OKmH��Է-Ku�m��\�/��@�j�ݢ��\�\�i$��O�i&�G�I0��\�#ɟ\�竞\�z\�\�f�f��\0\0�\0�\�\0*\0\0\0\0\0\0\0!1A Q0aq�@���\�\��P���\�\0\0\0?!4z�H�d�\�]��{>���	�\�\'\���k�\'\�C\�)�\nK�\�\�]�\�\�\���\�Q,���QҞ\nDtX�{��(�[�+\�\�%�!\�G�L�}1&\����\�\�Ļ	ی��	\�ȶ�*\�\�#��\�q�����m`���@\�Lu1��!&fX�\�\�o\�1�$l\�:\�l8/�\�Y\�\\rG�JȅW� �ҍ*����\�H�\0�z�.�n�\�]�\�e�\�\�\�Gl{\�����H\�	�P��L/b�\�\��)��&5haZ�\�L�C\�&%\�,�\��̅A\�TR݌>b3\�\�\�Q\'ٰ/�\��\�X��z�\�K�\nu&W�&&r_cmj:D�M�!�\��\�{B9Q+�\r!t�H$�\���1Q�\�Fe�\�wklL\�\�\�\ZJ�\���!ᆱF�&lY�h�\�UC\�:��+�C&l��f=	\�ȑ�\�?�����Q2|�\�\�\�\�dHF��\0C͋�\�Į\"�d�=�Т��\�\�\�͚�sc�\�a\�O	F�o�ӫ�װЕ�\"ª\���7\�6\�~\�f,\Z{G\�,!�]pfjx\�R\�t%Ћ�dU\�l	1�\�DI4�\r\�:gY\��\�\�Fjqm�\�\�ʁQ5���>4�¹_\��\�\�ư�\�\�V�h���@XI\"�5\�BP�/��I\�T\�k�a�Ia�\�+	�.\���a~+�$�xeQ�a��\��\�\Z��t��`_��]�_2C\�(]\�A�Eǲ�H�!yg���\�kJ�\�T����7qr���\�B�	$�y\�$�I5\�\�y1v/1M�!��!�p6�F��.Qb/�I$�\�I\ZI��:��F�����(�/\��\\�-�\��x�T�F���ڄV\�p!v�.��\�i>V�8\�:�\�e��V\�W�U\�fl^��\�;QdC\�z�\�u��\�����\�?�<a<�cua,\�\"Ƴ,H1�,��$�\�T\'N�C�5��t+�[�zP�\0��RF��$�\�I�\�\�[5�&v&\�H�\�y#�D�\�5~�\��\�E\�M\�\�&\\w$\�Ah\�\'.***A�I$�\\���@�djb$��-$ȓ-\�	ѣ\�q��a2\�E�B̅�\�_%��C/B�\�\���QQ5\�M`�)ѹ�	�\�re$	\n�\�\�5�(m�_\�r\��$A\�Wّe��\Z\�lO�.=\�\�X1Z\�G-`�*.\�5�b4D�\�0�)A���\��H^\�# S�bh�0��,K\��\��2�&\�э\�\\K��@Ll�\\�`\"E\���\�\�y��́�6�ԅՎ A\�s$D\�\�e`���$Ht\�aTЪJ弒\��C�l�\rT**\�$�@���Q*D\�[�\�2\�=�6�Xȵ����\�\�����7L��+L\n�&�t�3\�Cr����tAf\Z�J\�&��Y*�|���\�8}ph�7n�-�l	�<��\"sl��]\�Q8V<�[\"|f�(�,4�[\�&6I$�I4�D�\��\�\�\�C0\�\'�i��\�\�#\��M�MÈbI�IE\�1J��QbI\'�M&�|8�0�z@\�Kb� �5v�h�\�1��ȘĒI4��\�\�) �޲I5�\�\�bLHB$��W��{,�{bm1	$�HL�A�I<��sX\"�OWPS��e�MA��\�\�hMV|��O��D\�fd�`c	b*0\�\�\�$�!\"u�R��Z���I\'\�$�\�tHB:\'�A+hbC,e�4\�0LU3#<^\�_�e�\�Q(�\�\r\"ZC;6����5lj��G�te�*8�k��V �fK$:R\�%D�\�d�iiR��B\�@\����Hf����\�\�KW�Q�1\���m�]�0��=l\�az\�8?DOFz&GVz	6v2b\'����>`�@}�\�&\�}�\��(�r�d<S(!\����t>��/b\ZM�DT\Z�>\�\�K�\�\�=��\��B6�O�2A+1�t\�1	!\�\�)zJ\��lf\�Cy\���p�	u� J6�ƭ�\�5C^�\�D\�\�%ٞ~C\���\�\�0�\�R`�Ioc�ϲ-�8\�\Z6E�ƃ~��n\�۲���QxS�f���G��ܕ)b]\�\"t̙����lb�\���l�g\�/��y3BL��N#\�L���6��􆑃{���n�\�}\�R9*.+\�{Dwq$Q\r�`j\�-\�ґ�6f~\�ݶ/�K#ι1QqU���\�\��!\�\�\"��\Z�CDY|���\�j�\�\�!Jh�.\��I��O�I�!1px\�ӕ��\0�\��_�*D�$�ra`��D&\�o\0�&&I>U\�\�\ZF|�\�r\��\�\�j�.�\�$�H�\'\�#ɬ�s��>�����z.\�\�\\#\�\"b�x$��8�4D3�\�1��(T��P�\�G�\�]W\�j��Fɍ�db�\�\�?�\�\0\0\0\0\0wtсZ�S�J\���G�Q�E�SU��~=>q\Z&A�\0�\0\�jS7�<�V\�V\�j\�\�#)Â\�\n2G\�\�z�\�b鄤O	{\��\Z\�i@\�<a�ӐD\�\�!�\�_<�\� m�4q�D#�@J\�!PS���i\�\n�b\�Jhp\��\�X\�>I\�H?\����}$7���Ӱ*\�\�=x�͈\�\0\'x;އ\�pU\'����\�j�8F\�803N�j2�f�r�2\0�ij\�~\��$z�y����XD�|S2�!\�}%W\�P҆ \�	6Rx����8Q\r���ˬqD�8Yi[�$�ѐ�)[\�4\'x\���0\�!���V��x�)\'q\\\�I!�d�Z�\�c�\�G�G,B>F�\��P:F4��\�OP07R\nC�\�q&i�C\r���n \�\r⼣\�\�#q\n�k�T\��,�,@\\�)��\�H\�,�\��<�0\�-�F�!>0\�\\\�\�\0s\�\0@�\�Ky\0^`W��\��\0C\��$)E\rY ���\� \��EF�|D?+@�<OV&��\�i�U�����@�\�\0\0\0\0\0\0\0\0\0\0\0\0 1!0�\�\0?��\��K8�\���\�+ZBI �\'��x���A!\"-��Y\�~��H�\����1�(�\�lA)%(��z捍�YB�\�W\�~\�d(\�\�B�\�L0\��LAg\�=�\�����?x���\�Bba\�Z��KP�\��.,c�\�\�ɳI�\�\�o�)V=2�{�L�\\�lGxj3\��\��F0h�#\�A��Z�t�h�1n4ƛ���\��A�=r]\\�)J&6[\�\�\�\\E)F,�┣ǕR�\�JR�R�	#�\��Qe)K\�>����|r\�_�\�R��D\�!��5VQ<�!	��N��w\��K��T^X\��\�h��{��J&^^R�\�<D\�j׌|1c՟�\�\0\0\0\0\0\0\0\0 1!A@a�\�\0?͞	�<��o���b\�E\�|�N,ȳf̞Z�ܻv\�[1�\�p�T�r�Z\�\�߼ν/�8sm\�\�i1~[\������<.XJ\'�\�\�\�R~����|�\��\�l�\nR�\�~��ŋ\�\�\�\�(�9t��\��\�m������\"l�\�\��öz��!�\�f{|�\�N3Ǚ\��_�y\�oMi\�\�\�6�,�\�}��N�0L�\"���$\�<I ���m�`GAx\"�d��j+v��OI8��\���f\�~�7�&�I��\0�Є�,�\�<BR*��\�s\0�3��\�\�$:\�ϝa2>r)O>\�v\��q\�\�8\�/ٲͿYg�\�,\�q,�,�\�Z�\�a8\�InݯPիP\�\��$ �8\�adF#qC\�����\�2\�\�j;�,/\�xf\�k*\�\�㸱fwm��\�\�\���[\�\�\��\07;�/�\�vk����\���3�gfxȄ� �g3\�Ǉ���\�ӧ?�\�\0(\0\0\0\0\0\0!1AQaq��� ��\���\�0�\�\0\0\0?w&\�8�xb\�\�\�\�\r�ғF��G	\�\�F���Y�%\�\�\"����_\�?��ѽ2��3�{O�b>\��q\�\�lZ�\�-�T�\�\�ćo\�G){.\�G\�\Z�\�*/\"E&74̤\�\�a\�b\�rxb�߆>˸ݢq/\">\"<\�\�\Z\�\�̣d.fG�>Eؚ\�}go����Cn^�K\�d#\�0m�\�*Yzf ��_�b@��\��3�y3\�W\�L�I\�K�<�q�T����?��\�\�]!�\��9�1�\�mC���@\�#���	\Z=��|L��f�{]�-0��~�!1\�RQ�+�\��\�U�\��pE��&\�+�%\�bWYd��q\�\�-t4iat<D�#��c	Ё���Z�P5\�[O؝���\�d��$\�\�i\�I\�L��=��c\�%\��0��\�76\�\�7\n�b%M�!\�{�f@\�`\�WC�4ceP���1\�j���%�\�\�ԥ�\�\��#�\��\�����}Q9�J�m�`=����=bOJ�\�r\"�h��7/\�2��K�AL>f\�ybV\rF��O��	a��*\�Dd:/๛���\�b-�B�UHl��\n����\�n;nvɞ\�2M2�\�cw���\0Zq\\4\�r�Sg�=h\�h�� �����C��&\�T�=\"ǑS�D\�o\�S:ƌY(�d$�	�\��_�	�{���g\��$ݡ1�lA/a,a��\�0&^�<\r��F,��C\�=�\�\�\�0��.<�0PA�P�=\n�sBBǐ�l\�,\"[�HIB-��3t<����h\�\�L�а<���-��<C_�-x.���,:\",�Q;�iK\�dE��GLb\�t�a2E�&\�X\�%C T8��?#P%�\"4f\�\�\�\Z�hާ�2BHL���\�\�&\'E%\�\�@�4�\\*\��\Z���\�bѺA3\"\�Lt��DXM#\��\�\�\�\Z�\rdЕ\�ٖ�!d�����&�\0E���0����\n�HGJ��$�h�\0�;��\�d�]d\�6]\"~�t!\�\�(&Qh\�yC\�\����\��3Q(�&\�m,\"oX؅�6H\�\��貶�\�\�\�6�8/��i�\0B�p\�ՙ�Jd���\�H[|���Y�fA�M��==�\�	D	$NF\�\��$)!}�Yle�_���HW����XԑX�#9\�`�\�!o&bT�MP�?Х�lz\�9�\�\�	�T�b�\��jXՉ�BD�-\'\�q44�\Z7hqa2\�qE<H�n1�ӓd,ɻX�̃K\�gX)%E,�\��B\�\�5C#�\Z�БjI)\�S\����߭�b�\�{�\�;\�^C\�v��\'��H��,�Ȱ\�<A1�[���T�hP�\�\�\�vJ��/I�9&��$�I&	$ΏE�ޞ\�o\�\���Dټ�^F��9\�f\�\�(m��A#̚w#\�\�ٴS\Z\�Bc�����c	PL`��ŏD=W�\0z@���\�21�\���i�ۑ��a�\�E$�u�-$�\��\��s�xC\�hz#t!��C$N�I:�I��РTɒz$�2^v3PE�e�JF?܊6��&�\\�e�\��|18~\�=?0�\r\�Y�I�L�\�ţ��:>���L9<5e\�2Y$&\�ܲs�\�\��I$\�I\�xiD�vRk��<6)%1�;��*S�\�H��+�i��=\�CΫ]\�D�=6�N��I?���\�pk�x&\�t,��PLe�\�\�<\�\�\�[ ��\�5��\�XяM�?\�`�9\�~Ʋ(K�>\�\�\�Cإ\�\��54&?��LH�p�\�U��ՙ2��\�6C�l��1��\�Y&6�)tD�ClLM��;��\Z\�H\�\�\��WE䈣�2�!���Ɖ�%���c6�P7b�0���5xOTєuO��M�3T\�\�\�q��\0\�\�2�#�1XNDP�=7\�F\�\��D�G��a7p\�\���:�)x�I�/�E\�q;�\�\�\r�B�\�Лn,\�ބ5E��L\�%֦��C�\\�,\�^F��\0Q�\�2	Э�עG�\�y\"�I#ѽ0עRE���M�#�e��f�x�GId/���_�L\��tCo�I{�1MA\���Fe\n92�|�R|��vF��\ZHi�\��\�n\Zq�Q\r�ȗ�\r��r4q\�mf%�K��r(�\� uhL\�\�\�B\�]\r�	��ʜ\�m�i\n�6�%\�f\��\0����\�tc@Z\n�&\�#ؘ��\�S,�lA.I$\�*N�P,�*m���ϡ�\�\�j\��I1�jd\�	O�1i�\�b���ِYC���Wr\��*�\�Bʇ���\���6e\n^B�*�ԈL[̙\rj��9��X%p)��5���QZ��b��HG���򈄊w8ČM\�7��yC�nI\r\�\�\�k�bdh�\Z\�JJFP�<�n���\�NGbr�\�!-\�l�1n\�\r�I\���Kbn\�]�8�\�I�\��\�\�QE\�(H\��Td��!\�w�\\��b66<\�V\�	#�\�p\�Xc�f��\"d�މ=�Էc�D\�O�I)��x1�	s�(m���\ZK��&A(iR!,�\n�fV\Zp4��=�O�h�\n\�U9Q+f\��ג��$�d�H�K�h����E�9�<rG \�0=�\\45�!��HN��i\"�2\'!6�$lLcVC\�=\�\�_#dI��z�HbG��)H�ܶ�L[E�	�\'E\�tE��9CJ$\�@\�\�J�I��\�J�+/x�Dt̐��\�L葻f\�L��vƜ�\�%�a\�k\ZI4J��\�]���cС�3\�w��VK��$(߁õ/��e\�cV杆7���\�%O����oF�@��[\Ze�\�\�@��cdJؘD���\�\�NHr\"��B\�Z\�\�\�*\Z\� ��ӈ\�磊%\�KP\�7�Zl�EF����uIzBH퐜\�!-��ˢ$1a\�S)2-�[k&C\�?\�q~\��ʗ�>�5��V\�\�=`A\�$��D\�$�؀\�I�;Н�/��|}�\�X�^\�L�J��\��\Zg\�(�Dܙ�(��\�r?\�̱��hS5�Q(�2g��S\���<	�\"nIr`6.wz�C��,&\�n�\0i%#s�I�\�\�d		~�1��w�\�=�ϯ��Ì\�:\��*΢\'FH��\�\Z� ���aAB#R�F7c\r�\�\�dA$�h�\�0\�]Ňn\��\��{mB,��\�(�\�\�\�=�H�1>\�J\�[�l\r\�*5[�l�-\�L�bpI\�zD�ЂB��4DdC,Cv6h�]���-d\�&0\�\��P�dr���d$�&��0\�2�%r�$&�D��F\�\�2>\�\�\"i\�m	�\�\�΅�\\��\��\\ac1�\\4Ȣ�ѓ\�\�.\�\�$J�Bk}\�S�mB�]\n[�FHp+��\�$S$4$ȋ�\�%\Z�\�V:�>b�D��t�;\�N\"Q \�C\'x\�Ư��8�\'\�1m���\�x!D:��!#\�\� E���CI����\�UF\�\\CDW\�\�ؓ\�n$<ʹEg$\�\�G,i���k�rG\�,?ai���O�+/c��.^�6\�#\�\�\�0������\�ȡx�@�\�r|ݰ�U\\\�\0\�1�LJ��q�\�A��\�\��xW!9�\�\�i���f\�\�\'vČy~\����?$\�t\Zq�P\�<�Vĺ�K��0xe�4�1�^a�8\��-�\�Cd.���\Z�tht��$\�_2Wj�\�f\�߈\0�\�\"툸 \��\r{�ࡣkt5�ރs���G�@�\�;3�A#tr!JA���\�>b&�C6	im�|1��{�0KP���\�\�T\��\Z�Xה\Z��\�O�5�7��\�\"\�Ӊ|��li1\�\�a\r5�\��X屦�\�e�_�%�K�ɏ�翳��p\'\�\�,����s��u��\�M��4JYcJ\��=�l�v!\��ޱ\�\Z�l04\��8F�\nl�\�Դ\�_���ydnI2\�K噖\�]���97LNX��z\�\�,?b^!ȸ\�˄8\�A�c~�>bnE�!�\�?�e�#(}=\�5U)�4*�M�/�#��a!Ѝ,\��Jl/##Кd-\'M�Xz�dBљ��\�GL5�\�%�<O�����2lh\��J�{3�0����\n0��Vc~��\�\���\�Cb�/�=I$�\�qi��bd\��L�近dX��\�aFQ;{B���r�~�x�t�\�>�u�|�YB/&G\�\�\�\�\Zu$K�\�� ��5�\�}Z$����s&\�����;\Z����U�|�_B\�<�J��&`�\�Q� o\�Z\�Pͅ��2?9\�l�q�D-œq	\�\��5h�#m��\0\�\�\�hn\�b�-�\�7(�	�\'z�\�I$��߄�I:3}2\�	$N\�,�\�X��,\�\��B&�p!�\0\�\�\�8�\�&D2Iд��j$�2I$y\�t4=	�H��YD0�F\��\���c\"��z\��-t�{<�G0�N|5�H\�S$OI�,臣77\�gF/b~E\�$��a�;\�N���B(<|�Ķ\�r�\'n\�$u\"���l�\�s!��t��	,�А݉\�7�\�Ē4aX�D\�ؘ\�\�F\r/��ӏd\�m��1?:�&�\�\�\�Ң|\�&$9\'q\\N7���xj���#Ys�<�%C��ؠny�$�:�c�\'.\�4�`\\��6�Ҧ��q(Èr��bM�d>E\�\�C�\r\��ߟ�;��D\�#N\�E� �\Z|�!\��\��#8��3\�lr�\�f\�|�L��\�\�EH��9P�A��\�\�ί:o�n���s�cD��7\�L\r�%�2D#q�ν��Y�\�\�\Z3��U�\�d\�d2^wf\�?�\�',8,0),(33,'css/images/Accesorios-Mochilas-y-Maletines-Hewlett-Packard.jpg',NULL,15,1),(34,'css/images/Accesorios-Mochilas-y-Maletines-Hewlett-Packard-1FK04AAABL-328972-D6WxVXXs9VQtprmW.jpg',NULL,15,1),(35,'css/images/Electronica-Televisores-Samsung-UN55NU7090FXZX-195498-go5pBYsdotHEaWFw.jpg',NULL,16,1),(36,'css/images/Electronica-Televisores-Samsung-UN55NU7090FXZX-195498-fmuIeqWNW2xYmBXH.jpg',NULL,16,1),(37,'css/images/user4.jpg',_binary '�\��\�\0JFIF\0\0\0\0\0\0�\�\0�Photoshop 3.0\08BIM\0\0\0\0\0�g\05JhB8HcSgEUwA0_iheM9(\0bFBMD01000abe030000f40c0000811a00009e1b00000c1d0000842700007d380000aa3a0000b93c0000ec3e00008a550000�\�ICC_PROFILE\0\0\0lcms\0\0mntrRGB XYZ \�\0\0\0\0)\09acspAPPL\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0�\�\0\0\0\0\0\�-lcms\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\ndesc\0\0\0�\0\0\0^cprt\0\0\\\0\0\0wtpt\0\0h\0\0\0bkpt\0\0|\0\0\0rXYZ\0\0�\0\0\0gXYZ\0\0�\0\0\0bXYZ\0\0�\0\0\0rTRC\0\0\�\0\0\0@gTRC\0\0\�\0\0\0@bTRC\0\0\�\0\0\0@desc\0\0\0\0\0\0\0c2\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0text\0\0\0\0FB\0\0XYZ \0\0\0\0\0\0�\�\0\0\0\0\0\�-XYZ \0\0\0\0\0\0\0\03\0\0�XYZ \0\0\0\0\0\0o�\0\08�\0\0�XYZ \0\0\0\0\0\0b�\0\0��\0\0\�XYZ \0\0\0\0\0\0$�\0\0�\0\0�\�curv\0\0\0\0\0\0\0\Z\0\0\0\�\�c�k�?Q4!�)�2;�FQw]\�kpz���|�i�}\�\�\�0���\�\0C\0		\n\n	\r\r\"##!  %*5-%\'2(  .?/279<<<$-BFA:F5;<9�\�\0C\n\n\n9& &99999999999999999999999999999999999999999999999999�\�\0��\0\"\0�\�\0\0\0\0\0\0\0\0\0\0\0\0\0\0�\�\0\0\0\0\0\0\0\0\0\0\0\0\0�\�\0\0\0\0\0\0\0\0\0\0\0\0\0�\�\0\0\0\0\0�2G�YL#\�]��\�E\�5�1\�\�\�\�\�Vi�e�\\���ffi\�L6�(\�\�=La\�\���\�<\�\�d�ӍI�b�z4�\�=$\�tm�\0\0\0\0\0\0KR\\<\�ݹ�o�_0\�\�:bO ��#i\�\Z\�CWH_/\�\�\�Nk\�\\,\��&�h����\�\�4\�\�\�\r/9\��\�t�7�\0\0\0\0\0\0\0��`��I\�gl� ��w\n\�\0\0�\�0��\0\0\0\0\0!f�\0\"@\0\0\0\0\0\0\0\0\0\�/��^\�;�\�̰��J�)4\�]\�=O�� \0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0�!\\�Y\�U\�\�_�|^\�\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\\\�eaa�vVE�\�\�Aa\\��\�vV�a�vp�eaaXXq�XV��aaXXpWg\�\�T\0x\�i�\�\�H4�9��k\�ŹF�\�5c�r\�W��ȉ�:\�\�\n\�\�Fr\�PM��j\�K\�H��(\�z*-�\�-�E\���\�\�)��\�ۖ�2��s\�&;^��mV�{�n�ЋwlY\�s\'K��M\���eZ�ktU�fgyկ�\�e�ާJ5m%��Y���\'\���O\�k���!ml�I\r*\�͊����/^��N�c\�\�\�@�\�bk\�]U��s\�\�գ��X�\"+��a��#ʵ\�\�,\�\�^�1\�\�Ju�{\�b�p�rL�mYV��۫*\�\��\�O�����4SuQ\���e��n>�D\�ׄ!�\05γRΜ�on�)\�\�\�}U�lu��\�\\�\�\�nP\�\�v֙��΀4Qyg=�0!]Ι�eh��h��\��6�\�\��\�\�\�(iV��ڋ+��Kc�\\W\"bk\�[U�\�Ls�u\\�_����\�gP�\�_\�R\�\�\�\�u�2��њ�l\�m�=Lo}\Z�\�-��\�Ᏽ���\�K�\�o��Ӳ�i\���\�/U�\�=f���M\�#g3h�o\\� =x&&�s���β����\��|}�\�wqI%�_�V\�\\w\�z\Z�\�\�T_\�Y��U�m�\�&\�<�G.S�ս��\�U�v1�q3��f^Z\����^�\�\'0u��ᵙ��ݥ�\��\�DY\�\�\�\�\'ْbk\�\�LpV)���\�Q��\�y@����͚\�\�\�\�֮�j\�\�\�ƫU�zs\�\���mjz�:\�;\�;rU\�\�\�cK+:�/s#��P\�s\�/�W\�y\�\��=^s\�fE7\�-\�����Ӟ\�\��9�o��\�8\��\nig�3i7T\�)Ya9۞[n	��랳ϝ�ml\�5�u�\��C�\��oha\�\�JO\�}g\�ۇ4j+��R\�<�����\����\�ˤH7�\�0\\gZ�+ƭ&A�rڐ�d���q\���GS�,H\0a~k�\\\�\Z\�\�e\�W\�y��W^\�\\�Y{��F�n\�\"\�\�][��\�=y�i�����ѻ\�\�7�z��\�A��Uf,gg�ĺ\\�Ss�-�\'ْbk½��绒�I�y�JoCO3\Zb	�R6.�\\�Z\�\�w\�\�\�\\\�{\�Z��\�\�ߺk\�\�oz.��.�\�G�\�=,�\�/A\�@�+4�����^5�\�\�v\�1>\�^S/S\�v\�I�C���\"\�,\�i�+YUZ\�\�eԋi\�^]\�����Ęb�;ֻ�\\k\�7W\�=\�b�\�l�y\��\�\�Y\�f1*�2��Q��~q�cY��v\�1>\�^	�\�\�\�/\'Z&\�(/���\�\�\�Ƙ����\�\�\�}|M��8h^WdNWh�\�$G%\�:��K\�i�g���\�|\r\�*\�\\\�\�Wyǡ^��P\�kV3����16��\�3\�ʭN�D\��LDfi\�gLLL�Y0dX�\�\�du�jז��JSsU\ZQy\���ޮBڴ^yT\�-s\�,�	hcK,�\�\�<�\�Xz���в�5\"}܉��,��O��O\'\�[���\"@\0�\�<\�u��&¾\�2�E��{\�oA7\�=��\�8\�\�ĸ��5�`��\"c�x�\�N�\�=\�\�\�Ϫm�\�\�M\��\�k5�܇��15�}�g\�\�z\�*��VJ�	��E��8\�#?����0���\�n�\'}�G\�?A0s\�\�&�n\����\�\�\0r/\\�M�\�1U\�bz{\�g2B����z�LM�8���\�=��ϊ\�\�;ѯ)\�{{�sDb�n\�F��\�\�\�\�W7�Ⴃ�nVʲ\�\�H\�|\�Nq�WQ\�\�J]\�4\�|�[<M�\�m.[�7\�Y��\�\�t3\�x-.ߣ��\�	�2\�c�V\�ޓ�M5Me3�1\�]�Ρ�\�VO1m�3E9�-�;X\�\��Ƴr�R׫��_>�\�ˌ�\�Ĉ����}\Z�ZZ�Mf�\�S���9�(\�S\Z��vs�\�s�9z�=bk�L�\�<2_E\��]�k7�y\�\�\�#}�i�XC;[�2ޖi􁛣fie�u�\'3vLM	\�5\�L\�\�\0\0�\�\�\���l�\�^[\�lLMrra\�\�tخ��g���\��\�r\�W\�7\�D�t4	R\�\nΉfa��nŘ\�+�=Ϊ�w6U=�\�\�\�6)\�O\�\�\r�\�\�8XL\�\�n[\�\Z�\�\�Qd�\�`/U�k M�ek��!���\�o�܀G=FJ:�\'Dt%s0PD�\0�@Q\�\'$�\�S��\�\r_�\�\02\0\0\0\0\0 123!\"#045ACP$@%DEp�\�\0\0\0\�yF�1�?�RQ���\Z�O�\��� ���*Hg\n~\�\�b�e���\�D|Fp_4���\'���H�*�*\�KN\\B�+���d��|\�*j��\�J�k�@QO\�i\�\�Qq)�kJj~,�����+7���o\�֔������*\������kwd���\�BDQI�\���3SV���N\'\�\�߷T�⟠��\�\�pK�9�n#�\r�7\��q\�=7�:v㟷��<_�{�\0�\��\�)R\���\�ݼ�\�\��\n��NƖ��zv1\�<;�\��\�ཟ�\�\�W��\'\�\�O\�Y\��8\�䚍�\n�Zx$��ZW\�c\�A\�Ɠ�`1�m3UG<[\�Sų- \�\��4�RӍ4|s��\�\�q\�J%Ia�\���:h��8,lѷ\rpzZ�\Z:v�����8�vj$\������S43zV���S<\�IF4\�j���\n:V��=3=d�?9�\�\�G���	��\�\�t4\�B\�-���8\��4�)\��pʃ��^Q$\����b\Zh\�i�jd��PSHJ��S�DpRT�|\nN.���\�\��e5$�\��/��Z_�u1p\�6��P��z�u\�\\�\Zh�nOĩڞ�s�e,�Mã\�\�T|B\�+\��K\�>-fk\"�	Y�3mL\�\�l2a[@\�\�\��\0\�evWevWevWY2�,�d\�&Y2���,�]]]�L�\�&We�+�ɖL�eu���+���,�]�\�]�L�e�,�d\�&We~Y;׿%\�\�j\��C\�}7ᾗ\���,�n-\�Y�̐�mgg�O�]��䍜P��D���y9\�\�b\�X��(\�,�1�\�U��@d������[\Z��]d\�q�D�N�X��+hn��\��\�+ؘK\� \�\�����I߫��Y�ɕ\�X���3[n1c�D+>q�{�1u̷\�:��\n)n.�M0�n���w�\�N.\�G�d҆�^^I;�l�e�\�\�\�<�HY*���\�\�\�\�W+�f���`]\�e�[b��i%5\�(+�$2�,�N�t\�\�6ռ�J>�/�\����N�{�ɓ�X\r�R��w\�U�\�\�\�\�\�\�;ܾ,�Y����lH�9��O\'����I5����q��\�2ڃ\�\�\'z�͖\�\�\�D��\�ɠ��(ʲo�!N�ȴ!�=;[\�0�\"�� *\�\�x\�\�\�#�\�\�\�J\'�\�Ǒ��ro��Q��%�盯t�N�M�`O}!�\���ŝqv�9�߻��ș��\�X�M=�\���\��\�r6���\��NB��X�X��J\\\�F\�2~��\'�*N6�m\��g7\�f)@SԲ\�42\�k�B�\�x\�5H�1t�v��\�h\n�>b��v�ݠ�d��rIߩ�C\�An\�f��wHX\��\'\�\0`\Z�\'u�\�LS����d ̟�1\�>L�\�1�*ANƆv%@xʟ\�I\�0�4\����Q�˒N�f;��2am]C־T�a��f\�\��\�|�4\Z��`_�\�;��\0��U��M*bmd�dD\�SO�#i�\�LP�/}h=�\�)>\�&\�b�7�\�\�\�m�\�2\�?�!�#��\�\�:k�`Q\�!��W$\�\�@�(\�tܡb��ӧ���.�f�4��O\�O��l\�v�\0�8�S���\0#�Q�\�K\�(�OK\�b�X,V*���\�e{_l�B-$\�H\��\�4�\r��\�hlĜYr/N*��J*C1��1*YwcOF@�H�NبO66�\�I�k�Ryy$�)D�{7+������\�\�\�D�\"8�Y��^�Md��`\�m\�4~��\�*Sxgԙ��(\�7rg\�;\�M��y\�<��yAf\�U6\";��n�\��+pT�\�3|T\�RI\"�7N\�f�6\n�NH&S�d�S#�j#͋\�WR��\�\����7h$�\�]&�Ryy\�I\"4dm[hح�X\n�V��3S\�\�\�轂\"��!\�O>MK\�T�\��UiMֵ�S�\��\�x���\'�i\'��B���>jO/!y]Q�\�\���:�N�\�q\�q|�@cihJ��\�\�Ym\���zt\�Ճx�=\�}�7�J��`I<�\�bG\�J�%\'��_\"�q���I\�\�C椣!�2�u\"��r`���I�)ΕC8�0\�-�QN./4l�2�(lߧ\r�:���5\��\�_�]*�\�<���\�ۧ5EA�\�Ků�<{2�CS��bqCgYL�\�L��fޅ�\��s�m�b�h\�f��\"��lI$B\�\�>��p>�U�Ry9\'�A\�\�)\"�i䔣\��\�I���K\��o\�(r\�3���d[	\�\�;%��m�*X�\�\�?\"�{�ү���o\�R�?��A�\�\�\�Q�Zoh\�l@�\�6\��	�g�ӂ�GqH��O\�U?K\�\"��v.S�!�\�Z\�*>�I���_�\�;��\�_&y7\r�\�9J\�\�#���Om\�\�N�*�p\nH�\�G\�B\�/�͖M��\�D\�\�gm$�z_/%�?�\�Ҧ\�\n�/Q\r��CQ�Q\�(�O�ŌQ�!9cx��jYZ1��M)|\�.\���\�\r#�6�܏�/�ҳ���\�J�=4c��+hVЭ�[B��m\n\�d�5�\�Ӣ Ml���-5�g\�M0��ĦB\"*h�a�r\�6��\�\n���z�آ\�m\�t\��<���U=\�X?$�h|��>\�i~��r!�)0�MI\Zف�\�)\�S\�\�+5�Q|�R>�ܘ�e�\�\�׏��o �v󺏻��\�Q�#��y\�<�:6w��:�\�\�\�\�zAd􀦦�zᔪ�\�(m\�\�\r�>�f��rH\�c�w�|\�\�\�/�I��Ik���1\��*�r:�.����Bޑ�p�!e\�\�Y]�zhܒDm)?ʐ��\�\�7\�i\��\��\�c[Q�fd~��к�3]30\�Mt}t>��hܟ\�\� c��!&6\�~�\�\�W\�Asn����G\�od\�}H\�뤊ck\�\�\�d\�&a \�?F��\�+�\�N�Y2\�\�\�Zù7]��2\�#\��\��^���񪟌�R�I\�b\�!P����&��X\�C&\��0(�04��4k#��&���*ꏦ�7�\�Y96\�L���8w���Ӫ\�H�\�\�*�wqk�&vv杲��\�\���eR��qn-\�F��\�\�\'Ur{	5�ړ[��4�\�ŕP�\�f\�\�.�\�\�\�F:�x\�x�\�O�\�TT7�5\�\�EoT£���;�\��T	\�\�\�\�z���Y�PI�6\�t�\Z��{�+,\�d܌H`G��E�N\�R��Pw�L,o�$hkr��WHI��6�g��TT\�Ա�P����e�\�Jh�<\�(\�L�h��}ZH�V\�\�ko1K�\�u�\�-\�[��$@*\�ě;\�ɍ�L�\�]�\�E��\�\�\������8������3QH\���\�jx�vZ\'\�B���Ԑ���\�\�\�Z⦪�\���\�\�Q��*��G\�#���1[Lm\n\��+dUL,���\�eS\�\�c\�_\�-$R*�</U\\8��z�\�$%K���RA���Pָ���ET\�v�]<�ԬMl�\�:_�Q�\�\�J\��\��ES\��~/⦞\����]�ؐ+��\�\�$�<S\�/Dj\nm�\�\�cAN\0�y[�<�A�<�\�\�S\�\��f\�hn��❋���\\��,gV�םe:ݕo��\�6Y�ɕ�G\�^w\�M\�zT�(;�\0=�8�\�\�@��\�	�7)F�\�\�fX\n\�\��zaOL�2�\�$[3\�2\�e�,�Y�\�%��\\��q\r*����WW\�>K]M\n��\�ۗ�&\�v\��\0K\�{,[���Tg\��\�\0 \0\0\0\0\0\0\0\0\0\0\0 !01Ap�\�\0?�\0\�\�˟��~\�䰴��\�+Xj\�t�hU\�\�y<�O8t�+���ȡRT�W�\�\�§�fDb:*�v�\'�~H��\�>���3�yB\�\�Eh���\�w\�s*V�\�8�$N$jQ\"%qYxY\�\��x<��*b�Z\�G+��о\�\Z\��YT�\�!Wk����D\�\�󎞎��Gi\�\"�&\"L\�D��\�\�b,D�\����-\�D\��v����!\��ﴩ���\�\��e	\�Ҩۨ�a\�KJ\�U�{B�\�\�\�Ӷ�\0!e~n�\0�\�\0 \0\0\0\0\0\0\0\0\0\0 !10p�\�\0?�\0�\�,�\�e�Ye�ѱe��E�Ye�l�-�ج�Yl�{=��\�e�[7e���\\�\�5�C�h6W)\��\"��e�6X�=3,\n\�����(n\��(����\n2\�n����َB\�&.|E	�\r�E`,�#qdgϏ\��T8\�H���1\�˜>�\�8Fz&8ˇ8\n1\�\�6nlll/�}Y��rjT(j��,QB\�N��Ǐ�\\��̈́��q\��(_9˄�MJ�/�>?��G\�R��v\�?����R�\'1\�(g�Q�5�#\"��.|s���]ѩEjja�\�~.1\�#Q\��Ye�s��P�\0�c?�\�\08\0\0\0\0\0\0 !1\"02AQaq�B#3@Rrs�P���Sbp�\�\0\0\0?�\�\�\�׷�\�G�\�=nϦ뷃�\�T\�h��Ъx��yUm���\ZʥQ�\\z���^of����*]��-\�2)y�\���f/�>�+}�\�\�\�l���ΨTf^�ջ{5��>g4v�\�4@�\0n[F&�D\�\�6���%\Z�7rp=�}����U�r4ڷbU~\�SCd.�IϧFj4�d��\�y�OJ4vj;\�7�\�\0�J�=\�V�*�\Z{9}F(ЭKwP	�\�;1{�s\�$�of\�5j4�z;\�7�\�4�S4\�\�>�:\�\�K\�qјTmn(R\�\�\Z�#B�-\�X�n\��­쿦\�NJ����=7��\�\�\�r���W�\n�\�j�\�U3Kh�p���5\�Μ��PR\"�\��î\���\r��g�ն<=\����P�ES�?��\0\�S=\�\�?qW�Ҫ��̢\�&\�Q�v\�X[w\�M��+�\��\0�5�~mᕲ]\�3�[_���\�R�\�YOw\�\�J�*Ծ\�\�sh�����t\�D\�\�\�\��Wj\�U\��\r��M\�\�]SK�ƈh\�DN�1xBe9\��NKÌ\�\�i�I�\�W\'��\�\�[�\�AJ:Qٚn�!6��D#�\�I�V�\�%ӛ�\�ΧC�Ug�nw�Gu�ԧL\�t*��<ktª�\�\���u�L�\'U�]�K��o�Q\�\�s\�U�x�\�6�\�n݋+=��I\�\�\�9׋\�?WkQ�\�/:\�tj��Gj\�*�\�k�\�\�6!\Zԫ>�ΰ�[z�;�\��\0��Q���\r\�Pa*\0�\�;��\�g�Fjk2\��X�T��+\��t�\�6ǒA<#\�oj\�Np�Ur_���m5+�\�:{*��\��u�`tB�\�νw�ދ~\�y\�u�B������J�\�\�|�\0*v������	\�\�f\�Jmz�MP�\�#�\�C�\��;;?.H7h�\�UoPp[C�\�ݴ�\0�G��G�\�l�Xdem\\h绽\�\Zc�8�So�*�\�Ѻ\�a6�C�w�IU�\rd����TfE�U��&���u6�\�����\�\�vP\0\n�\�\�� �\\m\�0��\\m\�e��\0\�:�qj��_\�\�\�\�k�[uZ�V�j��[u�_�j����ʑ)\�\�uMZ�V��\�ru\�\�\�]\�uԵ��א坍i��r\�\�\\Jap�p\�|.!g\\\r�7)6h�\�E⺹�̊i�l�\�9E{͗�\�}��\\m�3Z-,\�\�\'�!+\�\�\�h�\�mn�#�l�\n|\"l�\�qYy�p\�E\�fJ��\�6�l#���S�\�VVB\�q9p7\�K�\�i�E\�d�y��\��L\"\�-\�\�r\�Z;(^���3Y+��!���Z[6z#�C��\0�\�TG\"V� WJ\�-J͋<���q��\�\�H\�\'E\nq�Nu�G|Y�\r\�]+�țҺT]Nd`\�\\&\�\n\�,�\�\�\�\�>1�@\�)59O�]���cW�\�\��\�wҧ�Z�x`p\�-�C�\��P`�/:�\��d��\��&�\��ԺW�cH\�\"T�ߌ!u.���_%jWQZ�V�j�qW�-T0&=\�P��\���]nY=C�:\��Y\�N�HP\�\�޵z�dp�ť����06۫\��(�l�(�����B\���AE�\�\n\�a���\�=ө�\���)��Œ�mn�!j�S\��\�r\\X>lݻ�ɱ��q�l\�\�t\��(TM8	D\�kp|aD-�E�\�h�V�N��}7ye���\�F�\��P���T\�\�8x�q�@\�\�B(�C��ͱ\�$[\�0�ʅ-\�?�Ƴ\�^�J�Z\�\�\"3\�<[I\�[c}�|aɚj.�\n�\�x����ݪ�͇�)\�\�\�\"�u.\�𲐡ǈ.�Z\�\�9��\'�!��v�Jm�|ar7t� oJ�\�\�L��\�\�U\�\ni�=SVo���\�M\�\�3�l�B�N7�\'��Şɶ��rn^K\�֌\�\�T\�r\�r�W�(��`���\�Ե�Y��Z\�\�\�m�&\�\��ͮ>-�\�w94\"� g�\�8I�\�5��\�H^\��/�\'\\B��h_G(\�{O|\�}\�\0x3��Q\�f�\�\�\�\�s�n̯�zuO6dw*N�ʃ\�=�L-�S-\�\�^oPWj�I]JCKZ>U�|x\\%SM�?�\�\�6IWݥ��y�_v� ۪�\�\�zafV�jWu\�w]\�u\�jp\�кB-N�{Y \�(8�гi	��\n\�<+ ��\0\�4\\n\�(oeҾ\�\�vH����\�\�-�[C;�~;�\�fT3/U\���]�ҵ.�(�2\\U\ny큶�\�\�ш)C�y\rb\��j��,���f\�\���:�IyZ�-�T\�5}*/\�w�뭓`����`���W\�ֺ� �]S[\�f�\�-o�\'IQ���y\'>�\�Ⴚ\�!\��\�@W\�!{O*G9\�\�`<\�k}в1IP3E�\ZaC�ȳKz��\0\�\r��y�\���d�\�=\�-W\�Ƹ\�ҤA�Ø\�苼+\�v�X\�\�\�D06\��\�vj�� \�_f\�o�v��\�?\�g��\�x�Pj��C\�t�,i�p���E��/*Y\�\�\n��\�\���\�_~\�\�VW\�2�τ�\�\�/\�q�E\�}\�\�if�\�1\�h[���\�}�iQU��\��T�S]\�\\�\�\Z\�\"�\��f\�4�-�n��������C\"�(\�V�hV�t�\�Vt\�\�r\�\�B�*\\�;N��\�)�n�[x+\�\��ͤ\'\�x�R¿3Tt�\�ߕ4�!EJi��\�*	��ȢyR�Z`\�e\�\�+R��ܬ\�z�\�!f\�S�+��Z�Vp�{n�\�_f�\�QV�_J.d^��8�k�ʻ\�*y\0ZQ\�^m�F)o𠅤.���R\'Y]!t�G$0�!Kl��<ekf�EҺTƿ�\'�\�\�\�T<|\�\�t��z�R\�]Jf\�J\�]+�@n�O�>\n\�u,�\�	�\�i��?�\�\0+\0\0\0\0\0!1AQa q���0��\��@P�\�p�\�\0\0\0?!\��\�\���\0\�_�l�\��?\�%�\0�C�\�G�&��fCSi��ھ\�+��\�\�\�Q�����\�\\�i�(\�\�d\�\�@\�\�|%`\�z?BҶ3�@T�Z}J\Z��m��S����\�\�ITu\���;f-\�\'~��|���\�V}\����d�~���C�+8��`\0�\�k6�!���i�1\�\����(�r\�\�\�:\�r\�\�џ܉RKΈ`��\�O��׸��\��J�Fժe�\�C�c\��\�m�/\�\�L\�PP�O�O1T�l����\��\"���]�J\�e�zL���܀L���q�\�.��\�\�����i�ZV<k��d\"d�ʰB���1VK�\�=\�fު�\�\r�ơ/�\�A�)�� �\�UB&؋3� �\�(Kccd\��A����jc0��\��\'�jlX�\�\n�#�\�I����\�IKlf�#x��ciCw��\�{�\�2�Q\\�Ŏ�g\�\�`n\���H��K\�\Z��ks�#���L���?\"\�i�C�\�fmC \r_\�\0��v�\0\�ܸ$���\�_�%)CX\�5,�\����:�\0\�=\�.�3\�C�h��%\�`�\�\�yس\\�ƅF\��\�0��i_�T�J/\�>�C��b��\0�go�.\�a�:;��e�)�Q@�\�j\0��҄j\r��ݘ��aYcQ\Z�.�\0P�<H���&!\n\05Q�G\�0\"�\�U�\�*\�[\�y��R�\�\�-�t�C\�=N\'�{����Oa=I\�Od�\'�W̯�\�\�_2�O\��\�=\�\�=\�\�=\�\�=�\�J���+\�{�|��\'�{\'��\�\�\'��\�\�\'�z��S���R\��3\�\��\�R\�)o�÷\�R���\��/ܵ�|�r\�Ynr�\�i\��\�.\�\�+\��a~_ܷ\�\�]�\�|\�\�-������\��\�,��g\����\�|�\�/\�[\��\�\�~\�]�r���\"=L�\�:�\�~c,_ܷ%�\0gbM�<���k�\���|�s\"���\0\�F�\�ӂQ\�S�cJX:a\�\�\�4Ļ�;�b\��c\�_s\�\�z�4?1�\�\�7���\�)`IWd�.\�R�@��^Xx�<Lx�1\0x�\�:Tm�bU�3)H\�o\�\�$��a��N+��F\�\n��\�\�T�Z��\�\\�0\�!\�O�\�Yd�\�	�c��\�0�\�&V��[�\�hK�����\����\���\�\�G��\�\�0�ά\Zc�\�\�\�\�h�*�K�\�\�KQ�]\��]!��S\�p\�\�\�j3�Q&^q�w\�A�Uݲ�X��XgɀO�5OU��6M&�\\\�\�\�!\�b��۾q\�5\r\�z\�C��Wx�\�\��!��\'��\���7	}\��\�gS��D��uK:	�\�\�N\�3C-\��<hv\�zepm\�\n�Q��+=\�4\�\�bQ\�T�v�Gd��#�\Z\��\"\�=\�ċK;b\�|�9V\�-R\�Op\�\�H���\�[Ԡ:p�/��)�\r�q��=�\�Lx�/��_ه\r�����0A�\��8�\�w\�wǨk�\�K;�j!�v\�y��u-ꧨ�7P@�n��L�Q�/	n�\�|L\� `\�\�y��F%ӎ��\�YP�\�\��;bQ\�Sw\��k�D~P\r	U\�\0�+U�\nQ�\�AX&ɾ`�?�� Sy�\��/��\�!*m\'�#ӌM�P<��N��������;�ϒ�F�\�H�\�s�f�<]3g\��k�?\�\�^��4\n%EB��L/�\����\��\�Y���\��\��G4�\�m\�I��\���\�Z�2\�\�\��6\"#�51\�6	Rw�r\�0Ĵ\�m�=D:�E���\\\�C_{�Ѩű\�&\r�bF]\�؛�	phq?\��0fdో8��Y��\�Sܡ�J4}\�`\�Y\�#��=J\\�����3\�b��%jk\\\��~�-V\�CpGP�bE���C\\lH��\Z�X�\�w�\����/�\�\�D,.(	�\�\�4\�%@(Z\�ÿ\n��\�0��|_��:D9�\�;?D\���)t֣t}.\�~�ׯ$\�k\�\Z�M�w\�H]��\0��R;��d\�O�(O\\z��$�*ӖY�jbm˲�>\���h\�\�s	\� ��%�j- \�b$Q~\�a�Ӯx\�]�@oL�\�35qP\�_\�\�.\"˚\����C\r�W\��0A%��3y>d\"���\�\�\�\�\0�\�,]>b[noxu\r|\�H\�5\� �p>�\�OU8�0HЋ�C�R�\��\�\�A�/\�)\�\�~\�D�\�\�a\��r\0\�\�>#\0b)rsOC\�\�Uh�\\ǉt���\\�=����sw�k�	����\�9\�Od�Ow%�vJe\�(�<C��4T\�k��\�v�\�f�k��\n\�$:\�ɭy&�˨w�͛�\'��0���\0\����U\�B�\��_?\�\�-�8t\�\\\rFB��\rN�О�ы��\Z2�!�\�\�5�\�\���l�\�\�\�q��[=c�\�\Zr�[��\�\�D�=��\�\�V\�\�a����g�?��\0�C\\nGlV/\�\�|b\Z^\�\�\�T�p�\�\�k�\� =\�fu\�1�ﴨ\�&2@;wifG�\�4\">�\�V�n��ȳ\0��$\�q��k{���b3�:�淌pk�P�a����2�YM\���3��\�6� a�\0�\�\�\�w$�po��ԏn����\�;Zt\�GC6@2?��)R�\�܂$��\rf���% XF<O\�\�g�|!�5a�]\�c\�嫳,Z�\��L;�D��\�d��\r\��	�\�N\��\�k}\�:R\'Tz�\�o�,��:\�Pi\�AfWeŵ��2�6/1�\�ՖV�\��Ϳ2\�\��}\�5ò��%q\�	��\nn\0��rZ\�j!\�_c\�\�OjF\0l�\�_���\�+\�5t}\�	��\�\�!b�\�*\�\��3q��ۛ\�\����\�\�We�q(�F���wy�C\\\�w���Z��Q��\���i&e\�\�\�;\�A�\��D{3�o_�O���k\�a횏\�&\"�\�\�\�v\�-FW\�\�\�o\�|\�x\�˪�\�纆�\�O���#0�Ij���\�\�/6O\�Q:\�ҥ\��a��M14�Ų��\Z���ԫ\���(�\�\�4�j]C\n�\�\�=�A\�6�C}Gg��wP\�Qa�\�ǒ~e�e�d��g����$jٛ�}��b���B\�\�3C\�ax�\�\���\��o\�j%\r\�wlL�\�9����?\�b8@�\�Oz���\�ܡ\�0җ\�猝м�D6�\'P\�\�\��\0u3\'���\0�?\�g�=���A�\0\�=��\n�f\�74�6�+�\�b��\�%@�^�K&�8\�\�R�S\'(\'��(��Ѹ\�յ�Xڿ rǄ�9�	.VR�tQ�\�\r;\�6֡J�\�F\�L(��OSy�lq\�\rr�p�\�|]3t T\�5\n)2��ʚ��Ku<\��\0_ԭU{a��c\��\�t�\���V��.�b��\"lkx1G\rB\'U*��\�\"b\�+|,��:a�X���\��\ZF\�|�-\�>\�ėS|^X!�S\�\'B?ll\�#��.E�[_+k��/\r\�`9��ِ��	�:h��e��YCh\��1�G\�\�\Z\�����\�\Z�g\�\���\�J�dny�,U���r\��\\VK�^%iw	�8Ɯ�Z��C�Ow\�ER��\�|\�y\���i�v^uq\�5�$��t{Xftw���\\h\�\��\�Z�!Q m\�\\�2��=bQ�fd�\0�TN�=̬P��\�\� \�|n��\Z�N\�/0u\�~{&ϒJ�\�ivt\�\�͇�\�X�.8�1_�\�Wp7s,4\�<�\�\�v\�\�\�\�\��\�\�5�7�%�1hd�L\���M?\�gM�^\�@\�e;p> �eNC�:T��\0�	U\Z�\��W�\�eĨi�\�̺\�.幢_����ɣ\�3m)��\��k�\'`�UO�qjo������\��\�&�\Zy>;)���#셂k����*�>s��r\�	\�%Ky��w.�5���h\�k\�\�8\��N��\Z�\�Rb#�\�O\�\�Ƭ`9�f��7/Cs3�\�Ï�\'Ml�\��\�Z-�qh=�\�\�z\'S)�\"��$�qW/,��8�\0R\r�v	)��Φ	�\Z\�-G#\\\\\�5\nV��h\�7\��eT\�R\�K<}\�y�\0(u��T~d\"�z����l\�4.�A<�S�����\�Q\ru.\�eC���j@a&m�t�|���\�\\/�D\�?i	њA!\����5\���w��W\��/2�ws RnV&\�\"�ǘ�\�\�z�v��<K�\�\��%\r�\0,0�\r퟈\�[�&\�\��.1|L�8\�?\�X����9�\0\�\�\�\�\���	qTNk��\�Y7��ĝ\�Xy�I_$�\�\�g�@n\�/?��0\�z��QK~#\���P�T^\�嬳�\�)�\�l��\�\�X?3e*\��f>����\�?�\�S댑`�\0R\r�q	L!-\rJ��Q\�Q\�$*Q\�3\�)kp�m�xK0\����l�v_\��F\�+\\\0v�U�9\Z\�9A3�[�\�3\�ׄ\�}p\�y�o#�s��\'�΁�G\�6�\�O\��\�1`\�b\Z�Qt?�R0\�Tv�_\�*�z�\�J9��\�3�!:�����*K�\�\��\04|�XV\�j��&f{\'�ӕ7_ܫR붅�!F\�\�\�Q\'\0!��\�p����-\�1\�\��НC_\��\0x7\�\�gX�D���\�U-W\�\�t��<F\�\�%[��s�x�9H&�S\�̳\�Pa~?��7\�<iy�\�\�\�._7(G*\��� \�c�%\�8����]�\�Em\�%�8\��J<\'�\��M𫤞ڃҗ�8}\�T��\��y\�r��(ւ7�w\��3\�>�\���\�D�\n6H^\�\�e�\��!�D}^\�\�.W�7��^	oYZ9�x6*\�5\��\�\0\0\0\0\0��<�<\�\�O8\�8�\�<�\�<�C\��C�$\�!\�<�\�<�\r0\�E<�\��\��\��\�<�\�0RKS\�<�\�<�\�<�\�<�\�<p\�,0\�<�\�<�\�<�\�<�\�<�\�M���M8!\���\�΀O<\�t��<�u���\����Po�\�<`TL�\�տ&��\��j��\0��ߙ\���x�<�ؠ�G��\0lO-+l/��\�]�\��,\�\�R���\�\\�\0�T{�L�i㯔aO�Co��?�����?m\�H1���x\�\���>�ۮy\�d\�?%E/�\�\��4<�\�{�\��hӽ��u\�\�76>�\�Hco\�c��\�K�\�D\�O\Z��zӎ\�\�I���K\�I\�\�\�_n\"�y\�\�\��\0\�9E}�\�k[\�`\�\�7\�\�n�k]w Ti\�y\��\�O\�g��\��so_QG�w\�Oˊ�����0\�?\�}\�j�=�\�NJ翿MJ�#�{�t�F?r_KNX�e_=\����oj\���Q\��2\�\�<\�ō�wyLҦ|�\0\�h�\�#\"\�;�0�8\�}\�������\����_\�{�/�sp��l%_��\�\0\0\0\0\0\0\0\0\0\0!1 AQp�\�\0?�\0\�\�ի8\�\�\�\�,��e�\�6|�ċWWV\\).\�e�\��H\��<0\�I��\�\�ˢV�l$��4\�\�9�n�\Z\�\�\�a\�vp\�Y��X\�[\�	ݧ�{-軳u\"z\��\r���\��o�\� \�\�\�\�w�#\�?\�\�u�l\�H�g�\� \�B9�{�|�\�+)۶[j˾��&|!݀�-\",�;�S�\����\'�r:ɖ\�o1��\�\�n�\�Cm]�u:��8�˹6Lc\��\���ޡޙ\'l�X��r����>M��c\��B�\��u�����e\�7�,a\�Է	\��\�잛߃�<���r݉/�v��\�!\�^,G�WSӝ�|uX\�V�t��mZ\�9�\�\�=<�%\�9=�2^e\�Mg�Z�{g&\'�\�\�2\�x�\�`X�x�_�wx�<�\\z�O�/Ý����:��ѶZϖ��8VԱ��^\�6��nK`ۤ�X\�m�0�\�%rx��9w�\�,\�^�9���\�\\z�]�q	\�I�Y#[*\�q\�b\�G��c\�<��\�\�?�\�\0\0\0\0\0\0\0\0\0!1 AQap�\�\0?�\0�c�bŋ�bś����f\�!�6,@m9|慵�\�\�K\�n�Y+�W�z�۷e6Q�c\�[l펒w%!p�F�!ܳ\�6͛+�n�\�:�ㄍ�l.\��ݗ9VHc\�Q\�B�^(\�.ޯ[.�\�=�\�&;1�,��\�\�\�Ͷ��M�]m8p\�r=XXX]\�.�}�㓄��y\rlba�-̲��bZ��GI1\�a��\�\��Y~��9㹳ۻձ&{\�8Ó%\�&G�/7k�\�\�?�y	�\�fOe\�8\�~G�e\��Ä���g|u���:�[=q�3\�\�x\�\��\�\�\�\�\\�\�b!�d�6^\�gVY\�Ǣ�Ǟ^\0\�S\�w�{c/YI{\�\�\�\��\�\�����w�f\0��ܞ�N\�\�.��\�\�^�\�J\�Q\�P?n�e\�\�\�\�\�\�n|�p���\�ɝ�C�S\�+\�K[\�6wl�@\�<\��>�L�\�\����d6\�/d�G�B{\�H�r�ض\��3\�\�p8\�\�\�`\�\�r\�^�{!;\�\�T�^[�v>G�1�m\�e/v޸8\�Iy���\�f\\�w[Gh�KKN{y�_8<?��\�\�q�\�\0+\0\0\0\0\0\0!1AQaq�� ���0�P\��@`\��\�\0\0\0?�����\�v��?%�\0����\0._Cs�O�\�7\�@+�}�424�\�C�\�?\�[B\�\���`��2\�A�B\�\�\�\�1���\�Tw_Ȃy̯x�PQ��(,-\�d7C\�P\�TD 3�\"Jp��\n�\�#\�;B�u�Qud5.��	\"�zQF-\����=�\n�z& U�g�\�\�\�U!\��\"�\�~�юfA\�_�[�\0O�D��7\'������`�\�~\�\�B!ZZ\"�\�F,+P.�\�\"��\�\�I\�H��\�j\�ːԆ�Q*!���1Y\�\�\�\�:vۑ(\�\�\��\�\�&E�\�)D5¯�jЮ<\�\'��\0,lЁ�1���\�Z\�}!�[�\�_�O0J�^�щhL\���IF�6RK3nWB�9�\"�BU�\�y #NT@�J\�ٛ+�\�\�f\�i <D�76D\�I�����Q\�l\�\'F[E�\�\�x��M@5�t\�oe�es\�\"�cTU��\�e%#� �hʵp��\��x�i�\�\�z�Ei. l�@�\�?�\�p\�\��8�\0C��\����y�j+�\�z~\���1+�u��\�ݏQd�*\�$\���+\�\�\�B\���b�84����\�tЫif\�a��-\�SI�h�\�u(�Sb�\�WpM��[ �+\�0,�zIG�o�Ff\��0<6zCqN)��0�9Q��\�\�wo{�\n�C�sD/��\�򏋀59�5�h�hX&D�S4´\�PxB�� c]$%D��T� \�HLZ�TA�t�\�\�\��Kh�\�a\�4%�V\���\0\�\�+�S�\Z�*T\�\��\0�u�_�[\'\�?�%\�>\�\���\���\�O\�\�\�s�\�hOa�~Hv3�����\'�<�x_d��?�%�g��Ox�s��,�\'�?��4��\�\�}\�\\�\'\�<S\�x?d�Ș��!�\0V��������1<_��\�\'��N\�~H6�v@�f�,\�\�\���p\�\���QG�\�X|����%��\�-�\���j\���\�@��s\\��ҟܰXkv�e��F+\�s��\�O\�X�2�U�\0t�o��\�\� �3d\\��\���\�1.{N1�(ĭ*\�NG�\�\�X�Qi_#)`_tF��\�jXx\�\�u\��\��-�r�UY\�S�q\�Ò)�5\Z�\��\�\\�\�pM���6\�%�b\��,\�(\���\�\��f��\�\�Q\'[�\��\�S��wS\�	\��UJ\�\����+�f\�wK&j�-W.\rK۴qI&\Z����c��\�jj��;��8��+\�Ꮩq+f���&\Z\�P\�\�[�\�q��Ah\�_���B@�t0j�\�Az�ܚ����\�a\�\�P���`0���(\�=\����̻�*��E�=M�Կ�Ѳ>X\�\�3�6R\�ϼ�\�k�r��\�A����\�{_�\�}Qޅ����\0ܥ\�;�\�t,\r��#W\��R\�\"�+\ne\�5�c��ɣJU\�\�3\��O�$j�x�Piŗ\���^�)C�@�\�\�\�~��\rO�q�;�\�[��-T\�\'�\�\�y\�~\�+x\�N#1�\�G~6\'�P��O���\��\���r}\�E\�;i�0\�éaM8��$N\0�h��Ұ\�]`�1i��\�\�܋�G4J^\�\�(��ee�\�%�^�6U�y=J�g�����\�Fg����\�A�i�\�J��Y\��>�;W̷K���eKws*\�i�=��j\�\�\�4�\�~Sj~\�w\�Mb����\')G\�\�t����-Hr	SN\�\�B\�LG�TJ2�\�@e\�s�E�C�\�ʙ�I�\�8g�P\"�\r��A\��\�^\�\�Jk��\Z\n�M�=���ie�\�\�:J���&:��z�2\����6%/\�	�&:s�4�\�\�j�	c�ͨ�M��As�iu�\�a\�Q\�Su˹calq�v�.�ק�V??�v2�\\x�+\\�\nL\\v	u.�тK��>��+U5a�z�a� �@�xc�#ļq~�\0Sg�S]B�gԡm�g\�:�>�:%\�.���@|J��u�bK�Kb\�YHJL���8�\�z�\�y\0\�Jޒ\�l�;IǯQ^I�\�\��EL\�\rE\�ð>�\�S\�Ql�ACS�m\��`��\�L߰\�\�ܽ<\�]�\�h�\�FW�\�#\�]ًFq/\�:�j�\�\Z?U��>�[q!ӈ�\Z;\�\r`s\r\�Y�D݊:~�)\�#\��U\�\�h �p�Aa3nc��\r�5܌�5\�\�)D�Ȅ\� h���TU��P\�%\�&|��6�\���@�_r\�\�\�x��z�+1\�\�\�\�\�<\�fղ_]\�\��E�K\�HL�%U�.T\�4�\�tkn!\0J\�\0P߇\�3\�s\0\�ANc�\0\�K����р<��\�j`c`�L\�bf�[Q*\Zt\"E\�]\�\\\�̌l~ᢈ�]U�1��\0\rSB�\�\�A(x�T<�2˘0HP6�\��a\�Ey\�Q)���0L�\�P�6F\�m\��\0I�\�M\�\�j�\0yg�ĭ27�����7\�]ϒ|��y�G�\�!��\�\���Q�8\��\�\�0�h7)(r�P�hX�\�0�)\�	rj,�e�\nJ�!�\�\�b\�H;\�L��`�K	w;@�$L[\�2¥`�&�\�3COv\�G\�~X���ym\�J��u݌\0	\�S���\�L\�U\�~�._,z\��P,\�}�\��\��\0�?�cxx\�H�ҊFi��A\�Al\"�\�\���\�\�\�xX\�R�\0;y�j\�|\�\�\�\�\�\Z�\n6�\�+D}���E|\�P\�V�`�JTњ\� �\�%����\r)fCz\�(��\0a����x\�.�|\�q��Y[0щ�2\�g)�\�\�\�\nbm���d�\�	\�ˋ��\���D\'�\�R�cd�Лz�R�Ҡ��c,<��~\�\�H�t�y&\����h\rMcDi�jdf_\�wY�\�k\�:Us/AL��\Z�O�3m�2��\�˶���i�Ӎ�\�T��c�83Q\�\�ǉ\�S\��\�h\�g��\�\Z�B��(�Q.\�\�\�ҏ:�\�\�]?�{\��&�-Ԋtd�\�@�\�A8=����\��x1\���+(\�A5˔��\0¢���7�p�4�a\�̷:���[���\�\�\�O��\��\�\0�,�\n\Z\�ǣyQ��\�@�\��>��\��w��\�j�2�i���Nb_�Q֥v����A����PKJf[VT��Ѻ\'�jv��T($E*�\�3\�bZ!Օ&ãgx�S<��kg\�e\�\\�\�?�\�\�i�\��,\�f\�~x�E�\�τ�OlcN\�b�\�3��cJ��Ox\"m	*�/j�LJU�@��xb\�\�\�F�0�\�c�Ԡ\�ԡj\�\�4��\�Ѷ�����(*e\'��L��7ۊN�ۡN:��|M>�\�\�\�\�\�C)�嶖QM\"��f8�(yT\�\�\�Z�Ŏ[L\�z3\"\�a>\�F=R�\�\�]a\�z\�\�J�Z���6!nf�$c�Tґ%c���]�/�8�Y���Z�	\�\�O�\�\�4!���3�L\�\"|?\n\�7Da2q�4�\��u�\���7S\�e}2��Ⱥ����uh�O\�}\�#t�u\0e���\�\�]a�H\�\r�܏y�\�*L�c\��[r>�Dl�^\Z���Q\�qjh\�s�HK���V\r���\�\�ebT��o�����S���S�n?\�i�Ӿu=~r�7�k+\rF$a�e�Os\���&6\0F��!�\�\�^ �\0�c�J��W{T��`<�5\�~�\"�\�v�\nq\�37֘X��\���c\�o��\"��[\"ZC\��?�\�L.73:o����\�i�\�zje\�s�$s��\'��P]\�L�)]8��s���K\�K1c�\�\��h�qT���U\�G�HV�\rm\�х�Ђ�A�\�s�|J^s#^eK�\�L�\Z�A�7\�?��w��k�F�F\�k�^�\0�\�Mi|5\�J�t����\�\�\�@\�e`d܋(<&aP��N{\��\rW��\�DY��j\��F\�i�S=\�[jE�,ւ<V�b\�\ZRq\�Dj�\ZR�KA��$LK\�ʶG�\�\�a�f;\�F\�\��`����c��3O��?L:��\0��;~\���x?s��酷7�\�t\��MB\\�&rg0L\�*\�E~\�O.I\��Mz���<!\�,R��ΫK(�3C������2�(\�Xb\Z2\�\�Bb��\�;J\�Y�G4��OLR���g,s;��~�T�Bf�\�\��t\rC`0\�\�藚_3\�?��Ľd$���1\�\�0��6��X�`���7\r\�\�|ϙSJ\'w \�K�r�\�+d\�(�\�\�c��@y`�ΓP�ѝ\�\�P\�L	lK��mA�zQɖ\n�\�Lc;���k8�\' �\�)��q�����wF\Z}t9e�\�]�}*WK�O�0� �\�\�W�y�&~!��\�b�\��g����\���G��l\�\���0�\��p�rK�:\�-sn��H\'\�f\"�\�\�Y)��\"Y�f\'5^/�\�jv&@pO,\�\�i\�F\Z}t�}%�\�9�q���?e\��[�/\��Y�2�\�\���ƱF)\�\�$�\�Ø\'p_5�{,�\�c2(�eR@+�e<�@]�X\�g*D�U�$~��V~\'\�f���\��\�\�\�\�\�\�\�7A̳E\�\�+9Lt�\��f~\�*�wW/\�brH\�^%cQ\�W�\�\�a\�-,\��%mkR�o�R�\�Tp \�;���K�ꆑ$06A\�r4�Q���\Z>�S��/�\�����M>�<b脸�V��b\�%ʄ]_�\�\�u��s\� �]۔��\�\��O\�I�[�\�S%n�q�&r\�[cU�՘]�un��\�_\n���\�\�\"\�\�F����\�_��3O��W����QV�N\�@!\�y�n �c�]\�\�}\0�9\�ۮ듥\�\\>\�w���Ag�n7w\�n�/s�\�3f�p�(�\�5Z`�/d\��G\�G^�b�\�F\�\���\�뢥\�18\�Uq�;4�\������f�\�0�k���9e]6\�&UD[��9g�{�xhe�E	`�\�\�\��)�<!���x����Um��\��\�ۥ\�\�K�\�\�5Z(\�QnS\�1�\�\�\�/1\�U�\�C*��\�(�\�r�}t\�Y\��8�:�q�9\�ԩse�\�@B�ۡ�2\�%�\���\��\�4WKs���#,\�;nlO([\�s/G�R[i�E�\�EIp(��\�K�J\��\�V�WW\�@��QյYF��`���[A9M>��*�EfhI�Ee\�D{dV\��x�K\�r����^&�\�z$\�r\�`�?�E]��\�i\�Ǹ�����L�\�<\�x�m��Av���9\�\�e[�\�\�aӶ��!��\�\���`d�]�&�]�Y�\�\�5Q��\�C\�W�`�\\I�Y�`�\'.Er2�J��S�\�\�C�\�~\�\�`O00\�% `CL�/\�䨵\n0H�\�ڸ\�\Z��\�\�~�q�I�\"�\�Y/�x��m2h2\��\�8zg�Ɋ�\�\�Z@�f%#��;�}N��\��\0y\�u�4�驐�~u\�\�0X ��k	�\�\�%\"�,�:p�Y�ݱ�\"�~ٕ+�s��!�ljA���S7$t�\�F�qrT\�.\�M���P\\Ԁn��w�\�Si\�)x� <:42��\r��\���\�U\�?�BB�iB\�]\�/�F�^\�\0+���\�f\"��\�\�i�\�܏�y�EG��bW\'�1�^\�\�\Z\�&o��b�\�$:U2�ۼ@�Q�\�\�Nl,Q�k|��Јv��\r���e�A\�G�0�L$�K!�ޥ[+<�go�\�);Ŏ\�~\"Q]KY�\�c�E��\�4Dw\rᖂ\�\��T�\\	�G,𞞘V���\�\�\�\�=Z��\0�ȉ\�7�,��=\�q���0F@M\�v$�b\�d·\�S�;�!\�\�y�\�\�z{J4/I��$�%H�$\�\�5r�\�o\�_����{w z%tw?	dI,`\�\�L���\0I�\�\�\�e@{\�š@\�\��	�j�:\�\����G�͞&	���ht\�F��=%(\�\�\�ܔ!���Y������K�3.)6�\�\�\�``�}p�擛G�)�\�0�\��9M>�\\�r��\�wH�\'*Pd@{M�q\�}\�\�����: \�9�!`�\�1M��\��\0Doٲݭ^IO\'\�6�\�`�S\�kR\��\�]N\�6@H�\�?=?]K��,���_�\�t��}~>\��jj\�v���\����\"]/a	�Sk�A�\�\�?v]�QI;�K\�I�$m\�_�\�0�\�\��\0��\n�5)ᖻ�,F�0>�\���\�)�]a��gf}��Ĭ���h���\�?BT>�\�=\�=\�(�]dT�$P\�ʫ�^�d�uY)���\�N#�S��+=9��%4�\'L3���\n+�m�\�!�O�\�',9,0);
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
  `Teléfono` char(255) DEFAULT NULL,
  `Dirección` varchar(255) DEFAULT NULL,
  `Email` varchar(255) NOT NULL,
  `Nickname` varchar(255) NOT NULL,
  `Contraseña` varchar(60) NOT NULL,
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
INSERT INTO `usuario` VALUES (1,'Josefat','Villarreal','Salazar','2019-10-13 00:18:33','8127488633','Altagracia Cantú 5405-2','josefath98@gmail.com','Josefath98','password1'),(2,'Ademir','Amaral','Arevalo','2019-10-13 01:03:23','8181848487','Hasta la chingada #855, Hasta la verga','ademir@hotmail.com','AkatsukiRead','password2'),(3,'Paola','Cedillo','Rodriguez','2019-10-17 01:52:48','8123989865','Constituyentes de Queretaro #41','paolacedillo@liceo.com','PaolaCedillo','password3'),(4,'Ana','Patricia','Valdes','1997-10-29 00:00:00','8123555566','Crisantemos #898','anavaldes@empresa.com','AnaValdes','password4'),(5,'Bernardo','Gonzales','Isais','1997-05-05 00:00:00',NULL,NULL,'bernardo@isais.com','Berna97','Password4'),(6,'Mendoza','Garen','81818181',NULL,'Password5','juliomendoza@gmail.com','I dont know somewhere','Julio','JulioMendoza97'),(7,'Veronica','Olmos','Vargas',NULL,'81818181','I dont know somewhere','veronicaolmos98@gmail.com','VeronicaOlmos97','Mypassword1'),(8,'Linda','Romo','Rodriguez',NULL,'84878589','Somewhere over the rainbow','lindaromo96@gmail.com','LindaRomo96','Myhub789'),(9,'Omar','Castaneda','Mendoza',NULL,'','Somewhere 45','omarcastaneda99@gmail.com','OmarCastaneda99','Omar99ca');
/*!40000 ALTER TABLE `usuario` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usuario_comenta_artículo`
--

DROP TABLE IF EXISTS `usuario_comenta_artículo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `usuario_comenta_artículo` (
  `Usuario_idUsuario` int(11) NOT NULL,
  `Artículo_idArtículo` int(11) NOT NULL,
  `IDComentario` int(11) NOT NULL,
  `Valoracion` tinyint(4) DEFAULT NULL,
  `Texto` mediumtext,
  `FechaDeComentario` datetime DEFAULT NULL,
  PRIMARY KEY (`Usuario_idUsuario`,`Artículo_idArtículo`),
  KEY `fk_Usuario_has_Artículo_Artículo1_idx` (`Artículo_idArtículo`),
  KEY `fk_Usuario_has_Artículo_Usuario1_idx` (`Usuario_idUsuario`),
  CONSTRAINT `fk_Usuario_has_Artículo_Artículo1` FOREIGN KEY (`Artículo_idArtículo`) REFERENCES `artículo` (`idArtículo`),
  CONSTRAINT `fk_Usuario_has_Artículo_Usuario1` FOREIGN KEY (`Usuario_idUsuario`) REFERENCES `usuario` (`idUsuario`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usuario_comenta_artículo`
--

LOCK TABLES `usuario_comenta_artículo` WRITE;
/*!40000 ALTER TABLE `usuario_comenta_artículo` DISABLE KEYS */;
INSERT INTO `usuario_comenta_artículo` VALUES (3,4,1,1,'Esta bien perro, super like me compraria mas','2019-12-07 04:40:36'),(4,5,3,0,'Se rompio muy rapido dislike','2019-12-07 05:26:51'),(7,5,2,1,'Muy interesnate producto','2019-12-07 05:23:42'),(7,16,7,1,'Que bonita calidad, amo esta television','2019-12-09 22:17:24'),(8,6,4,1,'Es un producto interesante hasta ahora me ha funcionado muy bien','2019-12-09 01:53:50'),(8,7,5,1,'Ese mouse es chiquito, portatil y resistente','2019-12-09 21:54:03'),(8,11,8,0,'Este anitivus no me gusto','2019-12-09 22:19:57'),(8,14,6,1,'Me encanto, el mejor celular que pude comprar, buena calidad precio','2019-12-09 21:54:55'),(8,15,9,1,'Muy comoda para el diario de un estudiante, recomendado','2019-12-09 22:21:00'),(9,14,10,1,'Esta super bueno muy barato y aguanta muy buen','2019-12-09 22:36:23');
/*!40000 ALTER TABLE `usuario_comenta_artículo` ENABLE KEYS */;
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
  `Artículo_idArtículo` int(11) NOT NULL,
  PRIMARY KEY (`idVideo`),
  UNIQUE KEY `idImagen_UNIQUE` (`idVideo`),
  KEY `fk_Video_Artículo1_idx` (`Artículo_idArtículo`),
  CONSTRAINT `fk_Video_Artículo1` FOREIGN KEY (`Artículo_idArtículo`) REFERENCES `artículo` (`idArtículo`)
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

SET @idArticulo= (SELECT idArtículo FROM artículo ORDER BY idArtículo DESC LIMIT 1 ) + 1; 
SET @idCategoriaP= (SELECT idCategoria FROM Categoria WHERE Categoria.Nombre = CategoriaString );

IF Estado = 'Borrador'THEN
SET @Estado = 0; 
ELSE 
SET @Estado = 1;
END IF;

INSERT INTO `mydb`.`artículo`
(`idArtículo`,`Nombre`,`Descripción`,`Fecha`,`Precio`,`Unidades`,`Categoria`,
`BorradorOPublicado`,`Activo`)
VALUES
(@idArticulo, Nombre, Descripcion, NOW(), Precio, Unidades, @idCategoriaP, @Estado, 1);

SET @idNuevoArticulo= (SELECT idArtículo FROM artículo ORDER BY idArtículo DESC LIMIT 1 ); 

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

SET @Cliente = (SELECT Cliente_idCliente FROM cliente_compra_articulo_folio ORDER BY IDClienteCompraArtículo DESC LIMIT 1);
SET @Precio = (SELECT Precio FROM artículo WHERE idArtículo = idArticulo LIMIT 1);
SET @idDeLaVenta = (SELECT IDClienteCompraArtículo FROM cliente_compra_articulo_folio ORDER BY IDClienteCompraArtículo DESC LIMIT 1);
SET @idDetalleDeVenta = (SELECT IDDetalleDeVenta FROM cliente_compra_articulo_detalle_de_venta ORDER BY IDDetalleDeVenta DESC LIMIT 1) + 1;
/*
SET @idDetalleDeVenta= (SELECT IDVenta FROM `detalle de venta` ORDER BY IDVenta DESC LIMIT 1 ) + 1; 
SET @idDeLaVenta = (SELECT IDClienteCompraArtículo FROM `cliente_compra_artículo` ORDER BY IDClienteCompraArtículo DESC LIMIT 1);
*/

/*
INSERT INTO `mydb`.`detalle de venta`
(`Cantidad`,`Subtotal`,`Cliente_Compra_Artículo_Cliente_idCliente`,
`Cliente_Compra_Artículo_Artículo_idArtículo`,`IDVenta`)
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

SET @Cliente = (SELECT Cliente_idCliente FROM cliente_compra_articulo_folio ORDER BY IDClienteCompraArtículo DESC LIMIT 1);
SET @Precio = (SELECT subtotal FROM cliente_compra_articulo_detalle_de_venta WHERE IDDetalleDeVenta = idArticuloP LIMIT 1);
SET @Cantidad = (SELECT cantidad FROM cliente_compra_articulo_detalle_de_venta WHERE IDDetalleDeVenta = idArticuloP LIMIT 1);
SET @Articulo = (SELECT idArticulo FROM cliente_compra_articulo_detalle_de_venta WHERE IDDetalleDeVenta = idArticuloP LIMIT 1);
SET @idDeLaVenta = (SELECT IDClienteCompraArtículo FROM cliente_compra_articulo_folio ORDER BY IDClienteCompraArtículo DESC LIMIT 1);
SET @idFolioHistorial = (SELECT IDClienteCompraArtículo FROM historial_de_compra_cliente_compra_articulo_folio ORDER BY IDClienteCompraArtículo DESC LIMIT 1);
SET @idDetalleDeVenta = (SELECT IDDetalleDeVenta FROM historial_de_compra_cliente_compra_articulo_detalle_de_venta ORDER BY IDDetalleDeVenta DESC LIMIT 1) + 1;
SET @IDReferencia = (SELECT IDDetalleDeVenta FROM cliente_compra_articulo_detalle_de_venta ORDER BY IDDetalleDeVenta DESC LIMIT 1);
/*
SET @idDetalleDeVenta= (SELECT IDVenta FROM `detalle de venta` ORDER BY IDVenta DESC LIMIT 1 ) + 1; 
SET @idDeLaVenta = (SELECT IDClienteCompraArtículo FROM `cliente_compra_artículo` ORDER BY IDClienteCompraArtículo DESC LIMIT 1);
*/

/*
INSERT INTO `mydb`.`detalle de venta`
(`Cantidad`,`Subtotal`,`Cliente_Compra_Artículo_Cliente_idCliente`,
`Cliente_Compra_Artículo_Artículo_idArtículo`,`IDVenta`)
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
SET @CantidadTotal = (SELECT Unidades FROM artículo WHERE idArtículo = @Articulo LIMIT 1);

UPDATE `mydb`.`artículo`
SET
`Unidades` = (@CantidadTotal - @CantidadARestar)
WHERE `idArtículo` = @Articulo;

SET @CantidadP = (SELECT Cantidad FROM historial_de_compra_cliente_compra_articulo_detalle_de_venta ORDER BY IDDetalleDeVenta DESC LIMIT 1);
SET @SubtotalP = (SELECT Subtotal FROM historial_de_compra_cliente_compra_articulo_detalle_de_venta ORDER BY IDDetalleDeVenta DESC LIMIT 1);
SET @FolioHistorial = (SELECT IDFolioHistorial FROM historial_de_compra_cliente_compra_articulo_detalle_de_venta ORDER BY IDDetalleDeVenta DESC LIMIT 1);
SET @CantidadAnterior = (SELECT Total FROM historial_de_compra_cliente_compra_articulo_folio ORDER BY IDClienteCompraArtículo DESC LIMIT 1);
SET @CantidadAnterior = (SELECT IFNULL(@CantidadAnterior, 0));

SET @NuevoTotal = (SELECT @CantidadAnterior + (@SubtotalP * @CantidadP)); 

UPDATE `mydb`.`historial_de_compra_cliente_compra_articulo_folio`
SET
`Total` = @NuevoTotal
WHERE `IDClienteCompraArtículo` = @FolioHistorial;

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

SET @Precio = (SELECT Precio FROM artículo WHERE idArtículo = id LIMIT 1);


SET @idCompra = (SELECT IDClienteCompraArtículo FROM historial_de_compra_cliente_compra_articulo_folio ORDER BY IDClienteCompraArtículo DESC LIMIT 1) + 1;

/*
INSERT INTO `mydb`.`cliente_compra_articulo_folio`
(`Cliente_idCliente`,
`Tipo de pago_idTipo de pago`,
`Total`,
`IDClienteCompraArtículo`,
`PresupuestoOCarrito`,
`Activo`)
VALUES(
@idCliente, 1, @Precio, @idCompra, 0, 1);
*/


INSERT INTO `mydb`.`historial_de_compra_cliente_compra_articulo_folio`
(`Cliente_idCliente`, `Tipo de pago_idTipo de pago`, `Total`, `IDClienteCompraArtículo`, `Activo`)
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
(`idImagen`,`Ruta`,`Imagen`,`Artículo_idArtículo`,`UsuarioOProducto`
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
(`idImagen`,`Ruta`,`Imagen`,`Artículo_idArtículo`,`UsuarioOProducto`
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
IN NicknameUsuario VARCHAR(255), IN ContraseñaUsuario VARCHAR(60))
BEGIN

SET @IDUsuario = ( SELECT idUsuario FROM usuario ORDER BY idUsuario DESC LIMIT 1) + 1;

INSERT INTO `mydb`.`usuario`
(`idUsuario`, `Nombre`, `Apellido paterno`, `Apellido materno`, `Nacimiento`, `Teléfono`,
 `Dirección`, `Email`, `Nickname`, `Contraseña`)
VALUES
( @IDUsuario, NombreUsuario, ApellidoPaterno, ApellidoMaterno, FechaDeNacimiento , TelefonoUsuario, DirecionUsuario, 
EmailUsuario, NicknameUsuario, ContraseñaUsuario);

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
IN NicknameUsuario VARCHAR(255), IN ContraseñaUsuario VARCHAR(60), IN Puesto VARCHAR(40), IN Imagen BLOB, IN rutaImagen VARCHAR(255))
BEGIN


SET @IDUsuario = ( SELECT idUsuario FROM usuario ORDER BY idUsuario DESC LIMIT 1) + 1;

INSERT INTO `mydb`.`usuario`
(`idUsuario`, `Nombre`, `Apellido paterno`, `Apellido materno`, `Nacimiento`, `Teléfono`,
 `Dirección`, `Email`, `Nickname`, `Contraseña`)
VALUES
( @IDUsuario, NombreUsuario, ApellidoPaterno, ApellidoMaterno, FechaDeNacimiento , TelefonoUsuario, DirecionUsuario, 
EmailUsuario, NicknameUsuario, ContraseñaUsuario);

SET @NickName = ( SELECT Nickname FROM usuario ORDER BY idUsuario DESC LIMIT 1);
SET @IDdelUsuario = ( SELECT idUsuario FROM usuario ORDER BY idUsuario DESC LIMIT 1);
SET @Pass = ( SELECT `Contraseña` FROM usuario ORDER BY idUsuario DESC LIMIT 1);

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

SET @IDComentario = (SELECT IDComentario FROM usuario_comenta_artículo ORDER BY IDComentario DESC LIMIT 1) + 1;

INSERT INTO `mydb`.`usuario_comenta_artículo`
(`Usuario_idUsuario`, `Artículo_idArtículo`, `IDComentario`, `Valoracion`,`Texto`, `FechaDeComentario`)
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
`Artículo_idArtículo`)
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
SELECT idArtículo FROM artículo WHERE Nombre LIKE @BuscarEnMedio
);

INSERT INTO ArticulosParaDestacados(
SELECT idArtículo FROM artículo WHERE Nombre LIKE @BuscarEnFrente
);

INSERT INTO ArticulosParaDestacados(
SELECT idArtículo FROM artículo WHERE Nombre LIKE @BuscarAtras
);

SET @Nombre = descripcionP; 
SET @Porcentaje = '%';

SET @BuscarEnMedio = (SELECT CONCAT(@Porcentaje, descripcionP, @Porcentaje));
SET @BuscarEnFrente = (SELECT CONCAT(descripcionP, @Porcentaje));
SET @BuscarAtras = (SELECT CONCAT(@Porcentaje, descripcionP));

INSERT INTO ArticulosParaDestacados(
SELECT idArtículo FROM artículo WHERE Descripción LIKE @BuscarEnMedio
);

INSERT INTO ArticulosParaDestacados(
SELECT idArtículo FROM artículo WHERE Descripción LIKE @BuscarEnFrente
);

INSERT INTO ArticulosParaDestacados(
SELECT idArtículo FROM artículo WHERE Descripción LIKE @BuscarAtras
);

INSERT INTO TabladeImagenesdeProducto(
SELECT Imagen.Artículo_idArtículo , Imagen.Ruta FROM Imagen 
WHERE Artículo_idArtículo IN(
SELECT idDelArticuloAlQuePertenece1 FROM ArticulosParaDestacados
)
AND UsuarioOProducto = 1
GROUP BY Imagen.Artículo_idArtículo
); 
 
SELECT distinct artículo.idArtículo, artículo.Nombre, artículo.Descripción, artículo.Precio, artículo.Fecha, artículo.Unidades,categoria.Nombre As Categoria, TabladeImagenesdeProducto.Ruta AS Ruta
FROM Artículo
INNER JOIN categoria 
ON categoria.idCategoria = Artículo.Categoria
INNER JOIN ArticulosParaDestacados 
ON artículo.idArtículo = ArticulosParaDestacados.idDelArticuloAlQuePertenece1
INNER JOIN TabladeImagenesdeProducto 
ON TabladeImagenesdeProducto.idDelArticuloAlQuePertenece = Artículo.idArtículo
WHERE (Fecha BETWEEN @fechainicio AND @fechafin)
AND artículo.Categoria = categoriaP AND artículo.BorradorOPublicado = 1 AND artículo.Activo = 1
ORDER BY artículo.idArtículo;

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
SET @IdUsuarioParaConsulta = (SELECT idUsuario FROM usuario WHERE usuario.Nickname = nicknamep and usuario.contraseña = contrasenap); 
SET @Administradores = (SELECT idAdministrador FROM administrador WHERE  administrador.Usuario_idUsuario = @IdUsuarioParaConsulta);
SET @Clientes = (SELECT idCliente FROM cliente WHERE cliente.Usuario_idUsuario = @IdUsuarioParaConsulta); 

CREATE TEMPORARY TABLE TabladeImagenesdeUsuario (
  idDelUsuarioAlQuePertenece int(11),
  Ruta VARCHAR(255)
);

INSERT INTO TabladeImagenesdeUsuario(SELECT imagen.Artículo_idArtículo, Ruta FROM imagen WHERE imagen.UsuarioOProducto = 0); 

IF (ISNULL(@Administradores))THEN 
SET @Puesto = 'Cliente';
ELSE 
SET @Puesto = 'Administrador';
END IF; 

SELECT idUsuario, Nombre, `Apellido paterno`, `Apellido materno`, Nickname, @Puesto AS Puesto, TabladeImagenesdeUsuario.Ruta
FROM usuario 
INNER JOIN TabladeImagenesdeUsuario
ON usuario.idUsuario = TabladeImagenesdeUsuario.idDelUsuarioAlQuePertenece
WHERE usuario.Nickname = nicknamep and usuario.contraseña = contrasenap; 	

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

INSERT INTO TabladeImagenesdeUsuario(SELECT imagen.Artículo_idArtículo, Ruta FROM imagen WHERE imagen.UsuarioOProducto = 0); 

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
ON imagen.Artículo_idArtículo = TabladeImagenesdeUsuario.idDelUsuarioAlQuePertenece
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
	
    SET @ConsultaPorFiltro = "SELECT * FROM artículo";
    
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

SET @Precio = (SELECT Precio FROM artículo WHERE idArtículo = id LIMIT 1);


SET @idCompra = (SELECT IDClienteCompraArtículo FROM Cliente_Compra_Articulo_Folio ORDER BY IDClienteCompraArtículo DESC LIMIT 1) +1;

INSERT INTO `mydb`.`cliente_compra_articulo_folio`
(`Cliente_idCliente`,
`Tipo de pago_idTipo de pago`,
`Total`,
`IDClienteCompraArtículo`,
`PresupuestoOCarrito`,
`Activo`)
VALUES(
@idCliente, 1, @Precio, @idCompra, 0, 1);

/*
INSERT INTO `mydb`.`cliente_compra_artículo_folio` (`Cliente_idCliente`, `Tipo de pago_idTipo de pago`,
`Total`, `IDClienteCompraArtículo`, `PresupuestoOCarrito`)
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

UPDATE `mydb`.`artículo`
SET
`Activo` = 0
WHERE `idArtículo` = idp;

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

UPDATE `mydb`.`cliente_compra_artículo`
SET
Activo = 0
WHERE `Cliente_idCliente` = 3 AND `Artículo_idArtículo` = 1 AND IDClienteCompraArtículo = id;

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

SET @QueryBasico = 'SELECT artículo.idArtículo, artículo.Nombre, artículo.Descripción, artículo.Precio, categoria.Nombre As Categoria, artículo.BorradorOPublicado
FROM Artículo
INNER JOIN categoria 
ON categoria.idCategoria = Artículo.Categoria
WHERE artículo.Activo = 1  ';

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
SET @QueryAEjecutar = (SELECT CONCAT (@QueryTemporal, ' AND ', 'artículo.Nombre = ',  titulo));
END IF;

IF descripcion = '' OR descripcion = null THEN 
SELECT null;
ELSE 
SET @QueryAEjecutar = (SELECT CONCAT (@QueryTemporal, ' AND ', 'artículo.Descripción = ',  descripcion));
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
UPDATE `mydb`.`cliente_compra_artículo`
SET
`PresupuestoOCarrito` = 1
WHERE 
cliente_compra_artículo.IDClienteCompraArtículo = id;

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
WHERE `IDClienteCompraArtículo` = id;

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

SET @idArticulo= (SELECT idArtículo FROM artículo ORDER BY idArtículo DESC LIMIT 1 ) + 1; 
SET @idCategoriaP= (SELECT idCategoria FROM Categoria WHERE Categoria.Nombre = CategoriaString );

SET @idRuta1 = (SELECT idImagen FROM Imagen WHERE Artículo_idArtículo = id AND UsuarioOProducto = 1 ORDER BY idImagen ASC LIMIT 1);
SET @Ruta1 = (SELECT Imagen.Ruta FROM Imagen WHERE Artículo_idArtículo = id AND UsuarioOProducto = 1 ORDER BY idImagen ASC LIMIT 1) ;
SET @idRuta2 = (SELECT idImagen FROM Imagen WHERE Artículo_idArtículo = id AND UsuarioOProducto = 1 ORDER BY idImagen DESC LIMIT 1) ;
SET @Ruta2 = (SELECT Imagen.Ruta FROM Imagen WHERE Artículo_idArtículo = id AND UsuarioOProducto = 1 ORDER BY idImagen DESC LIMIT 1) ;
SET @idVideo = (SELECT idVideo FROM Video WHERE Artículo_idArtículo = id LIMIT 1); 
SET @RutaVideo = (SELECT Video.Ruta FROM Video WHERE Artículo_idArtículo = id LIMIT 1); 

IF Estado = 0 THEN
SET @Estado = 0; 
ELSE 
SET @Estado = 1;
END IF;

UPDATE `mydb`.`artículo`
SET
`Nombre` = Nombre, `Descripción` = Descripción,
`Precio` = Precio, `Unidades` = Unidades, `Categoria` = @idCategoriaP,
`BorradorOPublicado` = @Estado, `Activo` = 1
WHERE `idArtículo` = id;

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
IN NicknameUsuario VARCHAR(255), IN ContraseñaUsuario VARCHAR(60), IN IdUsuariop INT)
BEGIN

UPDATE `mydb`.`usuario` SET `Nombre` = NombreUsuario,
`Apellido paterno` = ApellidoPaterno,
`Apellido materno` = ApellidoMaterno,
`Nacimiento` = FechaDeNacimiento,
`Teléfono` = TelefonoUsuario,
`Dirección` = DirecionUsuario,
`Email` = EmailUsuario,
`Nickname` = NicknameUsuario,
`Contraseña` = ContraseñaUsuario
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
SELECT idArtículo FROM artículo WHERE Categoria = idCategoriaP
);

INSERT INTO TabladeImagenesdeProducto(
SELECT Imagen.Artículo_idArtículo , Imagen.Ruta FROM Imagen 
WHERE Artículo_idArtículo IN(
SELECT idArtículo FROM artículo WHERE Categoria = idCategoriaP
)
AND UsuarioOProducto = 1
GROUP BY Imagen.Artículo_idArtículo
); 

SELECT artículo.idArtículo, artículo.Nombre, artículo.Descripción, artículo.Precio, artículo.Fecha, artículo.Unidades,categoria.Nombre As Categoria, TabladeImagenesdeProducto.Ruta AS Ruta
FROM Artículo
INNER JOIN categoria 
ON categoria.idCategoria = Artículo.Categoria
INNER JOIN ArticulosParaDestacados 
ON ArticulosParaDestacados.idDelArticuloAlQuePertenece1 = Artículo.idArtículo
INNER JOIN TabladeImagenesdeProducto 
ON TabladeImagenesdeProducto.idDelArticuloAlQuePertenece = Artículo.idArtículo
WHERE artículo.BorradorOPublicado = 1 AND artículo.Activo = 1;

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

SELECT Nombre FROM artículo WHERE BorradorOPublicado = 1 AND Activo = 1;


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

SELECT artículo.idArtículo, artículo.Nombre, artículo.Descripción, artículo.Precio, artículo.Fecha, artículo.Unidades,categoria.Nombre As Categoria FROM Artículo
INNER JOIN categoria 
ON categoria.idCategoria = Artículo.Categoria
WHERE artículo.idArtículo = idp;

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

SET @RutaVideo = ( SELECT Video.Ruta FROM Video WHERE Video.Artículo_IdArtículo = idp );

CREATE TEMPORARY TABLE TabladeImagenesdeProducto (
  idDelArticuloAlQuePertenece int(11),
  Ruta VARCHAR(255)
);

INSERT INTO TabladeImagenesdeProducto(
SELECT Imagen.Artículo_idArtículo , Imagen.Ruta FROM Imagen 
WHERE Artículo_idArtículo = idp 
AND UsuarioOProducto = 1); 

SET @Ruta1 = ( SELECT Ruta FROM TabladeImagenesdeProducto WHERE idDelArticuloAlQuePertenece =  idp  ORDER BY Ruta ASC LIMIT 1 );
SET @Ruta2 = ( SELECT Ruta FROM TabladeImagenesdeProducto WHERE idDelArticuloAlQuePertenece =  idp  ORDER BY Ruta DESC LIMIT 1 );

SELECT artículo.idArtículo, artículo.Nombre, artículo.Descripción, artículo.Precio, artículo.Fecha, artículo.Unidades,categoria.Nombre As Categoria,  @Ruta1 As Imagen1, @Ruta2 As Imagen2, @RutaVideo As Video
FROM Artículo
INNER JOIN categoria 
ON categoria.idCategoria = Artículo.Categoria
WHERE artículo.idArtículo = idp;

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
SELECT Imagen.Artículo_idArtículo , Imagen.Ruta FROM Imagen 
WHERE Artículo_idArtículo = idp 
AND UsuarioOProducto = 1); 

SET @Ruta1 = ( SELECT Ruta FROM TabladeImagenesdeProducto WHERE idDelArticuloAlQuePertenece =  idp  ORDER BY Ruta ASC LIMIT 1 );

SELECT artículo.idArtículo, artículo.Nombre, artículo.Descripción, artículo.Precio, artículo.Fecha, artículo.Unidades,categoria.Nombre As Categoria,  @Ruta1 As Imagen1
FROM Artículo
INNER JOIN categoria 
ON categoria.idCategoria = Artículo.Categoria
WHERE artículo.idArtículo = idp;

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

SELECT artículo.Nombre, artículo.Descripción, artículo.Fecha, artículo.Precio, artículo.categoria FROM Artículo;

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
SELECT idArtículo FROM artículo WHERE Categoria = idCategoriaP
);

INSERT INTO TabladeImagenesdeProducto(
SELECT Imagen.Artículo_idArtículo , Imagen.Ruta FROM Imagen 
WHERE Artículo_idArtículo IN(
SELECT idArtículo FROM artículo WHERE Categoria = idCategoriaP
)
AND UsuarioOProducto = 1
GROUP BY Imagen.Artículo_idArtículo
); 


SELECT artículo.idArtículo, artículo.Nombre, artículo.Descripción, artículo.Precio, categoria.Nombre As Categoria, TabladeImagenesdeProducto.Ruta, artículo.BorradorOPublicado
FROM Artículo
INNER JOIN categoria 
ON categoria.idCategoria = Artículo.Categoria
INNER JOIN TabladeImagenesdeProducto
ON artículo.idArtículo = TabladeImagenesdeProducto.idDelArticuloAlQuePertenece
WHERE artículo.Activo = 1;

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

INSERT INTO TabladeImagenesdeProducto(SELECT Artículo_idArtículo, Ruta FROM Imagen GROUP BY Artículo_idArtículo); 

SELECT artículo.idArtículo, artículo.Nombre, artículo.Descripción, artículo.Precio, categoria.Nombre As Categoria, TabladeImagenesdeProducto.Ruta, artículo.BorradorOPublicado
FROM Artículo
INNER JOIN categoria 
ON categoria.idCategoria = Artículo.Categoria
INNER JOIN TabladeImagenesdeProducto
ON artículo.idArtículo = TabladeImagenesdeProducto.idDelArticuloAlQuePertenece
WHERE artículo.Activo = 1;

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

INSERT INTO TabladeImagenesdeProducto(SELECT Artículo_idArtículo, Ruta FROM Imagen GROUP BY Artículo_idArtículo); 
INSERT INTO Productos(SELECT idArtículo, 0 FROM artículo); 
INSERT INTO TablaDeProductosQueYaSeCompraron(SELECT DISTINCT idArticulo, 1 FROM historial_de_compra_cliente_compra_articulo_detalle_de_venta WHERE idCliente = @idCliente ORDER BY idArticulo);
 
UPDATE Productos
SET
compradoONo = 1
WHERE idDeProducto IN (SELECT idDelComprado FROM TablaDeProductosQueYaSeCompraron);

SELECT artículo.idArtículo, artículo.Nombre, artículo.Descripción, artículo.Precio, 
categoria.Nombre As Categoria, TabladeImagenesdeProducto.Ruta, 
Productos.compradoONo AS Comprado
FROM Artículo
INNER JOIN categoria 
ON categoria.idCategoria = Artículo.Categoria
INNER JOIN TabladeImagenesdeProducto
ON artículo.idArtículo = TabladeImagenesdeProducto.idDelArticuloAlQuePertenece
INNER JOIN Productos
ON artículo.idArtículo = Productos.idDeProducto
WHERE artículo.BorradorOPublicado = 1 AND artículo.Activo = 1;

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

INSERT INTO TabladeImagenesdeProducto(SELECT Artículo_idArtículo, Ruta FROM Imagen GROUP BY Artículo_idArtículo); 

SELECT artículo.idArtículo, artículo.Nombre, artículo.Descripción, artículo.Precio, categoria.Nombre As Categoria, TabladeImagenesdeProducto.Ruta
FROM Artículo
INNER JOIN categoria 
ON categoria.idCategoria = Artículo.Categoria
INNER JOIN TabladeImagenesdeProducto
ON artículo.idArtículo = TabladeImagenesdeProducto.idDelArticuloAlQuePertenece
WHERE artículo.BorradorOPublicado = 1 AND artículo.Activo = 1;

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


SELECT cliente_compra_articulo_detalle_de_venta.IDDetalleDeVenta AS ID, cliente_compra_articulo_folio.IDClienteCompraArtículo AS Venta, usuario.Nickname AS Usuario , artículo.idArtículo AS 'Articulo', artículo.Nombre, cliente_compra_articulo_detalle_de_venta.Cantidad,  Subtotal
FROM cliente_compra_articulo_folio
INNER JOIN usuario 
ON usuario.idUsuario = cliente_compra_articulo_folio.Cliente_idCliente
INNER JOIN cliente_compra_articulo_detalle_de_venta
ON cliente_compra_articulo_detalle_de_venta.IDVenta = cliente_compra_articulo_folio.IDClienteCompraArtículo
INNER JOIN artículo
ON artículo.idArtículo = cliente_compra_articulo_detalle_de_venta.idArticulo
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

SELECT cliente_compra_articulo_detalle_de_venta.IDDetalleDeVenta AS ID, cliente_compra_articulo_folio.IDClienteCompraArtículo AS Venta, usuario.Nickname AS Usuario , artículo.idArtículo AS 'Articulo', artículo.Nombre , cliente_compra_articulo_detalle_de_venta.Cantidad, Subtotal
FROM cliente_compra_articulo_folio
INNER JOIN usuario 
ON usuario.idUsuario = cliente_compra_articulo_folio.Cliente_idCliente
INNER JOIN cliente_compra_articulo_detalle_de_venta
ON cliente_compra_articulo_detalle_de_venta.IDVenta = cliente_compra_articulo_folio.IDClienteCompraArtículo
INNER JOIN artículo
ON artículo.idArtículo = cliente_compra_articulo_detalle_de_venta.idArticulo
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

SELECT usuario.Nickname AS Usuario, FechaDeComentario AS Fecha, Texto AS Comentario FROM usuario_comenta_artículo 
INNER JOIN artículo
ON artículo.idArtículo = usuario_comenta_artículo.Artículo_idArtículo
INNER JOIN usuario
ON usuario.idUsuario = usuario_comenta_artículo.Usuario_idUsuario
WHERE Artículo_idArtículo = Producto ORDER BY FechaDeComentario;

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
SELECT Artículo_idArtículo AS Rankeado, COUNT(Artículo_idArtículo) As Numero, 'El mas comentado' 
FROM usuario_comenta_artículo
GROUP BY Artículo_idArtículo
ORDER BY 2 DESC
LIMIT 1
); 

INSERT INTO ArticulosParaDestacados(
SELECT idArticulo AS Comprado, COUNT(idArticulo) AS Numero, 'El mas comprado' FROM historial_de_compra_cliente_compra_articulo_detalle_de_venta
GROUP BY historial_de_compra_cliente_compra_articulo_detalle_de_venta.idArticulo
ORDER BY 2 DESC
LIMIT 1
);

INSERT INTO ArticulosParaDestacados(SELECT idArtículo AS Nuevo, Precio, 'El mas nuevo' FROM artículo ORDER BY Fecha DESC LIMIT 1);  
INSERT INTO ArticulosParaDestacados(SELECT idArtículo AS Barato, Precio, 'El mas barato' FROM artículo ORDER BY Precio ASC LIMIT 1); 
INSERT INTO ArticulosParaDestacados(SELECT idArticulo AS Querido , COUNT(idArticulo) AS Numero, 'El mas querido' FROM cliente_compra_articulo_detalle_de_venta
GROUP BY idArticulo
ORDER BY 2 DESC LIMIT 1
); 

INSERT INTO ArticulosParaDestacados(SELECT idArtículo AS Caro, Precio, 'El mas caro' FROM artículo ORDER BY Precio DESC LIMIT 1); 

INSERT INTO TabladeImagenesdeProducto(
SELECT Imagen.Artículo_idArtículo , Imagen.Ruta FROM Imagen 
WHERE Artículo_idArtículo IN(
SELECT idDelArticuloAlQuePertenece1 FROM ArticulosParaDestacados 
)
AND UsuarioOProducto = 1
GROUP BY Imagen.Artículo_idArtículo
); 

SELECT artículo.idArtículo, artículo.Nombre, artículo.Descripción, artículo.Precio, artículo.Fecha, artículo.Unidades,categoria.Nombre As Categoria, TabladeImagenesdeProducto.Ruta AS Ruta, ArticulosParaDestacados.Razon
FROM Artículo
INNER JOIN categoria 
ON categoria.idCategoria = Artículo.Categoria
INNER JOIN ArticulosParaDestacados 
ON ArticulosParaDestacados.idDelArticuloAlQuePertenece1 = Artículo.idArtículo
INNER JOIN TabladeImagenesdeProducto 
ON TabladeImagenesdeProducto.idDelArticuloAlQuePertenece = Artículo.idArtículo;

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

SET @Folio = (SELECT IDClienteCompraArtículo FROM cliente_compra_artículo WHERE Cliente_idCliente = @idClienteQuePresupuesta);
/*
SELECT * FROM `detalle de venta` WHERE IDVenta = @Folio;
SELECT * FROM cliente_compra_artículo WHERE IDClienteCompraArtículo = @Folio;*/

/*SET @Numero = (SELECT COUNT(IDClienteCompraArtículo) FROM cliente_compra_artículo WHERE Cliente_idCliente = @idClienteQuePresupuesta);
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

SELECT artículo.nombre AS Articulo, Cantidad, FechaDeCompra AS Fecha, Subtotal, Total, IDVenta AS Venta,`tipo de pago`.Nombre AS Pago FROM historial_de_compra_cliente_compra_articulo_detalle_de_venta
INNER JOIN historial_de_compra_cliente_compra_articulo_folio
ON historial_de_compra_cliente_compra_articulo_detalle_de_venta.IDFolioHistorial = historial_de_compra_cliente_compra_articulo_folio.IDClienteCompraArtículo
INNER JOIN artículo
ON artículo.idArtículo = historial_de_compra_cliente_compra_articulo_detalle_de_venta.idArticulo
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
SELECT artículo.nombre AS Articulo, Cantidad, FechaDeCompra AS Fecha, Subtotal, Total, IDVenta AS Venta,`tipo de pago`.Nombre AS Pago FROM historial_de_compra_cliente_compra_articulo_detalle_de_venta
INNER JOIN historial_de_compra_cliente_compra_articulo_folio
ON historial_de_compra_cliente_compra_articulo_detalle_de_venta.IDFolioHistorial = historial_de_compra_cliente_compra_articulo_folio.IDClienteCompraArtículo
INNER JOIN artículo
ON artículo.idArtículo = historial_de_compra_cliente_compra_articulo_detalle_de_venta.idArticulo
INNER JOIN `tipo de pago`
ON `tipo de pago`.`idTipo de pago` = historial_de_compra_cliente_compra_articulo_folio.`Tipo de pago_idTipo de pago`
WHERE historial_de_compra_cliente_compra_articulo_folio.Cliente_idCliente = @idCliente
AND `tipo de pago`.`idTipo de pago` = idPagoP
AND historial_de_compra_cliente_compra_articulo_detalle_de_venta.idArticulo = idArticuloP ;
*/

IF orden = 1 THEN
   
SELECT artículo.nombre AS Articulo, Cantidad, FechaDeCompra AS Fecha, Subtotal, Total, IDVenta AS Venta,`tipo de pago`.Nombre AS Pago FROM historial_de_compra_cliente_compra_articulo_detalle_de_venta
INNER JOIN historial_de_compra_cliente_compra_articulo_folio
ON historial_de_compra_cliente_compra_articulo_detalle_de_venta.IDFolioHistorial = historial_de_compra_cliente_compra_articulo_folio.IDClienteCompraArtículo
INNER JOIN artículo
ON artículo.idArtículo = historial_de_compra_cliente_compra_articulo_detalle_de_venta.idArticulo
INNER JOIN `tipo de pago`
ON `tipo de pago`.`idTipo de pago` = historial_de_compra_cliente_compra_articulo_folio.`Tipo de pago_idTipo de pago`
WHERE historial_de_compra_cliente_compra_articulo_folio.Cliente_idCliente = @idCliente
AND `tipo de pago`.`idTipo de pago` = idPagoP
AND historial_de_compra_cliente_compra_articulo_detalle_de_venta.idArticulo = idArticuloP
ORDER BY FechaDeCompra ASC;

ELSE
  
SELECT artículo.nombre AS Articulo, Cantidad, FechaDeCompra AS Fecha, Subtotal, Total, IDVenta AS Venta,`tipo de pago`.Nombre AS Pago FROM historial_de_compra_cliente_compra_articulo_detalle_de_venta
INNER JOIN historial_de_compra_cliente_compra_articulo_folio
ON historial_de_compra_cliente_compra_articulo_detalle_de_venta.IDFolioHistorial = historial_de_compra_cliente_compra_articulo_folio.IDClienteCompraArtículo
INNER JOIN artículo
ON artículo.idArtículo = historial_de_compra_cliente_compra_articulo_detalle_de_venta.idArticulo
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


SELECT cliente_compra_articulo_detalle_de_venta.IDDetalleDeVenta AS ID, cliente_compra_articulo_folio.IDClienteCompraArtículo AS Venta, usuario.Nickname AS Usuario , artículo.idArtículo AS 'Articulo', artículo.Nombre , Subtotal
FROM cliente_compra_articulo_folio
INNER JOIN usuario 
ON usuario.idUsuario = cliente_compra_articulo_folio.Cliente_idCliente
INNER JOIN cliente_compra_articulo_detalle_de_venta
ON cliente_compra_articulo_detalle_de_venta.IDVenta = cliente_compra_articulo_folio.IDClienteCompraArtículo
INNER JOIN artículo
ON artículo.idArtículo = cliente_compra_articulo_detalle_de_venta.idArticulo
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

SELECT cliente_compra_articulo_detalle_de_venta.IDDetalleDeVenta AS ID, cliente_compra_articulo_folio.IDClienteCompraArtículo AS Venta, usuario.Nickname AS Usuario , artículo.idArtículo AS 'Articulo', artículo.Nombre , Subtotal
FROM cliente_compra_articulo_folio
INNER JOIN usuario 
ON usuario.idUsuario = cliente_compra_articulo_folio.Cliente_idCliente
INNER JOIN cliente_compra_articulo_detalle_de_venta
ON cliente_compra_articulo_detalle_de_venta.IDVenta = cliente_compra_articulo_folio.IDClienteCompraArtículo
INNER JOIN artículo
ON artículo.idArtículo = cliente_compra_articulo_detalle_de_venta.idArticulo
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

SELECT cliente_compra_articulo_detalle_de_venta.IDDetalleDeVenta AS ID, cliente_compra_articulo_folio.IDClienteCompraArtículo AS Venta, usuario.Nickname AS Usuario , artículo.idArtículo AS 'Articulo', artículo.Nombre ,  artículo.Precio AS Subtotal
FROM cliente_compra_articulo_folio
INNER JOIN usuario 
ON usuario.idUsuario = cliente_compra_articulo_folio.Cliente_idCliente
INNER JOIN cliente_compra_articulo_detalle_de_venta
ON cliente_compra_articulo_detalle_de_venta.IDVenta = cliente_compra_articulo_folio.IDClienteCompraArtículo
INNER JOIN artículo
ON artículo.idArtículo = cliente_compra_articulo_detalle_de_venta.idArticulo
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

SELECT * FROM artículo WHERE Categoria = id;

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
