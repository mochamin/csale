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
# Table structure for table jual
#

DROP TABLE IF EXISTS `jual`;
CREATE TABLE `jual` (
  `ju_id` int(11) NOT NULL auto_increment,
  `ju_kode` varchar(255) collate latin1_general_ci default NULL,
  `ju_tgl` date default NULL,
  `ju_cust_id` int(11) default NULL,
  `ju_cust_pic` int(11) default NULL,
  `ju_due` date default NULL,
  `ju_bayar` varchar(10) collate latin1_general_ci default NULL,
  `ju_po` varchar(255) collate latin1_general_ci default NULL,
  `ju_lunas` tinyint(1) default NULL,
  PRIMARY KEY  (`ju_id`)
) ENGINE=MyISAM AUTO_INCREMENT=23 DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
