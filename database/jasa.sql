# MySQL-Front 5.0  (Build 1.0)

/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE */;
/*!40101 SET SQL_MODE='' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES */;
/*!40103 SET SQL_NOTES='ON' */;


# Host: localhost    Database: merp
# ------------------------------------------------------
# Server version 5.0.27-community-nt

USE `merp`;

#
# Table structure for table jasa
#

CREATE TABLE `jasa` (
  `js_id` int(11) NOT NULL auto_increment,
  `js_nama` varchar(255) collate latin1_general_ci default NULL,
  `js_unit` varchar(255) collate latin1_general_ci default NULL,
  `js_tarif` double default NULL,
  `js_kode` varchar(255) collate latin1_general_ci default NULL,
  PRIMARY KEY  (`js_id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;
INSERT INTO `jasa` VALUES (1,'Jasa Instalasi Unit AC Split Cassette 2 PK','Unit',450000,NULL);

/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
