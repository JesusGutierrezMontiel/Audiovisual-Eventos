-- MySQL dump 10.13  Distrib 8.0.16, for Win64 (x86_64)
--
-- Host: localhost    Database: audiovisual
-- ------------------------------------------------------
-- Server version	5.7.24

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
 SET NAMES utf8 ;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Dumping data for table `cat_imagenes`
--

LOCK TABLES `cat_imagenes` WRITE;
/*!40000 ALTER TABLE `cat_imagenes` DISABLE KEYS */;
INSERT INTO `cat_imagenes` VALUES (1,'Imagen1','prueba','Imagenes/imagen 3.jpg','9999-12-31 23:59:59'),(4,'Imagen1','prueba','Imagenes/imagen 1.jpg','2023-09-08 12:18:55'),(5,'Imagen1','prueba','Imagenes/imagen 2.jpg','2023-09-08 12:23:23'),(6,'Imagen1','prueba','Imagenes/imagen 4.jpeg','2023-09-08 12:26:30'),(7,'Imagen1','prueba','Imagenes/imagen 5.jpeg','2023-09-08 12:26:33'),(8,'Imagen1','prueba','Imagenes/imagen 6.jpeg','2023-09-08 12:26:37'),(9,'Imagen1','prueba','Imagenes/imagen 1.jpg','2023-09-08 12:27:22'),(10,'imagen7','Imagenes/','Imagenes/thumb-1920-76369.jpg','2023-09-10 13:10:14'),(11,'imagen7','Imagenes/','Imagenes/thumb-1920-488322.jpg','2023-09-10 13:10:32'),(12,'imagen7','Imagenes/','Imagenes/thumb-1920-488322.jpg','2023-09-10 13:13:23'),(13,'imagen7','Imagenes/','Imagenes/thumb-1920-488322.jpg','2023-09-10 13:13:41'),(14,'imagen7','Imagenes/','Imagenes/thumb-1920-76369.jpg','2023-09-10 13:14:16'),(15,'imagen7','Imagenes/','Imagenes/thumb-1920-76369.jpg','2023-09-10 13:14:36'),(16,'imagen8','Imagenes/','Imagenes/thumb-1920-1010631.jpg','2023-09-10 13:17:19'),(17,'imagen8','Imagenes/','Imagenes/thumb-1920-1010631.jpg','2023-09-10 13:20:55'),(18,'imagen9','Imagenes/','Imagenes/thumb-1920-76369.jpg','2023-09-10 13:36:02'),(19,'imagen7','Imagenes/','Imagenes/PASS_ROCKUS.txt','2023-09-10 13:36:50'),(20,'imagen10','Imagenes/','Imagenes/Captura de pantalla_20221027_030542.png','2023-09-10 13:39:38'),(21,'imagen10','Imagenes/','Imagenes/Captura de pantalla_20221027_030542.png','2023-09-10 15:11:42'),(22,'IAMGEN 11','Imagenes/','Imagenes/BG06.jpeg','2023-09-10 15:13:11'),(23,'IAMGEN 11','Imagenes/','Imagenes/Captura de pantalla_20221027_030542.png','2023-09-11 08:22:27');
/*!40000 ALTER TABLE `cat_imagenes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `cat_salon`
--

LOCK TABLES `cat_salon` WRITE;
/*!40000 ALTER TABLE `cat_salon` DISABLE KEYS */;
/*!40000 ALTER TABLE `cat_salon` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `cat_videos`
--

LOCK TABLES `cat_videos` WRITE;
/*!40000 ALTER TABLE `cat_videos` DISABLE KEYS */;
/*!40000 ALTER TABLE `cat_videos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'audiovisual'
--

--
-- Dumping routines for database 'audiovisual'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-09-18 13:20:07
CREATE DATABASE AudioVisual;
USE AudioVisual;


CREATE TABLE cat_estatus(
Id_estatus TINYINT NOT NULL PRIMARY KEY AUTO_INCREMENT,
descripcion VARCHAR(50));


CREATE TABLE cat_permisos(
Id_permiso TINYINT NOT NULL PRIMARY KEY AUTO_INCREMENT,
Descripcion VARCHAR(30),
estatus );

CREATE TABLE cat_usuario(
Id_usuario TINYINT NOT NULL AUTO_INCREMENT,
Nombre VARCHAR(50),
contraseña VARCHAR(50),
PRIMARY KEY (Id_usuario),
estatus TINYINT);

CREATE TABLE cat_salon(
Id_salon TINYINT NOT NULL PRIMARY KEY AUTO_INCREMENT,
Descripcion VARCHAR(70),
estatus TINYINT );

CREATE TABLE cat_imagenes (
    Id_imagen TINYINT PRIMARY KEY AUTO_INCREMENT,
    titulo VARCHAR(50),
    folder VARCHAR(100),
    src VARCHAR(250),
    creacion DATETIME NOT NULL
);

CREATE TABLE cat_videos(
Id_video TINYINT NOT NULL PRIMARY KEY AUTO_INCREMENT,
titulo VARCHAR(50),
folder VARCHAR(100),
src VARCHAR(250),
creacion DATETIME NOT NULL
);
select*from cat_imagenes;
delete from cat_imagenes where Id_imagen= 3;
UPDATE cat_imagenes SET src = 'Imagenes/imagen 6.jpeg' WHERE Id_imagen = '8';
INSERT INTO cat_imagenes(Id_imagen,titulo,folder,src,creacion) values(null,'Imagen1','prueba','Imagenes/imagen 1.jpg',sysdate());