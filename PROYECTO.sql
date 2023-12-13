CREATE DATABASE  IF NOT EXISTS `proyectdb` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `proyectdb`;
-- MySQL dump 10.13  Distrib 8.0.17, for Win64 (x86_64)
--
-- Host: localhost    Database: proyectdb
-- ------------------------------------------------------
-- Server version	8.0.17

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
-- Table structure for table `customer`
--
DROP TABLE IF EXISTS `customer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;

CREATE TABLE `customer` (
  `customer_id` int(11) NOT NULL,
  `first_name_customer` varchar(45) NOT NULL,
  `last_name_customer` varchar(255) NOT NULL,
  `address_customer` varchar(45) NOT NULL,
  `phone_number_customer` varchar(45) NOT NULL,
   PRIMARY KEY (`customer_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customer`
--
LOCK TABLES `customer` WRITE;
/*!40000 ALTER TABLE `customer` DISABLE KEYS */;
INSERT INTO `customer` VALUES 
(1,'Sofia','Reyes','Barrio 9 de Octubre','09738465849'),
(2,'Carlos','Perez','Barrio Turismo Ecologico','0944024353'),
(3,'Viviana','Sanchez','Barrio los Moretales','0988654376'),
(4,'Milton','Rodriguez','Barrio Bella Vista','0911002534'),
(5,'Sandra','Alvarado','Barrio los Sauces','0934253645'),
(6,'Fernando','Alva','Barrio Flor de Oriente','0966332134'),
(7,'Karla','Andrade','Barrio flor de Pantano','0965348644'),
(8,'Juliana','Cerda','Barrio Flor de Oriente','0987354123'),
(9,'Maira','Bolaños','Barrio los Sauces','0977332134'),
(10,'Veronica','Barrios','Barrio Bella Vista','0977342345'),
(11,'Mario','Cabezas','Barrio 9 de Octubre','0983154363'),
(12,'Veronica','Palacios','Barrio 6 de Diciembre','0954772349'),
(13,'lucia','Sanchez','Barrio Moretales','0954372379'),
(14,'Juan','Calderon','Barrio Luis Guerra','0965348611'),
(15,'Genesis','Pozo','Barrio 30 de Abril','0985654123'),
(16,'Sofia','Muñoz','Barrio los Ceibos','0933285134'),
(17,'Nayeli','Quiroz','Barrio las Americas','0969341345'),
(18,'Andres','Tanguila','Barrio nuevo Coca ','0933159363'),
(19,'Blanca','Palacios','Barrio 12 de Noviembre','0904002349'),
(20,'Esthela','Sanchez','Barrio Luis Guerra','0954372070'),
(21,'Daniel','Rivas','Barrio Luis Guerra','0965348611'),
(22,'Fernanda','Villamil','Barrio 30 de Abril','0999654100'),
(23,'Alexandra','Vega','Barrio los Ceibos','0911025134'),
(24,'Jose','Tapuy','Barrio Flor de Oriente','0909331346'),
(25,'Raul','Andy','Barrio Turismo Ecologico ','0910159361'),
(26,'Jonhatan','Peña','Barrio 12 de Noviembre','0904262349'),
(27,'Juan','Manzano','Barrio Turismo Ecologico ','0912259361'),
(28,'Mirian','Cerda','Barrio Flor de Oriente','0904202320'),
(29,'Wilmer','Cerda','Barrio Flor de Pantano','0925232321'),
(30,'Silvia','Quiroz','Barrio Vella Vista','0954002070');
/*!40000 ALTER TABLE `customer` ENABLE KEYS */;
UNLOCK TABLES;

DROP TABLE IF EXISTS `product`;
/*!40101 SET @saved_cs_client = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `product` (
  `code_product` VARCHAR(50) NOT NULL,
  `name_product` VARCHAR(50) NOT NULL,
  `price_product` DOUBLE NOT NULL,
  `in_stock` INT(50) NOT NULL,
  `category_product` VARCHAR(50) NOT NULL,
  `size_available` VARCHAR(50) NOT NULL,
  PRIMARY KEY (`code_product`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;


--
-- Dumping data for table `product`

LOCK TABLES `product` WRITE;
/*!40000 ALTER TABLE `product` DISABLE KEYS */;          
INSERT INTO `product` VALUES 
('013HF','camiseta de hombre',8.00,40,'prenda_de_vestir','M'),
('025HJ','Pantalon jean',15.00,30,'prenda_de_vestir','L'),
('03DCH','Blusa negra',7.50,50,'prenda_de_vestir','M'),
('04DCS','Blusa blanca',7.50,50,'prenda_de_vestir','M'),
('05DCH','Zapato',15.00,35,'calzado','Varias tallas'),
('06YTT','Mochila',20.40,20,'escolar','grande'),
('07XTR','Vestido de niña',20.40,20,'prenda_de_vestir','S'),
('08PIF','Boxer',3.00,60,'prenda intima','M'),
('09PIA','Interiores',5.00,60,'prenda intima','M'),
('10XTR','Licra',10,20,'prenda_de_vestir','M'),
('11PIY','Medias',2.50,40,'prenda intima','Varias tallas'),
('12PIV','Enterizo de niña',6.00,50,'prenda de vestir','S'),
('12XTF','Conjunto de niña',6.50,30,'prenda_de_vestir','S'),
('13PIJ','Toalla de baño',5.00,40,'prenda de aseo','M'),
('14PIK','Abrigo',20.00,50,'prenda de vestir','Varias tallas'),
('15XTT','Gora',5.00,20,'prenda_de_vestir','M'),
('16PID','Pantalon Bermuda',5.00,40 ,'prenda intima','M'),
('17PIG','Conjunto de niño',20.00,50,'prenda de vestir','S'),
('18XTV','Brecier',3.00,20,'prenda intima','M');
/*!40000 ALTER TABLE `product` ENABLE KEYS */;
UNLOCK TABLES;

DROP TABLE IF EXISTS `sell`;
/*!40101 SET @saved_cs_client = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sell` (
                `code_sell` VARCHAR(50) NOT NULL,
                `customer_id` INTEGER NOT NULL,
                `name_sell` VARCHAR(50) NOT NULL,
                `date_sell` DATE NOT NULL,
                `payment_method` VARCHAR(255) NOT NULL,
				`code_product` varchar(50) NOT NULL,
				PRIMARY KEY( `code_sell`,`customer_id`,`code_product`),
				KEY `fk_sell_customer1_idx` (`customer_id`),
				KEY `fk_sell_code_product3_idx` (`code_product`),
				CONSTRAINT `fk_sell_customer1` FOREIGN KEY (`customer_id`) REFERENCES `customer` (`customer_id`),
				CONSTRAINT `fk_sell_code_product3` FOREIGN KEY (`code_product`) REFERENCES `product` (`code_product`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;


-- Dumping data for table `sell`

LOCK TABLES `sell` WRITE;
/*!40000 ALTER TABLE `sell` DISABLE KEYS */;
INSERT INTO `sell` VALUES
('V1',1,'Camisata de hombre','2023-08-07','Efectivo','013HF'),
('V2',2,'Blusa negra','2023-08-14','Efectivo','03DCH'),
('V3',3,'Camisata de hombre','2023-08-14','Efectivo','013HF'),
('V4',4,'Boxer','2023-08-14','Efectivo','08PIF'),
('V5',5,'Licra','2023-08-18','Transeferencia','10XTR'),
('V6',6,'Blusa blanca','2023-08-19','Transeferencia','04DCS'),
('V7',7,'Camisata de hombre','2023-08-09','Efectivo','013HF'),
('V8',8,'Zapato','2023-08-19','Efectivo','05DCH'),
('V9',8,'Medias','2023-08-19','Efectivo','11PIY'),
('V10',8,'Enterizo de niña','2023-08-19','Efectivo','12PIV'),
('V11',9,'Conjunto de niña','2023-08-20','Transeferencia','12XTF'),
('V12',9,'Vestido de niña','2023-08-20','Transeferencia','07XTR'),
('V13',10,'Camisata de hombre','2023-08-21','Efectivo','013HF'),
('V14',10,'Conjunto de niña','2023-08-21','Efectivo','12XTF'),
('V15',11,'Toalla de baño','2023-08-22','Efectivo','13PIJ'),
('V16',11,'Camisata de hombre','2023-08-22','Efectivo','07XTR'),
('V17',12,'Mochila','2023-08-28','Transeferencia','06YTT'),
('V18',13,'Mochila','2023-08-28','Efectivo','06YTT'),
('V19',14,'Conjunto de niña','2023-08-31','Efectivo','12XTF'),
('V20',15,'Camisata de hombre','2023-09-02','Efectivo','013HF'),
('V21',16,'Vestido de niña','2023-09-02','Transeferencia','07XTR'),
('V22',17,'Toalla de baño','2023-09-04','De una','13PIJ'),
('V23',4,'Medias','2023-09-04','De una','11PIY'),
('V24',17,'Blusa negra','2023-09-04','De una','03DCH'),
('V25',18,'Enterizo de niña','2023-09-05','Efectivo','12PIV'),
('V26',18,'Conjunto de niña','2023-09-05','Efectivo','12XTF'),
('V27',7,'Pantalon jean','2023-09-20','De una','025HJ'),
('V28',19,'Vestido de niña','2023-09-23','Efectivo','07XTR'),
('V29',19,'Conjunto de niño','2023-09-23','Efectivo','17PIG'),
('V30',3,'Abrigo','2023-09-23','Efectivo','14PIK'),
('V31',19,'Medias','2023-09-23','Efectivo','11PIY'),
('V32',20,'Blusa negra','2023-09-26','De una','03DCH'),
('V33',21,'Blusa blanca','2023-09-29','De una','04DCS'),
('V34',22,'Blusa negra','2023-09-30','Efectivo','03DCH'),
('V35',17,'Pantalon jean','2023-10-02','Efectivo','025HJ'),
('V36',17,'Vestido de niña','2023-10-02','Efectivo','07XTR'),
('V37',23,'Pantalon jean','2023-10-04','Efectivo','025HJ'),
('V38',23,'Vestido de niña','2023-10-04','Efectivo','07XTR'),
('V39',29,'Licra','2023-10-04','Efectivo','10XTR'),
('V40',23,'Blusa negra','2023-10-04','Efectivo','03DCH'),
('V41',24,'Blusa blanca','2023-11-12','Efectivo','04DCS'),
('V42',30,'Calzon','2023-11-12','Efectivo','09PIA'),
('V43',24,'Toalla de baño','2023-11-12','Efectivo','13PIJ'),
('V44',25,'Licra','2023-11-12','Efectivo','10XTR'),
('V45',25,'Conjunto de niña','2023-11-13','Efectivo','12XTF'),
('V46',26,'Brecier','2023-11-13','Efectivo','18XTV'),
('V47',27,'Boxer','2023-11-20','Efectivo','08PIF'),
('V48',28,'Pantalon Bermuda','2023-11-20','Efectivo','16PID'),
('V49',29,'Blusa Blanca','2023-11-20','Efectivo','04DCS'),
('V50',30,'Conjunto de niña','2023-11-27','Efectivo','12XTF'),
('V51',2,'Licra','2023-12-01','Efectivo','10XTR'),
('V52',2,'Conjunto de niño','2023-12-01','Efectivo','17PIG');
/*!40000 ALTER TABLE `sell` ENABLE KEYS */;
UNLOCK TABLES;

DROP TABLE IF EXISTS `sell_x_product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;

CREATE TABLE `sell_x_product` (
                `code_sell` VARCHAR(50) NOT NULL,
                `customer_id` INTEGER NOT NULL,
                `code_product` VARCHAR(50) NOT NULL,
				PRIMARY KEY (`code_sell`,`customer_id`,`code_product`),
				KEY `fk_sell_x_product_sell_code1_x` (`code_sell`),
				KEY `fk_sell_x_product_customer1_idx` (`customer_id`),
				KEY `fk_sell_x_product_product1_idx` (`code_sell`),
				CONSTRAINT `fk_sell_x_product_sell_code1` FOREIGN KEY (`code_sell`) REFERENCES `sell` (`code_sell`),
				CONSTRAINT `fk_sell_x_product_customer1` FOREIGN KEY (`customer_id`) REFERENCES `customer` (`customer_id`),
				CONSTRAINT `fk_sell_x_product_product1` FOREIGN KEY (`code_product`) REFERENCES `product` (`code_product`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
--
-- Dumping data for table `SELL_X_PRODUCT`
--

LOCK TABLES `sell_x_product` WRITE;
/*!40000 ALTER TABLE `sell_x_product` DISABLE KEYS */;
INSERT INTO `sell_x_product` VALUES 
('V1',1,'013HF'),
('V2',2,'03DCH'),
('V3',3,'013HF'),
('V4',4,'08PIF'),
('V5',5,'10XTR'),
('V6',6,'04DCS'),
('V7',7,'013HF'),
('V8',8,'05DCH'),
('V9',8,'11PIY'),
('V10',8,'12PIV'),
('V11',9,'12XTF'),
('V12',9,'07XTR'),
('V13',10,'013HF'),
('V14',10,'12XTF'),
('V15',11,'13PIJ'),
('V16',11,'013HF'),
('V17',12,'06YTT'),
('V18',13,'06YTT'),
('V19',14,'12XTF'),
('V20',15,'013HF'),
('V21',16,'07XTR'),
('V22',17,'13PIJ'),
('V23',4,'11PIY'),
('V24',17,'03DCH'),
('V25',18,'12PIV'),
('V26',18,'12XTF'),
('V27',7,'025HJ'),
('V28',19,'07XTR'),
('V29',19,'17PIG'),
('V30',3,'14PIK'),
('V31',19,'11PIY'),
('V32',20,'03DCH'),
('V33',21,'04DCS'),
('V34',22,'03DCH'),
('V35',17,'025HJ'),
('V36',17,'07XTR'),
('V37',23,'025HJ'),
('V38',23,'07XTR'),
('V39',29,'10XTR'),
('V40',23,'03DCH'),
('V41',24,'04DCS'),
('V42',30,'09PIA'),
('V43',24,'13PIJ'),
('V44',25,'10XTR'),
('V45',25,'12XTF'),
('V46',26,'18XTV'),
('V47',27,'08PIF'),
('V48',28,'16PID'),
('V49',29,'04DCS'),
('V50',30,'12XTF'),
('V51',2,'10XTR'),
('V52',2,'17PIG');
/*!40000 ALTER TABLE `sell_x_product` ENABLE KEYS */;
UNLOCK TABLES;



DROP TABLE IF EXISTS `devolution`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `devolution` (
                `code_devolution` VARCHAR(50) NOT NULL,
                `code_sell` VARCHAR(50) NOT NULL,
                `customer_id` INTEGER NOT NULL,
                `code_product` VARCHAR(50) NOT NULL,
                `name_devolution` VARCHAR(50) NOT NULL,
                `date_devolution` DATE NOT NULL,
                `quantity_devolution` VARCHAR(50) NOT NULL,
                `product_change` VARCHAR(50) NOT NULL,
                `reason_devolution` VARCHAR(50) NOT NULL,
				PRIMARY KEY(`code_devolution`,`code_sell`,`customer_id`,`code_product`),
                KEY `fk_devolution_sell_code1_x` (`code_sell`),
				KEY `fk_devolution_customer1_idx` (`customer_id`),
				KEY `fk_devolution_product1_idx` (`code_product`),
				CONSTRAINT `fk_devolution_sell_code1` FOREIGN KEY (`code_sell`) REFERENCES `sell` (`code_sell`),
				CONSTRAINT `fk_devolution_customer1` FOREIGN KEY (`customer_id`) REFERENCES `customer` (`customer_id`),
				CONSTRAINT `fk_devolution_product1` FOREIGN KEY (`code_product`) REFERENCES `product` (`code_product`)
)ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `devolution`
--

LOCK TABLES `devolution` WRITE;
/*!40000 ALTER TABLE `devolution` DISABLE KEYS */;
INSERT INTO `devolution` VALUES ('01DEV','V12',9,'07XTR','Vestido de niña','2023-08-20','1','Blusa negra','Talla muy pequeña'),
('02DEV','V5',5,'10XTR','Licra','2023-08-18','1','Conjunto de niña','Talla muy pequeña');

/*!40000 ALTER TABLE `devolution` ENABLE KEYS */;
UNLOCK TABLES;


DROP TABLE IF EXISTS `distributor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `distributor` (
                `distributor_id` INT(10) NOT NULL,
                `first_name_distributor` VARCHAR(50) NOT NULL,
                `last_name_distributor` VARCHAR(50) NOT NULL,
                `address_distr` VARCHAR(50) NOT NULL,
                `phone_number_distr` VARCHAR(50) NOT NULL,
				`name_product` VARCHAR(50) NOT NULL,
				PRIMARY KEY(`distributor_id`)
)ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;


--
-- Dumping data for table `distributor`
--

LOCK TABLES `distributor` WRITE;
/*!40000 ALTER TABLE `distributor` DISABLE KEYS */;
INSERT INTO `distributor` VALUES
(1,'Juan','Garcia','De la cuidad de Quito','0965384722','Prendas de Vestir'),
(2,'Daniel','Casierra','De la cuidad de Ambato','0905383700','Prendas de mujeres'),
(3,'Andres','Ortega','De la cuidad de Ambato','0905383700','Calzado'),
(4,'Alex','Zambrano','De la cuidad de Guayaquil','0911384701','Prendas Escolares'),
(5,'Paul','Reyes','Barrio 9 de Octubre','0912324001','Prendas de vestir de hombres');
/*!40000 ALTER TABLE `distributor` ENABLE KEYS */;
UNLOCK TABLES;


DROP TABLE IF EXISTS `buy`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `buy`(
                `code_buy` VARCHAR(50) NOT NULL,
                `distributor_id` INT(10) NOT NULL,
				`provincial_purchases` VARCHAR(50),
                `name_buy` VARCHAR(50) NOT NULL,
                `date_buy` DATE NOT NULL,
                `quantity_buy` VARCHAR(50) NOT NULL,
                `order_status` VARCHAR(50) NOT NULL,
				PRIMARY KEY (`code_buy`,`distributor_id`),
				KEY `fk_buy_distributor1_idx` (`distributor_id`),
				CONSTRAINT `fk_buy_distributor1` FOREIGN KEY (`distributor_id`) REFERENCES `distributor` (`distributor_id`)			
)ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

              
--
-- Dumping data for table `buy`
--
LOCK TABLES `buy` WRITE;
/*!40000 ALTER TABLE `buy` DISABLE KEYS */;
INSERT INTO `buy` VALUES
('01COMP',1,'Compra directa en la cuidad de Quito','Blusas para niñas','2023-07-29','20 paquetes','Bueno'),
('02COMP',1,'Compra directa en la cuidad de Quito','Pantalones jean','2023-07-29','15 unidades','Bueno'),
('03COMP',1,'Compra directa en la cuidad de Quito','Vestidos para niñas','2023-07-29','10 paquetes','Bueno'),
('04COMP',1,'Compra directa en la cuidad de Quito','Conjuntos de niñas','2023-07-29','15 unidades','Bueno'),
('05COMP',1,'Compra directa en la cuidad de Quito','Conjuntos de niños','2023-07-29','20 paquetes','Bueno'),
('06COMP',1,'Compra directa en la cuidad de Quito','Goras','2023-07-29','25 paquetes','Bueno'),
('07COMP',1,'Compra directa en la cuidad de Quito','Pantalon Bermuda','2023-07-29','15 unidades','Bueno'),
('08COMP',1,'Compra directa en la cuidad de Quito','Enterizo de niña','2023-07-29','20 paquetes','Bueno'),
('09COMP',2,'Compra directa en la cuidad de Ambato','Prendas intemas de mujeres','2023-08-03','25 unidades','Bueno'),
('10COMP',2,'Compra directa en la cuidad de Ambato','licras','2023-08-03','25 unidades','Bueno'),
('11COMP',2,'Compra directa en la cuidad de Ambato','Abrigo para mujeres','2023-08-03','10 unidades','Bueno'),
('10COMP',3,'Compra directa en la cuidad de Ambato','Compra de todo tipo de calzado','2023-08-03','25 unidades','Bueno'),
('12COMP',4,'Compra directa en la cuidad de Guayaquil','Compra de mochilas','2023-09-28','10 unidades','Bueno'),
('13COMP',5,'Compra a distribuidor','Camisetas de hombres','2023-07-30','25 unidades','Bueno'),
('14COMP',5,'distribuidor','Abrigo para hombres','2023-07-29','10 unidades','Bueno'),
('15COMP',5,'Compra a distribuidor','Camisas de hombres','2023-08-02','20 unidades','Bueno'),
('16COMP',5,'Compra a distribuidor','Compra de Boxer','2023-08-02','30 unidades','Bueno'),
('17COMP',5,'Compra a distribuidor','Compra de Medias','2023-08-02','30 unidades','Bueno');
/*!40000 ALTER TABLE `buy` ENABLE KEYS */;
UNLOCK TABLES;



DROP TABLE IF EXISTS `buy_product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;

CREATE TABLE `buy_product` (
				`code_product` VARCHAR(50) NOT NULL,
				`code_buy` VARCHAR(50) NOT NULL,
				`distributor_id` INT(10) NOT NULL,
				PRIMARY KEY (`code_product`,`code_buy`,`distributor_id`),
				KEY `fk_buy_product_code_product1_x`(`code_product`),
				KEY `fk_buy_product_code_buy1_x` (`code_buy`),
				KEY `fk_buy_product_distributor1_idx` (`distributor_id`),
				CONSTRAINT `fk_buy_product_code_product1` FOREIGN KEY (`code_product`)  REFERENCES `product` (`code_product`), 
				CONSTRAINT `fk_buy_product_code_buy1` FOREIGN KEY (`code_buy`)  REFERENCES `buy` (`code_buy`),
				CONSTRAINT `fk_buy_product_distributor1` FOREIGN KEY (`distributor_id`)  REFERENCES `distributor` (`distributor_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
--				
				
--
-- Dumping data for table `buy_product`
--

LOCK TABLES `buy_product` WRITE;
/*!40000 ALTER TABLE `buy_product` DISABLE KEYS */;
INSERT INTO `buy_product` VALUES 
('03DCH','01COMP',1),
('025HJ','02COMP',1),
('07XTR','03COMP',1),
('12XTF','04COMP',1),
('17PIG','05COMP',1),
('15XTT','06COMP',1),
('16PID','07COMP',1),
('12PIV','08COMP',1),
('09PIA','09COMP',2),
('10XTR','10COMP',2),
('14PIK','11COMP',2),
('05DCH','10COMP',3),
('06YTT','12COMP',4),
('013HF','13COMP',5),
('14PIK','14COMP',5),
('013HF','15COMP',5),
('08PIF','16COMP',5),
('11PIY','17COMP',5);
/*!40000 ALTER TABLE `buy_product` ENABLE KEYS */;
UNLOCK TABLES;


/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-06-28  1:06:00


