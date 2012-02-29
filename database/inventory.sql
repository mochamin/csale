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
# Table structure for table inventory
#

DROP TABLE IF EXISTS `inventory`;
CREATE TABLE `inventory` (
  `in_id` int(11) NOT NULL auto_increment,
  `in_kd_barang` int(11) default NULL,
  `in_kd_gudang` int(11) default NULL,
  `in_stock` int(11) default NULL,
  `in_harga` double default NULL,
  PRIMARY KEY  (`in_id`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;
INSERT INTO `inventory` VALUES (1,100,1,NULL,NULL);
INSERT INTO `inventory` VALUES (2,222,1,NULL,NULL);
INSERT INTO `inventory` VALUES (3,712,1,NULL,NULL);
INSERT INTO `inventory` VALUES (4,331,1,NULL,NULL);
INSERT INTO `inventory` VALUES (5,10,1,326985,1250000);
INSERT INTO `inventory` VALUES (6,1158,1,187,750000);
INSERT INTO `inventory` VALUES (7,20,1,5,1150000);
INSERT INTO `inventory` VALUES (9,351,1,125,450000);
INSERT INTO `inventory` VALUES (10,17,2,15,2300000);

/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
