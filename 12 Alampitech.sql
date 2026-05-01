CREATE DATABASE  IF NOT EXISTS `alampitech` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `alampitech`;
-- MySQL dump 10.13  Distrib 8.0.36, for Win64 (x86_64)
--
-- Host: localhost    Database: alampitech
-- ------------------------------------------------------
-- Server version	8.0.36

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
-- Table structure for table `articolo`
--

DROP TABLE IF EXISTS `articolo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `articolo` (
  `IDArticolo` int NOT NULL,
  `Tipo` enum('Prodotto','Ricambio') NOT NULL,
  `Brand` varchar(45) NOT NULL,
  `Quantità` int NOT NULL,
  `Descrizione` varchar(150) NOT NULL,
  PRIMARY KEY (`IDArticolo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `articolo`
--

LOCK TABLES `articolo` WRITE;
/*!40000 ALTER TABLE `articolo` DISABLE KEYS */;
INSERT INTO `articolo` VALUES (1423,'Prodotto','Trust',3,'M185 Mouse Wireless, 2,4 GHz con Mini Ricevitore USB'),(3234,'Prodotto','JBL',2,'Tune 510BT Cuffie On-Ear Wireless, Bluetooth 5.0, Pieghevole'),(3245,'Prodotto','Asus',2,'Notebook Vivobook 15 F1504ZA#B086ZRTQH5'),(3276,'Prodotto','Acer',2,'Notebook Aspire 3 A315-24P-R8DK'),(3424,'Ricambio','JPking ',2,'Batteria per laptop Acer Aspire 5742 5741 5733 5750 5749 5560 4253 4551 4552 4738 4741'),(3657,'Ricambio','Corsair',2,'CORSAIR VENGEANCE RGB DDR5 32GB'),(4252,'Prodotto','MSI',1,'Laptop MSI Katana 15 B13VFK-1672IT'),(4356,'Prodotto','Lenovo',4,'Notebook IdeaPad Slim 3 15AMN8'),(4524,'Prodotto','Logitech',2,'Ody II Tastiera Wireless, Resistente agli Schizzi, Ricevitore USB 2.4GHz,'),(7653,'Ricambio','Intel',1,'Processore desktop i7 12400F, 2.5 Ghz, 6 Core, Lga1700, Ram Ddr4');
/*!40000 ALTER TABLE `articolo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `carrello`
--

DROP TABLE IF EXISTS `carrello`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `carrello` (
  `Ordine` int NOT NULL,
  `Articolo` int NOT NULL,
  `Quantita` int NOT NULL,
  PRIMARY KEY (`Ordine`,`Articolo`),
  KEY `fk_magazzino_has_ordine_magazzino1_idx` (`Ordine`),
  KEY `fk_carrello_articolo1_idx` (`Articolo`),
  CONSTRAINT `fk_carrello_articolo1` FOREIGN KEY (`Articolo`) REFERENCES `articolo` (`IDArticolo`),
  CONSTRAINT `fk_carrello_ordine1` FOREIGN KEY (`Ordine`) REFERENCES `ordine` (`NumOrdine`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `carrello`
--

LOCK TABLES `carrello` WRITE;
/*!40000 ALTER TABLE `carrello` DISABLE KEYS */;
INSERT INTO `carrello` VALUES (2784,1423,2),(2784,4524,1),(5689,4252,1);
/*!40000 ALTER TABLE `carrello` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cliente`
--

DROP TABLE IF EXISTS `cliente`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cliente` (
  `IDCliente` int NOT NULL,
  `CF` varchar(16) DEFAULT NULL,
  `PIVA` varchar(11) DEFAULT NULL,
  `Nome` varchar(45) NOT NULL,
  `Cognome` varchar(45) NOT NULL,
  `Indirizzo` varchar(45) NOT NULL,
  `Citta` varchar(45) NOT NULL,
  `CAP` int NOT NULL,
  `Provincia` varchar(2) NOT NULL,
  `Email` varchar(45) DEFAULT NULL,
  `Telefono` varchar(45) NOT NULL,
  `Fedeltà` enum('B','S','G') DEFAULT NULL,
  PRIMARY KEY (`IDCliente`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cliente`
--

LOCK TABLES `cliente` WRITE;
/*!40000 ALTER TABLE `cliente` DISABLE KEYS */;
INSERT INTO `cliente` VALUES (1,'MNNFNC94R31D122U','','Francesco','Mannarino','Via M.L.King ,8','Crotone',88900,'KR','francycrotone@hotmail.it','3933975963','G'),(2,'','56748956321','ITSystem','s.r.l.s.','Via A. Volta, 31','Quattromiglia',87036,'CS','itsys@gmail.com','3567856958','G'),(3,'LCNFNC96T51D122F','','Francesca','Loiacono','Via F. Cilea, 9','Crotone',88900,'KR','loiacono.francesca@gmail.it','3294821630','S'),(4,'','85798523614','CAAF CGIL Calabria','s.r.l.','Via Filippo de Pisis, 3','Quattromiglia',87036,'CS','caaf.calabria@cgil.it','0984404284','B'),(5,'LNGFNC99D23T345I','','Francesco','Langè','C.da Saporita','Rose',87040,'CS','francesco.lange@gmail.com','3568745986','S'),(6,'LMPNTA01G15F456B','','Antonio','Alampi','Viale S. Martino, 210','Taurianova',89029,'RC','antonio.alampi@gmail.com','3215485698','G');
/*!40000 ALTER TABLE `cliente` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fattura`
--

DROP TABLE IF EXISTS `fattura`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `fattura` (
  `NumFattura` int NOT NULL,
  `Sconto` decimal(8,2) DEFAULT NULL,
  `Imponibile` decimal(8,2) NOT NULL,
  `DataFattura` date NOT NULL,
  `Ordine` int NOT NULL,
  `Iva` decimal(8,2) NOT NULL,
  PRIMARY KEY (`NumFattura`),
  KEY `fk_fattura_ordine1_idx` (`Ordine`),
  CONSTRAINT `fk_fattura_ordine1` FOREIGN KEY (`Ordine`) REFERENCES `ordine` (`NumOrdine`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fattura`
--

LOCK TABLES `fattura` WRITE;
/*!40000 ALTER TABLE `fattura` DISABLE KEYS */;
INSERT INTO `fattura` VALUES (1,10.00,1000.00,'2024-07-06',2784,220.00),(2,10.00,1029.99,'2024-07-03',5689,226.38);
/*!40000 ALTER TABLE `fattura` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fornitore`
--

DROP TABLE IF EXISTS `fornitore`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `fornitore` (
  `PIVAFornitore` varchar(11) NOT NULL,
  `RagioneSociale` varchar(45) NOT NULL,
  `Indirizzo` varchar(45) NOT NULL,
  `Citta` varchar(45) NOT NULL,
  `CAP` int NOT NULL,
  `Provincia` varchar(2) NOT NULL,
  `Email` varchar(45) DEFAULT NULL,
  `Telefono` varchar(45) NOT NULL,
  `QuantitaDisp` int NOT NULL,
  `Vettore` varchar(45) NOT NULL,
  `Insolvenze` enum('Si','No') NOT NULL,
  PRIMARY KEY (`PIVAFornitore`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fornitore`
--

LOCK TABLES `fornitore` WRITE;
/*!40000 ALTER TABLE `fornitore` DISABLE KEYS */;
INSERT INTO `fornitore` VALUES ('1435675438','Il Trillo Telefonia s.r.l.s.','Via G. Garibaldi, 229','Messina',98122,'ME','iltrillo@telefonia.info','0905726659',12,'GLS','No'),('1589678542','Ingrosso Tech s.r.l.','Via G. Paolo II, 234','Reggio Calabria',89132,'RC','ingr.tech@gmail.com','0984758569',5,'SDA','No'),('75869574852','Tech s.r.l.','Via Camillo Benso Conte di Cavour, 2','Villanova',40055,'BO','techsrl_vill@gmail.it','05119980715',7,'TNT','No'),('79524859632','FP-TECH s.r.l.','Via Pietro Nenni, 32','Trecastagni ',95039,'CT','fp_tech@libero.it','0957213232',3,'GLS','Si');
/*!40000 ALTER TABLE `fornitore` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ordine`
--

DROP TABLE IF EXISTS `ordine`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ordine` (
  `NumOrdine` int NOT NULL,
  `Cliente` int NOT NULL,
  `Data` date NOT NULL,
  `Stato` enum('In Elaborazione','In Riparazione','Annullato','Completato','Non Riparabile') NOT NULL,
  `Tipo` enum('Acquisto','Assistenza') NOT NULL,
  PRIMARY KEY (`NumOrdine`),
  KEY `fk_ordine_cliente1_idx` (`Cliente`),
  CONSTRAINT `fk_ordine_cliente1` FOREIGN KEY (`Cliente`) REFERENCES `cliente` (`IDCliente`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ordine`
--

LOCK TABLES `ordine` WRITE;
/*!40000 ALTER TABLE `ordine` DISABLE KEYS */;
INSERT INTO `ordine` VALUES (1578,4,'2024-07-05','In Elaborazione','Acquisto'),(2784,1,'2024-07-06','Completato','Acquisto'),(2785,1,'2024-07-04','In Riparazione','Assistenza'),(3453,3,'2024-07-01','In Elaborazione','Acquisto'),(5689,6,'2024-07-03','Completato','Acquisto'),(5795,2,'2024-07-09','Annullato','Assistenza'),(6548,2,'2024-07-01','Non Riparabile','Assistenza'),(7583,4,'2024-07-04','Annullato','Acquisto');
/*!40000 ALTER TABLE `ordine` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ordinerestock`
--

DROP TABLE IF EXISTS `ordinerestock`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ordinerestock` (
  `IDRestock` int NOT NULL,
  `DataRestock` date NOT NULL,
  `Note` varchar(150) DEFAULT NULL,
  `Articolo` int NOT NULL,
  `PIVAFornitore` varchar(11) NOT NULL,
  PRIMARY KEY (`IDRestock`),
  KEY `fk_ordinerestock_fornitore1_idx` (`PIVAFornitore`),
  KEY `fk_ordinerestock_articolo1_idx` (`Articolo`),
  CONSTRAINT `fk_ordinerestock_articolo1` FOREIGN KEY (`Articolo`) REFERENCES `articolo` (`IDArticolo`),
  CONSTRAINT `fk_ordinerestock_fornitore1` FOREIGN KEY (`PIVAFornitore`) REFERENCES `fornitore` (`PIVAFornitore`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ordinerestock`
--

LOCK TABLES `ordinerestock` WRITE;
/*!40000 ALTER TABLE `ordinerestock` DISABLE KEYS */;
INSERT INTO `ordinerestock` VALUES (4536,'2024-06-30','Urgente',1423,'1435675438'),(4633,'2024-06-30',NULL,4524,'79524859632'),(7895,'2024-06-25','',4252,'1589678542');
/*!40000 ALTER TABLE `ordinerestock` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pagamento`
--

DROP TABLE IF EXISTS `pagamento`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pagamento` (
  `Fattura` int NOT NULL,
  `Stato` enum('Effettuato','In Attesa','Non Effettuato') NOT NULL,
  `Importo` decimal(8,2) NOT NULL,
  `DataPagamento` date NOT NULL,
  PRIMARY KEY (`Fattura`),
  CONSTRAINT `fk_pagamento_fattura` FOREIGN KEY (`Fattura`) REFERENCES `fattura` (`NumFattura`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pagamento`
--

LOCK TABLES `pagamento` WRITE;
/*!40000 ALTER TABLE `pagamento` DISABLE KEYS */;
INSERT INTO `pagamento` VALUES (1,'Effettuato',1180.00,'2024-07-06'),(2,'Effettuato',1129.84,'2024-07-03');
/*!40000 ALTER TABLE `pagamento` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `prezzo`
--

DROP TABLE IF EXISTS `prezzo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `prezzo` (
  `IDArticolo` int NOT NULL,
  `DataInizioValidità` date NOT NULL,
  `Valore` decimal(8,2) NOT NULL,
  PRIMARY KEY (`IDArticolo`,`DataInizioValidità`),
  KEY `fk_prezzo_articolo1_idx` (`IDArticolo`),
  CONSTRAINT `fk_prezzo_articolo1` FOREIGN KEY (`IDArticolo`) REFERENCES `articolo` (`IDArticolo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `prezzo`
--

LOCK TABLES `prezzo` WRITE;
/*!40000 ALTER TABLE `prezzo` DISABLE KEYS */;
INSERT INTO `prezzo` VALUES (1423,'2024-06-25',19.99),(1423,'2024-07-01',18.99),(3234,'2024-06-25',22.99),(3245,'2024-06-25',599.99),(3276,'2024-06-25',459.99),(3424,'2024-06-25',59.99),(3657,'2024-06-25',99.99),(4252,'2024-06-25',1029.99),(4356,'2024-06-25',399.99),(4524,'2024-06-25',29.99),(7653,'2024-06-25',129.99);
/*!40000 ALTER TABLE `prezzo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `spedizione`
--

DROP TABLE IF EXISTS `spedizione`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `spedizione` (
  `NumOrdine` int NOT NULL,
  `DataSpedizione` date NOT NULL,
  `DataConsegna` date NOT NULL,
  `Vettore` varchar(45) NOT NULL,
  `NTracking` varchar(45) NOT NULL,
  `Note` varchar(152) DEFAULT NULL,
  `Stato` enum('In Preparazione','In Consegna','Spedito','Consegnato') NOT NULL,
  `Costo` decimal(8,2) NOT NULL,
  PRIMARY KEY (`NumOrdine`),
  CONSTRAINT `fk_spedizione_ordine1` FOREIGN KEY (`NumOrdine`) REFERENCES `ordine` (`NumOrdine`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `spedizione`
--

LOCK TABLES `spedizione` WRITE;
/*!40000 ALTER TABLE `spedizione` DISABLE KEYS */;
INSERT INTO `spedizione` VALUES (2784,'2024-07-06','2024-07-10','SDA','IT876531476','Chiamare prima di consegna','Spedito',9.90),(5689,'2024-07-03','2024-07-07','GLS','IT753653589','Consegna dopo le 18','In Consegna',8.90);
/*!40000 ALTER TABLE `spedizione` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-07-10 16:52:55
