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
# Table structure for table inventory_masuk
#

DROP TABLE IF EXISTS `inventory_masuk`;
CREATE TABLE `inventory_masuk` (
  `im_id` int(11) NOT NULL auto_increment,
  `im_tgl` date default NULL,
  `im_pic` varchar(255) character set latin1 default NULL,
  `im_po` varchar(255) character set latin1 default NULL,
  PRIMARY KEY  (`im_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
