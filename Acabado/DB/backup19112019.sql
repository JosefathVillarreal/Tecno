CREATE DATABASE  IF NOT EXISTS `mydb` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `mydb`;
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
-- Table structure for table `artÃ­culo`
--

DROP TABLE IF EXISTS `artÃ­culo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `artÃ­culo` (
  `idArtÃ­culo` int(11) NOT NULL AUTO_INCREMENT,
  `Nombre` varchar(100) NOT NULL,
  `DescripciÃ³n` varchar(255) NOT NULL,
  `Fecha` datetime DEFAULT NULL,
  `Precio` float NOT NULL,
  `Unidades` decimal(10,0) NOT NULL,
  `Categoria` int(11) NOT NULL,
  `BorradorOPublicado` tinyint(4) DEFAULT '0',
  PRIMARY KEY (`idArtÃ­culo`),
  UNIQUE KEY `idArtÃ­culo_UNIQUE` (`idArtÃ­culo`),
  UNIQUE KEY `Nombre_UNIQUE` (`Nombre`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `artÃ­culo`
--

LOCK TABLES `artÃ­culo` WRITE;
/*!40000 ALTER TABLE `artÃ­culo` DISABLE KEYS */;
INSERT INTO `artÃ­culo` VALUES (1,'Unidad de Estado SÃ³lido Kingston A400 de 480 GB, 2.5\" SATA III (6Gb/s)','Disco Duro tipo unidad de estado sÃ³lido capacidad 480GB interfaz SATA III (6.0 Gb/s) factor de forma 2.5\"','2019-10-17 04:08:41',1099,100,2,1),(2,'Procesador Intel Core i7-8700','Octava GeneraciÃ³n, 3.2 GHz (hasta 4.6 GHz) con Intel UHD Graphics 630, Socket 1151, CachÃ© 12 MB, Six-Core, 14nm','2019-10-18 00:45:43',7399,200,2,1),(3,'Tarjeta de Video NVIDIA Gigabyte GeForce GTX 1060 Windforce OC','6GB GDDR5, 1xHDMI, 2xDVI, 1xDisplayPort, PCI Express x16 3.0','2019-10-18 00:50:41',4899,150,2,1),(4,'Bocinas Logitech Z906 Digital','AutÃ©ntico Sonido 5.1 Dolby Digital y DTS, CertificaciÃ³n THX, 500 Watts RMS de Poder total','2019-10-18 00:51:43',4299,50,3,1),(5,'Regulador Koblenz 1400VA/600W','con 8 contactos','2019-10-18 00:54:56',299,80,5,1),(6,'Kaspersky Anti-Virus 2019, 10 PCs, 1 AÃ±o','Tu protecciÃ³n comienza con la de tu PC. Es por eso que nuestra protecciÃ³n esencial para PC la protege de virus, ransomware, phishing, spyware, sitios web peligrosos y mucho mÃ¡s.','2019-10-18 04:35:47',49,20,6,1);
/*!40000 ALTER TABLE `artÃ­culo` ENABLE KEYS */;
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
INSERT INTO `categoria` VALUES (3,'Accesorios'),(4,'Almacenamiento'),(1,'Computadoras'),(5,'ElectrÃ³nica'),(2,'Hardware'),(6,'Software');
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
  `Cliente_Compra_ArtÃ­culo_Cliente_idCliente` int(11) NOT NULL,
  `Cliente_Compra_ArtÃ­culo_ArtÃ­culo_idArtÃ­culo` int(11) NOT NULL,
  `IdVenta` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idChat`,`Cliente_Compra_ArtÃ­culo_Cliente_idCliente`,`Cliente_Compra_ArtÃ­culo_ArtÃ­culo_idArtÃ­culo`),
  UNIQUE KEY `idChat_UNIQUE` (`idChat`),
  KEY `fk_Chat_Cliente_Compra_ArtÃ­culo1_idx` (`Cliente_Compra_ArtÃ­culo_Cliente_idCliente`,`Cliente_Compra_ArtÃ­culo_ArtÃ­culo_idArtÃ­culo`),
  CONSTRAINT `fk_Chat_Cliente_Compra_ArtÃ­culo1` FOREIGN KEY (`Cliente_Compra_ArtÃ­culo_Cliente_idCliente`, `Cliente_Compra_ArtÃ­culo_ArtÃ­culo_idArtÃ­culo`) REFERENCES `cliente_compra_artÃ­culo` (`Cliente_idCliente`, `ArtÃ­culo_idArtÃ­culo`)
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
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cliente`
--

LOCK TABLES `cliente` WRITE;
/*!40000 ALTER TABLE `cliente` DISABLE KEYS */;
INSERT INTO `cliente` VALUES (1,3),(2,4),(3,5),(4,6);
/*!40000 ALTER TABLE `cliente` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cliente_compra_artÃ­culo`
--

DROP TABLE IF EXISTS `cliente_compra_artÃ­culo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cliente_compra_artÃ­culo` (
  `Cliente_idCliente` int(11) NOT NULL,
  `ArtÃ­culo_idArtÃ­culo` int(11) NOT NULL,
  `Tipo de pago_idTipo de pago` int(11) NOT NULL,
  `Total` float DEFAULT NULL,
  `IDClienteCompraArtÃ­culo` varchar(45) DEFAULT NULL,
  `Cliente_Compra_ArtÃ­culocol` varchar(45) NOT NULL,
  `PresupuestoOCarrito` tinyint(4) NOT NULL,
  PRIMARY KEY (`Cliente_idCliente`,`ArtÃ­culo_idArtÃ­culo`),
  KEY `fk_Cliente_has_ArtÃ­culo_ArtÃ­culo1_idx` (`ArtÃ­culo_idArtÃ­culo`),
  KEY `fk_Cliente_has_ArtÃ­culo_Cliente1_idx` (`Cliente_idCliente`),
  KEY `fk_Cliente_Compra_ArtÃ­culo_Tipo de pago1_idx` (`Tipo de pago_idTipo de pago`),
  CONSTRAINT `fk_Cliente_Compra_ArtÃ­culo_Tipo de pago1` FOREIGN KEY (`Tipo de pago_idTipo de pago`) REFERENCES `tipo de pago` (`idTipo de pago`),
  CONSTRAINT `fk_Cliente_has_ArtÃ­culo_ArtÃ­culo1` FOREIGN KEY (`ArtÃ­culo_idArtÃ­culo`) REFERENCES `artÃ­culo` (`idArtÃ­culo`),
  CONSTRAINT `fk_Cliente_has_ArtÃ­culo_Cliente1` FOREIGN KEY (`Cliente_idCliente`) REFERENCES `cliente` (`idCliente`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cliente_compra_artÃ­culo`
--

LOCK TABLES `cliente_compra_artÃ­culo` WRITE;
/*!40000 ALTER TABLE `cliente_compra_artÃ­culo` DISABLE KEYS */;
/*!40000 ALTER TABLE `cliente_compra_artÃ­culo` ENABLE KEYS */;
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
  `Cliente_Compra_ArtÃ­culo_Cliente_idCliente` int(11) NOT NULL,
  `Cliente_Compra_ArtÃ­culo_ArtÃ­culo_idArtÃ­culo` int(11) NOT NULL,
  `IDVenta` int(11) NOT NULL,
  KEY `fk_Detalle de venta_Cliente_Compra_ArtÃ­culo1_idx` (`Cliente_Compra_ArtÃ­culo_Cliente_idCliente`,`Cliente_Compra_ArtÃ­culo_ArtÃ­culo_idArtÃ­culo`),
  CONSTRAINT `fk_Detalle de venta_Cliente_Compra_ArtÃ­culo1` FOREIGN KEY (`Cliente_Compra_ArtÃ­culo_Cliente_idCliente`, `Cliente_Compra_ArtÃ­culo_ArtÃ­culo_idArtÃ­culo`) REFERENCES `cliente_compra_artÃ­culo` (`Cliente_idCliente`, `ArtÃ­culo_idArtÃ­culo`)
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
  `Cliente_Compra_ArtÃ­culo_Cliente_idCliente` int(11) NOT NULL,
  `Cliente_Compra_ArtÃ­culo_ArtÃ­culo_idArtÃ­culo` int(11) NOT NULL,
  `IDVenta` int(11) NOT NULL,
  KEY `fk_Detalle de venta_Cliente_Compra_ArtÃ­culo1_idx` (`Cliente_Compra_ArtÃ­culo_Cliente_idCliente`,`Cliente_Compra_ArtÃ­culo_ArtÃ­culo_idArtÃ­culo`)
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
-- Table structure for table `historialdeventa`
--

DROP TABLE IF EXISTS `historialdeventa`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `historialdeventa` (
  `Cliente_idCliente` int(11) NOT NULL,
  `ArtÃ­culo_idArtÃ­culo` int(11) NOT NULL,
  `Tipo de pago_idTipo de pago` int(11) NOT NULL,
  `Total` float DEFAULT NULL,
  `IDClienteCompraArtÃ­culo` varchar(45) DEFAULT NULL,
  `Cliente_Compra_ArtÃ­culocol` varchar(45) NOT NULL,
  `PresupuestoOCarrito` tinyint(4) NOT NULL,
  PRIMARY KEY (`Cliente_idCliente`,`ArtÃ­culo_idArtÃ­culo`),
  KEY `fk_Cliente_has_ArtÃ­culo_ArtÃ­culo1_idx` (`ArtÃ­culo_idArtÃ­culo`),
  KEY `fk_Cliente_has_ArtÃ­culo_Cliente1_idx` (`Cliente_idCliente`),
  KEY `fk_Cliente_Compra_ArtÃ­culo_Tipo de pago1_idx` (`Tipo de pago_idTipo de pago`)
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
  `ArtÃ­culo_idArtÃ­culo` int(11) NOT NULL,
  `UsuarioOProducto` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`idImagen`),
  UNIQUE KEY `idImagen_UNIQUE` (`idImagen`),
  KEY `fk_Imagen_ArtÃ­culo1_idx` (`ArtÃ­culo_idArtÃ­culo`),
  CONSTRAINT `fk_Imagen_ArtÃ­culo1` FOREIGN KEY (`ArtÃ­culo_idArtÃ­culo`) REFERENCES `artÃ­culo` (`idArtÃ­culo`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `imagen`
--

LOCK TABLES `imagen` WRITE;
/*!40000 ALTER TABLE `imagen` DISABLE KEYS */;
INSERT INTO `imagen` VALUES (1,'css/images/ProcesadorInterCorei78700k8va.jpg',NULL,2,1),(2,'css/images/TarjetasdeVideoGigabyt.jpg',NULL,3,1),(3,'css/images/BocinasLogitech980.jpg',NULL,1,1),(4,'css/images/Almacenamiento-Unidades-Flash-USB.jpg',NULL,4,1),(5,'css/images/Accesorios-Herramientas-MOD-HUELLA.jpg',NULL,5,1),(6,'css/images/Accesorios-Audifonos-y-Microfonos-Yeyian-YAO.jpg',NULL,6,1),(7,'css/images/Electronica-Proyectores-BenQ.jpg',NULL,1,1),(8,'css/images/Almacenamiento-Unidades-Flash-USB.jpg',NULL,2,1),(9,'css/images/ProcesadorInterCorei78700k8va.jpg',NULL,3,1),(10,'css/images/user.jpg',NULL,5,1),(11,'css/images/user.jpg',NULL,5,0),(12,'css/images/user.jpg',NULL,1,0),(13,'css/images/user1.jpg',NULL,2,0),(14,'css/images/user2.jpg',NULL,3,0),(15,'css/images/user3.jpg',NULL,4,0),(16,'css/images/user5.jpg',_binary 'ÿ\Øÿ\à\0JFIF\0\0\0\0\0\0ÿ\í\0œPhotoshop 3.0\08BIM\0\0\0\0\0€g\04yvNO7M2v0b04LLy5Fda(\0bFBMD01000ac203000047100000081e00004f21000008250000a42900001137000094390000ae3c0000c53f0000e9570000ÿ\âICC_PROFILE\0\0\0lcms\0\0mntrRGB XYZ \Ü\0\0\0\0)\09acspAPPL\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0ö\Ö\0\0\0\0\0\Ó-lcms\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\ndesc\0\0\0ü\0\0\0^cprt\0\0\\\0\0\0wtpt\0\0h\0\0\0bkpt\0\0|\0\0\0rXYZ\0\0\0\0\0gXYZ\0\0¤\0\0\0bXYZ\0\0¸\0\0\0rTRC\0\0\Ì\0\0\0@gTRC\0\0\Ì\0\0\0@bTRC\0\0\Ì\0\0\0@desc\0\0\0\0\0\0\0c2\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0text\0\0\0\0FB\0\0XYZ \0\0\0\0\0\0ö\Ö\0\0\0\0\0\Ó-XYZ \0\0\0\0\0\0\0\03\0\0¤XYZ \0\0\0\0\0\0o¢\0\08õ\0\0XYZ \0\0\0\0\0\0b™\0\0·…\0\0\ÚXYZ \0\0\0\0\0\0$ \0\0„\0\0¶\Ïcurv\0\0\0\0\0\0\0\Z\0\0\0\Ë\Éc’kö?Q4!ñ)2;’FQw]\íkpz‰±š|¬i¿}\Ó\Ã\é0ÿÿÿ\Û\0C\0		\n\n	\r\r\"##!  %*5-%\'2(  .?/279<<<$-BFA:F5;<9ÿ\Û\0C\n\n\n9& &99999999999999999999999999999999999999999999999999ÿ\Â\0¸¸\0\"\0ÿ\Ä\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0ÿ\Ä\0\Z\0\0\0\0\0\0\0\0\0\0\0\0\0ÿ\Ä\0\Z\0\0\0\0\0\0\0\0\0\0\0\0\0ÿ\Ú\0\0\0\0\0ÀJiV\Ûe!\Æ\áL…0.Á\\)ui\nWV‹‡p¦Â˜‹…0/”•Å¤\'t¤¶Sl«Ó³™5z5“\éº\ÙX%e	£Š+š\Ü\ë¥]šue£J–Q\Òhf^\ÛË±s*p·.\Ğ[«^0‘\Z>\"s»@\ém=N‘y\é\æš\r¾ñ\Ğ]S\Î4Q«y\Z¦[Fª2UµEZƒz5l¬•©Å¯M‰«K]\Öº@l+\ã%9\İ:«Zr©²µ¸¬Ï¹bz|ej\å2{¹Z-5ª\ÄHP\å\å-ò½\0\áj\Ú©  \ĞP\0@UA\n\"\ã‹E6N8Ó‹A“¦’¾+3:HÜ¥4,.¸\ìø’Ğ†¶›Uf(\Ùz¾\Ö\\U W{D“O?añ\É\Ñ\á¿+S(L½Bû%l‚+´0§Š^7©\0Â¢€(4P\0A@\0\0Fˆ\ä\n\r\0PÑ£nF+d³#I%V\Ç<“\×dr…w6£\'½«ˆ\éhø­S\Ó\ÙÉ¶õ“w \É\Ö\É^£i–ñˆ\àÂš½7ª\0¢ \n \n¨ &*+AŠˆ 4E[PÊºR2KğI$RW¦[\çª\×\0›c–6m\ána:\Ğu},\Í-œ})a~\îS²5òA–\ê]d®$J±<0lÕµ\Çõ\0¸\0`(* 0TI€\Õ\0@@\0\0(\0\0¨\0‘K£JFIw=\Ïd\Ñ$õ\ç®Ç N-^s±\ägLb¡¢®¶>\Ö\Ş5Ñ­\ÛÌ³“­š\îÑºÇj=Á\Î[§o\é…h\0¨\Õ\0\0€\0 \0¨\0(\0\0\0\0 €±\ÉW5oÀù\"’I<\×kÀŒ“K7d«c”\ëù\ër\â5R;\è\ïóû;øv’)5\àµR\ŞxCr¥¶*>DC$m\Ù×¹^Š@)\Ø\0H‘•Z\á€!\n¸\"\Ä{Fˆ­mUX¤†U\×X¤»\åŠH_$\Õå…³F\é\Ğ\È\ØÉ»1\â‡J–\Î/C¿‰tÙ«\rhRc/Rº\èDH‘FWiZ\æw-Ÿ¤\01®kŒk”„\0<L‘UD$R0¶D%&…\ÉÀ\ÒH­sH ™¬•yòFûùò\Ëµ\èYb–\Î%/E\Ït/5¼]œ‹3óµ\ìW7\Ñé¹¾›w\ìR\×Õ…Ù·\è1/Q\Ñ\n¤‚+“9œ\ÔğK\Ì\í\Şst€	\rRU9\Ú1”\Ó+\ÓÀ H\Ä%aŒ•\×\ÍZ6#^¥±±F\"¨!c|‘\É>W±õ\ét\Ğ\Í	Î	M\Ğó\İ¢\Æn†l³óµ­U–\èzg¥\ßÁx\ZrW¡<¥Ÿ¤Õª±XU\Ès{w\Ü\ÇgèŠŠ¦\İl\í)\à\ßtR\ËG\r,r*2¨£QA˜Û€ùû\0³œÕ¾§‘Ñƒ\å.\ï…\ÓN>\ç6\å‘$rGs¦†h\Î`+œ½9\Ñ<ö1õù¹WB­ª²Ò½\ïK\ÏHu(Ş¤\í\Å(Px\Ğ}ºö‘Eo7·uğ\ÍN\ç+_h\Ú|–rSWh©*\Ø\Îe\ë- V¸Z ¢T\"dU\â@š\Ï9i\Zlb±\×ò+#kµ”\ìs\Øø\ït\Ğ\Í&¹®öÛ¦~o{ckX¯9Ï±±\Óó³©´\ÅF\íYX/Rh\Ña°(`\Ç,|\Î\äö¨Ş¯K62öŠl­G<2l\å\ÛdiT\n\0*(\0R\İA\å¿C%¾F”¦]\\P£™\Øs¥™\ïHô4R\ÂÉ•¹x›N¶\àh\ç9¶½ŠÓ\\\Í.§µğYTt¯Rc¯Q\Ó&\Õ“FrûñÜ¥`½l›õ\Ùz”e\Ï\ÔYgÎŠ%A@r 8k€E`gQ1\Ëfİ©9~\Ş)ÇŠ\én\Îx>Û„\Ï{^÷\É±¶À\È\Ú\Å\ÙudÔšjV³V\ÊoÜ¡©\ç\î×±êŠº€ºyZL²`‘‹˜dŒ\åzœ‰:tmUš›µ.$ùF® \\#@(\n\ĞTP#‘š\Ğ\Ò\É\Ób³1\êƒpQK	£º\Ã\Øú·:Xæ“\×\'m\ã\î:y\Èg\ÜÚ–\èÛŸF\í+\İN\Øf†UÁV\İPK´m3AZ\ä69+‡<\É#\åz\Å%Mù\ë\ËNÎ¬†|™u¨\Øco1\è\0\0k€Š@ ®øGŸ­¶P/@µ÷T<õ\'†wX{$«s§†XY2¡	Y\Ü\Ê\ÙyyªšY¯K(Ş¥vm+Ô´:|+P\ÍZU¶¥º`\Ù\à™½71\ÉJ\ÌG#9^Š4T•W®\çt\Ù%{µ\ß>\î†6Èœ€\0\0(\0¨\Ğre\Ø¬Š˜j:°\r‰rÇ¯‘«;h\ÔG9\ZºË¤•’U¹\Ò\Ç$,•B\Õ\Õ\Ì\Òxğst³¸\éØ¯~-}*—º\\R­šòƒ+\È\ÆG#\ZNG!QP9v¹¼ŸDÆ¾9\Õ>\Ş˜O¦•ƒw¹ıñ<A¥\0s\ç\\\è¡/\êp·±\İu\ä·Y[¡=\ìgD·* lÖ­¢Œ*=h\ßK¾ª®\â\æc¡¾`+³[O]\äÀÎ·U\ê¤\Õv¾nõš×·ò!\Ó\Z¬Ë•‚‹\Ø\æj¹„E@\æ\Ò\çpû\Ù1Éµlp\în;;\ÈÓ’;(oA\ÎtV\Ô\æ\Ò\ÍkF\ZĞv\Ç>¡\Ğ\×H\Ñ\Ê$È¶&¬À¯8&\èU\Ùy\Ü*¸g\ÔÚ\ïpğ\Ê]şw-lt‘\É^ù!m½ŒMGŸ\'#\ÑJ\Õk\Ûy\é\å\èn\å\ØkN\îxWs\\\Íg5\È\0M³Ÿáº¾}\è<¡ô§d<#\åz®;¨Ë¯\Ç\ê\Ò\Ù-\ÍK\ÈØBeü\íTµs;[11WA!:µµ+§›-\×E\É™§	\å\Ì|ŠgKb\ä³ô.»rŸ«›\rc\ä»	\Ğ[\Ô	Y\ĞÌ²á˜ºVk9«÷kn\æ6õ],Q\ËaŸn„\Æ:zòZ\î«f L™,\è«×½\æ6ù\ç ñ]\ÆÖ«‘­G\Â÷\\B\İ=\ì^¨¨c¹Ü‡E]\n\Ì-Hhv\á®V¶˜\ç\ìd\ëó&ü\İ,œ2¹k˜\é\ä7ošSa\î@ƒ¥\çõÆ¯U¿L¸\á\çf‡Q\ËõÁ8Nï„ºÈ»>®lüz»\ØkhTqQô\\?£\Í\èWsô<\îŠ5v\0\Å\åún{±_K®/\Z\Æ7\Ç\Üu/\Ø\Ğs½R£\é¹º\Ò>¾\à/·¢\è¹Î,\Íô´\å\nÚ±KC¯\ËuYİ˜:p£­“­Ì›ñ6ñ2J¯I\Ïô¥\Ä\ÛÄ¨]¬]©=\ĞóLE\Ëõ¸\á\ån‡Q\Ëõ‚pÿ\0	{\Ø\éyŞ‡2g\è4fW\Öcó•x\ç£-Kô\îs¢U›„ºZ‘\â\ît¬\ë@\á\Ó\ÂÓ¹G\Ñ\ß´\áû.u\ëY\Î\Â`v_i¤\Î}Ï¯ÿ\0M\Ít¹`clsÓŒ\éZŞ¥Vh\ßz\Ò\Õ\ZZø\Û\ÉÍ‡·\Ïd‘\Ğs=\ép÷0\êonA\Îô\\\ë‹~\Ã÷<­\Ñ\éùN?°\à¯}÷7\ÒfŠsı\Û-\Ó?SA_oš\Ó.öş~‡ºüyÀ\ï¹vq6õ\İ\×À\Ç\ÂP¿C\Ñkµ\Ör]\\û\Ø{œ\ÎP\íx¾\Ò\ÙG\çş\çöÙ½\Óñ•§\r\Üñ\Ãg{9UÌ\Ñ\×(U\éB\Ş\Ï-\Ôò\ç/=\ĞsùeI\Èu÷%À\ß\å\ê-oqİŒƒ‘ë°™S¨\ÆÙ€pı\Ç$ì›§\Âİ‚N¾\àtKo¤\ãû\ny\ç¡ñ\Z½6\Îh\×ó~û\ÏzRôMıTjp=÷Ğ¼\Û\Ã\Ô\×wl\"ğ1p”6ò}òls\ÏG\ä+Q\Êivs}—Ÿ\ÜÎœ\ß\×r–z;x›82õñryrLÛ¶:´gÇ¢Ù™];7\ÖsU\éS$\î|\ëZs\ì9Ü–\Æ;]e®\Ïo\ëqd—q_—¥‘õZ^qn\É÷|Ğ¾rv|:\Ù?NN\×:\ÊC.e\ìU:¶z&‡Ÿ\Ú\åÇ¬\ào\çi¹\Ê\ÕÑ¯²\Öó«ü\ì]«9T¦¼\'5{€­PT0EQS)ÜŠt+«—s%#˜OI-BY-\Ó$²uH!¢\Æv’\ÂüW\ÙÒ·&[õ\Ç\Û\nrh\"ts·\ë¹c»_B\Úù‡\ï\È\ß6Îº8K”MÌ¡À’D\ËJ\ÇÕ±\Îj\ÆÁ@›•1Pw\"Î‡U\ÌT@j\0\n‚k -³^\ìùöfÊ‘\Z	Á\è¦kE¦f<v!z’Y!R2£+TMV†¸N¾­§_p±=\Ö÷D ø$¬Â†ø/9­\é\éo4¬E}®§r¢‰€š³­\àFÁQF\0‡5PnE@m+´,\Éj\å[FfC4HA0\0\0\0\0\0\0\0\0BiF(\íç…©kÙ’\ëŸJ‹\Ídi\Ô\Ù\Ä\èeÈ¥h`òŞ\ÉØ±dj\ç\êHw \rÿ\Ä\0.\0\0\0\0\01!23 \"#04@A$BCDÿ\Ú\0\0\0õU\ÕT/WP½]Jõu+\ÕÔ¯WR½]Jõu+\ÕT¯WR½]JõU\ÕT/UP½UBõU\ÕT/UP½UBõU\ÕT/UP½UBõU\ÕT/UP½UBõU\Õ\Ô&\ÕT&\ÔL¹ó.|ËŸ2\çÌ¹ó.|ËŸ2õ&\Ô\ÌjœY-L¹5s¯UR½]J†y\ËDÒ£,˜tóe“\ÌH–Df‘¥\\ù¿´” }\Æú°\ä\Ö\å8tÁ\Ì\røv~ñ5`§‚´•\Ë?ƒ¯³a`¬vV}Ù°¸C\ÚvN(»(7(\í›\ßkQ\Ù\İ\Ñ?|û0„k–¹ahHZ\Ğ,-!aiZV•\Ë\\µ\Ë\\´cZ\n\ĞV’°²³l!p‡´½j\ÊÒƒ1s´=^:£³ûM)şÆµ\0±ü˜XEˆ±c\Ø=™F@¢V’ƒB‚-jVhuµ7rm¤\îQl\æ\åh[&?¨µ9¸öejZÖ¬¦‚KFµ ø\Õw\ÙÊ›t\Ôv~\êâ³”\îª1\Óúİ±\é\ìÁB5\Ê	­\Æ\Ğtweöz¦b;;¹B‚\Êf\ß\Øğ…\Â\Ãfx½¤Tİ¸AŸÜ¢O	­NİŸ\Û\'°!\ì+ı®w´Š›¶\Î\ÙÛ¨SŠj=\Ñÿ\0V.û`ß¯ \ŞEK²j;;u‘¿\Øÿ\0µ\Ëı!\ì`\Éxÿ\0œ\ïi7iÙ¨\ìş\å\ZxMj ƒö¹·{ {\ÇÙaÈ§ªn\ÍH;ª”uQ\' V®±ÿ\0k—ûp‡²‘½Ê¦\é‘;g*r9y@­aHsh“·ığ\å´!\ì£\Z¸ƒz§mş\Äp\Òz°Œœ\'ª ˆ\ê\ZD\Ô?”{\ßq`öRW‰\Û\é%¥¦Ú\á\ÙÇ®¥º·ù\n÷\Ü\\]»\Ã\ÚwiO\ÙS»\à°˜0m\Î\İ3ó\Ìû.\Û\Å\Õ\ì\èUû)6T‰\İ?º‹b~N7\Ş?.¶;„.\Û\Ã\ä*Ñ¤XÊ¦bwTz4\Ú>\Ü|œ2\Z\ÔT˜X›Ÿ\Â\äw\Æ^ _\åOiRmÌiAKa»v;£E3\ÚP¨©r$¥{V’cŠôòcj\ÈZ\ÖP‚W\'A#VlQ@,{]±\Ü{x¼Gj£ğR¨;™µ¦\Ù0uÿ\0¿ùE3Ûº¡0a«KV‘g09:¥2‘­A€,\'‰\é2ŒÉ¨\è‰Q\Ó5¡ô\íp’ÁzY(T´ƒD\æ®Y$>\Æ^>ö\ìv¬8\nE\ì\Ú\ÓZ\Øù8tŒuM\ßü¼CS\İñ1;S?¾G†7À¸ƒCH».\Î\èöv\Õ\Ô\å*…3¶\Ó 2£nN\Ü\äˆÅ‚o²•˜R·-£}\ä‘D\ìş\'\Î\Ö/V\Õê›“3\05LB±‰²±\Î,ª“˜\ë¶\ãx{fvã’¤Q(ö´\Û„$\\\Ä\\šü.knÍL\ZŒc\r;R÷§lXs€tÆ‹‰{œ\è\á(F€+2@ªjyˆû\ì§\íª\í³\Ô[E²zj¨`N‰rŠ\å\é\â\Â	\ÛSwX\ÅQ/-±\ÓİXö\Ì\ĞğúE#f\íöSmV~6zhQNO\íCpÒ°W\Éİˆ&w\ëø\Æü™N?\ëA\ÙüsE\Ì^\Ùó“	\î\rO¨-«~˜§’UO\Ë˜Ê—\ê\íöSö\Õ;.6~ñ¢Šj³oaA0\Ú>­kp¦=X>\ßÈ–·òUÉ†Áµ¹\æ:L©i\Úb|ZÊ’<2sö\å9}Ç²Œ›º\Î\îgl6)\Çâ‚otv¦6›x:³‘\Û\0d0F\Z3gF\×!atU\ï\Órn=\éúº\Îİ›Cb¶´;X¢Š)†\Ô\İ\Êq‘Fü\È\íª2#Æ†!\ÕÇ¢ 9j ñ*#‡±·ov>\Ó÷E\æ\í\r‰GkBnnS7\nğµ7‘\ï-L9Œ´+yO†v¹¡†Úš\ÕYY\Ñ\Ç$!v\Ş/#»d\îE\æ\í\rœøm\rİµÛ¸P÷…!\Ãhú¹\Ä-N\Õø\í!’‡)šŸÂŠz€\îl\ë™:’)\nšFñ‚\Ô,oy\Ú^\äWş†\Ğ\Ù\ÄYÛ¨÷(\Ün6º7eT”c\âøòZ\Ü~GÀ½2É±µªWhc%ıj\0\åO\Ü.½(êª»‘\Ûÿ\0chEN\İG¾}\í\Úe5¸U\nü?r‹±g<5›s~MŸ\ç<|\ÆÁª´µÊ¨\â)N\\.oH-Uºz\íLE95;t\Íÿ\0Ásv(¦m¿S¶‰ø’ ô‰à¶¥\Ã1¡²eÓ³R’9\Z©\å\ÆRDª*	c·g±·¤µV\êE|c+(§\nvé»®n\ÅO6oI}\î:P•®5Ÿ\Î|…´ùeSK^\Ó&+\ãs\Şçµ“°µ\Ñg³\ác”œ9G†¸\'Q\È\Ô\æ SoIj£—)Tc¬MZ„X¹I\ì³w\\İˆt-“£S<\ÃğL\Ò\Å,®‘\Ì8s*\ã\âI\Òut r¤27˜‘hQT!\ì–¼H\Í6ô§©\ÚcóR(·‰\×()l\İÛ·´¦\Ú2™\ÑSù¬\ç§U4/ZÜ²v¹›Jö†¸\æBTc¨\nFjQ™\Z¡„\ç–œ=IŠ©AÀ¬…SP#iv·‹ÓŸœ§R¤P· L9 ¦\İ7v\ío¥•UF`\nƒšß¥/¦9}=\ÍQ\åFt\ÌJ‰C@k\ä_iˆ\ä<­)²˜\Ìo5Ğ´)pdlzˆ\Ù\É\ã\Øö‡6¥œ¹3\Â\çÈ²M…\àòT\İ;vŠ-‘´½É»·kñ1˜\Ú!ˆm\'lg\îN\Ì\å\ÄE\ä\Èùœğ\ÈJ\áñ\ç\áTB\×6™\å²\Ô;\á\r6µ,oG	{dd‘ \ç¸Eóp¦Ò€1ƒHÍÕ®Ì£\Ø/’¨ümÿ\0±hKÉºn\í\Úõ£0÷)†!´Œ8\İ[Ô–QHGÓœE*Š^Pk„ŠFtPX¥ybw€\ÙÂ•\Ò4³S×£“\'›\æ3OÜ™rdZ\ß™ÿ\0e°¾¢O¦Ê¾Ÿ2’7F\è |\Ë\ĞL½È‡5\ÑwÏ—¨\è$rús“¸sÁsÂ˜p\Ö\Ç;‡&¡>)\ØÑ™”ï¬ß˜›\ÎøSŒ\ÇsY\Ã-\'c\ßÎ¥ON\Ø\Â.Ï¯X0J–ƒ™”\İ\ì\íUPóT-cZ‹AN¥Hô€¥`{@\È\á­\Ó-«ü\Ü\"\ÇjŸ<C\\@\Ö^\ĞwRD×Š¨y/oe\'…UŒ\ÃEL\Ş%\ãgUKJ\Zp\n)µH\á‘1\Ä\Ü\Ó\ÏRvI\ç¡n©N\ÇR8–ª¶\æ>f˜iF\\¦\ïgj«wX¾\Üö«Ë¤ƒ1\Ëfô—\Ïjÿ\07±Ú§\Ï\Ã—£µ\\¯\ç\Ñ;T+ˆ³T9\n×¿ñp\èË¥\â2<\Ë¿\ëQÅŠ²¡9«RvK\æ\á–;k\Ò\ê+O\â\É$m\Òı\ì\íU^g~À\ÙKûş‹‰\è\Îgµ›„X\íV~÷\n\Ù?¶vwDªz\ÂøÊ¢ı{K;#U•L‘¼/«\íW\çk±^´Œ¿¶Œÿ\0Ö¤\ì”ı\îwS±ÅŒ´ş*fŒ\Ú~övª¿+¼\Ãe/\ì÷´¾^m«ü\Ü\"\ÅO	–£†·E\Í3\æ´4)üGO*—Ä¤:YQ!|‹…wÚ³\Ï!\ÅdG,U=\"¡ı…\'eG—„mgU;_ªzõnO¬.m.ÖŸº>\ÅW\å˜l¥ışöwŒb{Wù¸EÏ—D\Ü8‚QRW\éÔ—Ô”œCS‡_®ª</\ï\\+¾ÕzŸ=1\Ì*¸\â\åRvN>\ï	\Ù™\å3+ı’ˆ5´¢õ\Å\ã\\@\áÀıÁ²—ö?û\Øş\Å/š\ÕşncµWŸ…\Ø\íQûT¢uô\Ö)8sZ\É>&‡õ\ÕW€\î¸W}«<õZf\Åˆøg‘I\Ù7—„Ø§\ÍË©\á\Î\ÔTş*kÏ‚øûx\Ëô\âQ²¨pl\íptöªs›?\ÕÌµ›„X\íW\ç\áV;Tyø>Ê£¤SŸ¹Cú\ê«Àw\\3£\í[\ç¬òğ³ğ\\YË†ùT“yxlšdEVÓ¿™\Ã!tmU¯\Ó4\Í\Ã\ê@•ò¢\É±ö*÷h|ss*¸ƒuID\Úè‹¤ö¯\Úøl&0\Õ~~ lˆªªwó¸t&&*\é!qÉ¡ıuU\à;ªi”[ˆ@şegŸ„º\ÜP\åü7Ê¤\ì›\Ì—RUµ\í\ÎQh+e$` Ô¸Ğµ6¸\ä:\é²ø\ÏÁq2©ˆõeT\İs\ÆÀÉ¬ıü$cƒš¦sZ\ÚZ)\Ê$b¬ıö<±ôum•¹\ÒH\Ö6¾§œ\åCú\ê«Áş¬\é4u!\ìDœ\\ó…Şºd÷ºC\İõ\Ó#Y+–\åu:¹X¾¡\"<BDê‡¾X$g/˜\Õ\Îb3Æª$\ÈU\rs”“ó‰}T\Øõ\ÓÎ•\Ï3K¯\ÕÍW*¼9ó¦Tº 8‹”ó¾aòBtÁz\éQqq@¢­–5õ\'§q)•’ñUKõó\'VJö\Ü+%jú„Ÿš@£Î`\\\Æ.cS\×)~+šW<®a\Ìg!\ÍÔ\Åò\'C\Ôa\à¾\'\éÜ›L\å\é“!Á’$\ì…\Õef\Ç\Ú?É\\’\ä)Šô\é°i$9-\\–£C,-x)\Ë6\íï‘\Â4/§µ\ã\éM\á¯_MG†/‘©\Ñ9§I[!ü\Î\Ú1”	bcõ{2µ-C:šˆj)¥¡sZ¹Ás—9sŠ\ç\Îr\Ö\å©\éÁ\î\\6W\æù³\ãc—¤ğ\æ8ILøİ²\Ïò<¨mÕ¨LQ•\ËS\×Ì­\\²¹h7„ª‰öa—>\Îh*®‘=…®\Æó\Ögm\ç$¯‘D9k \ç\"¤\á\ØZ\ÓNT\Ğ;£Œ0_Ut\êX\Ä2=¿ÿ\Ä\0&\0\0\0\0\0\0\0\0!1 2\"0QAÿ\Ú\0?\Â4£\Â0Œ#\Â0(ÒŒDÒ(–\nQ‰¢?†ˆş\Z#ø(Gğ(“\Ó\Â*\ÃI\'¹–d\Ë2Ì‰I©3±#±#ù¤.™Ÿ\Î\ÎÄÔ‡	#\äe¡È„rÈ¼\nú\Ò%™¥ƒ­\Ú#ñ§K;Š)ú0iC§K§ü\Z\ÒDSH•dˆ\É\ÌTÈ¿½ü|©/\İ\ÔGıEŠŠ#­k\Ğ~T}~\ê«1#\É¢Ÿ6\ëü¨=¾\éğ/b7o¡,Œ\ë|¨p/¶|’7ªş%	|‡Á\Öytò›†E\ãS\Ô\\‘«ğQ÷&ö:¯*<Š\Ò²7düjp.HŠ\Õ\Ê>\å_S¨\ã\ÊHªMD]TNüE^,\îD\ïE¨¤jC«)¡\Î(rMØˆ­X¥\ìUõ:‡\åş·U?\ÙI£½#S\Ú\Û#VHŒó\"7¬PYe_R¿·”ˆ?‰9a%©ı”\Ö\äoWƒ§EoR··”Š(\ê$\×\Û¹Z¯\n\Ï\âU\ç\ÊE)aJú\ÚÈ‘O’µBšØ¯ÁSŸ&q\"²ø}´\Ö\äEj„8:—±SŸ&¥_O¶‘ª½\Ê\\S*s\ä\íR_¶r\"µOb—©\ÕHŸ>L{: 5‡\å\ZyY1¸\à±\à\Öh§=J\Õ=Š~§R÷—q2r)\ÕÒŠ˜oo*~¦…i\ìî£’4[)\ÃMª-\Èú[\Ç\Ñ;b\Ø1u6kf¦I˜´UGz$j\ÆL¨ğ\Ï\éX:œ\Í\ínÌÔ‰AÄ9H\ì?\nk,\Æ\ãvj\Ñ†\"B)ò>J>\åYfW½„°`œ51,/Rxc\ähD­‘$!ˆ‡#\ä‹\Ã3‘<Z/Œu<§¡Z1\Ú\ì„r\ì\Í\ÇhŒ‰!D9%\É™’\ÔÆ¢ˆ\éµc¨\â\Ğ\à—%\ÉG’k1iZ#ÈŒ‰†>J~Ä¹ ğ\Ìä¨{B\ÚÑšÀ\à\ÜHR–IÑ–JT\ä™V­\Ğ\éHqqºf¡&\ÉaˆÈ¢\ÈE\ê\'šY¥‰\ZF\r2Q\Ê%A®Ü¿<\ëG1w4š\r%\ÓÜ5.\ZM(Á“»$w\äw\â5‘bğBñªö9¶o©›\Û-5âª´S\ê2+f\Ññ\ê\Âú‘R\êü^cÿ\Ä\0+\0\0\0\0\0\0\0\01 !2A03\"#@BQÿ\Ú\0?ú3Ñ“\"$Ù–s3™‰³,Q’+±„r£•«Lœ\È\çG:>D|‡\Ès£™Gm0=\Z\Õ!aY(\ï\Õ)\rıY9…3q˜1¥›[}õz\Ëî§¦G67‘km¾‹¢[ı\ÑE­¶ıS\ß\î‰\ëG¢\Ö\İhº\'÷-^ˆkJS_tF1\è‰l\"†ıR\èTuz!\ìD£¿S\ÛTS”\åfS—LimˆdJ+\é]x\êc\Ñ‰Kn·¹}¬z- Rñ\êD…õ\ã&4dº!¹Kn¤Id_RBx1£\ÑiÚ½Q\è_o¡’\ÑiL†\İKE¿Õ}–‹Jd6ÿ\0‹\ëG\ÑL\İh{ıò]¶\ê\Å9<&J¢‡yº¤ı”\ê\Æ~=y\éÆ’z-(.ıv\ï\Ä%üRÓ‡{3\ÜSOr5¡-µ”£\ÅRbU\á\Ù	\Æ[\â³#%-‰U„{6*‘–Ì”\â·b”e¶¼²Ú½7\ïGyIn\È\Ü\Ó}òS­\Z%Kšt÷gû*?úrºrY/\ŞyIÃ”\áş\Ë\Ú\í>T[\ÑùY,Ò–i[\ZqE¿3Ÿbê“„‹W\'.TËŠnœ°pù¼\à¾\ØXy—¿¡aì½ª\Ó\åEµ™’\Í)\áW|ô»—û«µTYVø\è6U«*’\Ë)ğşx\ç%\Ú\ÃLO‘¢ña£‡û.ÿ\0BÖº¤û•§\Ï,œ?Şœ@³ı!\ä‹Ğ¿ó8™}úe\ï\èp\í\Ùyú•\Õ-\Ê\Ó\ç–Nÿ\0‹+y²\Ö\ß\åÜ«\n-!nRğE\âş´\Ê+3E÷‘Ã\å\ç\ê\Ë:Q›şEH\ÛÁ\á–\ßı4\â;\"\Ïô8’,Bÿ\0\Ì\áşe÷\èXy—¿¡\Ãı—¡eJ53’q·ƒ\Ã-ş<¿›,<Yqù±nRğE\ÌsE‹ûQ\æpÿ\0e\ìqS\'’O¹w$\êv8|Zt\â>‹/\Ğ\â>H±ıÿ\03‡ù—ß¡bÒŸròI\Ô\ìpÿ\0e\ìZ¨pù$\ŞK·š¯‹\å+ù³‡ø²º\Í6l\Ê3\"\'KšŸ!oh\éË™—6Î¬²‹j\åZ*ª\î;)§Ù”\ìÈ…5ƒİ»«±oe(O,»¶uoh\é\Ë%Í£«,–Ö®”²]Zü»\ì$Ÿr¥†_f[ZºEj\nªŒ\Ó\ìC‡É¿\äB\n\Â*\Ø\ÊR\ÉmA\ÒO:U²\æyGøu:\âğv2‘”s\"xdeƒ˜\ç9\Ù\Ì\Ä\Ì!Á0`\\PÆŒ\Çm;\Ú&g£©ıPÜ–ç¯ª&:b\ÉOÿ\Ä\0/\0\0\0\0\0\0\0!1 03Aq’4@Pa\"Q2‘`#€ÿ\Ú\0\0\0?\ç\âù³Ÿ‹\æ\ÏQ‹\æ\ÏQ‹\æ\ÏQ‹\æ\ÏQ‹\æ\ÏQ‹\æ\ÏQ‹\æ\ÏQ‹\æ\ÏQ‹\æ\ÏQ‹\æ\ÏQ‹\æ\ÏQ‹\æ\ÏQ‹\æ\ÏQ‹\æ\Î~/›9ø¾l\ç\âù³Ÿ‹\æ\Î~/›9ø¾l\ç\âù³Ÿ‹\ä\Î~/“9ø¾L\ç\âù3Ÿ‹\ä\Î~/“9ø¾Lõ¾l\ç\ây3‰\äsg\äsg\äsg\äsg\äsg\äsg\äsg\äsg\äsg\ä9g;\È\çby3Ÿ‹\æ\ÏQ‹\æ\Ìñ±<dÿ\0³™/\ì\çby\ÜO#™/\ì\æKû9³ò9Ø_$şMµ[qü»\Üÿ\0\è“ùkü\êÿ\0@·—\È/—_.·—	ğndhd©š¦F•·³T^\Ú\"¦†”ÒºVñ®uÊ™™\Z\Zp¸B\â\éÀ\ÍS-õ[{K\Ò\Ü}b\çS­2\á/pø¹‘x¥b\Èü·>½¾[ö/W\ÆÚ–†\ÄK½w²3øö\êò.©™tgğb\ì´K\Ìq±f²?]Œ|í¸Í³\èÊ¹šÀ\\·–Ş»,¸6·|m­×˜\ãüG\íÛ§\×ôÉŸ‹E‡B\ì¿Qû‹ñµft½,?Î¶,Ì‡·£2Á[„\Ë\ÑfkKŠU¼M–¸/y{\r—Ä±µ&&‹S13e›pĞ·ZfŒŒ©š\İ{«\Ø\Ü\\=¨™ô‘uD-\Ä\Ùzq,õ\İy\ro?km\İw™-\åmKsêš£S#kuû\Òõ¹(¾•\ËRóy2¹Ö··õÜ°ó553\İ^\É\Ò;“6•.l£63B\èÙ£“2.^–eÑ\ë\à-\ÅÆ‘b=ª\Éw£Œk‘³%¹˜”…²ù-cş4\\ü´.~:SóĞº‡B\Ò\É\Ğ\è8Ë ‹DÎ—E¤¨Ë«\'b\ËR\î–Z*\Ño±*²]\È\Åu/Öš\Ó2\İ\äEDYV÷È´h\Ñ8~‰÷Üg\ÜQG\İ5¥š>˜\Èö£H\Úz\Ñ$)=i›iÿ\0´µ.\åÿ\0U›oBÏ¥>\Ç\'HŠŠ?²*\ï:\Æ³f²\îO¾\ä\ë>\ãu–z24oô4C¶\ê½l…¾\éº>ôd»¸„¨Í•Ò± a\Ö\"«\îO¾\ä\ë1\Öu\Èv®e\ë!w¥\é.ôd»’\ÜÊŒn± aV$k\"}\ê\É\Ö]\É*¶\Ë*2Dh\Ù*J²\î_\ìTûÑ“Z]*\Ö\äEHu‰\Z¾\äûÕ“®%ÿ\0dª\ãú«T‡jHt•d6F’«%\Üu™/ª6:\ÄT‰…X‘«\îK¾\ä\ë!\Ö}\Çz64Cµ%YVC-VH•eÜ›£b…H˜U\ÈÚ¿ì“•Y:Ë¸\ë‰Ü$H‡jHtu‘*\ÅU’-û«v\Ôw\ëG\\ˆ\ÜT‹0\ê·q\Ö\èmõ¬»?º\Ë-G~´cd;RCİ¸û’TUd‹¡\'®\æ¦\Å\\\ê^n…DB±HY¥\äJ\İ+.\â’,õ¦”»e–Š\íI—BM\ç[²ñ¥\ä^5m\Ó-Å´Åš5F¦¥\Õ\"ñ:6®‹\İ\Z£¡´\Ú3fNš–U»¦U\È\Í\Ö\È\èY\î]{Y«5f¬\ë\Ã\Ëv\è\Ïà­»ş\\-‰—…3¶\åšfŸ—e½\ìÑ¡‘kûŒ½\ÖfZW4^+ä­½x\ïÿ\0ÿ\Ä\0)\0\0\0\0\0\0\0!1 AQaq‘¡0Á±ğ\Ñ\áñ@ÿ\Ú\0\0\0?!\Ï)ıöDıŸ\Ñ?gôO\ÙıöDıŸ\Ù?gôO\Ùıö/\îŸ\Ï\ä\ÓO<ó\Ï<à¢—‚)¢˜‡R3\åı\Øÿ\0¶?\íûcş\Øÿ\0¶_¼?÷aE·¯P\í2z„^\î\Ñ\Î#ô\Ï\äZlz±ş\á\'ÿ\0–&\ß\È/÷\í±û\ã\Úù\Ãÿ\0xü\ÒN$3Î±UB|tÊŸc[61º$‘~8JA/{¹\Ë$~ C!1\ng™‡–I9d’IÃ¡\"ˆLq¹Z\Ô=¬P%‡±|	\ŞL¥”\ï€QV<Ğ”E 5cB\r	\"K\rˆP‘1†\à…#)½ˆ	F*÷JI¸\ØDÉ‘F+\ÓÄ‚R¯ü&A`\ÔC\Z‡2E‚bbd\\gN\'l@€\åO¨%BDŒ\ØI`\Ö%]d‚efü‹\ã\"\ÂbB$\ÆÍ±JQ„)›rõ€˜\Û7at4\"(¹rO\'—H\á’\ÃI‰–C&\Å\æ4¸\ĞC\ßã‡¥=\Ç\à]›\Ømk\Z\èŸd\r\à”hH\\zgA¨7zs¨¹›˜½\rpK±*‘¯)$ŸÌ²ø!¦!fZ\àb­\èn\ËQ ›´ß“c\èV#„¢,A\×,B\àş†\Ü[\ZM\ÆühˆQ™\Zşÿ\0‰\Zš\â\Z\å#Sz85b\r\Ø\é%„wQˆ\â¿+e‘!r\â}E´x$\ÖM\"Â””k\\œw!cü!~H\æÎ†$.\\Ás\ËÉ±\è46U\Ô^dƒÀ¬\ì/ÈŒ\×\äXu…\Åc=\ÂQ\n5‘\ÜD (8-\ĞeD¸-7\Ã4\å\"|¤‚2ù\Ô&\'‚äœ”B›c\Øö ²Ğ\ru\ÊX†\"x²†\r+—QqQ„ˆ |\Ze²s©6,\ÖRTX@\Ã\Ğ\Øa*F4!\Ş\Ñ-4&,¢£\×5\Í!e¢ w—\Åh\Ó\à#e”„jğvm2u4úaú0wcit\Ğ\'D\rË¯\ÂXHFğğ…‡\Él/·Ÿ·‚%¨¤È“¡6¢\ä›< pcX*Ë¨™9‰YE…Fo‡ˆ\ã§¸¾\Ş:+.üb‚y¤°€õbA\Ş#\r\ÔiŠ\×\rš¡³‹M¹¤e`Ÿ*\ÑõùtAö‘¹C\ëHˆhú2K£##e\\O©kÀ‰†iH\ï\Z„L¦‹™m‰CX¸5$„„P\İ\Ğ$ô|»!3Mò;›5HC²\åô#ÿ\02\Ñ§i~‘T”¸†\Èaôb6µø}yj\ÆÂÉ¤\è\Ç!Ğ¨ZpŒ\ì]ôG°8.„;\']‡¢­Q¢NœÙª<+\';2J‘\èN4DˆÀ\"*\Z¶2Œj$Lz 8‘>Ì¡R!Y±st2‡/\ĞrW\Â(ŒŸÀ‚\ÏbJ\Ğk\àI?‘\æ\Û-P•ap\ÑT^„\Ã:–0Lo\ZHQ6N‰\ÖU—ƒ!DR¨Hõğ²\Z’6t64óv{¡\ÊW«gò\"´K\Ğ_S$É\Å\ØÉ‰\Ñ\"\ãyA¾£\Û)ğ\è\Ç\ÔSD\È\âX4\Ü3F\ÃÃ›\ŞNƒR%\"9\Ì>£‡¢;ò-z\Ì\è®\ä.PØ²ù#^*µ£\ãI\Ş8DjbY\í.±¡cJ(„’@\×&VwKÕ‰Ğ¡‰k…\è#\İƒcI5x?Å„¡d1¡\Ú(c+.Jƒ¶]…–	9urheY$!ŠˆŸ\Ğú[\Ä~l‚\ëÀ\îiœúˆZ-·°P°\Û\İû˜õ?a£Z\Ä<løq¼†\Ã\Ğğ1°\ÍÆ4:x=U\ÏC!$‘ep\ëÁ /CG\Õ\ÒP–%m\á\ÍöO@•jZ,±p¬+÷\Øyš‰°\Ä1×§p­.\åh‘~„	rb\à³}LN,IXğœe£±‚\Ö+‘e\Ó\Ø%cCA \İ\â\"\ï\È\ĞcÁ†³A%\Ñ4…ÜI2¾\"pøo\ì\ØM¶±R$\Öh%\ÈH\×6ó!.‘K$)=šCI¶n¤\Ê<5\ç`\Æ5ƒDi5$™b\î\'ØªMÁ?‹¶GÈ¦~A$\ÆÕ¯€\İ	‹\Õ\ßfC\"\èL‚\äe¸±‹Q\êjcÀ\ÙN-¦yi\Z!\Äù$<˜„U\Åapjv8›^\å?\Èw\äQH[©Bû[Bœ\ë\èc\Ğ\âÀ…•cw3Ä´@1HU™\áDXÅ¼7ŸA)ˆ‰\ä‡B^¡Obr¥bKYC\"™†O¼y1Ø¨/ {8c±BÈ°‹|6„]˜HHJ\r6UA¿\ZN#\ÃMøFaY’D\Ö“m\ìDQ‹B (”Ğ–!i\ngc–\ÈkC\éeyÚŸA\ÂNK\ZpN5	Œ@u\ÜzTL\á‹k5q<47C´=}Ø¹¥,\Ş%l‡BY‰á¿‘tI\Ñ2\êuBòL®\âıH8u‰.\å\'û¸‹C;	84BX–œ§CR=Ø±,È´›Æ³W#sH\ÎøZ£¸¢¼\Æa= IŸB\çL\nHp*LŠö\nT“!A®·«f\áA“Óœ´ŸA\ÄW¤øn&\ã ¥YQ‡\é&œ±¬É”]!\Zi\î\"`E-=MKø\Ó¦%KôB‘\èå‘‘‡-	˜}Œ‡a©QFš˜‚¡@\Ü1|‡‰ò6IH\æ·VuXŠ‡°‡•F\ÄR\Z8\Ó\ÃI§?\ÖE@\Ğó\Ékù?\è÷šòX\ï«$FˆS(õ\r\ï6\Ç¡¥ŠaS\Ù\ÚÆ‚\ÔLP¢+5RŠ*‡¦[\Êe}\Í#ü‚\\³dp¼z\Ä<‡¢ñ\"^‚\r&°Emgh¦²;°\rkn\Ò\'^…]%\Í\î0š©\Z]^ñ(\ì$¿ ö\ê\r	@\Äû/Z$	hœ\Ù&o±\è;‰:\è‘\áØ›‰9\Z&>G±\èa®4	$l¶:M•o“©†ñG \é*†H\ÜY\n­ˆ½+\É\Ä÷d¨%qô‘\0X•²®\'‚T°‘P¨\â}FBW\n\ïdºh\Ï9L»G™\â^«Á\İ\r\Ä€š•,‚a»ş”Æ¼\çBvºu™\ã\0E3bˆšT\ÌKš€™gyù¡x9² $ú˜œ”¶\ÈK¡¶O‘CR…ˆ[$„\Ã\èM®Ì¨\Z¢„-¦\á!I\é\Æ\ÃD·c\î%BD9ß‚\Z“Ynõ\âÎ¤bÛ‰\ê!v!\r\'\ÔP”3%c+\İC*^a\ê–Ğœ‹öú\Ã\\±	-\Z1{e@hW¦r(Zh5\Ñ~\ãi\Ñ}\è3Œ.|0\îp—Qa‘´m7\×>÷Á=sl*=Zxh‘F =\æ\î1+A84uX5&şƒKDÄ„–(JD-u±D>O\0dQ˜¡ŸV]7L_\Ñ4P…\ät_œÑº.f<lõ\á	^±v\á%’4±b{a`x\"PX\È[bşH«Àxz*$+Rtc\ËFt\é\ß-\rÍ‹\ã3.geŒ‡\Ü?›=/se—\ØÍ¡\éX•\Ù\ÊÂ¶tÑ¢l¢`ú\Øğ‰\':’S?iC¦Ì¢·rw\á¸Rw,=\Ó+\æ\ßQ48³|b„Ã£pşl¤«ƒ±À§Pd®¯\róğş¨ş¨òO×½\ä>®G\Ú\Ã>\áO(ö\æ=´u|ğ†û9B\ãb£\r\Z\Ùm+\É\ZN\Ü7\Õ\ÅHŸ9÷\æ\á9\Û=rn>\é®s	Î[\äT&L\ç>™¿kûƒG®+\Òc\Ô\Èi÷\ä}ñ¥a \î\Èy½\ä¦3\0HF!\äs+‡£M\å¬÷\ç\ìqÓ†\É]†û3\Îs\ë\å:\î\Û\Ï\Ø>ğ¶\ëŸüÙŸlDŞ¡9±%)°kbL÷´m\\\rª#€J\Ş\Øñ™n\Òf•¦e\Òr‘È¤AF¢^]·Ä 3ÀöÅÃ•~bZ·µÂŒúùKLõcJœ1\n\Û\ÅF\ä\êJ\îF\Ê{‰]\Ç[²=[\Ö\è$ÑŒ­!% \Â\Úbr]“\ÜF\ì>À!\ÎMmğJ\î)2\ä=\ÆP%wC\İ*D\"\îJ\îJ\î…l\êSZ¢\Ò5xn‚„D Cº$-\Ä !;‰šhor\ĞP´=!CT\Ì·!+¸\ë\Û@™{‘N%>¨\Ú$Ç\ì–r\èW\Ì,]\ä.†\Ğ\çjd\n\Ã4V\Í‰|\rŠ;`\ÓşbŸ‘%0-¢z`B9\Ğ\ä÷¨t“	Kˆq.£Pn\Ã\r2M7¬gªbR:‚\ÔJw2Gò\ÍG¢C\Ğv\ß\Ü1)^¡\rrb±N\Ş$s#’\Ôv\Â\à°ùX7‚ò5\ï\çÏ¼s~Ñ•0\ÕØ»C’—\ĞŞ®\Ö{á“	\í3\Ô/Ygòy_\È\Ç_±²\ëö>i\']LP˜pS\Ğøyhbr°¸,,.ø™‰-¡\rp\\\"3\ĞxqÇ¤3j6`ŠFU=,…\Ùsó‚i\ä%~OO\äMş\ÂÛ‘õQ>¥º“\ê\Ä>û\ài\ì=!\Z$2x.=y6n$1\ç1§q\"\êE²Œ~\Ø\ì–Y¹“·#\í³\Ò\Éö<gŒ“Cj\èz\'h:‚L‘4Z‘]…ğ™ôAÑ«‘óB.²±<Fg+ŒñgI\r-˜å’ò5¡¿wS¸ş\Å\ä\Ä÷\"%D.\Ä.\Ä.\Ä.\Ä.\ÅgC\æ\n‰\Âp-$( Z\Âwø\'’r;\ê\'øŸ¸x¸…Cx\Ş,\ÉóL¢;BCˆb\Ò%‘Ş?°•¢ÀyWHˆõ\Ë\Z\Ñ\ãF0\ã>ÿ\Ú\0\0\0\0\0¶\ß<\Ç9¨GÁşÿ\0¨b¾\Æ\å:¥\ÚG\Õ:¼­\ì\ÆLg5õ9)û†\ëUó¼Â€c&¹dOü„e?\Å­pc¿úĞ“B$xüŸ\Ê\å¿4\Û8ùun\\\Ûûı´b6‹Ÿ\Î\Ûw\Ğ+\ï\É\\\Ïûÿ\0\ï\é=‘<ğ9\Å.™Û¯oı¹\Ïû¯¿\í{€üo3¦\ã>ôûƒo«r²~ó›T­bK¼\Ï`Â7g\Şÿ\07\ï\áa“w¼)†².u¬¯?\Ñ\Ì-E\íõÿ\0ù\İÖ°D&T\Î\'}X7t?N­\İı\ïBš«X\Ô\Ó(:\nC¸uû_	\0S\á¼?÷¦ ÁWÿ\0<\ç$É‡¹Oƒ\ÖÍ†R\Ï\Û#ø\İ-ŒıUaS\ß\ä\â\ØI\äPQ	©î‰´Í¬•Rs7hÅœ\ê>%m\Ğu¿h°ÿ\0_±v\ÂE\ßN¦W\î\Úeº—Àn×¼sJ³o6^y7I\Äc.3ÇœxËº¶\é\Ü\'¡ı»\Öÿ\0ı­\Õ(\Ói-½Î²„6\Å\ÂEW\Ôyq\ÍK•˜8\æ_Šú{\ç\ÍgÓ\ĞD¸?·>ğ¤`õû~_<l  bÄ£@¯\Ô\Ï2jgöcğ´3GÍ¯‡M\ß£ŸñL\íN«\ÛÎµm—»Š!Z§Àq0*M2¥ÿ\0\Ï=«\Ñ}±t	Z>cı\0¢\ç\Âõ\Ö4\í¯7§D¶iõ¨Ÿ==«;€F!T—² <¯\"[ŸV\ÜWŞ·\ÉPgº\ä9õı\è½û_hp7­\ßzl‡k\ä¤+u_\êÂ‹N&%º+\à&TGµo`O şb\0\0\0Üº/\ß\ÛAûÿ\Ä\0\0\0\0\0\0\0\0\0\0\0!1 A0Qa‘ÿ\Ú\0?_\êE—\Õü¹Sõ\ß\Îşwñ\Ó\rõ;ùÚ¸\Ëø¿\Ëù?\Ëù?\Ëô\ß\å\í\ÂÓ¦¹6ñ¿¥¯\İı/\é$”Ğ¿Jgo¨fı¹ı\Ö7\Ñ@>¯¹#\å\Ü0t%¤p\Ãw^GÙK]øúQ™ğ%¿…\ê{c(À\ê[D<Ÿ.…™ø·–:Mu?«\ì@\á	\ÌZ™òZ?.Á3À\àu±\îş\ÈGh\Î\ãrV\ì°ù¥\åx¡»\æXG16¡~_G,$¼®M[1ğ«\ÍÛ…\æ\Ö,h\Ó~K3ğ¼p\âĞ·€v{\àj›²óÁ¼D„:O\är´\à\rm9û+›9{>\æğ˜ôı\è7Rok\ÇÀ3\Ş\İÏae¡,Kl9nİ¼–\éÍ—}¾\Êõ›\îf\ìŸQÇ™\ã¦gòtv\êC½\Ü\Ï\ãÚœ\"#zöôŸo‘ºF\ëOÇ¹h\ÌW§H\\”÷\ågjm÷ø\æ\Ú0\à^N\"\Ç>ÿ\0#n6Ú“ğ!°œI÷Å…\ìşd\ë3ü\Ï\äs\ÏÀ\ÖŞ‹³ù\ä\ïo<O\â\Î/Ÿ‚;%¯\å\îû¥êº‡\äX\Z“6Y\Ö0iÀƒ.*zü–yG‹=C\ã–gf\È=@\è9o2\Ö^\â\ŞŒ’]~hsƒDû„)\\lC?a»\Éa2$k–N6$fB$w!\r/«/vñ½—Xvê¤Š\Âô²\ã\Ï¤Lû—\\>’Áo6o–oL»Ì˜İ›ƒ\ÖÌ³8l\Å%´0\ç\æó\Ã\Å\æóy\ãö»ù\Ód][¦¶¦\İfÁ}\ï	1ƒz†9\Å&)<…[û\á^xx¼\Şo7\ëAJf\Ä.3\Û\Äzñ\ç,5½\ã·Hû\0y\Ã8y‹y\á\æñdµ%\áwm:l{^fKœ$ m$l-\Ú_\ÙÁ|Ô—^3±¡\é´.\Äò\í\ä\ãai¶\é!\ÒFJ.ôZtƒ&ixc#\ÎN¤=†²P˜\é.\ÄCön\Æ\ÇaÔ³¨ıQ¿Kodh&\ÈF9->cz\í\ÇIVƒñ•:\Øòd\'ûx2û-xƒ4ñ}ş»‘Ã•\×/m\'\r\á¿ÿ\Ä\0!\0\0\0\0\0\0\0\0!1 A0Qa¡q‘ÿ\Ú\0?\Û[[Y[[V¶²¶­Zöú’O·ô¿¥ûV¿p\r[d8\Ò?\\ş˜ı7ñ‚A\í—5„‹‘B\Û0|ˆÌ“~\ä¥ghys„­¶üõµ¿l \Ò¹V25\ä*ğ8œ‹\×\æ_S“˜\ŞJ»ºG‘ùY?\äñŸS{\æqÓ<\Ìõ=\Ç\áfq\İ\É\à½~os\äó÷d\ì]²9,»	øl1<e\êp<{±³\Ì[¼ÜŸx>\r²Üøxõ>O‹\ãÀŸ„û\ÆÓ«Sµ(³!HÂ‚<\Ã}^\ì\İ\àŸy{$\Î|,Ye–Bù\Ã\Ìñ÷{#œ	÷“\Èd4\Ã?3\Ï§»\×19uu(\ã¶?üK.\Î8,\ÈAÄU’|g\à\Ó\Û\ê\Ú›\Ìñ\Û\Ü3‰\È\ä÷Áø\á\îD\àñÈ†°\ÃÁ\'\r\ë€ü&-\Ûe¾\í\îñ\à,\Æú–s\á\Ã\Ôy‘Ï•˜aòg%¾¹\×2n®4\È\çä½€‹Ó©N§®\Ø\ã®W†\Ã\Ê3f\'\à\ÒfpO:\í—\ÔÀ\Ö\Å1Äie\î2w5˜B\ëÙ!7µ\â†o)¼Áˆ\î1\Û7ŒsÖ‰²	ƒ‘\î¼\âd˜Rb\ê|\ï\ßÃ•…‹S\É;\æhb\"\Ü\İÛ£­˜§mÉ¹öŸy\ë\0$¬/–¢y6\åPı¼Zı\Ó3K#\î—ùRú²_\È\ì\ê¦\Õ$ú\á\ä¼\ïò^|~·½\ïÿ\0/x’\ï(şÖ™.‚\ïÿ\0hø9pş²\ÏG	ü²\áL_,¹\àGşs\Öõ½¯{»9|°?pK0\ÏûFşE3|M£\î^)š¶P¾\ì¼Oüœh\ïs¨‰W¹¨~\í \Z\ß\ê…!:\İ\Òv;¶å¬¥Ş½²¾¸U¯QÀ\\\n¿¶Í“ivµõvıR.»gŞ›·m‚‰RûOm—\èg\â[.\Ïs\ä”v-x\ÈûºZ\âk÷\Â\ØwgDñgœ™KFx\åú\"\çÙ“öºZp\ØE\Ï\'H›l@^\ì\r\'Œ\Ì‚>È²@yG¨Ş¸ÿ\Ä\0(\0\0\0\0\0!1AQaq¡ ‘Áğ±\Ñ0ñ\áÿ\Ú\0\0\0?h\ÓüwŸ\Î~\ã\Ù?ÿ\0ù(\0\0@\0\0^\à?ı\Ï\ä?sù\Üş#÷?˜ı\Ï\î?sû\Üş\ã÷?³ó?²ı\Ï\ä¿sø\×û,¯\êû\Ç\'ñ}\åñ~cı—û\n\à}\Ò0·[÷(_\ë÷(\ïşû\Ï\åÿ\0sù\Üş_÷?—ı\Ï\åÿ\0pkùşñ8şÿ\0s‘>Xª a?\í)8¼\0ş\æ³z\Ü\È~/úE±®_\î4/7õ¹d\rş¹‚\Ô\çûÂ´—ı\Æ~ÿ\0ûG?®òÚ‡ ı\Ë\È—Q\Ü‰_MË—¥!)(\ËúB¿C©^%¡		p\ë\Ä\Ûµ8M\Ê\â!j\0h\Ñ0\ry\È\Ì}p\Ô!@ó,¶\ê`¾HUÿ\0²\à¬\Ë\éIº=\Ò\Æt”úfX\Ê8\ÜC˜ÑŒ\á\"\\D4nW8\"Z*,…ñ/	0a¤[\Ä!£tf§¼Ç \Õ,ƒôn˜9€¨Ê´nI‡\í3‰\î\n„´\ÂÈ«\Ñ?3)}\Ì±´—µœE\Û\í\åæ§­gr\Ù`¹k2ªQº\'ŠxET0ªX]ÀNÇ‰b\åœF¾b-\Z\âa%¦¬FÕ‘Sñ”8\"¬\Ìtsô†TZŞ¥y}T¼…\æ\'Q¡\ç\ÌPf&,ñ\0b‚†#\æ!½¡›Ü”²,#QjU²Ùˆ\"“.\Ğ+¦¥“ü—.Y7	pbñ\Ô/hôkØ”8#N\Zg\ŞMKq[šWh£™¦¨I¸#ó/¶7A‡Ä¹x\Ì\Æq*ºµ<Hô¨© Ä¼!¸2¡y…**‰h\ÔAv÷\rxƒ›\0:[\é]J•*ºs7ˆ\Ô.ñ\Ğq1o\Ñ\à®%+	v%pu\ÌCO¨†˜Ñ´¼­W•\í™Eû°jeNTn\ì<BXU\è\äôJ\×‚ Rh›­Ô´¶[\è\ÒY—\æ5üK4A\Ê3Q¼@¹„J•‰X:\Ü½\éw\Ş\'¬‰‘e\"Ã¦ù´MZDz\Ôã…­#S\Ìø\Ó\æ\Æ\0EE7‡?Vn\ç>\"@Œ«Œ ·-»–şeÊ¼ó\Î\Ğ\é´õ¨õ4¨b”°€ª\ÑmeÕˆ‘® V\Z†œ\á[Šœ»\ÚfŞ«2=_\ç\Ş\n8Ÿ\Z|˜\éŠ\ÄxA,V²ùé››tw\Õ\Üt\à•+\â_\Ôx›Ea6#2·6\Ãgi=ú{†Ù«£8L7~î¹œÇ†(2\â¯D·Ş£:–×‰\ÍJ¢UÆ§ş\Ì^!R\åAe¬.0‰˜ŒD›Bó(\Ë9\â\nÖ¥Y.~ \ZÀ1\Ú0z2\å\ÍYp;°†JÏ¦fŒ2\é;Eµ\ë‰ñ¡üı1ƒj#lk˜Ig\ÄU&¾½³kQóö@©XˆlœÀ¿©€\\\Ü	KÎ¹œ\ë\\NŸú\ÎP\âZ+ú=X\æ7x˜&D\ç>4D\×–·¨S\ß\r\Ãd\\\îK„©¹8úˆr›˜f9\Ï[¨.qÿ\0€uu0T6ø¯\æI¡9Mz°o_¤¨1‰ã¢¡aªƒ»©‚\no\Ä´#\îc\ïWy–\Ö<’÷õHR›”°+\é,_×£\å\îI¡9Mz²Û±Ÿ%Æ¶A\âm\àF\î\ra9–;D4§¨CŸŒ\Ím¸\í·,TH{ˆ\åõ®®¡†\ßT\×E¨6_WQpJƒ`e^ŸJ^&½t‚]´šh6BÊ› r\Å\çxK”\ÆØ•:Q2‰g‰g]\å•uˆı¶R#õm1y\ê\ê\n\Õu˜\ÌA—}Y\ë£+¢b*™¥/¡•jğK˜”\Ş¶	ºU*\Õ\Í;&&\Ğ`»\Ék¤s»¸˜–@+w‚U*$V%/ÿ\0˜m˜3¾–L¨5\ÌU\çCmD¬;:k\nt,\à‡\ÂZõ\ÄÜœ ¯So¡)YuV  vƒC\Ún†+Ÿ&\Z;D\Z\Ä,üP):}¥(Û›‹B·¾N\Ò\êffQbÀ\ç¥3\ï\æ \Î\ã…æ¢µCF,\Ë\ÄZ„ -ñ(iœ¦h®…}o)0\Ô1‚ôµ{Ç‡©ux…ñ‘\ìC\Ğ[/\Ãu™e¼ô\äˆ\Ş5\nø™\ÄÁu}.¥,,z\èÁ\ÌeA\æW©t\"–P±[\Ê $7cß¡\Ë\0¨—*¡…u9NLó×¹\Íp‡aY²=-°ß²0i1‘_K\ãK\Ó[„\r1\Éj{L!ô\ÖR¼BZp\\XA*8²\ï \ÌU\Ü\"@¢¦6\ë˜Mñ\Û ÁK§\Õ\îP2BSˆ\Í^§lX¤J\nŠŠ„J	\â-\Ã`÷‚uû!3Ù›#¦j\íô*P”*CK\ã»\Ío@Fg\Ü	\0‚\Õ2\Î\ĞTP>¢‹Uû\\\rO|E¢‹\Ş!¢HJš­C\æ\â\'9™½EY#\È\Çğ†\ê\'i¤\Ù3b †júD§ˆT¦˜«\Ñ\Z‡$v\Üt Ky\Û:Eq\ÜCø:/`Q|Hå•n¥¥R\ÄÊ½bÁ\çªs\r±\Ôe3)U*™ó¶\ïQ\ë/ôÿ\0‘3Pxª˜5	>ò¤ü(ü\"Àg\Äv{™£U1ş\ĞóP\æ3©\àSŒKMU\ÂÁ	‚\ÉwLŞ¹bG!\ÈEÀ‹¨\îk3\×\æ\ÍP~8\âxE¶<¶S˜-üt\nn:&Uka,˜À{ ÷\æ;EK·r—D°Õ‡0¤\Ù\0Xë©‹\ÏC2¾‚\\_eûOş\00Û¨<\ÄÁUA²\â”\í/|\ê€\Ëx\év„Ûª¯d\rüAsA,\Í*\')\äK‘\íu8„Ä¡u6\Í\Êv±p@\r™\ZTÁ–™idy\ÆjÃ™vZ\"?Î£‹c6f\"\ÊXf\ÏBĞmQ\Ùx\\±?+\Z½\ÔÒ…tK²=œŸ”\Ë	Ÿ	|¡\î\Ì\nÁK•\è‡$\Ù÷\ÕXó\é\Öeÿ\0¼w5f\Ò\Ë1d±\×4ñ+\î\Êv€\Èù7!yˆ^7\Í	\ÅN\Ñ9\åÔŒ#˜V¦1\Ñ	|&=­ \âXMü\Ï,2‰u}oP)Ş „_y¹Vz\\*J”Ğ‚›¢*€}\Ç¸\ìE–>\rL\Ä\'%·\0†š%m\\\nx€Bp\è†ã‹€Œ0\æI¹\Û(3QºG©\ÊjA\Üü\Ç3ù\Å~eº7MdA.\Ğ\êQ\Ø\\\æ:WY‚‡\\\ÌøğRV¨UJ\Z ²\nTº`~¦q¶ñ.{+õ˜\ÔÂ¥¼¯@†Yj/1ùœ£¸\ÛP ~¾#3”\Ö8\ëª\ìba~gy§\Ô\Ò·™`34z†W*K¬ÁşÄ l¿,2\Ì,D‰ø`B‹\âåº¸&\à/´ô,8ô\\½Cg†£—./R³ÆŞŠ\ÏEˆP\ĞT\å%\â\åAœ¡ÕŠ«Šk€\ß!€÷\éE\å¸Áq\r\r\Êb¨©¨Qè¨¾\'\á†º]-´„E0¬;…Á\à—–<İ£QÕˆ½x#§d\æ¬E\èf\åÊŠ\ŞH@Gdhk+P´Ş¥1.B_V‘\r\ÈbbÀs\Zx\ÔAh\Í£˜®³.–Å¥…ÿ\04¨„+„—¨¹#À‡ˆƒsD\Ğ\è!nŞ”A/µUbl˜¦X¹pj ¥Š‹·\Ğ3\Ò9%œô^Àõ;Dˆ\æ‚Á–iM_W\Ê\él[}m\Ñ\ÂÁ\r…-BôS¼2póˆ\ÓAO¸(w\ÚZ” p\âªQ¶\ÖŒ8—7&\r‚XpEt±:™“»q¨ò÷-Oh\Âù.\í\ZE7\Ól\ÚiPN†¹\æf\"\Ğ`%\Ğì”²™³¨B\ÖqS\Z…sÄªzq.†\ÒW-ğ–¨ªò@V\Ê\ÛCø›‰a Ä¡ª\Æ) Z\å\áSF<»Š\ê\ÔØ†\êÅ¡†ğ\â.K\Ù6G‹Ì·TùQ¼Ş¡¦{\Ä\ï\Ğ.¡·£§5a²\rŸ¾&É˜ğC`¼C…igkˆ”\èLn8TUÊ§\è%Às>Òƒ\Zn A@fñ\Z¨7Ù”YB‹\"Y-\ï\Z‹\nfYc]\Î\\¡!¨\Â#\ŞvBªS\ã`Œ\\#¹q\İû©»\ÜRXµ¹Oz‡™\ç˜4ô\êš3I©…=úE^\Ù\Ï3 bó1B9ù…8]\à”KK¸ø\è\×\ÑkE®\ĞL¶ó‰Sc\æ)\ÄC•\Ğ\ÕÀnN`ñ\î\È[¢\äÜ©U_ˆ;M	±6\è#\â¼Á»š—”rÄ¶<\â>üøò\åy˜¡œ0*Óˆm#Sı¦‡An11\á5\03\0\î\"i‰Rj8\Øó6\Ã\í)\ãQ»K\Ë\Ğõ\0€OR¾}‹\Ã\äÃ±Yö\×)e\Æ1Œ9¨a45O\Zb0U\âVò˜\ï\Õq–%»œ\0jn`\Í\ĞXùP\Ñ(¯xŠFi5	\íó}(^a‘\ÓMºuÅ‡ˆÉššˆjQH\ÓZ‹}*]e\×2šu,·|³P\Ù0.%t/m=·E‘TĞ–¢p£5“ø„\ï“9€C\Û[\Ä58\Î\åú„LLeK¾eí—§\ŞP¹\Êô ^e\\DÀrc}>to\â£8z6™VúŸnYg‰Ÿ2„¬mCˆ\â\r7\n_˜§´¡SY‚\ÜE\ÙÙ¬À\0\×x*’ğ›\ç˜#ùP.\İ5¸1;y¨†>7:8\ÌF[M\Ä†”SQz\Â[\ÉM\ÔcˆMº‘hX³\îÀÔ =O\È\Â\áTÚ§\æ0Â™KFe¦z|\ÉxczNcY7œj\Û\".œ—Ò­—c-A}CŒ‘1œÁ±lbZ\å˜]&ñˆ§,\×Kh„ğ6MN.\æf\Ğlƒ\"˜*{\à‡\Ô\ÉV¼Å¥¬\Ê +š€\nÿ\0&\Ğo¬T¦\Ò1\ÆfˆŠuy”]ˆ_\Ìÿ\0\îM0@]{U³\ÏE^É¿Ñ‰w6\"Y1`s\ËTÀQ´E±\Äk‰ˆ ÷^!9Š\è‘\Ğ[g-\Ê\Ô\áJ‹\'C1+’A®Ñ°\07d[0OhFŠaP‘E‡\à`V°\Ş-€\ï}&Bz¸-*Â¡:º‰!¨ja|\Æ^U/^s/K1rğ\Îcl»\é\É.B SŸ\"|>¦\ÙH\ãeF8\ÌlR\Óq\r‹*TB¼\ÇaoEÁ‚	‘¾ ö‡\Ó,2µQÊŠµ¸±s­0°¥\Â ø†-L(¶#\åö\æ\r!¥(·‹4š¶¡\ÇvÔ¾(ô‰ÿ\0\Å-\\RN\æ´ß \â0œ˜®!T\Ú\Í\Ò\è†õñ\Ê,:n‚©–3\äO‡\×\ÊB2²^\î|’\Ö\ä½\Ìl`$\0€08%ª€,\à\É+qF\r\æ%syTŸ|UÜ¸I{AšÃ›÷¹‰>\êcˆe\Ì@\0¡®GQK¶`B\Z\ÏK;	rf\á6´ót§¥B2\Òg$(#÷\n—ü\Ä6•afa*F\æ¥\Çx- 7s\í\Ìô\Ñë ¸\å\î;gÈŸ\è„,/\ŞqlšúQ¯øÀ¢\ŞPHMj”W™zN¼&@\àVº¬¼DaN\ÈCP±\Ä0»\Â^\ék&U\Ï\ÄJ—WÀŒ•˜ñ\á\rp#Ş£ªm\Ìe™Â˜!Á\î\Ïş¤ª†\Ç4“µ¹a™¸BV˜ƒ\Ü`Á\Ø\Äd[j¨l„\Ü(gK<¥R\é\î1\Ùù‚½qCs\È~z8\Çv.§ ~:´5B“\à¼Jø÷€\r~\è1U\Ú\àÄ¤~ğ\â£\Ì6•u¶VJœB\è3JKÁ\ÉkQz7Q\Ä9…Ü”*^Ú¤<\à[…B\Â	\é !…ó™J6µD;\\8J‚Y•ÆŠ-\î\ï\å\ÕF°\Í{¼\Üş§\Øó+b\Ê\Ä}\å¯. @óSˆ:*\Ü\Ã\ä^¬ \ÌB¾\è#²\âÛ:}±‹×‰G\Î8ŠÕ«fŠŒ`¸°…«\Ã%‡ys\É¢ød¸6¡\ßO‰¯t\ìEPÀò\Ó\Ş\ĞûDh,!PŒR›0\ÌÈ±³\ÄÊƒM\ËR«¯Ds\Ì\Ğ\rvñ\0y\ÍDy\n»Q™‘ƒ˜\\F¤\Ê$£±	•¥]E\â\Å\rK)ğJ;\ä\æşÄ£±7kS\ä%ğ\İ_2`´©\\Š#*`Ñ˜\Ü\n²7²B8G	\à~&\0¢_¸\ï<1„\àôŠ\'±\ZSy\Ì(\0}¥q\à\ÚEI*’^½FdYj‚ƒıŒÔ­*pvŸ+~R‰\0\0\Ó`š´•E˜4J\0\\¯Œ Ã•²p@\Ë\àôc¨b£R„\Ì\ÖX„\ë¥\Z14\Ôh*l—¥\\\Z¢ıJ†Ÿ\áÏŸ›{>$VC¸\Ütº\Ã\×b(` o=*FP€¥²³Ip%\0\Ä\nD°·„A3Du !†#N\ß\ê}¹˜f\Úc\Ôvº—;_ó\rO‰@6½\r¨!Z?ò:!³‹\'ƒ`ónµ\Í@\×T¿O›(NıQAT½\ä\×AK….\ÜŒùù·¹\Ót\ãoÿ\01\0Vk¢lŒò²±X\è£|¥·S±(Ó¥\ÔE¿\Æe¯T£7\Ğ6ñ\í·Š\'.:6`r—–#ü¨j|IeT“Ğ–Cš\Î\ØÄ°ôø°b.óBƒ °Ÿ}MQ\é\Ë!®–\î/?\à„g\ÎÍ½›\æ À\0«}B\"¥\Â!@®ˆ„Ÿ*+Šªº\èmh\\nzº+\í\ë&‘W½^È›\èQ\ZB¶\å\rO»²ƒ\\.;!…²D2\×\í.ÿ\0q,+QJ¢®kD@špœ\Æ!…\Ã>$z\Ô5Ğ–\æ“\ÙGøC§\ÎOô:n\Ş>\Ò\Äöfs\Ós\ÑˆS¢qª\ÍC*\èw\Ò\×zªüñl\ëZOŸ¾2WLY¦¾Np\Ôø\Ş\í ¯FÉ¿õ—°\Å\ÃQ¥š`\n\á¸\Í\îU¿ª2\'j™¢Û¹ª=j\Z\êœOğ‡OŸŸ\èuJ½¸¯\ít\İ*\Ó6\\S<òX®/py•n+”—n\î\àõ­\'\Ï\Ë\ß*W!¾¢7§ÄŸ?o~›\å³wÿ\0‰J8´\è\ë\Ó(¿v±	¥¢ó(-O#J$\ÕÑT\n\ç\rt¦*°L\ĞxõŸ;\È\é»\Ôü…)Uö\éº‘øt(Š:\éU?»\ÏS_š‡OD\ê\n÷\â°ó‚u°.q\Ìfc1&§ÂŸ?--@\0bG ˆ‰Šh\Î|À\ì–Q/c\ÓiªÌ¸ 1œE\Üm\åI\Ğ.´«\Ûc”Ê¸œN\ÎšŠF6\Ü:3\Ê(\Ó£­\Ä+k]7LÃºŠh \Ùcpªc0²\İ@\0*&zg¥\Ï\îó\×şWK\İD\ÄÆGR\ÂQ’ ª8\\ÀCh{\Ì\ÍBa•Ô”iùš]\ã\Õ[Ç2J\à7\Ş`^˜ù!T\0=\Ô@º¸¡°Õº\Ä+}D%t\×*(˜¼·˜Û°ñD\n!}\ÓÀü\Ì)x\âk\Ç+&\äE?\é¥\æ=\Ù\Û0£O\Ìÿ\0\ìFbc¾\"š[\Ê ğ.®YÜ–ınV‘\è\Ñ?ú“÷\n\"¦ò\æ5T·\0Ú¦EG„e\è^ğPø˜ö—W€ˆLfQ¸ÀüÍŒû\á_t´\ß)d®ñ\áœ\'\Ş^ğ”e\â6[n8¾ \ÄU¨€OˆÒ…ñøm†¡À\Ô2¡òÌ³ÿ\0\ÌR\ÈH¨²\\ M\Û\Ï\àF\Õı‘-®,…oŠƒC(ø•1¤\Å\Êl\"\à\r¯i*+K\Ë3or½¹V\Í÷\á­\ÌC—;\Ä\Õ»r˜\Ê\ïF´\Z\"\Æ\æ\çlb\êQø¶Znn\á¨ \Ë\å˜÷¿Š/¼Î\nGo/–\\¯2\n‹\'øÁ\êšh–.Ç¡\İ5š‚‹|À^~%Æ¬[\ë±\Ğ_i\ÇĞ…q\éc\â>À&Ø°yK ¿œ¥ò•7\Ê\ËH3«\Ó°\Ë\Ìb\ÑRÇµf\àš\nä˜™ko3²e»_vv\éef/p³\"\Ùu\ÍÁ÷o´¹öÜ²\r54\Ãgh.x‚Â¾\'™\ÃqO\âZp\Å+,JÁ†h\èô0\ÌY\êna“q2|Ê‹P\è5\n\èM.–,Ò—¼rÿ\0\Ü(3ù€\á\ïÒ¡Y8ü+&4\ÄQ\Í>£C–!¬\Ş`Ø”\ÂQØ”v £\Ó\ÅH0\à\å©c£,˜ıŞ ^ˆ±\\¼C?B\0Ah\ÍCÚ¢\Ê8Q/¹\n@nµ\0\Â\Çh\Å¾„Û©ŒM+n•„¢9\İÁøµ)+üŸ‰e°fJJ5\î4Ÿ1\Ê*Ir‹wQR\n5¸yb*º_\Ôm\ç¹ûXW\äŸØŸØ€Z\äİ½G¿-Š\ì\Ô@ˆSw#SqFn\ãVLnR¢ª÷.(´v‰_\ÄN†¤§h\ß@O—q/0q\ĞE¨Z\"jiÔ¿´»oˆe¿œk¢\Ñ\Ì_’-ƒ9‡‡F\\6¯\Ä\í±\çJ´/-ƒ¼\Õ\îB¾ñòK÷qk	\à~\'ø\âx‰\à~%v\ÚY¬t\ß	.A,ß¢+%‚\0šp?P#@Ş¡“PxJ3@\Ü>i‰q|0\ê\Â\r¤:\èC´\çÔº—bw‡S\ÄW´\äuCc¸vÄ£±(8ÿ\0\Ğh¬\Z.Qó0G\í<\á\å\"	kˆT\ì@Wš•\âzx€†Q¢Ê€ T\Z°k7üˆ6Ô¾q\×ÿ\Ù',6,0);
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
INSERT INTO `tipo de pago` VALUES (2,'DÃ©bito'),(1,'Efectivo'),(3,'Tarjeta de regalo');
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
  `TelÃ©fono` char(255) DEFAULT NULL,
  `DirecciÃ³n` varchar(255) DEFAULT NULL,
  `Email` varchar(255) NOT NULL,
  `Nickname` varchar(255) NOT NULL,
  `ContraseÃ±a` varchar(60) NOT NULL,
  PRIMARY KEY (`idUsuario`),
  UNIQUE KEY `idUsuario_UNIQUE` (`idUsuario`),
  UNIQUE KEY `Email_UNIQUE` (`Email`),
  UNIQUE KEY `Nickname_UNIQUE` (`Nickname`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usuario`
--

LOCK TABLES `usuario` WRITE;
/*!40000 ALTER TABLE `usuario` DISABLE KEYS */;
INSERT INTO `usuario` VALUES (1,'Josefat','Villarreal','Salazar','2019-10-13 00:18:33','8127488633','Altagracia CantÃº 5405-2','josefath98@gmail.com','Josefath98','password1'),(2,'Ademir','Amaral','Arevalo','2019-10-13 01:03:23','8181848487','Hasta la chingada #855, Hasta la verga','ademir@hotmail.com','AkatsukiRead','password2'),(3,'Paola','Cedillo','Rodriguez','2019-10-17 01:52:48','8123989865','Constituyentes de Queretaro #41','paolacedillo@liceo.com','PaolaCedillo','password3'),(4,'Ana','Patricia','Valdes','1997-10-29 00:00:00','8123555566','Crisantemos #898','anavaldes@empresa.com','AnaValdes','password4'),(5,'Bernardo','Gonzales','Isais','1997-05-05 00:00:00',NULL,NULL,'bernardo@isais.com','Berna97','Password4'),(6,'Mendoza','Garen','81818181',NULL,'Password5','juliomendoza@gmail.com','I dont know somewhere','Julio','JulioMendoza97');
/*!40000 ALTER TABLE `usuario` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usuario_comenta_artÃ­culo`
--

DROP TABLE IF EXISTS `usuario_comenta_artÃ­culo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `usuario_comenta_artÃ­culo` (
  `Usuario_idUsuario` int(11) NOT NULL,
  `ArtÃ­culo_idArtÃ­culo` int(11) NOT NULL,
  `IDComentario` int(11) NOT NULL,
  `Valoracion` tinyint(4) DEFAULT NULL,
  `Texto` mediumtext,
  PRIMARY KEY (`Usuario_idUsuario`,`ArtÃ­culo_idArtÃ­culo`),
  KEY `fk_Usuario_has_ArtÃ­culo_ArtÃ­culo1_idx` (`ArtÃ­culo_idArtÃ­culo`),
  KEY `fk_Usuario_has_ArtÃ­culo_Usuario1_idx` (`Usuario_idUsuario`),
  CONSTRAINT `fk_Usuario_has_ArtÃ­culo_ArtÃ­culo1` FOREIGN KEY (`ArtÃ­culo_idArtÃ­culo`) REFERENCES `artÃ­culo` (`idArtÃ­culo`),
  CONSTRAINT `fk_Usuario_has_ArtÃ­culo_Usuario1` FOREIGN KEY (`Usuario_idUsuario`) REFERENCES `usuario` (`idUsuario`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usuario_comenta_artÃ­culo`
--

LOCK TABLES `usuario_comenta_artÃ­culo` WRITE;
/*!40000 ALTER TABLE `usuario_comenta_artÃ­culo` DISABLE KEYS */;
/*!40000 ALTER TABLE `usuario_comenta_artÃ­culo` ENABLE KEYS */;
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
  `ArtÃ­culo_idArtÃ­culo` int(11) NOT NULL,
  PRIMARY KEY (`idVideo`),
  UNIQUE KEY `idImagen_UNIQUE` (`idVideo`),
  KEY `fk_Video_ArtÃ­culo1_idx` (`ArtÃ­culo_idArtÃ­culo`),
  CONSTRAINT `fk_Video_ArtÃ­culo1` FOREIGN KEY (`ArtÃ­culo_idArtÃ­culo`) REFERENCES `artÃ­culo` (`idArtÃ­culo`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `video`
--

LOCK TABLES `video` WRITE;
/*!40000 ALTER TABLE `video` DISABLE KEYS */;
INSERT INTO `video` VALUES (1,'css/images/MotoOneZoom.mp4',NULL,1),(2,'css/images/DRIFTAWAY MALE VOCAL COVER.mp4',NULL,2),(3,'css/images/NuevoMotoRazr.mp4',NULL,3);
/*!40000 ALTER TABLE `video` ENABLE KEYS */;
UNLOCK TABLES;

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
CREATE DEFINER=`root`@`localhost` PROCEDURE `AgregarArticulo`(IN Nombre VARCHAR(100), IN Descripcion VARCHAR(255), IN Precio FLOAT, IN Unidades DECIMAL(10,0), IN CategoriaString VARCHAR(45))
BEGIN

SET @idArticulo= (SELECT idArtÃ­culo FROM artÃ­culo ORDER BY idArtÃ­culo DESC LIMIT 1 ) + 1; 
SET @idCategoriaP= (SELECT idCategoria FROM Categoria WHERE Categoria.Nombre = CategoriaString );

INSERT INTO `mydb`.`artÃ­culo`
(`idArtÃ­culo`, `Nombre`, `DescripciÃ³n`, `Fecha`, `Precio`, `Unidades`, `Categoria`)
VALUES
(@idArticulo, Nombre, Descripcion, NOW(), Precio, Unidades, @idCategoriaP);

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
(`idImagen`,`Ruta`,`Imagen`,`ArtÃ­culo_idArtÃ­culo`,`UsuarioOProducto`
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
(`idImagen`,`Ruta`,`Imagen`,`ArtÃ­culo_idArtÃ­culo`,`UsuarioOProducto`
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
IN NicknameUsuario VARCHAR(255), IN ContraseÃ±aUsuario VARCHAR(60))
BEGIN

SET @IDUsuario = ( SELECT idUsuario FROM usuario ORDER BY idUsuario DESC LIMIT 1) + 1;

INSERT INTO `mydb`.`usuario`
(`idUsuario`, `Nombre`, `Apellido paterno`, `Apellido materno`, `Nacimiento`, `TelÃ©fono`,
 `DirecciÃ³n`, `Email`, `Nickname`, `ContraseÃ±a`)
VALUES
( @IDUsuario, NombreUsuario, ApellidoPaterno, ApellidoMaterno, FechaDeNacimiento , TelefonoUsuario, DirecionUsuario, 
EmailUsuario, NicknameUsuario, ContraseÃ±aUsuario);

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
IN NicknameUsuario VARCHAR(255), IN ContraseÃ±aUsuario VARCHAR(60), IN Puesto VARCHAR(40), IN Imagen BLOB, IN rutaImagen VARCHAR(255))
BEGIN


SET @IDUsuario = ( SELECT idUsuario FROM usuario ORDER BY idUsuario DESC LIMIT 1) + 1;

INSERT INTO `mydb`.`usuario`
(`idUsuario`, `Nombre`, `Apellido paterno`, `Apellido materno`, `Nacimiento`, `TelÃ©fono`,
 `DirecciÃ³n`, `Email`, `Nickname`, `ContraseÃ±a`)
VALUES
( @IDUsuario, NombreUsuario, ApellidoPaterno, ApellidoMaterno, FechaDeNacimiento , TelefonoUsuario, DirecionUsuario, 
EmailUsuario, NicknameUsuario, ContraseÃ±aUsuario);

SET @NickName = ( SELECT Nickname FROM usuario ORDER BY idUsuario DESC LIMIT 1);
SET @IDdelUsuario = ( SELECT idUsuario FROM usuario ORDER BY idUsuario DESC LIMIT 1);
SET @Pass = ( SELECT `ContraseÃ±a` FROM usuario ORDER BY idUsuario DESC LIMIT 1);

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
`ArtÃ­culo_idArtÃ­culo`)
VALUES
(@idVideo, rutaVideo, null, idDelUsuarioOArticulo);

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
SET @IdUsuarioParaConsulta = (SELECT idUsuario FROM usuario WHERE usuario.Nickname = nicknamep and usuario.contraseÃ±a = contrasenap); 
SET @Administradores = (SELECT idAdministrador FROM administrador WHERE  administrador.Usuario_idUsuario = @IdUsuarioParaConsulta);
SET @Clientes = (SELECT idCliente FROM cliente WHERE cliente.Usuario_idUsuario = @IdUsuarioParaConsulta); 

CREATE TEMPORARY TABLE TabladeImagenesdeUsuario (
  idDelUsuarioAlQuePertenece int(11),
  Ruta VARCHAR(255)
);

INSERT INTO TabladeImagenesdeUsuario(SELECT imagen.ArtÃ­culo_idArtÃ­culo, Ruta FROM imagen WHERE imagen.UsuarioOProducto = 0); 

IF (ISNULL(@Administradores))THEN 
SET @Puesto = 'Cliente';
ELSE 
SET @Puesto = 'Administrador';
END IF; 

SELECT idUsuario, Nombre, `Apellido paterno`, `Apellido materno`, Nickname, @Puesto AS Puesto, TabladeImagenesdeUsuario.Ruta
FROM usuario 
INNER JOIN TabladeImagenesdeUsuario
ON usuario.idUsuario = TabladeImagenesdeUsuario.idDelUsuarioAlQuePertenece
WHERE usuario.Nickname = nicknamep and usuario.contraseÃ±a = contrasenap; 	

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
	
    SET @ConsultaPorFiltro = "SELECT * FROM artÃ­culo";
    
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
IN NicknameUsuario VARCHAR(255), IN ContraseÃ±aUsuario VARCHAR(60), IN IdUsuariop INT)
BEGIN

UPDATE `mydb`.`usuario` SET `Nombre` = NombreUsuario,
`Apellido paterno` = ApellidoPaterno,
`Apellido materno` = ApellidoMaterno,
`Nacimiento` = FechaDeNacimiento,
`TelÃ©fono` = TelefonoUsuario,
`DirecciÃ³n` = DirecionUsuario,
`Email` = EmailUsuario,
`Nickname` = NicknameUsuario,
`ContraseÃ±a` = ContraseÃ±aUsuario
WHERE `idUsuario` = idUsuariop;

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

SELECT artÃ­culo.idArtÃ­culo, artÃ­culo.Nombre, artÃ­culo.DescripciÃ³n, artÃ­culo.Precio, artÃ­culo.Fecha, artÃ­culo.Unidades,categoria.Nombre As Categoria FROM ArtÃ­culo
INNER JOIN categoria 
ON categoria.idCategoria = ArtÃ­culo.Categoria
WHERE artÃ­culo.idArtÃ­culo = idp;

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

SET @Ruta1 = ( SELECT Ruta FROM Imagen WHERE ArtÃ­culo_IdArtÃ­culo =  idp  ORDER BY idImagen ASC LIMIT 1 );
SET @Ruta2 = ( SELECT Ruta FROM Imagen WHERE ArtÃ­culo_IdArtÃ­culo =  idp  ORDER BY idImagen DESC LIMIT 1 );
SET @RutaVideo = ( SELECT Video.Ruta FROM Video WHERE Video.ArtÃ­culo_IdArtÃ­culo = idp );

SELECT artÃ­culo.idArtÃ­culo, artÃ­culo.Nombre, artÃ­culo.DescripciÃ³n, artÃ­culo.Precio, artÃ­culo.Fecha, artÃ­culo.Unidades,categoria.Nombre As Categoria, @Ruta1 As Imagen1, @Ruta2 As Imagen2,  @RutaVideo As Video
FROM ArtÃ­culo
INNER JOIN categoria 
ON categoria.idCategoria = ArtÃ­culo.Categoria
WHERE artÃ­culo.idArtÃ­culo = idp;

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

SELECT artÃ­culo.Nombre, artÃ­culo.DescripciÃ³n, artÃ­culo.Fecha, artÃ­culo.Precio, artÃ­culo.categoria FROM ArtÃ­culo;

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

INSERT INTO TabladeImagenesdeProducto(SELECT ArtÃ­culo_idArtÃ­culo, Ruta FROM Imagen GROUP BY ArtÃ­culo_idArtÃ­culo); 

SELECT artÃ­culo.idArtÃ­culo, artÃ­culo.Nombre, artÃ­culo.DescripciÃ³n, artÃ­culo.Precio, categoria.Nombre As Categoria, TabladeImagenesdeProducto.Ruta, artÃ­culo.BorradorOPublicado
FROM ArtÃ­culo
INNER JOIN categoria 
ON categoria.idCategoria = ArtÃ­culo.Categoria
INNER JOIN TabladeImagenesdeProducto
ON artÃ­culo.idArtÃ­culo = TabladeImagenesdeProducto.idDelArticuloAlQuePertenece;

DROP TABLE TabladeImagenesdeProducto;

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

INSERT INTO TabladeImagenesdeProducto(SELECT ArtÃ­culo_idArtÃ­culo, Ruta FROM Imagen GROUP BY ArtÃ­culo_idArtÃ­culo); 

SELECT artÃ­culo.idArtÃ­culo, artÃ­culo.Nombre, artÃ­culo.DescripciÃ³n, artÃ­culo.Precio, categoria.Nombre As Categoria, TabladeImagenesdeProducto.Ruta
FROM ArtÃ­culo
INNER JOIN categoria 
ON categoria.idCategoria = ArtÃ­culo.Categoria
INNER JOIN TabladeImagenesdeProducto
ON artÃ­culo.idArtÃ­culo = TabladeImagenesdeProducto.idDelArticuloAlQuePertenece;

DROP TABLE TabladeImagenesdeProducto;

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

SELECT categoria.Nombre FROM categoria;

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

-- Dump completed on 2019-11-19  3:38:21
