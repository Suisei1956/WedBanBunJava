-- MySQL dump 10.13  Distrib 8.0.29, for Win64 (x86_64)
--
-- Host: localhost    Database: bun
-- ------------------------------------------------------
-- Server version	8.0.29

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
-- Table structure for table `bunbo`
--

DROP TABLE IF EXISTS `bunbo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8 */;
CREATE TABLE `bunbo` (
  `Mamon` int NOT NULL,
  `Tenmon` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `GiaTien` bigint NOT NULL,
  `Tinhtrang` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `Img` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `Mota` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  PRIMARY KEY (`Mamon`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bunbo`
--

LOCK TABLES `bunbo` WRITE;
/*!40000 ALTER TABLE `bunbo` DISABLE KEYS */;
INSERT INTO `bunbo` VALUES (1,'Bún nạm',30000,'Hết hàng','namchaagain.jpg','Bún nạm dai , có gân '),(2,'Bún giò gân',35000,'Còn hàng','nam cha cay.jpg','Giò gân vừa mềm vừa ngon'),(3,'Bún chả nạm',35000,'Còn hàng','nam cha gan.jpg','Thơm thúi thò thè');
/*!40000 ALTER TABLE `bunbo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `chitietdonthang`
--

DROP TABLE IF EXISTS `chitietdonthang`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8 */;
CREATE TABLE `chitietdonthang` (
  `MaDonHang` int NOT NULL,
  `Mamon` int NOT NULL,
  `Soluong` int DEFAULT NULL,
  `Dongia` bigint DEFAULT NULL,
  PRIMARY KEY (`MaDonHang`,`Mamon`),
  KEY `FK__CHITIETDO__Mamon__37A5467C` (`Mamon`),
  CONSTRAINT `FK__CHITIETDO__Mamon__37A5467C` FOREIGN KEY (`Mamon`) REFERENCES `bunbo` (`Mamon`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `chitietdonthang`
--

LOCK TABLES `chitietdonthang` WRITE;
/*!40000 ALTER TABLE `chitietdonthang` DISABLE KEYS */;
/*!40000 ALTER TABLE `chitietdonthang` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `chitiethoadonddt`
--

DROP TABLE IF EXISTS `chitiethoadonddt`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8 */;
CREATE TABLE `chitiethoadonddt` (
  `MaHoaDon` int NOT NULL,
  `Madodungthem` int NOT NULL,
  `Soluong` int DEFAULT NULL,
  `Dongia` bigint DEFAULT NULL,
  PRIMARY KEY (`MaHoaDon`,`Madodungthem`),
  KEY `Madodungthem` (`Madodungthem`),
  CONSTRAINT `chitiethoadonddt_ibfk_1` FOREIGN KEY (`Madodungthem`) REFERENCES `dodungthem` (`Madodungthem`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `chitiethoadonddt`
--

LOCK TABLES `chitiethoadonddt` WRITE;
/*!40000 ALTER TABLE `chitiethoadonddt` DISABLE KEYS */;
/*!40000 ALTER TABLE `chitiethoadonddt` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `chitiethoadonnuoc`
--

DROP TABLE IF EXISTS `chitiethoadonnuoc`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8 */;
CREATE TABLE `chitiethoadonnuoc` (
  `MaHoaDon` int NOT NULL,
  `Manuoc` int DEFAULT NULL,
  `Soluong` int DEFAULT NULL,
  `Dongia` bigint DEFAULT NULL,
  PRIMARY KEY (`MaHoaDon`),
  KEY `Manuoc` (`Manuoc`),
  CONSTRAINT `chitiethoadonnuoc_ibfk_1` FOREIGN KEY (`Manuoc`) REFERENCES `nuoc` (`Manuoc`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `chitiethoadonnuoc`
--

LOCK TABLES `chitiethoadonnuoc` WRITE;
/*!40000 ALTER TABLE `chitiethoadonnuoc` DISABLE KEYS */;
/*!40000 ALTER TABLE `chitiethoadonnuoc` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `chitietmon`
--

DROP TABLE IF EXISTS `chitietmon`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8 */;
CREATE TABLE `chitietmon` (
  `Mahd` int NOT NULL,
  `Madd` int NOT NULL,
  `Mamon` int NOT NULL,
  PRIMARY KEY (`Mahd`,`Madd`,`Mamon`),
  CONSTRAINT `chitietmon_ibfk_1` FOREIGN KEY (`Mahd`) REFERENCES `chitietdonthang` (`MaDonHang`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `chitietmon`
--

LOCK TABLES `chitietmon` WRITE;
/*!40000 ALTER TABLE `chitietmon` DISABLE KEYS */;
/*!40000 ALTER TABLE `chitietmon` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dodungthem`
--

DROP TABLE IF EXISTS `dodungthem`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8 */;
CREATE TABLE `dodungthem` (
  `Madodungthem` int NOT NULL,
  `Tendodung` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `GiaTienDD` decimal(19,4) DEFAULT NULL,
  `Hientrang` tinyint(1) DEFAULT NULL,
  `Imgdd` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`Madodungthem`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dodungthem`
--

LOCK TABLES `dodungthem` WRITE;
/*!40000 ALTER TABLE `dodungthem` DISABLE KEYS */;
INSERT INTO `dodungthem` VALUES (1,'Bò viên',5000.0000,1,'bovien.jpg'),(2,'Thịt bò ',5000.0000,1,'thitbo.jpg'),(3,'Rau thêm',3000.0000,1,'rau.jpg'),(4,'Hành',1000.0000,1,'hanh.jpg');
/*!40000 ALTER TABLE `dodungthem` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dondathang`
--

DROP TABLE IF EXISTS `dondathang`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8 */;
CREATE TABLE `dondathang` (
  `MaDonHang` int NOT NULL,
  `Dathanhtoan` varchar(10) DEFAULT NULL,
  `Tinhtranggiaohang` varchar(10) DEFAULT NULL,
  `Ngaydat` datetime(6) DEFAULT NULL,
  `Ngaygiao` date DEFAULT NULL,
  `IDKH` int DEFAULT NULL,
  `Tongtien` decimal(19,4) DEFAULT NULL,
  PRIMARY KEY (`MaDonHang`),
  KEY `FK__DONDATHANG__IDKH__37A5467C` (`IDKH`),
  CONSTRAINT `FK__DONDATHANG__IDKH__37A5467C` FOREIGN KEY (`IDKH`) REFERENCES `kh` (`IDKH`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dondathang`
--

LOCK TABLES `dondathang` WRITE;
/*!40000 ALTER TABLE `dondathang` DISABLE KEYS */;
/*!40000 ALTER TABLE `dondathang` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `kh`
--

DROP TABLE IF EXISTS `kh`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8 */;
CREATE TABLE `kh` (
  `IDKH` int NOT NULL AUTO_INCREMENT,
  `HoTenKH` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `TaikhoanKH` varchar(50) NOT NULL,
  `MatkhauKH` varchar(33) NOT NULL,
  `EmailKH` varchar(100) NOT NULL,
  `DiachiKH` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `DienthoaiKH` varchar(15) NOT NULL,
  `NgaysinhKH` date NOT NULL,
  PRIMARY KEY (`IDKH`),
  UNIQUE KEY `IDKH_UNIQUE` (`IDKH`),
  UNIQUE KEY `UQ__KH__1FD9F1157BDC19A8` (`TaikhoanKH`),
  UNIQUE KEY `DienthoaiKH_UNIQUE` (`DienthoaiKH`)
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `kh`
--

LOCK TABLES `kh` WRITE;
/*!40000 ALTER TABLE `kh` DISABLE KEYS */;
INSERT INTO `kh` VALUES (34,'bo','ad7532d5b3860a408fbe01f9455dca36','0ecb0a9762098d42a49eebe57b83fdb2','bo@gmail.com','bo','0903700','2022-05-25');
/*!40000 ALTER TABLE `kh` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `manager`
--

DROP TABLE IF EXISTS `manager`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8 */;
CREATE TABLE `manager` (
  `IDM` int NOT NULL,
  `HoTenM` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `TaikhoanM` varchar(50) DEFAULT NULL,
  `MatkhauM` varchar(50) NOT NULL,
  `EmailM` varchar(100) DEFAULT NULL,
  `DiachiM` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `DienthoaiM` varchar(15) DEFAULT NULL,
  `NgaysinhM` date DEFAULT NULL,
  PRIMARY KEY (`IDM`),
  UNIQUE KEY `UQ__Manager__C9ADC98FD99C5A54` (`TaikhoanM`),
  UNIQUE KEY `UQ__Manager__456F8D2E2ADEFF53` (`EmailM`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `manager`
--

LOCK TABLES `manager` WRITE;
/*!40000 ALTER TABLE `manager` DISABLE KEYS */;
/*!40000 ALTER TABLE `manager` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `nuoc`
--

DROP TABLE IF EXISTS `nuoc`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8 */;
CREATE TABLE `nuoc` (
  `Manuoc` int NOT NULL,
  `Nhanhieu` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8_general_ci NOT NULL,
  `Giatien` bigint NOT NULL,
  `Img` varchar(30) NOT NULL,
  PRIMARY KEY (`Manuoc`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `nuoc`
--

LOCK TABLES `nuoc` WRITE;
/*!40000 ALTER TABLE `nuoc` DISABLE KEYS */;
INSERT INTO `nuoc` VALUES (1,'Coca',10000,'coca.jpg'),(2,'Nước mía',10000,'nuocmia.jpg');
/*!40000 ALTER TABLE `nuoc` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-05-24 15:15:33
