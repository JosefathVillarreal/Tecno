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
  PRIMARY KEY (`idArtículo`),
  UNIQUE KEY `idArtículo_UNIQUE` (`idArtículo`),
  UNIQUE KEY `Nombre_UNIQUE` (`Nombre`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `artículo`
--

LOCK TABLES `artículo` WRITE;
/*!40000 ALTER TABLE `artículo` DISABLE KEYS */;
INSERT INTO `artículo` VALUES (1,'Unidad de Estado Sólido Kingston A400 de 480 GB, 2.5\" SATA III (6Gb/s)','Disco Duro tipo unidad de estado sólido capacidad 480GB interfaz SATA III (6.0 Gb/s) factor de forma 2.5\"','2019-10-17 04:08:41',1099,100,2,1),(2,'Procesador Intel Core i7-8700','Octava Generación, 3.2 GHz (hasta 4.6 GHz) con Intel UHD Graphics 630, Socket 1151, Caché 12 MB, Six-Core, 14nm','2019-10-18 00:45:43',7399,200,2,1),(3,'Tarjeta de Video NVIDIA Gigabyte GeForce GTX 1060 Windforce OC','6GB GDDR5, 1xHDMI, 2xDVI, 1xDisplayPort, PCI Express x16 3.0','2019-10-18 00:50:41',4899,150,2,1),(4,'Bocinas Logitech Z906 Digital','Auténtico Sonido 5.1 Dolby Digital y DTS, Certificación THX, 500 Watts RMS de Poder total','2019-10-18 00:51:43',4299,50,3,1),(5,'Regulador Koblenz 1400VA/600W','con 8 contactos','2019-10-18 00:54:56',299,80,5,1),(6,'Kaspersky Anti-Virus 2019, 10 PCs, 1 Año','Tu protección comienza con la de tu PC. Es por eso que nuestra protección esencial para PC la protege de virus, ransomware, phishing, spyware, sitios web peligrosos y mucho más.','2019-10-18 04:35:47',49,20,6,1);
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
INSERT INTO `categoria` VALUES (3,'Accesorios'),(4,'Almacenamiento'),(1,'Computadoras'),(5,'Electrónica'),(2,'Hardware'),(6,'Software');
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
  `Cliente_Compra_Artículocol` varchar(45) NOT NULL,
  `PresupuestoOCarrito` tinyint(4) NOT NULL,
  PRIMARY KEY (`Cliente_idCliente`,`Artículo_idArtículo`),
  KEY `fk_Cliente_has_Artículo_Artículo1_idx` (`Artículo_idArtículo`),
  KEY `fk_Cliente_has_Artículo_Cliente1_idx` (`Cliente_idCliente`),
  KEY `fk_Cliente_Compra_Artículo_Tipo de pago1_idx` (`Tipo de pago_idTipo de pago`),
  CONSTRAINT `fk_Cliente_Compra_Artículo_Tipo de pago1` FOREIGN KEY (`Tipo de pago_idTipo de pago`) REFERENCES `tipo de pago` (`idTipo de pago`),
  CONSTRAINT `fk_Cliente_has_Artículo_Artículo1` FOREIGN KEY (`Artículo_idArtículo`) REFERENCES `artículo` (`idArtículo`),
  CONSTRAINT `fk_Cliente_has_Artículo_Cliente1` FOREIGN KEY (`Cliente_idCliente`) REFERENCES `cliente` (`idCliente`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cliente_compra_artículo`
--

LOCK TABLES `cliente_compra_artículo` WRITE;
/*!40000 ALTER TABLE `cliente_compra_artículo` DISABLE KEYS */;
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
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `imagen`
--

LOCK TABLES `imagen` WRITE;
/*!40000 ALTER TABLE `imagen` DISABLE KEYS */;
INSERT INTO `imagen` VALUES (1,'css/images/ProcesadorInterCorei78700k8va.jpg',NULL,2,1),(2,'css/images/TarjetasdeVideoGigabyt.jpg',NULL,3,1),(3,'css/images/BocinasLogitech980.jpg',NULL,1,1),(4,'css/images/Almacenamiento-Unidades-Flash-USB.jpg',NULL,4,1),(5,'css/images/Accesorios-Herramientas-MOD-HUELLA.jpg',NULL,5,1),(6,'css/images/Accesorios-Audifonos-y-Microfonos-Yeyian-YAO.jpg',NULL,6,1),(7,'css/images/Electronica-Proyectores-BenQ.jpg',NULL,1,1),(8,'css/images/Almacenamiento-Unidades-Flash-USB.jpg',NULL,2,1),(9,'css/images/ProcesadorInterCorei78700k8va.jpg',NULL,3,1),(10,'css/images/user.jpg',NULL,5,1),(11,'css/images/user.jpg',NULL,5,0),(12,'css/images/user.jpg',NULL,1,0),(13,'css/images/user1.jpg',NULL,2,0),(14,'css/images/user2.jpg',NULL,3,0),(15,'css/images/user3.jpg',NULL,4,0),(16,'css/images/user5.jpg',_binary '�\��\�\0JFIF\0\0\0\0\0\0�\�\0�Photoshop 3.0\08BIM\0\0\0\0\0�g\04yvNO7M2v0b04LLy5Fda(\0bFBMD01000ac203000047100000081e00004f21000008250000a42900001137000094390000ae3c0000c53f0000e9570000�\�ICC_PROFILE\0\0\0lcms\0\0mntrRGB XYZ \�\0\0\0\0)\09acspAPPL\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0�\�\0\0\0\0\0\�-lcms\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\ndesc\0\0\0�\0\0\0^cprt\0\0\\\0\0\0wtpt\0\0h\0\0\0bkpt\0\0|\0\0\0rXYZ\0\0�\0\0\0gXYZ\0\0�\0\0\0bXYZ\0\0�\0\0\0rTRC\0\0\�\0\0\0@gTRC\0\0\�\0\0\0@bTRC\0\0\�\0\0\0@desc\0\0\0\0\0\0\0c2\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0text\0\0\0\0FB\0\0XYZ \0\0\0\0\0\0�\�\0\0\0\0\0\�-XYZ \0\0\0\0\0\0\0\03\0\0�XYZ \0\0\0\0\0\0o�\0\08�\0\0�XYZ \0\0\0\0\0\0b�\0\0��\0\0\�XYZ \0\0\0\0\0\0$�\0\0�\0\0�\�curv\0\0\0\0\0\0\0\Z\0\0\0\�\�c�k�?Q4!�)�2;�FQw]\�kpz���|�i�}\�\�\�0���\�\0C\0		\n\n	\r\r\"##!  %*5-%\'2(  .?/279<<<$-BFA:F5;<9�\�\0C\n\n\n9& &99999999999999999999999999999999999999999999999999�\�\0��\0\"\0�\�\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0�\�\0\Z\0\0\0\0\0\0\0\0\0\0\0\0\0�\�\0\Z\0\0\0\0\0\0\0\0\0\0\0\0\0�\�\0\0\0\0\0�JiV\�e!\�\�L�0.�\\)�ui\nWV��p���0/��Ť\'t��Sl�ӳ�5z5�\�\�X%e	��+�\�\�]�ue�J�Q\�hf^\�˱�s*p�.\�[�^0�\Z>\"s�@\�m=N�y\�\�\r��\�]S\�4Q�y\Z�[F�2U�EZ�z5l���ůM��K]\��@l+\�%9\�:�Zr�����Ϲbz|ej\�2{�Z-5�\�H�P\�\�-�\0\�j\�� �\�P\0@UA\n\"�\�E6N8ӋA����+3:Hܥ4�,.�\���І��Uf(\�z�\�\\U W{D�O?a�\�\�\�+S(L�B�%l�+�0��^7�\0�¢�(4P\0A@\0\0F�\�\n\r\0PѣnF+d�#I%V\�<�\�dr�w6�\'����\�h��S\�\�ɶ��w \�\�\�^�i���\���7�\0���\n \n��&*+A����4E[PʺR2K�I$RW�[\�\�\0�c�6m\�na:\�u},\�-�})a~\�S�5�A�\�]d��$J�<0lյ\��\0�\0`(*�0TI�\�\0@@\0\0(\0\0�\0�K�JFIw=\�d�\�$�\�ǁ N-^s�\�gLb����>\�\�5ѭ\�̳���\�ѺǏj=�\�[�o�\�h\0�\�\0\0�\0�\0�\0(\0\0\0\0 ��\��W5o��\"�I<\�k���K7d�c�\��\�r\�5R;\�\���;�v�)5\�R\�xCr��*>DC$m\�׹^�@)\�\0H��Z\�!\n�\"\�{F��mUX��U\�X��\�H_$\�关��F\�\�\�\�ɻ1\�J�\�/C��t٫\rhRc/R�\�DH�FWiZ\�w-��\01�k��k��\0<L�UD$R0�D%&�\��\�H�sH����y�F���\��\�Yb�\�%/E\�t/5�]��3�\�W7\�鹾�w\�R\�Յٷ\�1/Q\�\n��+�9�\��K\�\�\�st�	\rRU9\�1�\�+\���H\�%a��\�\�Z6#^���F\"�!�c�|�\�>W��\�t\�\�	΁	M\��\��\�n�l��U�\�z�g�\��x\ZrW�<���ժ�XU\�s{w\�\�g芊�\�l\�)\�\�tR\�G\r,r*2����QA�ۀ��\0��վ��у\�.\���\�N>�\�6\�$rGs��h\�`+��9\�<�1���WB���ҽ\�K\�Hu(ޤ\�\�(Px\�}���Eo7�u�\�N\�+_h\�|�rSWh�*\�\�e\�-�V�Z��T\"dU\�@�\�9i\Zlb�\��+#k���\�s\��\�t\�\�&���ۦ~o{�ckX�9ϱ��\���\�F\�YX/Rh\�a�(`\�,|\�\���ޯK62��l�G<2l\�\�diT\n\0*(\0R\�A\�C%��F��]\\P��\�s��\�H�4R\�ɕ�x�N�\�h\�9���Ӎ�\\\�.����YTt�Rc�Q\�&\���Fr��ܥ`��l��\�z�e\�\�YgΊ%A@r 8k�E`gQ�1\�fݩ9~\�)Ǌ\�n\�x>ۄ�\�{^�\����\�\�\�\�udԚjV�V\�oܡ�\�\�ױꊝ���yZL�`���d�\�z��:tmU����.$�F��\\#�@(\n\�TP#��\�\�\�\�b�1\�pQK	��\�\���:X捓\�\'m\�\�:y\�g�\�ږ\�۟F\�+\�N\�f�U�V\�PK�m3AZ\�69+�<\�#\�z\�%M�\�\�N΁��|�u�\�co1\�\0\0k��@ ��G���P/@��T<�\'�wX{$�s��XY2�	Y\�\�\�yy��Y�K(ޥvm+Դ:|+P\�ZU���`\�\���71\�J�\�G#9^�4T�W�\�t\�%{�\�>\�6Ȝ�\0\0(\0�\�re\����j:�\r�rǯ��;h\�G9\Z�ˤ��U�\�\�$,�B\�\�\�\�x�st��\�د~-}*��\\R���+\�\�G#\ZNG!QP9v���Dƾ9\�>\��O����w���<A�\0s\�\\\�/\�p��\�u\�Y[�=\�gD�*�l֭��*=h\�K���\�\�c��`+�[O]\��ηU\�\�v�n��׷�!�\�\Z�˕��\�\�j��E@\�\�\�p�\�1ɵlp\�n;;\�Ӓ;(oA\�tV\�\�\�\�kF\ZЏv\�>�\�\�H\�\�$ȶ&���8&\�U\�y\�*�g\�ڍ\�p�\�]�w-lt�\�^��!m��MG�\'#\�J\�k\�y\�\�\�n\�\�k�N\�xWs\\\�g5\�\0M���Ế}\�<���d<#\�z�;�˯\�\�\�\�-\�K\�؏Be�\�T�s;[11WA!:��+��-\�E\���	\�\�|�gKb\��.�r���\rc\�	\�[\�	Y\�̲ᘺVk9��kn\�6�],Q�\�a�n�\�:z�Z\�f L�,\�׽\�6�\��]\�֫���G\��\\B\�=\�^��c�܇E]\n\�-Hhv\��V��\�\�d\��&�\�,�2�k�\�\�7o�Sa\�@��\��ƯU��L��\�\�f�Q\���8NȻ>�l��z�\�khTqQ�\\?�\�\�Ws�<\�5v\0\�\��n{�_K�/\Z\�7�\�\�u/\�\�s�R��\��\�>�\�/��\�Ώ,\���\�\nڱKC�\�uYݘ:p����̛�6�2J�I\���\�\�Ĩ]�]�=\��LE\���\�\�n�Q\���p�\0	{\�\�yއ2g\�4fW\�c�x�\��-K�\�s�U���Z�\�\�t�\�@\�\�\�ӹG\�\��\��.u\�Y\�\�`v_i��\�}ϯ��\0M\�t�`clsӌ\�ZޥVh\�z\�\�\ZZ�\�\�͇�\�d�\�s=\�p�0\�onA\��\\\��~\��<�\�\����N?�\�}�7\�f�s��\�-\�?SA_o�\�.��~���y�\�vq6�\�\��\�\�P�C\�k�\�r]\\�\�{�\�P\�x�\�\�G\���\��ٽ\���\r\��\�g{9U̝\�\�(U\�B\�\�-\��\�/=\�s�eI\�u�%�\�\�\�-oq݌��밙S�\�ـp�\�$웧\�݂N�\�tKo�\��\ny\��\Z�6\�h\��~�\�zR�M�Tjp=�м\�\�\�\�wl\"�1p�6�}�ls\�G\�+Q\�iv�s}���\�Μ\�\�r�z;x�82��ryr�L۶:�gǢٙ];7\�sU\�S$\�|\�Zs\�9ܖ\�;]e�\�o\�qd�q_����Z^qn\��|оrv|:\�?NN\�:�\�C.e\�U:�z&��\�\�Ǭ\�o\�i�\�\�ѯ�\���\�]�9T��\'5{���PT0EQS)܊t+��s%#�OI-BY-\�$�uH!�\�v�\��W\�ҷ&[�\�\�\nrh\"ts�\�c�_B\���\�\�\�6κ8K�M̡��D\�J\�ձ\�j\��@��1Pw\"·U\�T@j\0\n�k��-�^\���fʑ\Z	��\�kE�f<v!z�Y!R2�+TMV��N���_p�=\��D��$��/9�\�\�o4�E}���r�������\�F�QF\0�5PnE@m+�,\�j\�[FfC4H�A0\0\0\0\0\0\0\0\0BiF(\�煩kْ\�J�\�di\�\�\�\�eȥh`�ށ\�رdj\�\�Hw�\r�\�\0.\0\0\0\0\01!23 \"#04@A$BCD�\�\0\0\0�U\�T/WP�]J�u+\�ԯWR�]J�u+\�T�WR�]J�U\�T/UP�UB�U\�T/UP�UB�U\�T/UP�UB�U\�T/UP�UB�U\�\�&\�T&\�L��.|˟2\�̹�.|˟2�&\�\�j�Y-L�5s�UR�]J�y\�Dң,�t�e�\�H�Df��\\���� }\���\�\�\�8t�\�\r�v~�5`����\�?���a`�vV}ٰ�C\�vN(�(7(\�\�kQ\�\�\�?|�0�k��ahHZ\�,-!aiZV�\�\\�\�\\�cZ\n\�V����l!p���j\�҃1s�=^:����M)�Ƶ\0���XE��c\�=�F@�V��B�-jVhu��7rm�\�Ql\�\�h[&?��9��ejZ֬��KF� �\�w\�ʛt\�v~\�Ⳕ\�1\��ݱ\�\��B5\�	�\�\�t�we�z�b;;�B��\�f\�\���\�\�fx��TݸA�ܢO	�Nݟ\�\'�!\�+��w����\�\�ۨS�j=\��\0V.�`߯ \�EK�j;;u��\��\0�\��!\�`\�x�\0�\�i7i٨\��\�\ZxMj ����{ {\�ِaȧ�n\�H;��uQ\' V���\0k��p����ʦ\�;g*r9y@�aHsh�����\��!\�\Z��z�m�\�p\�z���\'�� �\�\Z�D\�?�{\�q`��R��W��\�\�%��ڍ\�\�Ǯ����\n�\�\\]�\�\�wiO\�S�\��0m\�\�3�\��.\�\�\�\�\�U�)6T��\�?��b~N7�\�?.�;�.\�\�\�*ѐ�XʦbwTz4\�>\�|�2\Z\�T�X��\�\�w\�^ _\�OiRm̍iAKa�v;��E3\�P��r$�{V�c���cj\�Z�\�P�W\'A#VlQ@,{]�\�{x��Gj��R�;���\�0u�\0��E3ۺ��0a�KV�g09:��2��A�,\'�\�2�ɐ�\�Q\�5��\�p���zY(T��D\�Y$�>\�^>�\�v�8\nE\�\�\�Z�\��8t�uM\���CS\��1;S?�G�7����CH�.\�\��v\�\�\�*�3�\� 2�nN\�\�ło���R�-�}\�D\��\'\�\�/V\�ꛓ3\05LB����\�,�����\�\�x{fv㒤Q(��\��$\\\�\\��.kn͐L\Z�c\r;R��lXs��tƋ�{�\�\�(F��+2@�jy��\�\�\�\�[E�zj�`N�r�\�\�\�\�	\�SwX\�Q/-��\�݁X�\�\���E#f\��SmV~6z�hQNO\�CpҰW\�݈&w\��\���N?\�A\��sE\�^\��	\�\rO�-�~���UO�\��ʗ\�\��S�\�;.6~񎐢�j�oaA0\�>�kp�=X>\�Ȗ��UɆ����\�:L�i\�b|Zʒ<2s�\�9}ǲ���\�\�gl6)\�₏otv�6�x:��\�\0d0F\Z3gF\�!atU\�\�rn=�\���\�ݛCb��;X��)�\�\�\�q�F��\�\�2#Ɔ!\�Ǣ 9j �*�#���ov>\��E\�\�\r�GkBnnS7\n�7�\�-L9��+yO�v���ښ\�YY\�\�$!v\�/#�d\�E\�\�\r��m\rݵ۸P��!\�h��\�-N\���\�!��)��z�\�l\�:�)\n�F�\�,oy\�^\�W��\�\�\�Yۨ�(\�n6��7eT�c\���Z\�~G��2ɱ��Whc%�j\0\�O\�.�(ꪻ�\��\0chE�N\�G�}\�\�e5�U\n��?r��g<5�s~M�\�<|\�����ʨ\�)N\\.oH-U�z\�LE95;t\��\0�sv(�m�S������ඥ\�1��eӳR�9\Z�\�\�RD�*	c�g����V\�E|c+(�\nv黍�n\�O6oI}\�:P��5�\�|���eSK^\�&+\�s\�絓��\�g�\�c��9�G��\'Q\�\�\��SoIj��)Tc�MZ�X�I\�w\\݈t-��S<\��L\�\�,��\�8s*\��\�I\�ut r��27��hQT!\��H\�6���\�c�R(��\�()l\�۷��\�2�\�S��\��U4/Zܲv��J���\�BTc�\nFjQ�\Z��\���=I���A���SP#iv��ӟ��R�P��L9��\�7v\�o��UF`\n���ߥ/�9}=\�Q\�Ft\�J�C@k\�_i�\�<�)��\�o5д)pdlz��\�\�\�\���6���3\�\�ȲM�\��T�\�;v�-���ɻ�k�1�\�!�m\'lg\�N\�\�\�E\�\����\�J\��\�\�TB\�6�\�\�;\�\r6�,o�G	{dd��\�E�p�Ҁ1�H͎ծ̣\�/���m�\0�h�Kɺn\�\���0�)�!���8�\�[ԖQHGӜ�E*�^Pk��FtPX�y�bw�\�\�4�Sף�\'�\�3OܙrdZ\���\0e���O�ʾ�2�7F\� |\�\�L�ȇ5\�wϗ�\�$r�s��s�sp\�\�;�&�>)\�љ�ߘ�\���S�\�sY\�-\'c�\�ΥON\�\�.ύ�X0J����\�\�\�UP�T-cZ�AN�H�`{@\�\�\�-��\�\"\�j�<C\\�@\�^\�wRD׊�y/oe\'�U�\�EL\�%\�gUKJ\Zp\n)�H\�1\�\�\�\�RvI\�n�N\�R8���\�>f�iF\\�\�gj�wX�\���ˤ�1\�f���\�j�\07�ڧ\�\����\\�\�\�;T+��T9�\n׿�p\�˥\�2<\��\�QŊ��9�RvK\�\�;k\�\�+O\�\�$m\��\�\�U^g~�\�K����\�\�g���X\�V~�\n\�?�v�wD�z\��ʢ�{K;#U�L��/�\�W\�k�^������\0֤\��\�wS�Ō��*f�\�~�v��+�\�e/\����^�m��\�\"\�O	����E\�3\�4)�GO*�Ĥ:YQ!|��wڳ\�!\�dG,U=\"���\'eG��mgU;_�z�nO�.m.֟�>\�W\��l�����w��b{W��E�ϗD\�8�QRW\�ԗԔ�CS�_��</\�\\+�՞z�=1\�*�\�\�RvN>\�	\��\�3+���5���\�\�\\@\�������?�\��\�/�\��nc�W��\�\�Q�T�u�\�)8sZ\�>&��\�W�\�W}�<��Zf\���g�I\�7��ا\�˩\�\�\�T�*kς��x\��\�Q��pl\�pt��s�?\�̵��X\�W\�\�V;Ty�>ʣ�S��C�\��w\\3�\�[\����\\Yˆ�T��yxl�dEVӿ�\�!tmU�\�4\�\�\�@��\���*�h|ss*��uID�\�苤���\��l&0�\�~~ l���w�t&&*\�!qɡ�uU\�;�i�[�@�eg���\�P\��7ʤ\�\��RU�\�\�Qh+e$�` Ըе6��\�:\��\��q2���eT\�s\��ɬ��$c���sZ\�Z�)\�$b���<��um��\�H\�6���\�C�\����\�4u!\�D�\\���޺d��C\��\�#Y+�\�u:�X��\"<BDꇾX$g/�\�\�b3ƪ$�\�U�\rs����}T\��\�Ε\�3K�\�́W*�9��T� 8���a�B�t�z\�Qqq@����5�\'�q)���UK��\'VJ�\�+%j����@�Ξ`\\\�.cS\�)~+�W<�a\�g!\�Ԟ\��\'C\�a\�\'\�ܛL\�\�!��$\�\�ef\�\�?�Ɏ\\�\�)��\�i$9-\\��C,-x)\�6\�\�4/��\�\�M\�_MG�/��\�9�I[!�\�\�1�	bc�{2�-C:��j)��sZ��s�9s�\�\�r\�\�\��\�\\6W\���\�c����\�8IL�ݲ\��<�mըLQ�\�S\�̭\\��h7�����a�>\�h*��=��\��\�gm\�$��D9k \�\"��\�\�Z\�NT�\��;��0_Ut�\�X\�2=��\�\0&\0\0\0\0\0\0\0\0!1 2\"0QA�\�\0?\�4�\�0�#\�0�(ҌDҍ(�\nQ��?���\Z#�(G�(�\�\�*\�I\'��d\�2̉I��3�#�#��.��\�\�Ďԇ	#\�e�Ȅrȼ\n�\�%�����\�#�K;�)�0iC�K��\Z\�DSH�d�\�\�Tȿ����|�/�\�\�G�E��#�k\�~T}~\�1#\���6\���=�\��/b7o�,�\�|�p/�|�7��%	|��\�yt���E\�S\�\\���Q�&�:�*<�\��7d�jp.H�\�\�>\�_S�\�\�H��MD]TN�E^,\�D\�E��jC�)�\�(rM؈�X�\�U�:�\����U?\�I��#S\�\�#VH��\"7�PYe_R����?�9a%���\�\�oW��EoR����(\�$\�\��Z�\n\�\�U\�\�E)a�J�\�ȑO��B�د�S�&q\"��}�\�\�Ej�8:��S�&�_O����\�\\S*s\�\�R_�r\"�Ob��\�H�>L{:�5�\�\ZyY1�\�\��\�h�=J\�=�~�R��q2r)\�Ҋ�oo*~��i\�4[)\�M�-\���[\�\�;b\�1u6kf�I��UGz$j\�L��\�\�X:�\�\�n̎ԉAč9H\�?\nk,\�\�vj\��\"B)�>J>\�YfW����`�51,/Rxc\�hD��$!��#\�\�3�<Z/�u<��Z1\�\�r\�\�\�h��!D9%\���\�Ƣ�\�c�\�\�\��%\�G�k1iZ#Ȍ��>J~Ĺ �\�䍨{B\�њ�\�\�HR�IіJT\�V��\�\�Hqq�f�&\�a�Ȣ\�E\�\'�Y��\ZF\r2Q\�%A�ܿ<\�G1w4�\r%\�ܝ5.\ZM(���$w\�w�\�5�b�B��9�o��\�-5⪴S\�2+f\��\�\���R\��^c�\�\0+\0\0\0\0\0\0\0\01 !2A03\"#@BQ�\�\0?�3ѓ\"$ٖs3���,�Q�+��r���L�\�\�G:>D|�\�s��Gm0=\Z\�!aY(\�\�)\r�Y9�3q�1��[}�z\�G67�km���[�\��E���S\�\�\�G�\�\�h�\'�-^�kJS_tF1\�l\"��R\�Tuz!\�D��S\�T�S�\�fS�Li�m�dJ+\�]x\�c\��Kn���}�z- R�\�D��\�&4d�!�Kn�Id_RBx1�\�i�ڽQ\�_o��\�iL�\�KE�՝}��Jd6�\0�\�G\�L�\�h{��]��\�\�9<&J��y����\�\�~=y\�ƒz-(.�v\�\�%�RӇ{3�\�SOr5�-���\�RbU\�\�	\�[\��#%-�U�{6*��̔\�b�e����ڽ7\�GyIn\�\�\�}�S�\Z�%K�t�g�*?�r�rY/\�yIÔ\��\�\�\�>T[\��Y,Җi[�\ZqE�3�b꓄�W\'.Tˊn��p��\�\�Xy���a콪\�\�E���\�)\�W|������TYV�\�6U�*�\�)��x\�%\�\�L�O���a���.�\0Bֺ����\�,�?ޜ@��!\�п�8�}�e\�\�p\�\�y��\�-\�\�\�N�\0�+y�\�\�\�ܫ\n-!nR�E\���\�+3E��Þ\�\�\�\�:Q��EH\��\�\��4\�;\"\��8��,B�\0\�\��e�\�Xy���\����eJ53�q��\�-�<��,<Yq��nR�E\�sE��Q\�p�\0e\�qS\'�O�w$\�v8|Z�t\�>�/\�\�>H���\03���ߡbҟr�I\�\�p�\0e\�Z�p�$\�K����\�+������\�6l\�3�\"\'K��!oh\�˙�6ά��j\�Z*�\�;)�ٔ\�ȅ5�ݻ��oe(O,��uoh\�\�%ͣ�,�֮��]Z��\�$�r��_f[Z�Ej\n��\�\�C�ɿ\�B\n\�*\�\�R\�mA\�O:U�\�yG�u:\��v2��s\"xde��\�9\�\�\�\�!�0`\\Pƌ�\�m;�\�&g���Pܖ篪&:b\�O�\�\0/\0\0\0\0\0\0\0!1 03Aq�4@Pa\"Q2�`#���\�\0\0\0?\�\�����\�\�Q�\�\�Q�\�\�Q�\�\�Q�\�\�Q�\�\�Q�\�\�Q�\�\�Q�\�\�Q�\�\�Q�\�\�Q�\�\�Q�\�\�Q�\�\�~/�9��l\�\�����\�\�~/�9��l\�\�����\�\�~/�9��L\�\��3��\�\�~/�9��L��l\�\�y3��\�sg\�sg\�sg\�sg\�sg\�sg\�sg\�sg\�sg\�9g;\�\�by3��\�\�Q�\�\��<�d�\0��/\�\�by\�O#�/\�\�K�9��9؞_$�M�[q��\��\0\��k�\��\0@��\�/�_.��	�ndhd���F���T^\�\"���ҺV�uʙ�\Z\Zp�B\�\��\�S-�[{K\�\�}b\�S�2\�/p���x�b\���>��[�/W\�ږ�\�K�w�3��\��.��tg��b\�K\�q�f�?]�|퐸ͳ\�ʹ��\\��޻,�6�|m�ט\��G\�ۧ\��ɟ�E��B\�Q���ft�,?�ζ,̇��2�[�\�\�fkK�U�M��/y{\r�ı�&&�S13e�pзZf����\�{�\�\�\\=����uD-\�\�zq,�\�y\ro?km\�w�-\�mKsꚣS#ku�\���(��\�R�y2�ַ��ܰ�553\�^\�\�;�6�.l�63B\�٣�2.^�eў\�\�-\�Ƒb=�\�w��k��%������-c�4\\��.~:S�к��B\�\�\�\�8ˠ�DΗE��˫\'b\�R\�Z�*\�o�*�]\�\�u/֚\�2\�\�EDYV�ȴh\�8~��ܝg\�QG\�5��>�\���H\�z\�$)=i�i�\0��.\��\0U�oBϥ>\�\'H��?�*\�:\��f�\�O�\�\�>\�u�z24o�4C�\�l���\��>�d�����͕ұ a\�\"�\�O�\�\�1\�u�\�v�e�\�!w�\�.�d��\�ʌn� aV$k\"}\�\�\�]\�*�\�*2Dh\�*J�\�_\�T��ѓZ]*\�\�EHu�\Z�\��Փ�%�\0d�\���T�jHt�d6F��%\�u�/�6:\�T��X��\�K�\�\�!\�}\�z64C�%YVC-VH�eܛ�b�H�U�\�ڿ�쓕Y:˸\�ܝ$H�jHtu�*\�U�-��v\�w\�G\\�\�T�0\�q\�\�m����?�\�-G~�cd;RCݸ��TUd��\'�\�\�\\\�^n�DB�H�Y�\�J\�+.\�,����e���\�I�BM\�[��\�^5m\�-ŴŚ5F��\�\"�:6��\�\Z���\�3fN��U��U\�\�\�\�\�Y\�]{Y�5f�\�\�\�v\�\�୻��\\-���3�\�f��e�\�ѡ�k���\�fZW4^+䭽x\��\0�\�\0)\0\0\0\0\0\0\0!1 AQaq���0���\�\��@�\�\0\0\0?!\�)��D��\�?g�O\���D��\�?g�O\���/\�\�\�\�O<�\�<ࢗ�)���R3\��\��\0�?\��c�\��\0�_�?�aE��P\�2z�^\�\�\�#�\�\�Zlz��\�\'�\0�&\�\�/�\��\�\��\��\0x�\�N$�3αU�B|tʟc[61�$�~8JA/{�\�$~ C!�1\ng���I9d�Iá\"�Lq�Z\�=��P%��|	\�L��\�QV<ДE 5cB\r�	\"K\r�P�1�\��#)��	F*�JI�\�DɑF+\�ĂR��&A`\�C\Z�2E�bbd\\gN\'l@�\�O�%BD�\�I`\�%]d�ef��\��\"\�bB$\�ͱJQ�)�r���\�7at4\"�(�rO\'�H\��\�I��C&\�\�4�\�C\�ぞ��=\�\�]��\�mk\Z\�d\r\��hH\\zgA�7zs������\rpK�*��)$�̲�!�!fZ\�b�\�n\�Q���ߓc\�V#��,A\�,B\���\�[\ZM\��h�Q�\Z��\0�\Z�\�\Z\�#Sz85b�\r\�\�%�wQ�\�+e�!r\�}E�x$\�M\"�k\\�w!c�!~H\�Ά�$.\\�s\�ɱ\�46U\�^d���\�/Ȍ\�\�Xu�\�c=\�Q\n5�\�D (8-\�eD�-7\�4\�\"|��2��\�&\'�䜔B�c\����Ё\ru\�X�\"x��\r+�QqQ�� |\Ze�s�6,�\�RTX@\�\�\�a*F4!\�\�-4&,���\�5\�!e� w�\�h\�\�#e��j�vm2u4�a�0wcit\�\'D\r˯\�XHF����\�l/�����%���ȓ�6�\�< pcX*˨�9�YE�Fo��\���\�:+.�b�y�����bA\�#\r\�i�\�\r����M��e`�*\���tA���C\�H��h�2K�##e\\O�k���i�H\�\Z�L���m�CX�5$��P\�\�$�|�!3M�;�5HC�\��#�\02\���i~�T���\�a�b6���}yj\�ɤ\�\�!ШZp�\�]�G�8.�;\']���Q�N�٪<+\';2J�\�N4D��\"*\Z�2�j$Lz 8�>̡R!Y�st2�/\�rW\�(����\�bJ�\�k\�I?��\�\�-P�ap\�T^�\�:�0Lo\ZHQ6N�\�U��!DR�H��\Z�6t64�v{��\�W��g�\"�K\�_S$ɐ\�\�ɉ\�\"\�yA��\�)�\�\�\�SD\�\�X�4\�3F\�Û\�N�R%\"9\�>���;�-z\�\�\�.Pز�#�^*��\�I\�8DjbY\�.���cJ(��@\�&VwKՉС�k�\�#\��cI5x?ń�d1�\�(c+.J��]��	9urheY$!���\��[\�~l�\��\�i���Z-��P�\�\����?a�Z�\�<l�q��\�\��1�\�ƞ4:x=U\�C!$�ep\���/CG\�\�P�%m\�\���O@�jZ,�p�+�\�y���\�1ׁ�p�.\�h�~�	rb\�}�LN,IX�e���\�+�e\�\�%cCA�\�\�\"\�\�\�c���A%\�4�܍I2�\"p�o�\�\�M��R$\�h%\�H\�6�!.�K$)=��CI�n�\�<5\�`\�5�Di5$�b\�\'ت�M�?���GȦ~A$\�կ�\�	�\�\�fC\"\�L��\�e���Q\�jc�\�N-�yi\Z!\��$<��U\�apjv8�^\�?\�w\�QH[�B�[B�\�\�c\�\����cw3Ĵ@1HU�\�DXż7�A)��\�B^�Obr�bKYC\"��O�y1ب/�{8c�BȰ�|6�]�HHJ\r6UA�\ZN�#\�M�FaY�D\��m\�DQ�B�(�Ж!i\ngc���\�kC\�eyڟA\�NK\ZpN5	�@u\�zTL\�k5q<47C�=}ع�,\�%l�BY�ῑtI\�2\�uB�L�\��H8u�.\�\'���C;	84BX���CR=ر,ȴ�ƳW#sH\��Z����\�a=� �I�B\�L\nHp*�L��\nT�!A���f\�A�Ӝ��A\�W��n�&\���YQ�\�&����ɔ]!\Zi\�\"`E-=MK�\��%K�B�\�呑�-	�}��a�QF����@\�1|���6IH\�VuX������F\�R\Z�8\�\�I�?\�E@\��\�k�?\����X\�$F�S�(�\r\�6\�����aS\�\�Ƃ\�LP�+5R�*��[\�e}\�#���\\�dp�z\�<���\"^�\r&���Emgh���;�\rkn\�\'^�]%\�\�0��\Z]^�(\�$����\�\r	@\��/Z$	h�\�&o�\�;�:�\�\�؏��9\Z&>G�\�a�4	$l�:M��o����G�\�*�H\�Y\n���+\�\���d�%q��\0X����\'�T���P�\�}FBW\n\�d�h�\�9L�G�\�^��\��\r�\����,�a���Ƽ\�Bv�u�\�\0E3b��T\�K���gy��x9� $�����\�K��O�CR��[$�\�\�M�̨\Z��-�\�!I\�\�\�D�c\�%BD9߂\Z�Yn�\�Τbۉ\�!v!\r\'\�P�3%c+\�C*^a\�М����\�\\�	-\Z1{�e@hW�r(Zh5\�~\�i\�}\�3�.|0\�p�Qa���m7\�>��=sl*=Zxh�F�=\�\�1+A84uX5&���KDĄ�(JD-��u�D>O\0dQ���V]7L_\�4P�\�t_�я�.f<l�\�	^�v\�%�4�b{a`x\"PX\�[b�H��xz*�$+Rtc\�Ft\�\�-\r͋\�3.ge��\�?�=/se�\�͡\�X�\�\�¶tя�l�`�\���\':��S?iC�̢�rw\�Rw,=\�+��\�\�Q48�|b�ãp�l������Pd��\r�������O�׽\�>�G\�\�>\�O(�\�=�u|���9�B\�b�\r\Z�\�m+\�\ZN\�7\�\�H�9�\�\�9\�=rn>\�s	Ώ[\�T&�L\�>��k��G�+\�c\�\�i�\�}�a�\�\�y�\�3\0HF!\�s+��M\���\�\�qӆ\�]���3\�s\�\�:\�\�\�\�>�\���ٟlDޡ9�%)�kbL��m\\\r�#�J\�\��n\�f���e\�r�ȤAF�^]��Ġ3��ŐÕ~bZ����KL�cJ�1\n\�\�F\�\�J\�F\�{�]\�[�=[�\�\�$ь�!%�\�\�br]�\�F\�>�!\�Mm�J\�)2\�=\�P%wC\�*D\"\�J\�J\�l\�SZ��\�5xn��D C�$-\� !;��hor\�P�=!CT\��!+�\�\�@�{�N%>�\�$ǝ\�r\�W\�,]\�.�\�\�jd\n\�4V\��|\r�;`\��b��%0-�z�`B9\�\���t�	�K�q.�Pn\�\r2M7�g�bR:�\�Jw2G�\�G�C\�v\�\�1)^�\rrb�N\�$s#�\�v\�\��X7��5\�\�ϼs~ѕ0\�ػC��\�ޮ\�{ᓍ	\�3\�/Yg�y_\�\�_��\��>i\']LP�pS\��yhbr��,,.���-�\r�p\\\"3\�xqǤ3j6`�FU=,�\�s�i\�%~OO\�M�\�ۏ��Q>����\�\�>�\�i\�=!\Z$�2x.=y6n$1\�1�q\"\�E��~\�\�Y���#\�\�\��<g��Cj\�z\'h:�L�4Z�]���Aѫ��B.��<Fg+��gI\r-��吒�5��wS��\�\�\��\"%D.\�.\�.\�.\�.\�gC\�\n�\�p-$( Z\�w�\'�r;\�\'���x��Cx\�,\��L�;BC�b\�%�ށ?����yWH��\�\Z\�\�F0\�>�\�\0\0\0\0\0�\�<\�9�G���\0�b�\�\�:�\�G\�:��\�\�Lg5�9)��\�U�c&�dO��e?\��pc��ГB$x��\�\�4\�8�un\\\����b6��\�\�w\�+\�\�\\�\����\0\�\�=�<�9\�.�ۯo���\����\�{��o3�\�>���o�r�~�T�bK�\�`7g\��\07\�\�a�w�)��.u��?\�\�-E�\���\0�\�ְD&T\�\'}X7t?N�\��\�B��X\�\�(:\nC�u�_	\0S\�?����W�\0<\�$ɇ�O�\�͆R\�\�#�\�-��UaS\�\�\�\�I\�PQ	�ͬ�Rs7hŜ\�>%m\�u�h��\0_�v\�E\�N�W\�\�e���n׼sJ�o6^y7�I\�c.3ǜx˺�\�\�\'���\��\0��\�(\�i-�β�6\�\�EW\�y�q\�K��8\�_��{\�\�gӏ\�D�?��>�`��~_<l  bģ@�\�\�2jg�c�3Gͯ�M\����L\�N�\�εm���!Z��q0*M2��\0\�=�\�}��t	Z>c�\0�\�\��\�4\�7�D�i���==�;�F!T���<�\"[�V\�W޷�\�Pg�\�9��\��_hp7�\�zl�k\��+u_\�N&%�+\�&TG�o`O��b\0\0\0ܺ/\�\�A���\�\0\0\0\0\0\0\0\0\0\0\0!1 A0Qa��\�\0?_\�E�\���S�\�\��w�\�\r�;�ڸ�\���\��?\��?\��\�\�\�\�Ӧ�6񿥯\��/\�$�пJgo�f���\�7\�@>��#\�\�0t%�p\�w^GفK]��Q��%��\�{c(��\�[D<�.�����:Mu?�\�@\�	\�Z��Z?.�3�\�u�\��\�Gh\�\�rV\���\�x��\�XG16�~_G,$��M[1��\�ۅ\�\�,h\�~K3�p\�з�v{\�j�����D�:O\�r�\�\rm9�+�9{>\�����\�7Rok\��3\�\�ϐae�,Kl9nݼ�\�͗}�\���\�f\�QǙ\�g�tv\�C�\�\�\�ڜ\"#z���o��F\�Oǹh\�W�H\\��\�gjm��\�\�0\�^N\"\�>�\0#n6ړ�!���I�Ņ\��d\�3�\�\�s\��\�ދ��\�\�o<O\�\�/��;%�\�\���꺇\�X\Z�6Y\�0i��.*z��yG�=C\�gf\�=@\�9o2\�^\�\���]~hs�D��)\\lC?a�\�a2$k�N6$�fB$w!\r/�/v���Xvꤊ\���\�\��L����\\>��o6o�oL�̘ݛ�\�̳8l\�%�0\�\��\�\�\��y\����\�d][���\�f�}\�	1�z�9\�&)<�[�\�^xx�\�o7�\�AJf\�.3\�\�z�\�,5�\�H��\0y\�8y�y\�\��d�%\�wm:l{^fK�$ m$l-\�_\��|�ԗ^3��\�.\��\�\�\�ai�\�!\�F�J.�Zt�&ixc#\�N�=��P�\�.\�C�n\�\�aԳ��Q�Kodh�&\�F9->cz\�\�IV��:\��d\'�x2�-x��4�}���Õ\�/m\'\r\��\�\0!\0\0\0\0\0\0\0\0!1 A0Qa�q��\�\0?\�[[Y[[V����Z���O�����V�p\r[d8\�?\\���7�A\�5���B\�0|�̓~\�ghys�������l \��V25\�*�8��\�\�_S��\�J��G��Y?\��S{\�qӁ<�\��=\�\�fq\�\�\�~os\���d\�]�9,��	�l1<e\�p<{��\�[�ܟx>\r�܎�x�>O��\�����\�ӫS�(�!H<\�}^\�\�\��y{$\�|,Ye�B�\�\���{#�	��\�d4\�?3\���\�19uu(\�?�K.\�8,\�AĞU�|g\�\�\�\�\���\��\�\�3�\�\����\�\�D\��Ȇ�\��\'\r\��&-\�e��\�\��\���,\����s\�\�\�y�ϕ��a�g%��\�2n�4\�\�佀�өN��\�\�W�\�\�3f\'\�\�fpO:�\�\��\�\�1ĝie\�2w5�B\�ٝ!7�\�o)���\�1�\�7�s։�	���\�\�d�Rb\�|\�\�Õ��S\�;�\�hb\"\�\�ۣ���mɹ��y\�\0$�/��y6\�P��Z�\�3K#\��R���_\�\�\�\�$�\�\�\��^|~��\��\0/x��\�(�֙.�\��\0h�9p��\�G	��\�L_,�\�G��s\����{�9|�?pK0\��F�E3|M�\�^)��P�\�O��h\�s��W��~\� \Z\�\�!:\�\�v;�嬥޽���U�Q�\\\n���͓iv��v�R.�gޛ�m��R�Om��\�g\�[.\�s\�v-x\����Z\�k�\�\�wgD�g���KFx\��\"\�ٓ��Zp\�E\�\'H�l@^\�\r\'���\��>Ȳ@yG�޸�\�\0(\0\0\0\0\0!1AQaq� ����\�0�\��\�\0\0\0?h\��w�\�~\�\�?��\0�(\0\0@\0\0^\�?��\�\�?s��\��#�?��\�\�?s��\��\��?��?��\�\�s�\��,�\��\�\'�}\��~c���\n\�}\�0��[�(_\��(\���\�\��\0s�\��_�?��\�\��\0pk���8��\0s�>X� a?\�)8�\0�\�z\�\�~/�E���_\�4/7��d\r���\�\��´���\�~�\0�G?��ڇ��\�\���Q\��_M˗�!)(\��B�C�^%��		p\�\�\��8M\�\�!j\0h\�0\ry\�\�}p\�!@�,�\�`�HU�\0�\�\�\�I�=\�\�t��fX\�8\�C�ь\�\"\\D4nW8\"Z*,��/	0a�[\�!�tf��Ǡ\�,��n�9��ʴnI�\�3�\�\n��\�ȫ\�?3)}\������E\�\�\�槭gr\�`�k2�Q�\'�xET0�X]�Nǉb\�F�b-\Z\�a%��FՑS��8\"�\�ts�TZޥy}T��\�\'Q�\�\�Pf&,�\0b��#\�!���ܔ�,#QjU�و\"�.\�+�����.Y7	pb�\�/h�kؔ8#�N\Zg\�MKq[�Wh����I�#�/�7A�Ĺx\�\�q*��<H��� ļ�!�2�y�**��h\�Av�\rx��\0:[\�]J�*�s7��\�.�\�q1o\�\�%+	v%pu\�CO���Ѵ��W�\�E��jeNTn\�<BXU\�\��J\���Rh��Դ�[\�\�Y�\�5�K4A\�3Q�@��J��X:\��\�w\�\'���e\"æ��MZ�Dz\�ㅭ#S\��\�\�\�\0E�E7�?Vn\�>\"@��� �-���eʼ�\�\�\����4�b����\�meՈ�� V\Z���\�[���\�f�ޫ2=_\�\�\n8�\Z|�\�\�xA,V���雛tw\�\�t\��+\�_\�x�Ea6#2�6\�gi�=�{�٫�8L�7~ǆ(2\�D�ގ�:�׉\�J��UƧ�\��^!R\�Ae�.0���D�B�(\�9\�\n֥Y.~�\Z�1\�0z2\�\�Yp;��JϦf�2\�;E�\����1�j#lk�Ig\�U&���kQ���@�X�l�����\\\�	Kι�\�\\N��\�P\�Z+�=X\�7x�&D\�>4D\����S\�\r\�d\\\�K����8��r��f9\�[�.q�\0�uu0T6���\�I�9Mz�o_��1��㢡a�����\no\��#\�c\�Wy�\�<���HR���+\�,_ף\�\�I�9Mz�۱�%ƶA\�m�\�F\�\ra9�;D4��C��\�m�\�,TH{�\������\�T\�E�6_WQpJ�`e^�J^&�t�]��h6Bʛ�r\�\�xK�\�ؕ:Q2�g�g]\�u���R#�m1y\�\�\n�\�u��\�A�}Y\�+�b*���/��j�K��\��	�U*\�\�;&&\�`�\�k�s����@+w�U*$V%/�\0�m�3��L�5\�U\�CmD�;:k\nt,\��\�Z�\�ܜ��So�)YuV� v�C\�n�+�&\Z;D\Z\�,��P):}�(ۛ�B���N\�\�ffQb�\�3\�\� \�\�梵CF,\�\�Z� -�(i��h��}o)0\�1�����{Ǉ�ux��\�C\�[/\�u�e��\�\�5\n��\��u}.�,,z\��\�eA\�W�t\"�P�[\� $7�cߡ\�\0��*��u9NL�׹\�p�aY�=-�߲0i1��_K\�K\�[�\r1�\�j{L�!�\�R�BZ�p\\X�A*8�\�\�U\�\"@���6\�M�\� �K�\�\�P2BS�\�^�lX�J\n���J	\�-\�`��u�!3ٛ#�j\��*P�*C�K\��\�o@Fg\�	\0�\�2\�\�TP>��U�\\\rO|E��\�!�HJ��C\�\�\'9��EY#\�\���\�\'i�\�3b��j�D��T���\�\Z�$v\�t Ky�\�:�Eq\�C�:/�`Q|H单n��R\�ʽb�\�s\r�\�e3)�U*���\�Q\�/��\0�3Px����5	>��(�\"�g\�v�{���U1�\��P\�3�\�S�KMU\��	�\�wL޹bG!\�E����\�k3\�\�\�P~8\�xE�<�S�-�t\nn:&Uka,��{ �\�;EK�r�D�Շ0�\�\0X멋\�C2��\\_e�O�\00ۨ<\��UA�\��\�/|\��\�x\�v�۪�d\r�AsA,\�*\')\�K�\�u8�ġu6\�\�v�p@\r�\ZT���idy\�jÙvZ\"?Σ�c6f\"\�Xf\�BЁmQ\�x\\�?+\Z�\�҅tK�=���\�	�	|�\�\�\n�K�\�$\��\�X�\�\�e�\0�w5f\�\�1d�\�4�+\�\�v�\��7!y�^7\�	\�N\�9�\�Ԍ#�V�1\�	|&=� \�XM�\�,2��u}oP)ޠ�_y�Vz\\*J�Ђ��*�}\��\�E�>\rL\�\'%�\0��%m\\\nx�Bp\��㋀�0\�I�\�(3Q�G��\�jA�\��\�3��\�~e��7MdA.\�\�Q\�\\\�:WY��\\\���RV�UJ\Z �\nT�`�~�q��.{+��\�¥��@�Yj/1����\�P ~�#3�\�8\�\�ba~gy�\�\���`34z�W*K���Ġl�,2\�,D��`B�\�庸&\�/��,8�\\�Cg����./R�Ɓފ\�E�P\�T\�%\�\�A��Պ��k�\�!���\�E\���q\r\r\�b���Q訾\'\���]-��E0�;��\���<ݣQՈ�x#�d\�E\�f\�ʊ\�H@Gdhk+P�ޥ1.B_V�\r\�bb�s\Zx\�Ah\�����.�ť��\04��+����#����sD\�\�!nޔA/�Ubl��X�pj�����\�3\�9%��^���;D�\���iM_W\�\�l[}m\�\��\r�-B�S�2p�\�AO�(w\�Z�� p\�Q��\��8�7&�\r�XpEt�:���q���-Oh\���.\�\ZE7\�l\�iPN��\�f\"\�`%\�씲���B\�qS\Z�sĪzq.�\�W-𖨪�@V\�\�C���a�ġ�\�) Z\�\�SF<��\�\�؆��\�ō���\�.K\�6G�̷T�Q�ޡ�{\�\�\�.����5a�\r��&ɘ�C`�C�igk��\�Ln8TUʧ\�%�s>҃\Zn�A@f�\Z�7ٔYB�\"Y-\�\Z�\n�fYc]\�\\�!��\�#\�vB�S\�`�\\#�q\����\�RX��Oz��\�4�\�3I��=�E^\�\�3 b�1B9��8]\��KK��\�\�\�kE�\�L��Sc\�)\�C�\�\��nN`��\�\�[�\�ܩU_��;M	�6\�#\������rĶ<\�>���\�y���0*ӈm#S���An11\�5\03\0\�\"i�Rj8\��6\�\�)\�Q�K\�\��\0�OR�}�\�\�ñY�\�)e\�1�9�a45O\Zb0U\�V��\�\�q�%��\0jn`\�\�X��P\�(�x�Fi5	\��}(^a�\�M�uŇ��ɚ��jQH\�Z�}*]e\�2��u,�|�P\�0.%t/m=�E�TЖ�p�5���\�9�C\�[\�58\�\���LLeK�e�헧\�P��\�� ^e\\D�rc}>to\�8z6��V��nYg��2��m�C�\�\r7\n_����SY�\�E\�٬�\0\�x*���\�#�P.\�5�1;y��>7:8\�F[M\���SQz\�[\�M\�c�M��hX�\��Ԡ=O\�\�\�Tڧ\�0KFe�z|\�xczNcY7��j\�\".��ҭ�c-A}C��1���lbZ\�]&���,�\�Kh��6MN.\�f\�l�\"�*{\��\�\�V�ť�\� +��\n�\0&\�o�T�\�1\�f��uy�]��_\��\0\�M0@]{�U�\�E^ɿщw6\"Y1`s\�T�Q�E�\�k����^!9�\�\�[g-\�\�\�J�\'C1+�A�Ѱ\07d[0OhF�aP�E�\�`V�\�-�\�}&Bz�-*¡:��!�ja|\�^U/^s/K1r�\�cl�\�\�.B S��\"|>��\�H\�eF8\�l�R\�q\r�*TB�\�aoE��	�� ��\�,2�Qʊ���s�0��\� ��-L(�#\��\�\r!�(���4���\�vԾ(��\0\�-\\RN\�ߠ\�0���!T\�\�\�\���\�,:n���3\�O�\�\�B2�^\�|�\�\�\�l`$\0�08%��,\�\�+qF\r\�%syT�|UܸI{A��Û���>\�c�e\�@\0��GQK��`B\Z\�K;�	rf\�6��t���B2\�g$(#�\n��\�6��afa*F\�\�x-�7s\�\��\�렸\�\�;gȟ\��,/\�ql��Q����\�PHMj�W�zN�&@�\�V���DaN\�CP�\��0�\�^\�k&U\�\�J�W�����\�\rp#ޣ�m\�e�!�\�\�����\�4���a��BV��\�`�\�\�d[j�l�\�(gK<�R\�\�1\����qCs\�~z8\�v.��~:�5B�\��J���\r~\�1U\�\�Ĥ~�\�\�6�u�VJ�B\�3JK�\�kQz7Q\�9�ܔ*^ڤ<\�[�B\�	\� !��J6�D;\\8J�Y�Ɗ-\�\�\�\�F�\�{�\���\��+b\�\�}\�.�@�S�:*\�\�\�^� \�B�\�#�\�ێ:}��׉G\�8�իf��`����\�%�ys\���d�6�\�O��t\�EP��\�\�\��Dh,!P�R�0\�ȱ�\�ʃM\�R��Ds\�\�\rv��\0y\�Dy\n�Q����\\F�\�$��	��]E\�\�\rK)�J;\�\��ģ�7kS\�%�\�_2`��\\�#*`ј\�\n��7�B8G	\�~&�\0�_�\�<1�\��\'�\ZSy\�(\0}�q\�\�EI*�^�FdYj����ԭ*pv�+~R�\0\0\�`���E�4J\0\\�� Õ�p@\�\��c�b�R�\�\�X�\�\Z14\�h*l��\\\Z��J��\�ϟ�{�>$VC�\�t�\�\�b(` o=*FP����Ip%�\0\�\nD���A3Du !�#N\�\�}��f\�c\�v��;_�\rO�@6�\r�!Z?�:!��\'�`�n��\�@\�T�O�(N�QAT�\�\�AK�.\������\�t\�o�\01\0Vk�l���X\�|��S�(ӥ\�E�\�e�T�7\�6��\�\'.:6�`r��#��j|IeT�ЖC�\�\�İ���b.�B����}MQ\�\�!��\�/?�\��g\�ͽ��\��\0�}B\"�\�!@����*+���\�mh\\nz��+\�\�&�W�^ț\�Q\ZB�\�\rO����\\�.;!���D2\�\�.�\0q,+QJ���kD@�p�\�!��\�>$z\�5Ж\�\�G�C�\�O�:n�\�>\�\��fs\�s\��S�q�\�C*\�w�\�\�z���l\�ZO���2W�LY��Np\��\�\�Fɿ���\�\�Q��`\n\�\�\�U��2\'j��۹�=j\Z\�O��O��\�uJ���\�t\�*\�6\\S<�X�/py�n+���n\�\���\'\�\�\�*W!���7�ğ?o~�\�w�\0�J8�\�\�\�(�v�	���(-O#J$\�сT\n\�\rt�*�L\�x��;\�\�\���)U�\���t(�:\�U?�\�S_��OD\�\n�\��u�.q\�fc1&�?--@\0bG����h\�|�\�Q/c\�i�̸ 1�E\�m\�I\�.��\�c�ʸ�N\���F6\�:3\�(\���\�+k]7Lú�h \�cp�c0�\�@\0*&zg��\�\��\��WK\�D\�ƝGR\�Q���8\\�Ch{\�\�Ba�Ԕi��]\�\�[ǝ2J\��7\�`�^��!T\0=\�@����պ\�+}D%t\�*(����۰�D\n!}\���\�)x\�k\�+&\�E?\���\�=\�\�0�O\��\0\�Fbc�\"�[\� �.�Yܖ�nV�\�\�?���\n\"��\�5T�\0ڦEG�e\�^�P����W��LfQ���͌�\�_t�\�)d��\�\'\�^�e\�6[n8��\�U��O�҅��m����\�2��̳�\0\�R\�H���\\�M\�\�\�F\���-�,�o���C(��1�\�\�l\"\�\r�i*+K\�3or��V\��\�\�C�;\�\��r�\�\�F�\Z\"\�\�\�lb\�Q��Znn\� \�\����/��Ξ\nGo/�\\�2�\n�\'��\�h�.ǡ\�5���|�^~%Ƭ[\�\�_i\�Ѕq\�c\�>�&ذyK �����7\�\�H3�\��\�\�b\�Rǵf\��\n䘙ko3�e�_vv\�ef/p�\"\�u\���o���ܲ\r54\�gh�.x�¾\'�\�qO\�Zp\�+,J��h\��0\�Y\�na�q2|ʋP\�5\n\�M.�,җ�r�\0\�(3��\�\��ҡY8�+&4\�Q\�>�C�!�\�`�ؔ\�Qؔv �\�\�H0\�\�c�,��ޠ^��\\�C?B\0Ah\�Cڢ�\�8Q/�\n@n�\0\�\�h\����۩�M+n���9\����)+���e�fJJ5\�4�1\�*Ir�wQR\n5�yb*�_\�m\����XW\�؟؀Z\�ݽG�-�\�\�@�Sw�#SqFn\�VLnR���.(�v�_\�N���h\�@O�q/0q\�E�Z\"jiԿ��o�e��k�\�\�_�-��9��F\\6�\�\�\�J��/-��\�\�B���K�qk	\�~\'���\�x�\�~%v\�Y�t\�	.A,ߢ+%�\0�p?P#@ޡ��PxJ3@\�>i�q|0\�\�\r�:\�C�\�Ժ�bw�S\�W��\�uCc�vģ�(8�\0\�h�\Z.Q�0G\�<\�\�\"	k�T\�@W��\�zx��Q��ʀ T\Z�k7��6Ծq\��\�',6,0);
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
INSERT INTO `tipo de pago` VALUES (2,'Débito'),(1,'Efectivo'),(3,'Tarjeta de regalo');
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
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usuario`
--

LOCK TABLES `usuario` WRITE;
/*!40000 ALTER TABLE `usuario` DISABLE KEYS */;
INSERT INTO `usuario` VALUES (1,'Josefat','Villarreal','Salazar','2019-10-13 00:18:33','8127488633','Altagracia Cantú 5405-2','josefath98@gmail.com','Josefath98','password1'),(2,'Ademir','Amaral','Arevalo','2019-10-13 01:03:23','8181848487','Hasta la chingada #855, Hasta la verga','ademir@hotmail.com','AkatsukiRead','password2'),(3,'Paola','Cedillo','Rodriguez','2019-10-17 01:52:48','8123989865','Constituyentes de Queretaro #41','paolacedillo@liceo.com','PaolaCedillo','password3'),(4,'Ana','Patricia','Valdes','1997-10-29 00:00:00','8123555566','Crisantemos #898','anavaldes@empresa.com','AnaValdes','password4'),(5,'Bernardo','Gonzales','Isais','1997-05-05 00:00:00',NULL,NULL,'bernardo@isais.com','Berna97','Password4'),(6,'Mendoza','Garen','81818181',NULL,'Password5','juliomendoza@gmail.com','I dont know somewhere','Julio','JulioMendoza97');
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

SET @idArticulo= (SELECT idArtículo FROM artículo ORDER BY idArtículo DESC LIMIT 1 ) + 1; 
SET @idCategoriaP= (SELECT idCategoria FROM Categoria WHERE Categoria.Nombre = CategoriaString );

INSERT INTO `mydb`.`artículo`
(`idArtículo`, `Nombre`, `Descripción`, `Fecha`, `Precio`, `Unidades`, `Categoria`)
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

SET @Ruta1 = ( SELECT Ruta FROM Imagen WHERE Artículo_IdArtículo =  idp  ORDER BY idImagen ASC LIMIT 1 );
SET @Ruta2 = ( SELECT Ruta FROM Imagen WHERE Artículo_IdArtículo =  idp  ORDER BY idImagen DESC LIMIT 1 );
SET @RutaVideo = ( SELECT Video.Ruta FROM Video WHERE Video.Artículo_IdArtículo = idp );

SELECT artículo.idArtículo, artículo.Nombre, artículo.Descripción, artículo.Precio, artículo.Fecha, artículo.Unidades,categoria.Nombre As Categoria, @Ruta1 As Imagen1, @Ruta2 As Imagen2,  @RutaVideo As Video
FROM Artículo
INNER JOIN categoria 
ON categoria.idCategoria = Artículo.Categoria
WHERE artículo.idArtículo = idp;

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
ON artículo.idArtículo = TabladeImagenesdeProducto.idDelArticuloAlQuePertenece;

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

INSERT INTO TabladeImagenesdeProducto(SELECT Artículo_idArtículo, Ruta FROM Imagen GROUP BY Artículo_idArtículo); 

SELECT artículo.idArtículo, artículo.Nombre, artículo.Descripción, artículo.Precio, categoria.Nombre As Categoria, TabladeImagenesdeProducto.Ruta
FROM Artículo
INNER JOIN categoria 
ON categoria.idCategoria = Artículo.Categoria
INNER JOIN TabladeImagenesdeProducto
ON artículo.idArtículo = TabladeImagenesdeProducto.idDelArticuloAlQuePertenece;

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
