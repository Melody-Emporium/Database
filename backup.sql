-- MariaDB dump 10.19  Distrib 10.4.32-MariaDB, for Win64 (AMD64)
--
-- Host: localhost    Database: melody_emporium
-- ------------------------------------------------------
-- Server version	8.3.0

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `artists`
--

DROP TABLE IF EXISTS `artists`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `artists` (
  `artist_id` int NOT NULL,
  `name` varchar(255) NOT NULL,
  `picture_url` tinytext,
  `main_genre` tinytext,
  PRIMARY KEY (`artist_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `artists`
--

LOCK TABLES `artists` WRITE;
/*!40000 ALTER TABLE `artists` DISABLE KEYS */;
INSERT INTO `artists` VALUES (1,'Michael Jackson',NULL, 'Rock'),(2,'The Beatles',NULL, 'Pop'),(3,'Elvis Presley',NULL,'Rock'),(4,'Madonna',NULL,'Rock'),(5,'Queen',NULL,'Alternativa'),(6,'Bob Dylan',NULL,'Electrónica'),(7,'David Bowie',NULL,'Techno'),(8,'Prince',NULL,'Clásica'),(9,'Led Zeppelin',NULL,'Rock'),(10,'Bob Marley',NULL,'Rock'),(11,'Pink Floyd',NULL,'Rock'),(12,'Beyoncé',NULL,'Rock'),(13,'The Rolling Stones',NULL,'Rock'),(14,'Bruce Springsteen',NULL,'Rock'),(15,'U2',NULL,'Rock'),(16,'Stevie Wonder',NULL,'Rock'),(17,'Adele',NULL,'Rock'),(18,'Eminem',NULL,'Rock'),(19,'Whitney Houston',NULL,'Rock'),(20,'Coldplay',NULL,'Rock'),(21,'Taylor Swift',NULL,'Caca'),(22,'Rihanna',NULL,'Rock'),(23,'Metallica',NULL,'Rock'),(24,'Kanye West',NULL,'Rock'),(25,'Nirvana',NULL,'Rock');
/*!40000 ALTER TABLE `artists` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cart_items`
--

DROP TABLE IF EXISTS `cart_items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cart_items` (
  `cart_item` int NOT NULL,
  `product_id` int NOT NULL,
  `cart_id` int NOT NULL,
  `unit_price` decimal(10,2) unsigned NOT NULL,
  `amount` decimal(10,2) unsigned NOT NULL,
  `quantity` int NOT NULL,
  PRIMARY KEY (`cart_item`),
  KEY `fk_cart_items_products` (`product_id`),
  KEY `fk_cart_items_carts` (`cart_id`),
  CONSTRAINT `fk_cart_items_carts` FOREIGN KEY (`cart_id`) REFERENCES `carts` (`cart_id`),
  CONSTRAINT `fk_cart_items_products` FOREIGN KEY (`product_id`) REFERENCES `products` (`product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cart_items`
--

LOCK TABLES `cart_items` WRITE;
/*!40000 ALTER TABLE `cart_items` DISABLE KEYS */;
INSERT INTO `cart_items` VALUES (1,1,1,29.99,29.99,1),(2,2,2,12.99,25.98,2),(3,3,3,9.99,9.99,1),(4,4,4,24.99,24.99,1),(5,5,5,14.99,29.98,2),(6,6,6,11.99,35.97,3),(7,7,7,27.99,27.99,1),(8,8,8,16.99,16.99,1),(9,9,9,21.99,65.97,3),(10,10,10,18.99,75.96,4),(11,11,11,29.99,59.98,2),(12,12,12,19.99,79.96,4),(13,13,13,23.99,47.98,2),(14,14,14,17.99,17.99,1),(15,15,15,25.99,77.97,3),(16,16,16,15.99,15.99,1),(17,17,17,22.99,91.96,4),(18,18,18,13.99,13.99,1),(19,19,19,20.99,41.98,2),(20,20,20,11.99,23.98,2),(21,21,21,26.99,26.99,1),(22,22,22,14.99,29.98,2),(23,23,23,30.99,92.97,3),(24,24,24,18.99,37.98,2),(25,25,25,24.99,74.97,3);
/*!40000 ALTER TABLE `cart_items` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `carts`
--

DROP TABLE IF EXISTS `carts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `carts` (
  `cart_id` int NOT NULL,
  `user_id` int NOT NULL,
  `subtotal` decimal(10,2) NOT NULL DEFAULT '0.00',
  PRIMARY KEY (`cart_id`),
  KEY `fk_carts_clients` (`user_id`),
  CONSTRAINT `fk_carts_clients` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `carts`
--

LOCK TABLES `carts` WRITE;
/*!40000 ALTER TABLE `carts` DISABLE KEYS */;
INSERT INTO `carts` VALUES (1,1,50.25),(2,2,75.80),(3,3,100.00),(4,4,25.50),(5,5,60.75),(6,6,80.20),(7,7,90.00),(8,8,35.99),(9,9,70.45),(10,10,110.60),(11,11,45.75),(12,12,88.30),(13,13,120.00),(14,14,55.99),(15,15,65.25),(16,16,95.80),(17,17,130.00),(18,18,40.50),(19,19,75.75),(20,20,85.20),(21,21,99.00),(22,22,48.99),(23,23,110.45),(24,24,140.60),(25,25,60.75);
/*!40000 ALTER TABLE `carts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `client_ratings`
--

DROP TABLE IF EXISTS `client_ratings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `client_ratings` (
  `client_rating_id` int NOT NULL,
  `stars_given` tinyint NOT NULL,
  `comments` tinytext,
  `date_recorded` date NOT NULL,
  `product_id` int DEFAULT NULL,
  `user_id` int NOT NULL,
  PRIMARY KEY (`client_rating_id`),
  KEY `fk_client_ratings_products` (`product_id`),
  KEY `fk_client_ratings_clients` (`user_id`),
  CONSTRAINT `fk_client_ratings_clients` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`),
  CONSTRAINT `fk_client_ratings_products` FOREIGN KEY (`product_id`) REFERENCES `products` (`product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `client_ratings`
--

LOCK TABLES `client_ratings` WRITE;
/*!40000 ALTER TABLE `client_ratings` DISABLE KEYS */;
INSERT INTO `client_ratings` VALUES (1,5,'¡Excelente producto!','2024-03-01',1,1),(2,4,'Buen vinilo, pero la entrega fue un poco lenta.','2024-02-28',2,2),(3,5,'¡Me encanta este casete! Gran calidad de sonido.','2024-02-29',3,3),(4,4,'Muy buen vinilo, aunque la portada llegó un poco dañada.','2024-03-01',4,4),(5,5,'¡Increíble CD! Sonido perfecto.','2024-03-02',5,5),(6,4,'El casete tiene un buen sonido, pero el estuche está roto.','2024-03-03',6,6),(7,5,'¡Maravilloso vinilo! Entrega rápida y en perfectas condiciones.','2024-03-04',7,7),(8,4,'CD excelente, pero la entrega se retrasó un poco.','2024-03-05',8,8),(9,5,'Gran vinilo, exactamente como se describe.','2024-03-06',9,9),(10,4,'Buen CD, pero la portada llegó rayada.','2024-03-07',10,10),(11,5,'¡Impresionante vinilo! ¡Lo recomiendo completamente!','2024-03-08',11,11),(12,4,'Buen CD, pero esperaba una mejor calidad de sonido.','2024-03-09',12,12),(13,5,'¡El mejor vinilo que he comprado! ¡Sonido espectacular!','2024-03-10',13,13),(14,4,'El CD llegó un poco tarde, pero está en buenas condiciones.','2024-03-11',14,14),(15,5,'Vinilo de alta calidad, excelente servicio al cliente.','2024-03-12',15,15),(16,4,'Buen CD, pero la entrega se retrasó un poco.','2024-03-13',16,16),(17,5,'¡Me encanta este vinilo! ¡Sonido perfecto!','2024-03-14',17,17),(18,4,'CD excelente, pero la portada llegó dañada.','2024-03-15',18,18),(19,5,'Gran vinilo, exactamente como se describe.','2024-03-16',19,19),(20,4,'Buen CD, pero esperaba una mejor calidad de sonido.','2024-03-17',20,20),(21,5,'¡El mejor vinilo que he comprado! ¡Sonido espectacular!','2024-03-18',21,21),(22,4,'El CD llegó un poco tarde, pero está en buenas condiciones.','2024-03-19',22,22),(23,5,'Vinilo de alta calidad, excelente servicio al cliente.','2024-03-20',23,23),(24,4,'Buen CD, pero la entrega se retrasó un poco.','2024-03-21',24,24),(25,5,'¡Me encanta este vinilo! ¡Sonido perfecto!','2024-03-22',25,25);
/*!40000 ALTER TABLE `client_ratings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `genres`
--

DROP TABLE IF EXISTS `genres`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `genres` (
  `genre_id` int NOT NULL,
  `name` varchar(255) NOT NULL,
  `picture_url` tinytext,
  PRIMARY KEY (`genre_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `genres`
--

LOCK TABLES `genres` WRITE;
/*!40000 ALTER TABLE `genres` DISABLE KEYS */;
INSERT INTO `genres` VALUES (1,'Rock',NULL),(2,'Pop',NULL),(3,'Hip Hop',NULL),(4,'R&B',NULL),(5,'Country',NULL),(6,'Electronic',NULL),(7,'Jazz',NULL),(8,'Blues',NULL),(9,'Reggae',NULL),(10,'Classical',NULL),(11,'Folk',NULL),(12,'Indie',NULL),(13,'Metal',NULL),(14,'Punk',NULL),(15,'Soul',NULL),(16,'Funk',NULL),(17,'Disco',NULL),(18,'Gospel',NULL),(19,'Techno',NULL),(20,'House',NULL),(21,'Ambient',NULL),(22,'Dubstep',NULL),(23,'Ska',NULL),(24,'Trance',NULL),(25,'Latin',NULL);
/*!40000 ALTER TABLE `genres` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product_categories`
--

DROP TABLE IF EXISTS `product_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `product_categories` (
  `product_category_id` int NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` tinytext NOT NULL,
  `color` varchar(6) DEFAULT 'ECD0C0',
  `picture_url` tinytext,
  PRIMARY KEY (`product_category_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product_categories`
--

LOCK TABLES `product_categories` WRITE;
/*!40000 ALTER TABLE `product_categories` DISABLE KEYS */;
INSERT INTO `product_categories` VALUES (1,'Vinilos','Vinilos musicales','FF0000',NULL),(2,'CDs','CDs musicales','0000FF',NULL),(3,'Casetes','Casetes musicales','00FF00',NULL),(4,'Ediciones Especiales de Vinilos','Vinilos musicales ediciones especiales','FF00FF',NULL),(5,'Ediciones Especiales de CDs','CDs musicales ediciones especiales','FFFF00',NULL),(6,'Ediciones Especiales de Casetes','Casetes musicales ediciones especiales','00FFFF',NULL),(7,'Vinilos Clásicos','Vinilos de música clásica','800000',NULL),(8,'Vinilos de Rock','Vinilos de música rock','008000',NULL),(9,'Vinilos de Pop','Vinilos de música pop','800080',NULL),(10,'CDs de Jazz','CDs de música jazz','008080',NULL),(11,'CDs de Blues','CDs de música blues','000080',NULL),(12,'CDs de Indie','CDs de música indie','8000FF',NULL),(13,'Casetes de Reggae','Casetes de música reggae','FFFF80',NULL),(14,'Casetes de Folk','Casetes de música folk','808000',NULL),(15,'Vinilos de Metal','Vinilos de música metal','C0C0C0',NULL),(16,'CDs de Punk','CDs de música punk','FFA500',NULL),(17,'Vinilos de Soul','Vinilos de música soul','FF4500',NULL),(18,'Casetes de Funk','Casetes de música funk','A52A2A',NULL),(19,'CDs de Country','CDs de música country','FFD700',NULL),(20,'Vinilos de Reggaetón','Vinilos de música reggaetón','2F4F4F',NULL),(21,'CDs de Electrónica','CDs de música electrónica','ADFF2F',NULL),(22,'Casetes de R&B','Casetes de música R&B','D2B48C',NULL),(23,'Vinilos de Hip Hop','Vinilos de música hip hop','8A2BE2',NULL),(24,'CDs de Clásica','CDs de música clásica','4B0082',NULL),(25,'Casetes de Rock','Casetes de música rock','FFFF00',NULL);
/*!40000 ALTER TABLE `product_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `products`
--

DROP TABLE IF EXISTS `products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `products` (
  `product_id` int NOT NULL,
  `name` tinytext NOT NULL,
  `short_description` longtext NOT NULL,
  `details` longtext NOT NULL,
  `features` longtext NOT NULL,
  `picture_url` tinytext NOT NULL,
  `price` decimal(10,2) NOT NULL DEFAULT '0.00',
  `promo_price` decimal(10,2) DEFAULT '0.00',
  `units_in_stock` int NOT NULL DEFAULT '0',
  `product_category_id` int DEFAULT NULL,
  `genre_id` int DEFAULT NULL,
  `artist_id` int DEFAULT NULL,
  `primary_variant_price` decimal(10,2) unsigned DEFAULT NULL,
  `rating_stars` tinyint NOT NULL DEFAULT '0',
  PRIMARY KEY (`product_id`),
  KEY `fk_products_product_categories` (`product_category_id`),
  KEY `fk_products_genres` (`genre_id`),
  KEY `fk_products_artists` (`artist_id`),
  CONSTRAINT `fk_products_artists` FOREIGN KEY (`artist_id`) REFERENCES `artists` (`artist_id`),
  CONSTRAINT `fk_products_genres` FOREIGN KEY (`genre_id`) REFERENCES `genres` (`genre_id`),
  CONSTRAINT `fk_products_product_categories` FOREIGN KEY (`product_category_id`) REFERENCES `product_categories` (`product_category_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `products`
--

LOCK TABLES `products` WRITE;
/*!40000 ALTER TABLE `products` DISABLE KEYS */;
INSERT INTO `products` VALUES (1,'Vinilo de Thriller','Vinilo de Michael Jackson','Vinilo de edición especial del álbum Thriller de Michael Jackson.','Vinilo LP de 180 gramos. Edición remasterizada.','',29.99,NULL,50,4,17,1,29.99,4),(2,'CD de Abbey Road','CD de The Beatles','CD remasterizado del álbum Abbey Road de The Beatles.','CD con calidad de sonido mejorada.','',12.99,NULL,100,5,1,2,12.99,4),(3,'Casete de Elvis Presley','Casete de Elvis Presley','Casete original del álbum Greatest Hits de Elvis Presley.','Casete de alta calidad en estuche de plástico.','',9.99,NULL,30,6,3,2,9.99,4),(4,'Vinilo de Like a Prayer','Vinilo de Madonna','Vinilo de la artista Madonna con el álbum Like a Prayer.','Vinilo LP de 180 gramos. Edición limitada.','',24.99,NULL,75,4,18,4,24.99,4),(5,'CD de Greatest Hits','CD de Queen','CD con los mejores éxitos de Queen','CD con calidad de sonido impecable.','',14.99,NULL,80,5,1,5,14.99,4),(6,'Casete de Highway 61 Revisited','Casete de Bob Dylan','Casete original del álbum Highway 61 Revisited de Bob Dylan.','Casete vintage en estuche de cartón.','',11.99,NULL,40,6,11,6,11.99,4),(7,'Vinilo de Ziggy Stardust','Vinilo de David Bowie','Vinilo del legendario álbum The Rise and Fall of Ziggy Stardust de David Bowie.','Vinilo LP de 180 gramos. Edición limitada.','',27.99,NULL,60,4,7,7,27.99,4),(8,'CD de Purple Rain','CD de Prince','CD del icónico álbum Purple Rain de Prince.','CD con calidad de sonido mejorada.','',16.99,NULL,90,5,1,8,16.99,4),(9,'Vinilo de IV','Vinilo de Led Zeppelin','Vinilo del álbum IV de Led Zeppelin.','Vinilo LP de 180 gramos. Edición remasterizada.','',21.99,NULL,70,4,13,9,21.99,4),(10,'CD de Legend','CD de Bob Marley','CD del legendario álbum Legend de Bob Marley.','CD con calidad de sonido excepcional.','',18.99,NULL,110,5,1,10,18.99,4),(11,'Vinilo de The Dark Side of the Moon','Vinilo de Pink Floyd','Vinilo de la famosa obra The Dark Side of the Moon de Pink Floyd.','Vinilo LP de 180 gramos. Edición limitada.','',29.99,NULL,85,4,11,11,29.99,4),(12,'CD de Lemonade','CD de Beyoncé','CD del álbum Lemonade de Beyoncé.','CD con contenido visual y calidad de sonido superior.','',19.99,NULL,95,5,1,12,19.99,4),(13,'Vinilo de Sticky Fingers','Vinilo de The Rolling Stones','Vinilo del clásico álbum Sticky Fingers de The Rolling Stones.','Vinilo LP de 180 gramos. Incluye la icónica portada con cremallera.','',23.99,NULL,65,4,13,13,23.99,4),(14,'CD de Born to Run','CD de Bruce Springsteen','CD del álbum Born to Run de Bruce Springsteen.','CD remasterizado con material adicional.','',17.99,NULL,120,5,1,14,17.99,4),(15,'Vinilo de The Joshua Tree','Vinilo de U2','Vinilo del exitoso álbum The Joshua Tree de U2.','Vinilo LP de 180 gramos. Edición remasterizada.','',25.99,NULL,55,4,17,15,25.99,4),(16,'CD de Songs in the Key of Life','CD de Stevie Wonder','CD del aclamado álbum Songs in the Key of Life de Stevie Wonder.','CD con calidad de sonido excepcional.','',15.99,NULL,105,5,1,16,15.99,4),(17,'Vinilo de 25','Vinilo de Adele','Vinilo del exitoso álbum 25 de Adele.','Vinilo LP de 180 gramos. Incluye éxitos como \"Hello\" y \"Rolling in the Deep\".','',22.99,NULL,45,4,17,17,22.99,4),(18,'CD de Recovery','CD de Eminem','CD del álbum Recovery de Eminem.','CD con letras explícitas y ritmos potentes.','',13.99,NULL,130,5,1,18,13.99,4),(19,'Vinilo de Whitney Houston','Vinilo de Whitney Houston','Vinilo de los mejores éxitos de Whitney Houston.','Vinilo LP de 180 gramos. Edición especial.','',20.99,NULL,75,4,15,19,20.99,4),(20,'CD de A Rush of Blood to the Head','CD de Coldplay','CD del álbum A Rush of Blood to the Head de Coldplay.','CD con calidad de sonido impecable.','',11.99,NULL,140,5,1,20,11.99,4),(21,'Vinilo de 1989','Vinilo de Taylor Swift','Vinilo del exitoso álbum 1989 de Taylor Swift.','Vinilo LP de 180 gramos. Edición especial.','',26.99,NULL,50,4,17,21,26.99,4),(22,'CD de Anti','CD de Rihanna','CD del álbum Anti de Rihanna.','CD con contenido exclusivo y calidad de sonido superior.','',14.99,NULL,160,5,1,22,14.99,4),(23,'Vinilo de Master of Puppets','Vinilo de Metallica','Vinilo del legendario álbum Master of Puppets de Metallica.','Vinilo LP de 180 gramos. Edición remasterizada.','',30.99,NULL,65,4,13,23,30.99,4),(24,'CD de Yeezus','CD de Kanye West','CD del álbum Yeezus de Kanye West.','CD con letras provocativas y ritmos innovadores.','',18.99,NULL,150,5,1,24,18.99,4),(25,'Vinilo de Nevermind','Vinilo de Nirvana','Vinilo del icónico álbum Nevermind de Nirvana.','Vinilo LP de 180 gramos. Incluye éxitos como \"Smells Like Teen Spirit\".','',24.99,NULL,55,4,13,25,24.99,4);
/*!40000 ALTER TABLE `products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `user_id` int NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `pass` varchar(255) NOT NULL,
  `picture_url` tinytext NOT NULL,
  `is_admin` tinyint(1) NOT NULL DEFAULT '0',
  `is_active` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'Juan Pérez','juan@example.com','password123','',1,1),(2,'María García','maria@example.com','password456','',0,1),(3,'Carlos Rodríguez','carlos@example.com','password789','',0,1),(4,'Ana Martínez','ana@example.com','passwordabc','',0,1),(5,'Luisa Sánchez','luisa@example.com','passworddef','',0,1),(6,'Pedro López','pedro@example.com','passwordghi','',0,1),(7,'Laura González','laura@example.com','passwordjkl','',0,1),(8,'Miguel Fernández','miguel@example.com','passwordmno','',0,1),(9,'Sofía Díaz','sofia@example.com','passwordpqr','',1,1),(10,'Javier Ruiz','javier@example.com','passwordstu','',0,1),(11,'Elena Gómez','elena@example.com','passwordvwx','',1,1),(12,'David Torres','david@example.com','passwordyz1','',1,1),(13,'Marina Navarro','marina@example.com','password234','',0,0),(14,'Alejandro Jiménez','alejandro@example.com','password567','',0,0),(15,'Carmen Ruiz','carmen@example.com','password890','',1,0),(16,'José López','jose@example.com','passwordabc1','',0,1),(17,'Paula Martínez','paula@example.com','passworddef2','',0,1),(18,'Francisco Sánchez','francisco@example.com','passwordghi3','',0,0),(19,'Andrea García','andrea@example.com','passwordjkl4','',0,1),(20,'Daniel Pérez','daniel@example.com','passwordmno5','',0,1),(21,'Lucía González','lucia@example.com','passwordpqr6','',0,1),(22,'Sergio Fernández','sergio@example.com','passwordstu7','',0,1),(23,'Natalia Díaz','natalia@example.com','passwordvwx8','',0,1),(24,'Sara Ruiz','sara@example.com','passwordyz9','',0,1),(25,'Pablo Jiménez','pablo@example.com','password2345','',0,1);
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-03-06  9:15:50
